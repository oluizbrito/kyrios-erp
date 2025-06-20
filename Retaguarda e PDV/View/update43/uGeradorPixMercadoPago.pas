unit uGeradorPixMercadoPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, ACBrPosPrinter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  dxGDIPlusClasses, Pix, cxButtons, System.JSON, System.NetEncoding,
  IdHTTP, IdSSLOpenSSL, IdSSLOpenSSLHeaders, Vcl.Menus;

type
  TfrmGeradorPixMercadoPago = class(TForm)
    Panel3: TPanel;
    edtValorPix: TEdit;
    Label2, Label3, Label4, Label5, Label6, Label7, Label8, Label10: TLabel;
    DBText1, DBText2, DBText3: TDBText;
    lblCodPIX, lblTotPix, lblStatus: TLabel;
    imgQrDefault, img_ok: TImage;
    Panel7: TPanel;
    memChaveCopiaeCola: TMemo;
    Label1: TLabel;
    pnl_central: TPanel;
    btnGerarPix: TcxButton;
    TimerCheckStatus: TTimer;
    Button1: TButton;
    TimerFechar: TTimer;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorPixKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorPixKeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarPixClick(Sender: TObject);
    procedure TimerCheckStatusTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TimerFecharTimer(Sender: TObject);
  private
    rValorRestante: Real;
    sIDPix: string;
    DataHora: TDateTime;
    sDirQrCodePNG: string;
    imgQrCode: TImage;
    FLinkPagamento: string;
    FIdPagamento: string;
    function CriarCobrancaPixMercadoPago(const AccessToken: string; Valor: Currency;
      out LinkPagamento, QRCodeBase64, IdPagamento: string): Boolean;
    function VerificarStatusPagamento(const AccessToken, IdPagamento: string): Boolean;
    procedure AlimentaTabelaPix(IDPIX: string);
  public
    rValorTotalPix: Real;
    bAprovado: Boolean;
    sDescricao, sEmail, sNome, sSobreNome, sDoc: string;
  end;

var
  frmGeradorPixMercadoPago: TfrmGeradorPixMercadoPago;

implementation

uses
  Udados, uAPIPixMercadoPago, uFormaPagamento, uPDV, uAguardarGeracaoPix,
  unit_esmaecer_fundo;

{$R *.dfm}

procedure TfrmGeradorPixMercadoPago.AlimentaTabelaPix(IDPIX: string);
var
  qry: TFDQuery;
  sLog: TStringList;
begin
  qry := TFDQuery.Create(nil);
  try
    qry.Connection := Dados.Conexao;
    qry.SQL.Text :=
      'insert into pix (codigo, fk_venda, fk_venda_fpg, id_pix) ' +
      'values (:codigo, :fk_venda, :fk_venda_fpg, :id_pix) ';
    qry.ParamByName('codigo').Value := Dados.Numerador('PIX', 'CODIGO', 'N', '', '');
    qry.ParamByName('fk_venda').Value := FrmPDV.qryVendaCODIGO.Value;
    qry.ParamByName('fk_venda_fpg').Value := frmFechaVenda.qryVendasFPGCODIGO.Value;
    qry.ParamByName('id_pix').Value := IDPIX;
    qry.ExecSQL;
    Dados.Conexao.CommitRetaining;
  except
    on E: Exception do
    begin
      sLog := TStringList.Create;
      try
        if FileExists(ExtractFilePath(Application.ExeName) + 'LogPIX.txt') then
          sLog.LoadFromFile(ExtractFilePath(Application.ExeName) + 'LogPIX.txt');
        sLog.Add(E.Message);
        sLog.SaveToFile(ExtractFilePath(Application.ExeName) + 'LogPIX.txt');
      finally
        sLog.Free;
      end;
    end;
  end;
  qry.Free;
end;

procedure TfrmGeradorPixMercadoPago.btnGerarPixClick(Sender: TObject);
var
  QRBase64: string;
  MemStream: TMemoryStream;
  Decoder: TBase64Encoding;
  Valor: Currency;
  TextoValor: string;
begin

  if Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString = '' then
  begin
  showmessage('Configure a Access Token nos parâmetros empresa.');
  exit;
  end;

  lblStatus.Caption := 'Gerando cobrança PIX...';
  Application.ProcessMessages;

  TextoValor := Trim(edtValorPix.Text);
  TextoValor := StringReplace(TextoValor, '.', FormatSettings.DecimalSeparator, [rfReplaceAll]);
  TextoValor := StringReplace(TextoValor, ',', FormatSettings.DecimalSeparator, [rfReplaceAll]);

  if not TryStrToCurr(TextoValor, Valor) then
  begin
    ShowMessage('Valor inválido. Digite um número como 1,30 ou 1.30');
    Exit;
  end;

  if CriarCobrancaPixMercadoPago(Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString, Valor,
    FLinkPagamento, QRBase64, FIdPagamento) then
  begin
    lblStatus.Caption := 'Cobrança gerada com sucesso!';
    Decoder := TBase64Encoding.Create(0);
    try
      var Bytes := Decoder.DecodeStringToBytes(QRBase64);
      MemStream := TMemoryStream.Create;
      try
        MemStream.WriteBuffer(Bytes[0], Length(Bytes));
        MemStream.Position := 0;
        imgQrDefault.Picture.LoadFromStream(MemStream);
      finally
        MemStream.Free;
      end;
    finally
      Decoder.Free;
    end;

    bAprovado := False;
    TimerCheckStatus.Enabled := False;
    TimerCheckStatus.Interval := 3000;
    TimerCheckStatus.Enabled := True;
    lblStatus.Caption := 'Aguardando pagamento...';

  end
  else
    lblStatus.Caption := 'Erro ao gerar cobrança PIX.';
end;

procedure TfrmGeradorPixMercadoPago.Button1Click(Sender: TObject);
begin
if VerificarStatusPagamento(Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString, FIdPagamento) then
  begin
    bAprovado := True;
    lblStatus.Caption := 'Pagamento confirmado com sucesso!';
    imgQrDefault.Visible := False;
    img_ok.Visible := True;
  end
end;

procedure TfrmGeradorPixMercadoPago.edtValorPixKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnGerarPixClick(Self);
end;

procedure TfrmGeradorPixMercadoPago.edtValorPixKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', ',', #8, #13]) then
    key := #0;
end;

procedure TfrmGeradorPixMercadoPago.FormCreate(Sender: TObject);
begin
  TimerFechar.Enabled := false;
  TimerCheckStatus.OnTimer := TimerCheckStatusTimer;
  bAprovado := False;
  lblCodPIX.Caption := '';
  memChaveCopiaeCola.Lines.Clear;
  lblStatus.Caption := 'Aguardando valor...';
end;

procedure TfrmGeradorPixMercadoPago.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
  if Key = VK_F2 then btnGerarPixClick(Self);
end;

procedure TfrmGeradorPixMercadoPago.FormShow(Sender: TObject);
begin
  sDirQrCodePNG := ExtractFilePath(Application.ExeName) + 'QrCode.png';
  lblTotPix.Caption := FormatFloat('R$ ,0.00', rValorTotalPix);
  edtValorPix.Text := FormatFloat('0.00', rValorTotalPix);
  rValorRestante := rValorTotalPix;
  imgQrDefault.Visible := True;
  img_ok.Visible := False;
end;

function TfrmGeradorPixMercadoPago.CriarCobrancaPixMercadoPago(const AccessToken: string; Valor: Currency;
  out LinkPagamento, QRCodeBase64, IdPagamento: string): Boolean;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  JsonRequest, JsonResponse: TJSONObject;
  StringStream: TStringStream;
  RespostaStr, IdempotencyKey: string;
begin
  Result := False;
  LinkPagamento := '';
  QRCodeBase64 := '';
  IdPagamento := '';

  HTTP := TIdHTTP.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions := [sslvTLSv1_2];
    HTTP.IOHandler := SSL;
    HTTP.Request.ContentType := 'application/json';

    IdempotencyKey := FormatDateTime('yyyymmddhhnnsszzz', Now);
    HTTP.Request.CustomHeaders.Values['Authorization'] := 'Bearer ' + AccessToken;
    HTTP.Request.CustomHeaders.Values['X-Idempotency-Key'] := IdempotencyKey;

    JsonRequest := TJSONObject.Create;
    try
      JsonRequest.AddPair('transaction_amount', TJSONNumber.Create(Valor));
      JsonRequest.AddPair('description', 'Pagamento via PIX');
      JsonRequest.AddPair('payment_method_id', 'pix');

      var Payer := TJSONObject.Create;
      Payer.AddPair('email', 'cliente@email.com');
      JsonRequest.AddPair('payer', Payer);

      StringStream := TStringStream.Create(JsonRequest.ToJSON, TEncoding.UTF8);
      try
        RespostaStr := HTTP.Post('https://api.mercadopago.com/v1/payments', StringStream);
        JsonResponse := TJSONObject.ParseJSONValue(RespostaStr) as TJSONObject;
        try
          IdPagamento := JsonResponse.GetValue<string>('id');
          var PointOfInteraction := JsonResponse.GetValue<TJSONObject>('point_of_interaction');
          if Assigned(PointOfInteraction) then
          begin
            var TransactionData := PointOfInteraction.GetValue<TJSONObject>('transaction_data');
            if Assigned(TransactionData) then
            begin
              LinkPagamento := TransactionData.GetValue<string>('ticket_url');
              QRCodeBase64 := TransactionData.GetValue<string>('qr_code_base64');
              Result := (LinkPagamento <> '') and (QRCodeBase64 <> '');
            end;
          end;
        finally
          JsonResponse.Free;
        end;
      finally
        StringStream.Free;
      end;
    finally
      JsonRequest.Free;
    end;
  finally
    HTTP.Free;
    SSL.Free;
  end;
end;

function TfrmGeradorPixMercadoPago.VerificarStatusPagamento(const AccessToken, IdPagamento: string): Boolean;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  JsonResponse: TJSONObject;
  RespostaStr, StatusPagamento: string;
begin
  Result := False;
  HTTP := TIdHTTP.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    // Configuração do SSL para uso de TLS moderno
    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.Mode := sslmUnassigned;
    SSL.SSLOptions.VerifyMode := [];
    SSL.SSLOptions.VerifyDepth := 0;

    HTTP.IOHandler := SSL;
    HTTP.Request.CustomHeaders.Values['Authorization'] := 'Bearer ' + AccessToken;
    HTTP.Request.ContentType := 'application/json';
    HTTP.Request.Accept := 'application/json';

    RespostaStr := HTTP.Get('https://api.mercadopago.com/v1/payments/' + IdPagamento);
    JsonResponse := TJSONObject.ParseJSONValue(RespostaStr) as TJSONObject;
    try
      StatusPagamento := JsonResponse.GetValue<string>('status');
      Result := SameText(StatusPagamento, 'approved');
    finally
      JsonResponse.Free;
    end;
  finally
    HTTP.Free;
    SSL.Free;
  end;
end;


procedure TfrmGeradorPixMercadoPago.TimerCheckStatusTimer(Sender: TObject);
begin
  TimerCheckStatus.Enabled := False;

  if VerificarStatusPagamento(Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString, FIdPagamento) then
  begin
    bAprovado := True;
    lblStatus.Caption := 'Pagamento confirmado!';
    imgQrDefault.Visible := False;
    img_ok.Visible := True;
    if FIdPagamento <> '' then
    frmGeradorPixMercadoPago.AlimentaTabelaPix(FIdPagamento);
    // Iniciar contagem para fechar o form
    TimerFechar.Interval := 3000; // 3 segundos
    TimerFechar.Enabled := True;
  end
  else
  begin
    lblStatus.Caption := 'Aguardando pagamento...';
    TimerCheckStatus.Enabled := True;
  end;
end;

procedure TfrmGeradorPixMercadoPago.TimerFecharTimer(Sender: TObject);
begin
frmGeradorPixMercadoPago.Close;
end;

end.

