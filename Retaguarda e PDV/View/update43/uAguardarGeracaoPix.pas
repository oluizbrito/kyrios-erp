unit uAguardarGeracaoPix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrGIF, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  ACBrBase, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, ACBrPIXCD,
  ACBrCEP, ACBrPIXPSPItau, ACBrPIXPSPBancoDoBrasil, ACBrPIXPSPSantander, ACBrPIXBase, ACBrPIXSchemasPix,
  ACBrPIXSchemasDevolucao, ACBrPIXSchemasCob, ACBrPIXPSPShipay, ShellAPI,
  ACBrOpenSSLUtils, ACBrPIXPSPSicredi, ACBrPIXBRCode, ACBrSocket,
  ImgList, ACBrPIXPSPSicoob, ACBrPIXPSPPagSeguro, ACBrPIXPSPGerenciaNet,
  ACBrPIXPSPBradesco, ACBrPIXPSPPixPDV, ACBrPIXPSPInter, ACBrPIXPSPAilos,
  ACBrPIXPSPMatera, ACBrPIXPSPCielo, ACBrPIXPSPMercadoPago, ACBrPIXPSPGate2All,
  ACBrPIXPSPBanrisul, ACBrPIXPSPC6Bank, System.ImageList, UDados, Vcl.Buttons;

type
  TfrmAguardarGeracaoPix = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    ACBrPixCD1: TACBrPixCD;
    edtFluxoCopiaECola: TEdit;
    btnFluxoCopiaECola: TSpeedButton;
    ACBrPSPItau1: TACBrPSPItau;
    imgErrNome: TImage;
    pnlPIXimg: TPanel;
    imgQRpix: TImage;
    pnlbtnAcao: TPanel;
    btnNaprovado: TSpeedButton;
    btnSaprovado: TSpeedButton;
    pnllateral: TPanel;
    pnllateral2: TPanel;
    pnlrodape: TPanel;
    btnImprimeQR: TSpeedButton;
    frxDBEmpresa: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    frxReport: TfrxReport;
    procedure FormCreate(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNaprovadoClick(Sender: TObject);
    procedure btnSaprovadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFluxoCopiaEColaClick(Sender: TObject);
    procedure btnImprimeQRClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string;
  var Value: Variant);
  private
    { Private declarations }
    vCOD_PIX,vCNPJ, vRAZAO, vEMPRESA: string;
    vCHAVECC: string;
    vVALOR: string;
    procedure VerificarConfiguracao;
    procedure ConfigurarACBrPIXCD;
    procedure VerificarConfiguracaoPIXCD;
    procedure CriarImgQrCode;


  public
    { Public declarations }
    rValorTotalPix: Real;
    bAprovado: Boolean;
    sDirQrCodePNG, iCodVenda: string;
    nVenda: string;


  end;

var
  frmAguardarGeracaoPix: TfrmAguardarGeracaoPix;

implementation

uses
  {$IfDef FPC}
   fpjson, jsonparser, jsonscanner, Jsons,
  {$EndIf}
  TypInfo, Clipbrd, IniFiles, DateUtils, synacode, synautil, pcnConversao,
  ACBrDelphiZXingQRCode, ACBrImage, ACBrValidador, ACBrPIXUtil, ACBrConsts,
  ACBrPIXSchemasCobV, OpenSSLExt,
  ACBrJSON,
  ACBrUtil.Base,
  ACBrUtil.FilesIO,
  ACBrUtil.Strings,
  ACBrUtil.DateTime,
  ACBrUtil.Compatibilidade;

{$R *.dfm}




//procedure TfrmAguardarGeracaoPix.LimparQRCodeEstatico;
//begin

//  mQRE.Lines.Clear;
//  imgQRpix.Picture.Bitmap.FreeImage;
//end;


procedure TfrmAguardarGeracaoPix.VerificarConfiguracao;
begin
  VerificarConfiguracaoPIXCD;
  if (ACBrPixCD1.PSP = ACBrPSPItau1) then
    ShowMessage('')	;
end;

procedure TfrmAguardarGeracaoPix.VerificarConfiguracaoPIXCD;
begin
  if imgErrNome.Visible then
  begin
//    pgPrincipal.ActivePageIndex := 2;
//    pgConfPixPSP.ActivePageIndex := 0;
    MessageDlg('Favor configurar os campos sinalizados', mtWarning, [mbOK], 0);
    Abort;
  end;
end;


procedure TfrmAguardarGeracaoPix.btnFluxoCopiaEColaClick(Sender: TObject);
begin
   Clipboard.AsText :=  edtFluxoCopiaECola.Text;
end;

procedure TfrmAguardarGeracaoPix.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'EMPRESA' then
    Value := vEMPRESA;
  if VarName = 'RAZAO' then
    Value := vRAZAO;
  if VarName = 'CNPJ' then
    Value := vCNPJ;
  if VarName = 'COD_PIX' then
    Value := vCOD_PIX;
  if VarName = 'CHAVECC' then
    Value := vCHAVECC;
  if VarName = 'VALOR' then
    Value := FormatFloat('R$ ,0.00' , StrToFloat(vVALOR));
end;

procedure TfrmAguardarGeracaoPix.btnImprimeQRClick(Sender: TObject);
begin
 try
    btnImprimeQR.Enabled  :=  False;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelQrCodePix.fr3');
    if ( FileExists(ExtractFilePath(Application.ExeName)+'img\QrCode.png') and
       (frxReport.FindComponent('pctQrCode')<> nil ) )
    then
      begin
        TfrxPictureView(frxReport.FindComponent('pctQrCode')).
          Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'img\QrCode.png');
      end;
    frxReport.PrintOptions.ShowDialog:= False;
    frxReport.PrintOptions.Printer  :=  Dados.qryTerminalPORTA.AsString;
    frxReport.PrepareReport;
    if Dados.qryTerminalIMPRIME_PREVIEW.Value = 'S' then
    begin
      frxReport.ShowReport;
    end
    else
    begin
    frxReport.PrintOptions.Copies := 1;
    frxReport.Print; // Envia para a impressora
    end;

   finally
    btnImprimeQR.Enabled  :=  True;
  end;

end;

procedure TfrmAguardarGeracaoPix.btnNaprovadoClick(Sender: TObject);
begin
 bAprovado :=  False;
 Close;
end;

procedure TfrmAguardarGeracaoPix.btnSaprovadoClick(Sender: TObject);
begin
 bAprovado :=  True;
 Close;
end;

procedure TfrmAguardarGeracaoPix.ConfigurarACBrPIXCD;
var
AAmbiente: Integer;
cLOGS: string;
begin
//  dados.qryConsulta.First;

  vEMPRESA    := '';
  vRAZAO      := '';
  vCNPJ       := '';
  vCOD_PIX    := '';


  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=  'SELECT CNPJ , RAZAO,  CHAVE_PIX AS CHAVE,  API_PIX_TIPO_CHAVE_PIX AS TIPO,'+
  'API_PIX_AMBIENTE ,CIDADE , UF, CEP FROM EMPRESA WHERE CNPJ= :CNPJ';
  dados.qryConsulta.ParamByName('CNPJ').Value := Dados.qryEmpresaCNPJ.Value;
  dados.qryConsulta.Open;

  if dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('Erro na configuração do pix!');
    Exit;
  end;

  ACBrPixCD1.PSP := ACBrPSPItau1;

  vEMPRESA    := dados.qryConsulta.FieldByName('RAZAO').Value;
  vRAZAO      := dados.qryConsulta.FieldByName('RAZAO').Value;
  vCNPJ       := dados.qryConsulta.FieldByName('CNPJ').Value;
  vCOD_PIX    := dados.qryConsulta.FieldByName('CHAVE').Value;

  ACBrPixCD1.Recebedor.Nome := vEMPRESA;
  ACBrPixCD1.Recebedor.CEP := dados.qryConsulta.FieldByName('CEP').Value;
  ACBrPixCD1.Recebedor.Cidade := dados.qryConsulta.FieldByName('CIDADE').Value;
  ACBrPixCD1.Recebedor.UF := dados.qryConsulta.FieldByName('UF').Value;

  ACBrPixCD1.PSP.ChavePIX := vCOD_PIX ;


  AAmbiente := dados.qryConsulta.FieldByName('API_PIX_AMBIENTE').AsInteger;

  case AAmbiente of
    0: ACBrPixCD1.Ambiente := ambTeste;
    1: ACBrPixCD1.Ambiente := ambProducao;
  else
    ACBrPixCD1.Ambiente := ambTeste; // Define padrão como teste caso o valor seja inválido
  end;

  ACBrPixCD1.TimeOut := 100;//seTimeout.Value;

  ACBrPixCD1.Proxy.Host := '';//edtProxyHost.Text;
  ACBrPixCD1.Proxy.Port := '';//seProxyPorta.Text;
  ACBrPixCD1.Proxy.User := '';//edtProxyUser.Text;
  ACBrPixCD1.Proxy.Pass := '';//edtProxySenha.Text;
  cLOGS:=  ExtractFilePath(Application.ExeName) + 'logs\logpix.txt';

  ACBrPixCD1.ArqLOG := cLOGS;//edtArqLog.Text;

  if not DirectoryExists(ExtractFilePath(cLOGS)) then
    ForceDirectories(ExtractFilePath(cLOGS));

end;


procedure TfrmAguardarGeracaoPix.FormCreate(Sender: TObject);
begin
  bAprovado := false;
end;

procedure TfrmAguardarGeracaoPix.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: btnNaprovado.Click;  // Quando pressionar ESC, chama o botão "Não aprovado"
    VK_RETURN: btnSaprovado.Click;  // Quando pressionar ENTER, chama o botão "Aprovado"
  end;
  if (Key = Ord('P')) and (ssCtrl in Shift) then
  begin
   btnImprimeQRClick(Self);
  end;
end;


procedure TfrmAguardarGeracaoPix.CriarImgQrCode;
begin
  try
    if not (imgQRpix = nil) then
      FreeAndNil(imgQRpix);
    imgQRpix :=  TImage.Create(Self);
    imgQRpix.Height  :=  300;
    imgQRpix.Width :=  300;
    imgQRpix.Left := 21;
    imgQRpix.Top :=  144;
    imgQRpix.Center  :=  True;
    imgQRpix.AutoSize  :=  False;
    imgQRpix.Proportional  :=  True;
    imgQRpix.Picture.Bitmap.PixelFormat := pf24bit;
    imgQRpix.Stretch := true;

    imgQRpix.Visible :=  True;
    imgQRpix.Parent  :=  pnlPIXimg;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha ao carregar QrCode: '+
        sLineBreak+E.Message), 'Falha', MB_OK+MB_ICONERROR);
  end;
end;

procedure TfrmAguardarGeracaoPix.FormShow(Sender: TObject);
var
  cArquivo, QRCodeTexto, nPedidoVenda, pPedidoVenda, cImagem: string;
  tDadosdopix: TextFile;
  vValorPIX:  Real;
  PNG: TPNGImage;
begin
  ConfigurarACBrPIXCD;

  vCHAVECC    := '';
  vVALOR      := '0';


  vValorPIX := rValorTotalPix;
  pPedidoVenda := nVenda;
  nPedidoVenda := iCodVenda;

   vVALOR      := FloatToStr(vValorPIX);

  QRCodeTexto := ACBrPixCD1.GerarQRCodeEstatico(
                       vValorPIX,
                       pPedidoVenda,
                       nPedidoVenda);

  cArquivo := ExtractFilePath(Application.ExeName) + 'logs\pixgerado.txt';
 // cImagem := ExtractFilePath(Application.ExeName) + 'img\qr-code-espera.gif'; // Imagem de espera

  sDirQrCodePNG := ExtractFilePath(Application.ExeName)+'img\QrCode.png';

//  if FileExists(cImagem) then
//    ACBrGIF1.LoadFromFile(cImagem);

  AssignFile(tDadosdopix, cArquivo);
  if FileExists(cArquivo) then
    DeleteFile(cArquivo);
  Rewrite(tDadosdopix);
  try
    Writeln(tDadosdopix, QRCodeTexto);
  finally
    CloseFile(tDadosdopix);
  end;
//
//  imgQRpix.Picture.Bitmap.PixelFormat := pf24bit;
//
//  imgQRpix.Center := True;
//  imgQRpix.Proportional := True;
//  imgQRpix.Stretch := True;

  CriarImgQrCode;

  edtFluxoCopiaECola.Text := QRCodeTexto;

  vCHAVECC := edtFluxoCopiaECola.Text;

   PNG := TPNGImage.Create;
    try
      PintarQRCode(QRCodeTexto, imgQRpix.Picture.Bitmap, qrUTF8BOM);
      PNG.Assign(imgQRpix.Picture.Bitmap);
      PNG.SaveToFile(sDirQrCodePNG);
    finally
      PNG.Free;
    end;
end;

end.
