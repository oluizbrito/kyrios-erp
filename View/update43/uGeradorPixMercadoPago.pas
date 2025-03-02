unit uGeradorPixMercadoPago;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, {acPNG,} Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, ACBrPosPrinter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  dxGDIPlusClasses, Pix, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, Vcl.Menus, cxButtons,
  ACBrGIF, cxProgressBar, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmGeradorPixMercadoPago = class(TForm)
    Panel3: TPanel;
    edtValorPix: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dsEmpresa: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    lblCodPIX: TLabel;
    Label8: TLabel;
    lblTotPix: TLabel;
    Label9: TLabel;
    lblRestantePix: TLabel;
    Label10: TLabel;
    lblStatus: TLabel;
    imgQrDefault: TImage;
    tmrStatus: TTimer;
    Panel7: TPanel;
    memChaveCopiaeCola: TMemo;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    Label1: TLabel;
    pnl_central: TPanel;
    btnImpQrCode: TcxButton;
    btnGerarPix: TcxButton;
    cxProgressBar: TcxProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValorPixKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorPixKeyPress(Sender: TObject; var Key: Char);
    procedure tmrStatusTimer(Sender: TObject);
    procedure memChaveCopiaeColaEnter(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure btnGerarPixClick(Sender: TObject);
    procedure btnImpQrCodeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    rValorRestante: Real;
    sIDPix: string;
    DataHora: TDateTime;
    sDirQrCodePNG: string;
    imgQrCode: TImage;
    procedure Imprime(date_approved, long_name, transaction_amount,
      bank_transfer_id, transaction_id, collector_id: string);
    procedure ConfiguraImpressora(Tipo: String);
    procedure CriarImgQrCode;
    procedure AlimentaTabelaPix(IDPIX: string);
  public
    { Public declarations }
    rValorTotalPix: Real;
    bAprovado: Boolean;
    sDescricao,
    sEmail,
    sNome,
    sSobreNome,
    sDoc: string;

  end;

var
  frmGeradorPixMercadoPago: TfrmGeradorPixMercadoPago;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

uses
  Udados, uAPIPixMercadoPago, uFormaPagamento, uPDV, uAguardarGeracaoPix,
  unit_esmaecer_fundo;

{$R *.dfm}

procedure TfrmGeradorPixMercadoPago.AlimentaTabelaPix(IDPIX: string);
var
  qry: TFDQuery;
  sLog: TStringList;
begin
  try
    try
      qry :=  TFDQuery.Create(Nil);
      qry.Connection  :=  Dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'insert into pix (codigo, fk_venda, fk_venda_fpg, id_pix) '+
        'values (:codigo, :fk_venda, :fk_venda_fpg, :id_pix) ';
      qry.ParamByName('codigo').Value       :=  Dados.Numerador('PIX', 'CODIGO', 'N', '', '');
      qry.ParamByName('fk_venda').Value     :=  FrmPDV.qryVendaCODIGO.Value;
      qry.ParamByName('fk_venda_fpg').Value :=  frmFechaVenda.qryVendasFPGCODIGO.Value;
      qry.ParamByName('id_pix').Value       :=  IDPIX;
      qry.ExecSQL;
      Dados.Conexao.CommitRetaining;
    except
      on E: Exception do
        begin
          try
            sLog  :=  TStringList.Create;
            if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
              sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
            sLog.Add(E.Message);
            sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          finally
            sLog.Free;
            tmrStatus.Enabled :=  True;
          end;
        end;
    end;
  finally
    qry.Free;
  end;
end;

procedure TfrmGeradorPixMercadoPago.ConfiguraImpressora(Tipo: String);
begin
  with frmFechaVenda do
    begin
      ACBrPosPrinter1.Porta := LowerCase(Dados.qryconsulta.FieldByName('PORTA')
        .AsString);
      if Dados.qryconsulta.FieldByName('MODELO').Value = 'DARUMA' then
        ACBrPosPrinter1.Modelo := ppEscDaruma
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'BEMATECH' then
        ACBrPosPrinter1.Modelo := ppEscBematech
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'ELGIN' then
        ACBrPosPrinter1.Modelo := ppEscPosEpson
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'DIEBOLD' then
        ACBrPosPrinter1.Modelo := ppEscDiebold
      else if Dados.qryconsulta.FieldByName('MODELO').Value = 'EPSON' then
        ACBrPosPrinter1.Modelo := ppEscPosEpson
      else
        ACBrPosPrinter1.Modelo := ppTexto;
      ACBrNFeDANFeESCPOS1.NumCopias := Dados.qryTerminalNVIAS.Value;
      ACBrPosPrinter1.Desativar;
      ACBrPosPrinter1.Device.Baud := Dados.qryconsulta.FieldByName
        ('VELOCIDADE').Value;
      ACBrPosPrinter1.Ativar;
    end;
end;

procedure TfrmGeradorPixMercadoPago.CriarImgQrCode;
begin
  try
    if not (imgQrCode = nil) then
      FreeAndNil(imgQrCode);
    imgQrCode :=  TImage.Create(Self);
    imgQrCode.Height  :=  220;
    imgQrCode.Width :=  220;
    imgQrCode.Left := 77;
    imgQrCode.Top :=  35;
    imgQrCode.Center  :=  True;
    imgQrCode.AutoSize  :=  False;
    imgQrCode.Proportional  :=  True;
    imgQrCode.Visible :=  True;
    //imgQrCode.Parent  :=  frmGeradorPixMercadoPago;
    imgQrCode.Parent  :=  pnl_central;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha ao carregar QrCode: '+
        sLineBreak+E.Message), 'Falha', MB_OK+MB_ICONERROR);
  end;
end;

procedure TfrmGeradorPixMercadoPago.btnImpQrCodeClick(Sender: TObject);
begin
    try
    btnImpQrCode.Enabled  :=  False;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelQrCodePix.fr3');
    if ( FileExists(ExtractFilePath(Application.ExeName)+'QrCode.png') and
       (frxReport.FindComponent('pctQrCode')<> nil ) )
    then
      begin
        TfrxPictureView(frxReport.FindComponent('pctQrCode')).
          Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'QrCode.png');
      end;
    frxReport.PrintOptions.ShowDialog:= False;
    frxReport.PrintOptions.Printer  :=  Dados.qryTerminalPORTA.AsString;
    frxReport.PrepareReport;
    frxReport.ShowReport;
  finally
    btnImpQrCode.Enabled  :=  True;
  end;
end;

procedure TfrmGeradorPixMercadoPago.btnGerarPixClick(Sender: TObject);
var
  rValor: Real;
  sFalha,
  qrCode,
  qrCode64,
  Id: string;
  iDoc: Integer;
begin

  try
    btnGerarPix.Enabled := false;
    sIDPix  :=  '';
    sFalha  :=  '';
    lblCodPIX.Caption :=  '';
    memChaveCopiaeCola.Lines.Clear;
    cxProgressBar.Properties.Text := '';
    //lblStatus.Caption :=  '';
    rValor  :=  StrToFloat(edtValorPix.Text);

    if rValorRestante = 0 then
      begin
        bAprovado :=  True;
        Close;
      end;
    if rValor <= 0 then
      raise Exception.Create('Valor não pode ser Negativo ou Zero.');
    //ProgressBar.Visible :=  False;
    cxProgressBar.Properties.Min :=  0;
    cxProgressBar.Properties.Max :=  600;
    cxProgressBar.Position  :=  600;
    if FloatToStr(rValor) > FloatToStr(rValorRestante) then
      raise Exception.Create('Valor não pode ser maior que o valor restante.');
    //Gerar
    if Length(sDoc) = 11 then
      iDoc  := 0
    else if Length(sDoc) = 14 then
      iDoc  := 1
    else
      iDoc  := 0;
    DataHora  :=  Now;
    GerarQrCodePix(rValor, sDescricao, DataHora, sEmail, sNome,
      sSobreNome, TTipoDoc(iDoc), sDoc, Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString, sFalha,
      qrCode, qrCode64, Id);

    if Length(Trim(sFalha)) > 0 then
      begin
        Application.MessageBox(PChar('Falha ao Gerar PIX: '+sFalha), 'Falha PIX', 0+16);
        //imgQrDefault.Visible  :=  True;
        btnImpQrCode.Enabled := false;
        btnGerarPix.Enabled := true;
        Application.ProcessMessages;
        Exit;
      end
    else
      begin
        imgQrDefault.Visible  :=  False;
        CriarImgQrCode;
        QrCodBase64ToTImage(qrCode64, imgQrCode, sFalha);
        lblCodPIX.Caption :=  Id;
        sIDPix  :=  Id;
        memChaveCopiaeCola.Lines.Text  :=  qrCode;
        edtValorPix.Text  :=  FormatFloat('0.00', rValor);
        cxProgressBar.Visible :=  True;
        btnImpQrCode.Enabled := true;
        btnGerarPix.Enabled := true;
        tmrStatusTimer(Self);
      end;
  except
    on E: Exception do
      Application.MessageBox(PChar(E.Message), 'Falha', 0+16);
  end;
end;

procedure TfrmGeradorPixMercadoPago.edtValorPixKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnGerarPixClick(Self);
end;

procedure TfrmGeradorPixMercadoPago.edtValorPixKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', ',', #8, #13]) then
    key :=#0;
end;

procedure TfrmGeradorPixMercadoPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //form_esmaecer_fundo.hide;
end;

procedure TfrmGeradorPixMercadoPago.FormCreate(Sender: TObject);
begin
  //form_esmaecer_fundo.show;
  //Padrões
  bAprovado :=  False;
  lblCodPIX.Caption :=  '';
  memChaveCopiaeCola.Lines.Clear;
  cxProgressBar.Properties.Text := 'NÃO GERADO';
  btnImpQrCode.Enabled := false;
  btnGerarPix.Enabled := true;
  //lblStatus.Caption :=  'NÃO GERADO';
end;

procedure TfrmGeradorPixMercadoPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
  if Key = VK_F2 then
    btnGerarPixClick(Self);
  if Key = VK_F3 then
    btnImpQrCodeClick(Self);
end;

procedure TfrmGeradorPixMercadoPago.FormShow(Sender: TObject);
begin
  sDirQrCodePNG := ExtractFilePath(Application.ExeName)+'QrCode.png';
  lblTotPix.Caption :=  FormatFloat('R$ ,0.00', rValorTotalPix);
  lblRestantePix.Caption :=  FormatFloat('R$ ,0.00', rValorTotalPix);
  edtValorPix.Text  :=  FormatFloat('0.00', rValorTotalPix);
  rValorRestante  :=  rValorTotalPix;
  imgQrDefault.Visible :=  True;
end;

procedure TfrmGeradorPixMercadoPago.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'EMPRESA' then
    Value := DBText1.Caption;
  if VarName = 'RAZAO' then
    Value := DBText2.Caption;
  if VarName = 'CNPJ' then
    Value := DBText3.Caption;
  if VarName = 'COD_PIX' then
    Value := lblCodPIX.Caption;
  if VarName = 'CHAVECC' then
    Value := memChaveCopiaeCola.Lines.Text;
  if VarName = 'VALOR' then
    Value := FormatFloat('R$ ,0.00' , StrToFloat(edtValorPix.Text));
end;

procedure TfrmGeradorPixMercadoPago.Imprime(date_approved, long_name,
  transaction_amount, bank_transfer_id, transaction_id, collector_id: string);
var
  Memo1: TStringList;
  sLog: TStringList;
begin
  try
    try
      Memo1 :=  TStringList.Create;
      Memo1.Clear;

      Memo1.Add('<n>Sistema ERP Fiscal</n>');
      Memo1.Add('</linha_simples>');
      Memo1.Add('<n><ce>COMPRA QR CODE PIX</ce></n>');
      Memo1.Add(date_approved);
      Memo1.Add(long_name+'<ad><n>'+FormatFloat('R$ ,0.00', StrToFloat(transaction_amount))+'</n></ad>');
      Memo1.Add('<ce>TRANSAÇÃO AUTORIZADA POR APLICATIVO</ce>');
      Memo1.Add('</linha_simples>');
      Memo1.Add(Dados.qryEmpresaRAZAO.AsString);
      Memo1.Add(Dados.qryEmpresaENDERECO.AsString+', '+
        Dados.qryEmpresaBAIRRO.AsString+', Nº '+
        Dados.qryEmpresaNUMERO.AsString+', '+
        Dados.qryEmpresaCIDADE.AsString+' - '+
        Dados.qryEmpresaUF.AsString);
      Memo1.Add('CNPJ: '+Dados.qryEmpresaCNPJ.AsString);
      Memo1.Add('ID do Banco de Transferencia: '+bank_transfer_id+'<ad>Collector ID: '+collector_id+'</ad>');
      Memo1.Add('ID de Transação: '+transaction_id);

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');

      Dados.qryconsulta.Close;
      Dados.qryconsulta.sql.Text := 'select * from vendas_terminais';
      Dados.qryconsulta.Open;
      Dados.qryconsulta.Locate('nome', Dados.nometerminal, []);
      ConfiguraImpressora('');

      Memo1.SaveToFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');

      if frmFechaVenda.ACBrPosPrinter1.VerificarImpressora then
        frmFechaVenda.ACBrNFeDANFeESCPOS1.ImprimirRelatorio(Memo1, 1, True)
      else
        ShowMessage('Erro ao imprimir!');
    except
      on E: Exception do
        begin
          try
            sLog  :=  TStringList.Create;
            if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
              sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
            sLog.Add(E.Message);
            sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          finally
            sLog.Free;
            tmrStatus.Enabled :=  True;
          end;
        end;
    end;
  finally
    Memo1.Free;
    if FileExists(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'ComprovantePIX.txt');
  end;
end;

procedure TfrmGeradorPixMercadoPago.memChaveCopiaeColaEnter(Sender: TObject);
begin
  memChaveCopiaeCola.SelectAll;
end;

procedure TfrmGeradorPixMercadoPago.tmrStatusTimer(Sender: TObject);
var
  rValor: Real;
  Status: string;
  StatusDetalhe: string;
  sFalha: string;
  date_approved,
  long_name,
  transaction_amount,
  bank_transfer_id,
  transaction_id,
  collector_id: string;
  sLog: TStringList;
begin

  try
    tmrStatus.Enabled :=  False;
    sFalha  :=  '';
    if sIDPix = '' then
      begin
        cxProgressBar.Properties.Text := 'NÃO GERADO';
        cxProgressBar.Refresh;
        //lblStatus.Caption :=  'NÃO GERADO';
        //lblStatus.Refresh;
        Exit;
      end;

    if cxProgressBar.Position = 0 then
      begin
       // ProgressBar.Visible :=  False;
        cxProgressBar.Properties.Text := 'TEMPO EXPIRADO';
        //lblStatus.Caption :=  'TEMPO EXPIRADO';
        lblCodPIX.Caption :=  '';
        memChaveCopiaeCola.Lines.Clear;
        sIDPix  :=  '';
        if not (imgQrCode = nil) then
          FreeAndNil(imgQrCode);
        if FileExists(sDirQrCodePNG) then
          DeleteFile(sDirQrCodePNG);
        //imgQrDefault.Visible  :=  True;
        Application.ProcessMessages;
        Exit;
      end;

    Status  :=  GetStatusPagamento(sIDPix, Dados.qryEmpresaACCESSTOKEN_MERCADOPAGO.AsString, StatusDetalhe, sFalha,
                                   date_approved, long_name, transaction_amount, bank_transfer_id, transaction_id,
                                   collector_id);
    cxProgressBar.Properties.Text := Status;
    cxProgressBar.Refresh;
    //lblStatus.Caption :=  Status;
    //lblStatus.Refresh;
    cxProgressBar.Position  :=  cxProgressBar.Position-1;

    if Trim(Status) = 'PAGO' then
      begin
        tmrStatus.Enabled :=  False;
        rValor  :=  StrToFloat(edtValorPix.Text);
        rValorRestante  :=  rValorRestante - rValor;
        lblRestantePix.Caption :=  FormatFloat('R$ ,0.00', rValorRestante);
        edtValorPix.Text  :=  FormatFloat('0.00', rValorRestante);
        //ProgressBar.Visible :=  False;
        AlimentaTabelaPix(sIDPix);
        ShowMessage('PAGAMENTO DE PIX NO VALOR DE '+
              FormatFloat('R$ ,0.00', rValor)+' ,FEITO COM SUCESSO!');
        //Rotina de impressão comprovante pix
        Imprime(date_approved, long_name, transaction_amount, bank_transfer_id, transaction_id, collector_id);
        if rValorRestante = 0 then
          begin
            bAprovado :=  True;
            Close;
          end
        else
          begin
            ShowMessage('GERE O RESTANTE DO VALOR DO PIX.');
            //ProgressBar.Visible :=  False;
            cxProgressBar.Properties.Text := 'NÃO GERADO';
            //lblStatus.Caption :=  '';
            lblCodPIX.Caption :=  '';
            memChaveCopiaeCola.Lines.Clear;
            sIDPix  :=  '';
            if not (imgQrCode = nil) then
              FreeAndNil(imgQrCode);
            if FileExists(sDirQrCodePNG) then
              DeleteFile(sDirQrCodePNG);
            imgQrDefault.Visible  :=  True;
            Application.ProcessMessages;
          end;
      end
    else
      tmrStatus.Enabled :=  True;
  except
    on E: Exception do
      begin
        try
          sLog  :=  TStringList.Create;
          if FileExists(ExtractFilePath(Application.ExeName)+'LogPIX.txt') then
            sLog.LoadFromFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
          sLog.Add(E.Message);
          sLog.SaveToFile(ExtractFilePath(Application.ExeName)+'LogPIX.txt');
        finally
          sLog.Free;
          tmrStatus.Enabled :=  True;
        end;
      end;
  end;
end;

end.
