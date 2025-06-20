unit uConsNFe;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Math, System.zip, dateutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, pcnConversao, pcnConversaoNFe, acbrUtil, ACBrDFeSSL, blcksock,
  Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF,
  ACBrMail,
  frxExportBaseDialog, ACBrBase, ACBrEnterTab,
  ACBrDFe, ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, ACBrPosPrinter,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFeESCPOS, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
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
  TfrmConsNFe = class(TForm)
    TabSet1: TTabSet;
    Panel1: TPanel;
    LblSaldo: TLabel;
    OpenDialog1: TOpenDialog;
    frxPDF: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    qryVenda: TFDQuery;
    dsVenda: TDataSource;
    qryVendaTTOTAL: TAggregateField;
    ACBrEnterTab1: TACBrEnterTab;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryItem: TFDQuery;
    dsItem: TDataSource;
    qryXML: TFDQuery;
    qryXMLNUMERO: TIntegerField;
    qryXMLDATA_EMISSAO: TDateField;
    qryXMLCHAVE: TStringField;
    qryXMLSERIE: TStringField;
    qryXMLXML: TMemoField;
    qryVendaCODIGO: TIntegerField;
    qryVendaNUMERO: TIntegerField;
    qryVendaCHAVE: TStringField;
    qryVendaMODELO: TStringField;
    qryVendaSERIE: TStringField;
    qryVendaDATA_EMISSAO: TDateField;
    qryVendaDATA_SAIDA: TDateField;
    qryVendaHORA_EMISSAO: TTimeField;
    qryVendaHORA_SAIDA: TTimeField;
    qryVendaID_EMITENTE: TIntegerField;
    qryVendaID_CLIENTE: TIntegerField;
    qryVendaID_TRANSPORTADOR: TIntegerField;
    qryVendaFK_USUARIO: TIntegerField;
    qryVendaFK_CAIXA: TIntegerField;
    qryVendaFK_VENDEDOR: TIntegerField;
    qryVendaTIPO_FRETE: TStringField;
    qryVendaOBSFISCO: TMemoField;
    qryVendaOBSCONTRIBUINTE: TMemoField;
    qryVendaEMAIL: TStringField;
    qryVendaXML: TMemoField;
    qryVendaPROTOCOLO: TStringField;
    qryVendaFLAG: TStringField;
    qryVendaFKORCAMENTO: TIntegerField;
    qryVendaFKVENDA: TIntegerField;
    qryVendaFKNOTA: TIntegerField;
    qryVendaESPECIE: TStringField;
    qryVendaMARCA: TStringField;
    qryVendaNVOL: TStringField;
    qryVendaQVOL: TIntegerField;
    qryVendaPLACA: TStringField;
    qryVendaUFPLACA: TStringField;
    qryVendaRNTC: TStringField;
    qryVendaSITUACAO: TStringField;
    qryVendaFKEMPRESA: TIntegerField;
    qryVendaVIRTUAL_SITUACAO: TStringField;
    qryVendaTIPO_EMISSAO: TStringField;
    qryVendaFINALIDADE: TStringField;
    qryVendaMOVIMENTO: TStringField;
    qryVendaCFOP: TIntegerField;
    qryItemCODIGO: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemCOD_BARRA: TStringField;
    qryItemUNIDADE: TStringField;
    qryItemDESCRICAO: TStringField;
    pnCarta: TPanel;
    ProgressBar2: TProgressBar;
    Panel9: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Memo1: TMemo;
    Panel10: TPanel;
    qryVendaRAZAO: TStringField;
    Panel4: TPanel;
    Label8: TLabel;
    dsEmpresa: TDataSource;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Panel11: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    Panel12: TPanel;
    Label12: TLabel;
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    dsCorrecao: TDataSource;
    qryCorrecao: TFDQuery;
    qryCorrecaoCODIGO: TIntegerField;
    qryCorrecaoFK_NFE: TIntegerField;
    qryCorrecaoSEQUENCIA: TIntegerField;
    qryCorrecaoFK_EMPRESA: TIntegerField;
    qryCorrecaoDATA: TDateField;
    qryCorrecaoCORRECAO: TMemoField;
    PagUtilidade: TPageControl;
    TabInutilizar: TTabSheet;
    pnInutiliza: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtAno: TEdit;
    edtModelo: TEdit;
    edtSerie: TEdit;
    edtInicial: TEdit;
    edtFinal: TEdit;
    edtJustificativa: TEdit;
    Panel5: TPanel;
    btnInutilizar: TSpeedButton;
    btnFechar: TSpeedButton;
    TabGerar: TTabSheet;
    pnGerar: TPanel;
    ProgressBar1: TProgressBar;
    TabCarta: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    Panel8: TPanel;
    btnCorrecao: TSpeedButton;
    btnSairCorrecao: TSpeedButton;
    qryInutiliza: TFDQuery;
    memLista: TListBox;
    frxDBEmpresa: TfrxDBDataset;
    qryVendaEMAIL1: TStringField;
    ACBrMail1: TACBrMail;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label15: TLabel;
    edtEmail: TEdit;
    edtArquivo: TEdit;
    qryRelatorio: TFDQuery;
    qryRelatorioNUMERO: TIntegerField;
    qryRelatorioDATA_EMISSAO: TDateField;
    qryRelatorioCHAVE: TStringField;
    qryRelatorioSITUACAO: TStringField;
    qryRelatorioVIRTUAL_SITUACAO: TStringField;
    frxDBDataset2: TfrxDBDataset;
    qryRelatorioPROTOCOLO: TStringField;
    Button1: TButton;
    Label13: TLabel;
    edtRelatorio: TEdit;
    edtEmp: TDBEdit;
    qryVendaSUBTOTAL: TFMTBCDField;
    qryVendaTIPO_DESCONTO: TStringField;
    qryVendaDESPESAS: TFMTBCDField;
    qryVendaSEGURO: TFMTBCDField;
    qryVendaFRETE: TFMTBCDField;
    qryVendaDESCONTO: TFMTBCDField;
    qryVendaTROCO: TFMTBCDField;
    qryVendaDINHEIRO: TFMTBCDField;
    qryVendaTOTAL: TFMTBCDField;
    qryVendaBASE_ST: TFMTBCDField;
    qryVendaTOTAL_ST: TFMTBCDField;
    qryVendaBASE_IPI: TFMTBCDField;
    qryVendaTOTAL_IPI: TFMTBCDField;
    qryVendaBASEICMS: TFMTBCDField;
    qryVendaTOTALICMS: TFMTBCDField;
    qryVendaBASEICMSPIS: TFMTBCDField;
    qryVendaTOTALICMSPIS: TFMTBCDField;
    qryVendaBASEICMSCOF: TFMTBCDField;
    qryVendaTOTALICMSCOFINS: TFMTBCDField;
    qryVendaBASEISS: TFMTBCDField;
    qryVendaTOTALISS: TFMTBCDField;
    qryVendaTRIB_MUN: TFMTBCDField;
    qryVendaTRIB_EST: TFMTBCDField;
    qryVendaTRIB_FED: TFMTBCDField;
    qryVendaTRIB_IMP: TFMTBCDField;
    qryVendaBASE_ICMS_ST: TFMTBCDField;
    qryVendaVALOR_ICMS_ST: TFMTBCDField;
    qryVendaVFCPUFDEST: TFMTBCDField;
    qryVendaVICMSUFDEST: TFMTBCDField;
    qryVendaVICMSUFREMET: TFMTBCDField;
    qryVendaOUTROS: TFMTBCDField;
    qryVendaCHAVE_NFE_REFERENCIADA: TStringField;
    qryVendaMOTIVO_CONTIGENCIA: TStringField;
    qryVendaCONSUMIDOR_FINAL: TStringField;
    qryVendaNPEDIDO: TStringField;
    qryItemPRECO: TFMTBCDField;
    qryItemQTD: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryXMLTRIB_FED: TFMTBCDField;
    qryXMLTRIB_EST: TFMTBCDField;
    qryXMLTRIB_MUN: TFMTBCDField;
    qryXMLSITUACAO: TStringField;
    qryInutilizaCODIGO: TIntegerField;
    qryInutilizaNUMERO: TIntegerField;
    qryInutilizaCHAVE: TStringField;
    qryInutilizaMODELO: TStringField;
    qryInutilizaSERIE: TStringField;
    qryInutilizaDATA_EMISSAO: TDateField;
    qryInutilizaDATA_SAIDA: TDateField;
    qryInutilizaHORA_EMISSAO: TTimeField;
    qryInutilizaHORA_SAIDA: TTimeField;
    qryInutilizaID_EMITENTE: TIntegerField;
    qryInutilizaID_CLIENTE: TIntegerField;
    qryInutilizaID_TRANSPORTADOR: TIntegerField;
    qryInutilizaFK_USUARIO: TIntegerField;
    qryInutilizaFK_CAIXA: TIntegerField;
    qryInutilizaFK_VENDEDOR: TIntegerField;
    qryInutilizaTIPO_FRETE: TStringField;
    qryInutilizaSUBTOTAL: TFMTBCDField;
    qryInutilizaTIPO_DESCONTO: TStringField;
    qryInutilizaDESPESAS: TFMTBCDField;
    qryInutilizaSEGURO: TFMTBCDField;
    qryInutilizaFRETE: TFMTBCDField;
    qryInutilizaDESCONTO: TFMTBCDField;
    qryInutilizaTROCO: TFMTBCDField;
    qryInutilizaDINHEIRO: TFMTBCDField;
    qryInutilizaTOTAL: TFMTBCDField;
    qryInutilizaBASE_ST: TFMTBCDField;
    qryInutilizaTOTAL_ST: TFMTBCDField;
    qryInutilizaBASE_IPI: TFMTBCDField;
    qryInutilizaTOTAL_IPI: TFMTBCDField;
    qryInutilizaBASEICMS: TFMTBCDField;
    qryInutilizaTOTALICMS: TFMTBCDField;
    qryInutilizaBASEICMSPIS: TFMTBCDField;
    qryInutilizaTOTALICMSPIS: TFMTBCDField;
    qryInutilizaBASEICMSCOF: TFMTBCDField;
    qryInutilizaTOTALICMSCOFINS: TFMTBCDField;
    qryInutilizaBASEISS: TFMTBCDField;
    qryInutilizaTOTALISS: TFMTBCDField;
    qryInutilizaOBSFISCO: TMemoField;
    qryInutilizaOBSCONTRIBUINTE: TMemoField;
    qryInutilizaEMAIL: TStringField;
    qryInutilizaXML: TMemoField;
    qryInutilizaPROTOCOLO: TStringField;
    qryInutilizaTRIB_MUN: TFMTBCDField;
    qryInutilizaTRIB_EST: TFMTBCDField;
    qryInutilizaTRIB_FED: TFMTBCDField;
    qryInutilizaTRIB_IMP: TFMTBCDField;
    qryInutilizaFLAG: TStringField;
    qryInutilizaFKORCAMENTO: TIntegerField;
    qryInutilizaFKVENDA: TIntegerField;
    qryInutilizaFKNOTA: TIntegerField;
    qryInutilizaESPECIE: TStringField;
    qryInutilizaMARCA: TStringField;
    qryInutilizaNVOL: TStringField;
    qryInutilizaQVOL: TIntegerField;
    qryInutilizaPESOB: TFMTBCDField;
    qryInutilizaPESOL: TFMTBCDField;
    qryInutilizaPLACA: TStringField;
    qryInutilizaUFPLACA: TStringField;
    qryInutilizaRNTC: TStringField;
    qryInutilizaSITUACAO: TStringField;
    qryInutilizaFKEMPRESA: TIntegerField;
    qryInutilizaTIPO_EMISSAO: TStringField;
    qryInutilizaFINALIDADE: TStringField;
    qryInutilizaMOVIMENTO: TStringField;
    qryInutilizaCFOP: TIntegerField;
    qryInutilizaCHAVE_NFE_REFERENCIADA: TStringField;
    qryInutilizaMOTIVO_CONTIGENCIA: TStringField;
    qryInutilizaBASE_ICMS_ST: TFMTBCDField;
    qryInutilizaVALOR_ICMS_ST: TFMTBCDField;
    qryInutilizaVFCPUFDEST: TFMTBCDField;
    qryInutilizaVICMSUFDEST: TFMTBCDField;
    qryInutilizaVICMSUFREMET: TFMTBCDField;
    qryInutilizaCONSUMIDOR_FINAL: TStringField;
    qryInutilizaNPEDIDO: TStringField;
    qryInutilizaOUTROS: TFMTBCDField;
    qryRelatorioTOTAL: TFMTBCDField;
    qryVendaPESOB: TFMTBCDField;
    qryVendaPESOL: TFMTBCDField;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrNFe: TACBrNFe;
    cbCliente: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    qryClienteCODIGO: TIntegerField;
    qryClienteRAZAO: TStringField;
    qryClienteEMAIL1: TStringField;
    qryClienteCLI: TStringField;
    cbReferencia: TEdit;
    qryVendaCNF: TStringField;
    qryVendaXML_CANCELAMENTO: TMemoField;
    qryXMLXML_CANCELAMENTO: TMemoField;
    qryVendaENVIO_WHATS_STATUS: TIntegerField;
    qryVendaPATH_PDF_WHATS: TStringField;
    qryVendaNUMERO_WHATSAPP: TStringField;
    qryVendaPATH_XML_WHATS: TStringField;
    btnConsCliFor: TSpeedButton;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    LblPeriodo: TLabel;
    edtLoc: TEdit;
    maskInicio: TMaskEdit;
    maskFim: TMaskEdit;
    btnFiltrar: TBitBtn;
    Panel13: TPanel;
    cxAlterar: TcxButton;
    cxCCe: TcxButton;
    cxNovo: TcxButton;
    cxCancelar: TcxButton;
    cxImprimir: TcxButton;
    cxEmail: TcxButton;
    cxRecuperar: TcxButton;
    cxWhatsApp: TcxButton;
    cxRelatorio: TcxButton;
    cxInutiliza: TcxButton;
    cxGerar: TcxButton;
    cxSair: TcxButton;
    procedure edtLocChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSet2Click(Sender: TObject);
    procedure TabSet1Click(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryVendaCalcFields(DataSet: TDataSet);
    procedure dsVendaDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairCorrecaoClick(Sender: TObject);
    procedure btnCorrecaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qryRelatorioCalcFields(DataSet: TDataSet);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure cbClienteEnter(Sender: TObject);
    procedure cbClienteClick(Sender: TObject);
    procedure cbReferenciaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnConsCliForClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxInutilizaClick(Sender: TObject);
    procedure cxRecuperarClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxCCeClick(Sender: TObject);
    procedure cxEmailClick(Sender: TObject);
    procedure cxRelatorioClick(Sender: TObject);
    procedure cxWhatsAppClick(Sender: TObject);
    procedure cxGerarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure localiza;
    procedure tamanho;
    procedure GerarXml;
    function TemAtributo(Attr, Val: Integer): Boolean;
    procedure ListarArquivos(Diretorio: string; Sub: Boolean);
    procedure compactanfce(Caminho, pasta: string);
    procedure habilitaBotoes;
    procedure EnviarEmail;
    procedure GerarRelatorio;
    procedure ConfiguraNFe;
    procedure InutilizaNFCe;
    procedure RecuperaNFe;
    procedure EstornaEstoque;
    { Private declarations }
  public
    operacao, idx: Integer;
    vOrdem, vSql: String;

    { Public declarations }
  end;

var
  frmConsNFe: TfrmConsNFe;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uNFe, ufrmStatus, uEmail, uAPITelegramMensagem, uEnvioWhatsApp,
  uConsCliForNFe, uPrincipal;

procedure TfrmConsNFe.ConfiguraNFe;
var
  Ok: Boolean;
begin
  dados.qryConfig.Close;
  dados.qryConfig.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  dados.qryConfig.Open;

  dados.qryconsulta.Close;
  dados.qryconsulta.sql.Text :=
    'select CONTINGENCIA,PORTA,MODELO,NVIAS,IMPRIME,USAGAVETA from VENDAS_TERMINAIS where NOME='
    + QuotedStr(dados.Getcomputer);
  dados.qryconsulta.Open;

  if (dados.qryConfig.IsEmpty) then
  begin
    ShowMessage('Configure os parametros para emissão do NFCe!');
    exit;
  end;

  with ACBrNFe.Configuracoes.Geral do // configurações gerais
  begin
    ExibirErroSchema := false;
    if dados.qryConfigVISUALIZAERROSCHEMA.Value = 'S' then
      ExibirErroSchema := true;
    FormatoAlerta := dados.qryConfigFORMATOALERTA.Value;
    FormaEmissao := TpcnTipoEmissao(teNormal);
    ModeloDF := TpcnModeloDF(moNFe);
    VersaoDF := TpcnVersaoDF(dados.qryConfigVERSAONFE.Value);
    // VersaoQRCode := TpcnVersaoQrCode(dados.qryConfigVERSAOQRCODE.Value);
    // IdCSC := dados.qryConfigIDTOKEN.Value;
    // CSC := dados.qryConfigTOKEN.Text;
    Salvar := false;
    SSLLib := TSSLLib(dados.qryConfigTIPO_EMISSAO.Value);
    SSLCryptLib := TSSLCryptLib(dados.qryConfigCRYPTLIB.AsInteger);
    SSLHttpLib := TSSLHttpLib(dados.qryConfigHTTPLIB.AsInteger);
    SSLXmlSignLib := TSSLXmlSignLib(dados.qryConfigXMLSIGN.AsInteger);
    Salvar := true;
  end;

  // certificado
  ACBrNFe.Configuracoes.Certificados.Senha :=
    dados.qryConfigSENHACERTIFICADO.Value;

  ACBrNFe.Configuracoes.Certificados.ArquivoPFX :=
    dados.qryConfigCAMINHO_CERTIFICADO.Value;
  ACBrNFe.Configuracoes.Certificados.NumeroSerie :=
    dados.qryConfigNUMEROSERIECERTFICADO.Value;


  // ACBrNFe.SSL.CarregarCertificado;

  with ACBrNFe.Configuracoes.WebServices do // configura webservice
  begin
    UF := dados.qryConfigUF.AsString;
    Ambiente := StrToTpAmb(Ok, IntToStr(dados.qryConfigAMBIENTE.Value + 1));

    Visualizar := false;
    if dados.qryConfigVISUALIZAR.Value = 'S' then
      Visualizar := true;

    Salvar := false;
    if dados.qryConfigSALVARSOAP.Value = 'S' then
      Salvar := true;

    AjustaAguardaConsultaRet := false;
    if dados.qryConfigAJUSTARAUTO.Value = 'S' then
      AjustaAguardaConsultaRet := true;

    if NaoEstaVazio(dados.qryConfigAGUARDAR.AsString) then
      AguardarConsultaRet := ifThen(StrToInt(dados.qryConfigAGUARDAR.AsString) <
        1000, StrToInt(dados.qryConfigAGUARDAR.AsString) * 1000,
        StrToInt(dados.qryConfigAGUARDAR.AsString))
    else
      dados.qryConfigAGUARDAR.AsString := IntToStr(AguardarConsultaRet);

    if NaoEstaVazio(dados.qryConfigTENTATIVAS.AsString) then
      Tentativas := StrToInt(dados.qryConfigTENTATIVAS.AsString)
    else
      dados.qryConfigTENTATIVAS.AsString := IntToStr(Tentativas);

    if NaoEstaVazio(dados.qryConfigINTERVALO.AsString) then
      IntervaloTentativas := ifThen(StrToInt(dados.qryConfigINTERVALO.AsString)
        < 1000, StrToInt(dados.qryConfigINTERVALO.AsString) * 1000,
        StrToInt(dados.qryConfigINTERVALO.AsString))
    else
      dados.qryConfigINTERVALO.AsString :=
        IntToStr(ACBrNFe.Configuracoes.WebServices.IntervaloTentativas);

    ProxyHost := '';
    ProxyPort := '';
    ProxyUser := '';
    ProxyPass := '';
    ACBrNFe.SSL.SSLType := TSSLType(dados.qryconfigSSL_TIPO.AsInteger);
  end;

  with ACBrNFe.Configuracoes.Arquivos do
  // configura caminho dos arqivos
  begin
    Salvar := false;
    SepararPorMes := true;
    AdicionarLiteral := false;
    if dados.qryConfigLITERAL.Value = 'S' then
      AdicionarLiteral := true;

    EmissaoPathNFe := true;
    SalvarEvento := true;
    SepararPorCNPJ := true;
    SepararPorModelo := false;

    PathSalvar := dados.qryConfigPATHSALVARNFE.Value;
    PathSchemas := dados.qryConfigPATHSCHEMAS_NFE.Value;
    PathNFe := dados.qryConfigPATHENVIADA_NFE.Value;
    PathInu := dados.qryConfigPATHINUTI_NFE.Value;
    PathEvento := dados.qryConfigPATHEVENTO_NFE.Value;
  end;

  if ACBrNFe.DANFE <> nil then
    if not dados.qryConfigLOGOMARCA.IsNull then
      ACBrNFe.DANFE.logo := dados.qryConfigLOGOMARCA.Value;

  // altera configuração emissão de nfce e impressora

  ACBrNFeDANFeRL1.Sistema := dados.qryParametroEMPRESA.Value + ' | ' +
    dados.qryParametroFONE1.Value + ' ' + dados.qryParametroFONE2.Value;
  ACBrNFeDANFeRL1.Site := dados.qryParametroSITE.Value;

end;

procedure TfrmConsNFe.cxAlterarClick(Sender: TObject);
var
  codigo: Integer;
begin
  operacao := 1;
  if qryVenda.IsEmpty then
    exit;

  if (qryVendaSITUACAO.Value <> '1') and (qryVendaSITUACAO.Value <> '4') and
    (qryVendaSITUACAO.Value <> '7') then
  begin
    ShowMessage('Não é possivel alterar NFe Transmitida!');
    exit;
  end;

  codigo := qryVendaCODIGO.Value;

  try
    cxAlterar.Enabled := false;
    frmCadNFe := TfrmCadNFe.Create(Application);
    frmCadNFe.qryVenda.Close;
    frmCadNFe.qryVenda.Params[0].Value := codigo;
    frmCadNFe.qryVenda.Open;

    frmCadNFe.qryVenda.edit;
    frmCadNFe.qryVendaSERIE.Value := dados.qryConfigSERIE_NFE.AsString;

    if (qryVendaSITUACAO.Value = '1') then
    begin

      frmCadNFe.cxGravar.Enabled := true;
      frmCadNFe.cxTransmitir.Enabled := false;
      frmCadNFe.cxSair.Enabled := true;
      frmCadNFe.DBGridEh1.ReadOnly := false;
      frmCadNFe.Panel3.Enabled := true;
      frmCadNFe.DBEdit1.Enabled := true;
      frmCadNFe.PageControl2.Enabled := true;
    end;

    if (qryVendaSITUACAO.Value = '4') then
    begin

      frmCadNFe.cxGravar.Enabled := true;
      frmCadNFe.cxTransmitir.Enabled := false;
      frmCadNFe.cxSair.Enabled := true;
      frmCadNFe.DBGridEh1.ReadOnly := false;
      frmCadNFe.Panel3.Enabled := false;
      frmCadNFe.DBEdit1.Enabled := true;
      frmCadNFe.PageControl2.Enabled := false;
    end;

    if (qryVendaSITUACAO.Value = '7') then
    begin

      frmCadNFe.cxGravar.Enabled := false;
      frmCadNFe.cxTransmitir.Enabled := true;
      frmCadNFe.cxSair.Enabled := false;
      frmCadNFe.DBGridEh1.ReadOnly := true;
      frmCadNFe.Panel3.Enabled := false;
      frmCadNFe.DBEdit1.Enabled := true;
      frmCadNFe.PageControl2.Enabled := true;
    end;

    frmCadNFe.ShowModal;

  finally
    frmCadNFe.Release;
    btnFiltrar.Click;
    cxAlterar.Enabled := true;
  end;
end;

procedure TfrmConsNFe.cxCancelarClick(Sender: TObject);
var
  Chave, idLote, CNPJ, Protocolo, Justificativa: string;
begin
  try
    operacao := 0;
    ConfiguraNFe;
    ACBrNFe.Configuracoes.Arquivos.PathEvento :=
      dados.qryConfigPATHCAN_NFE.Value;
    try
      cxCancelar.Enabled := false;
      idLote := '1';
      InputQuery('Cancelamento', 'Justificativa do Cancelamento',
        Justificativa);
      if length(Justificativa) < 15 then
      begin
        Application.ProcessMessages;
        ShowMessage
          ('Justificativa de cancelamento deve ter mais de 15 caracteres!');
        exit;
      end;

      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);

      ACBrNFe.EventoNFe.Evento.Clear;
      ACBrNFe.EventoNFe.idLote := StrToInt(idLote);

      with ACBrNFe.EventoNFe.Evento.New do
      begin
        infEvento.dhEvento := now;
        infEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := Justificativa;
      end;

      ACBrNFe.EnviarEvento(StrToInt(idLote));

      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);
      ACBrNFe.Consultar;

      if ACBrNFe.WebServices.Consulta.cStat = 101 then
      begin
        qryVenda.edit;
        qryVendaSITUACAO.Value := '3';
        qryVendaFLAG.Value := 'N';
        qryVendaCHAVE.Value :=
          copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id, 4, 100);
        qryVendaPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0]
          .NFe.procNFe.nProt;
        qryVendaXML_CANCELAMENTO.Value := ACBrNFe.NotasFiscais.Items[0].XML;
        qryVenda.Post;

        Application.ProcessMessages;

        EstornaEstoque;

        ShowMessage('Cancelamento realizado com sucesso!');
      end
      else
        ShowMessage(ACBrNFe.WebServices.EnvEvento.XMotivo);
    except
      on e: exception do
        begin
          ShowMessage(e.Message + sLineBreak +
            ACBrNFe.WebServices.EnvEvento.XMotivo);
          LogTelegramBot('TfrmConsNFe.btnCancelar', e.Message, 'ERP Fiscal');
        end;
    end;

  finally
    cxCancelar.Enabled := true;
    btnFiltrar.Click;
  end;

end;

procedure TfrmConsNFe.cxCCeClick(Sender: TObject);
var
  cod: Integer;
begin
  TabGerar.TabVisible := false;
  TabCarta.TabVisible := true;
  TabInutilizar.TabVisible := false;
  PagUtilidade.Visible := true;
  PagUtilidade.ActivePage := TabCarta;

  qryCorrecao.Close;
  qryCorrecao.Params[0].Value := qryVendaCODIGO.Value;
  qryCorrecao.Open;

  qryCorrecao.First;
  cod := qryCorrecaoSEQUENCIA.AsInteger + 1;
  qryCorrecao.Insert;
  qryCorrecaoCODIGO.Value := dados.Numerador('NFE_CARTA', 'CODIGO',
    'N', '', '');
  qryCorrecaoFK_NFE.Value := qryVendaCODIGO.Value;
  qryCorrecaoSEQUENCIA.Value := cod;
  qryCorrecaoFK_EMPRESA.Value := qryVendaFKEMPRESA.Value;
  qryCorrecaoDATA.Value := date;
  DBMemo1.SetFocus;
end;

procedure TfrmConsNFe.cxEmailClick(Sender: TObject);
begin
  ConfiguraNFe;
  try
    frmEmail := TfrmEmail.Create(Application);
    frmEmail.vNumero := qryVendaNUMERO.Value;
    frmEmail.vNome := dados.qryEmpresaFANTASIA.Value;
    frmEmail.vTipo := 'NFE';
    frmEmail.vTituloAnexo := '';
    frmEmail.eNotaFiscal := true;
    frmEmail.AnexaArquivo := false;
    frmEmail.LstAnexo.Clear;
    frmEmail.LstAnexo.Items.Add(qryVendaCHAVE.Value);
    frmEmail.ACBrNFe1.NotasFiscais.Clear;

    frmEmail.ACBrNFe1.NotasFiscais.LoadFromString(qryVendaXML.Value);
    frmEmail.edtEmail.Text := qryVendaEMAIL1.Value;
    frmEmail.EdtAssunto.Text := 'NFE nº' + qryVendaNUMERO.AsString;
    frmEmail.edtMensagem.Text := 'SEGUE EM ANEXO XML E DANFE NFE nº' +
      qryVendaNUMERO.AsString;

    frmEmail.ACBrNFe1.NotasFiscais.GravarXML();

    frmEmail.ACBrNFe1.DANFE.vTribFed := qryXMLTRIB_FED.AsFloat;
    frmEmail.ACBrNFe1.DANFE.vTribEst := qryXMLTRIB_EST.AsFloat;
    frmEmail.ACBrNFe1.DANFE.vTribMun := qryXMLTRIB_MUN.AsFloat;
    frmEmail.ACBrNFe1.DANFE.PathPDF := dados.qryConfigPATHPDF.Value;

    frmEmail.ACBrNFe1.NotasFiscais.ImprimirPDF;

    frmEmail.ShowModal;
  finally
    frmEmail.Release;
  end;
end;

procedure TfrmConsNFe.cxImprimirClick(Sender: TObject);
begin
   try
    cxImprimir.Enabled := false;

    ACBrNFe.DANFE := ACBrNFeDANFeRL1;
    ACBrNFe.DANFE.PathPDF := dados.qryConfigPATHPDF.Value;
    ACBrNFe.DANFE.NumCopias := dados.qryConfigNCOPIAS.Value;

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);

    ACBrNFe.DANFE.Cancelada := false;
    if qryVendaSITUACAO.Value = '3' then
      ACBrNFe.DANFE.Cancelada := true;
    ACBrNFe.DANFE.vTribFed := qryVendaTRIB_FED.AsFloat;
    ACBrNFe.DANFE.vTribEst := qryVendaTRIB_EST.AsFloat;
    ACBrNFe.DANFE.vTribMun := qryVendaTRIB_MUN.AsFloat;
    ACBrNFe.DANFE.PathPDF := dados.qryConfigPATHPDF.Value;
    ACBrNFe.NotasFiscais.Imprimir;
    if qryVendaSITUACAO.Value = '2' then
      ACBrNFe.NotasFiscais.ImprimirPDF;

  finally
    cxImprimir.Enabled := true;
  end;
end;

procedure TfrmConsNFe.cxInutilizaClick(Sender: TObject);
var
  dia, mes, ano: Word;
begin
  TabGerar.TabVisible := false;
  TabCarta.TabVisible := false;
  TabInutilizar.TabVisible := true;
  PagUtilidade.Visible := true;
  PagUtilidade.ActivePage := TabInutilizar;

  ConfiguraNFe;
  DecodeDate(date, ano, mes, dia);
  edtModelo.Text := '55';
  edtSerie.Text := dados.qryTerminalSERIE.Value;
  edtAno.Text := IntToStr(ano);
  edtJustificativa.Text := 'QUEBRA DE SEQUÊNCIA DE NUMERAÇÃO';
end;

procedure TfrmConsNFe.cxNovoClick(Sender: TObject);
begin
   operacao := 1;
  try
    cxNovo.Enabled := false;
    frmCadNFe := TfrmCadNFe.Create(Application);

    frmCadNFe.qryVenda.Close;
    frmCadNFe.qryVenda.Params[0].Value := -1;
    frmCadNFe.qryVenda.Open;

    frmCadNFe.qryVenda.Insert;

    frmCadNFe.qryVendaCODIGO.Value := dados.Numerador('NFE_MASTER', 'CODIGO',
      'N', '', '');
    frmCadNFe.qryVendaFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;

    frmCadNFe.qryVendaSITUACAO.Value := '1';
    frmCadNFe.qryVendaDATA_EMISSAO.Value := date;
    frmCadNFe.qryVendaDATA_SAIDA.Value := date;
    frmCadNFe.qryVendaSUBTOTAL.Value := 0;
    frmCadNFe.qryVendaTPPAG.Value := 0;
    frmCadNFe.qryVendaINDPAG.Value := 0;
    frmCadNFe.qryVendaTPINTEGRA.Value := 0;
    frmCadNFe.qryVendaTPBANDEIRA.Value := 0;
    frmCadNFe.qryVendaTOTAL.Value := 0;
    frmCadNFe.qryVendaFRETE.Value := 0;
    frmCadNFe.qryVendaOUTROS.Value := 0;
    frmCadNFe.qryVendaSEGURO.Value := 0;
    frmCadNFe.qryVendaDESCONTO.Value := 0;
    frmCadNFe.qryVendaBASEICMS.Value := 0;
    frmCadNFe.qryVendaBASE_ST.Value := 0;
    frmCadNFe.qryVendaBASEICMSPIS.Value := 0;
    frmCadNFe.qryVendaBASEICMSCOF.Value := 0;
    frmCadNFe.qryVendaTOTAL_IPI.Value := 0;
    frmCadNFe.qryVendaTOTALICMS.Value := 0;
    frmCadNFe.qryVendaTOTAL_ST.Value := 0;
    frmCadNFe.qryVendaTOTALICMSPIS.Value := 0;
    frmCadNFe.qryVendaTOTALICMSCOFINS.Value := 0;
    frmCadNFe.qryVendaFINALIDADE.Value := '1';
    frmCadNFe.qryVendaTIPO_FRETE.Value := '5';
    frmCadNFe.qryVendaFINALIDADE.Value := '0';
    frmCadNFe.qryVendaMOVIMENTO.Value := 'S';
    frmCadNFe.qryVendaMARCA.Value := 'MARCA';
    frmCadNFe.qryVendaESPECIE.Value := 'ESPECIE';
    frmCadNFe.qryVendaOBSFISCO.Value := dados.qryEmpresaOBSFISCO.Value;
    frmCadNFe.qryVendaPESOB.Value := 0;
    frmCadNFe.qryVendaPESOL.Value := 0;
    frmCadNFe.qryVendaID_TRANSPORTADOR.Value :=
      dados.qryConfigTRANSPORTADOR_PADRAO.Value;
    frmCadNFe.qryVendaQVOL.Value := 1;
    frmCadNFe.qryVendaCONSUMIDOR_FINAL.Value := 'N';
    frmCadNFe.qryVendaMODELO.Value := '55';
    frmCadNFe.qryVendaCFOP.Value := 5102;
    frmCadNFe.qryVendaSERIE.Value := dados.qryEmpresaNFE_SERIE.AsString;

    frmCadNFe.cxGravar.Enabled := true;
    frmCadNFe.cxTransmitir.Enabled := true;
    frmCadNFe.cxSair.Enabled := true;
    frmCadNFe.DBGridEh1.ReadOnly := false;
    frmCadNFe.Panel3.Enabled := true;
    frmCadNFe.ShowModal;

  finally
    frmCadNFe.Release;
    btnFiltrar.Click;
    cxNovo.Enabled := true;
  end;
end;

procedure TfrmConsNFe.cxGerarClick(Sender: TObject);
begin
  TabGerar.TabVisible := true;
  TabCarta.TabVisible := false;
  TabInutilizar.TabVisible := false;
  PagUtilidade.Visible := true;
  PagUtilidade.ActivePage := TabGerar;

  ConfiguraNFe;

  edtEmail.Text := dados.qrySped_contadorEMAIL.AsString;
  edtArquivo.Text := ACBrNFe.Configuracoes.Arquivos.PathNFe + '\' +
    TiraPontos(dados.qryEmpresaCNPJ.AsString) + '\' + FormatDateTime('yyyymm',
    strtodate(maskInicio.Text)) + '.ZIP';

  edtRelatorio.Text := ACBrNFe.Configuracoes.Arquivos.PathNFe + '\' +
    TiraPontos(dados.qryEmpresaCNPJ.AsString) + '\' + FormatDateTime('yyyymm',
    strtodate(maskInicio.Text)) + '\';
end;

procedure TfrmConsNFe.cxRecuperarClick(Sender: TObject);
begin
   try
    cxRecuperar.Enabled := false;
    operacao := 1;

    ConfiguraNFe;
    RecuperaNFe;
  finally
    cxRecuperar.Enabled := true;
    btnFiltrar.Click;
  end;
end;

procedure TfrmConsNFe.cxRelatorioClick(Sender: TObject);
begin
  if qryVenda.IsEmpty then
    exit;
  try
    cxRelatorio.Enabled := false;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\ListadeNFe.fr3');
    frxReport.ShowReport;
  finally
    cxRelatorio.Enabled := true;

  end;
end;

procedure TfrmConsNFe.cxSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmConsNFe.cxWhatsAppClick(Sender: TObject);
var
  sDir,
  sPath: string;
  sPathXML: string;
  sNome: string;
  sNomeXML: string;
  bShowDialog: Boolean;
  sNumero: string;
begin
  try
    if qryVendaCODIGO.AsInteger <= 0 then
      begin
        ShowMessage('Nenhuma NFe Selecionada.');
        Exit;
      end;

    sDir  :=  ExtractFilePath(Application.ExeName)+'PDF\';
    if not (DirectoryExists(sDir)) then
      ForceDirectories(sDir);

    cxWhatsApp.Enabled := false;

    ACBrNFe.DANFE := ACBrNFeDANFeRL1;

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);

    ACBrNFe.DANFE.vTribFed := qryVendaTRIB_FED.AsFloat;
    ACBrNFe.DANFE.vTribEst := qryVendaTRIB_EST.AsFloat;
    ACBrNFe.DANFE.vTribMun := qryVendaTRIB_MUN.AsFloat;
    ACBrNFe.DANFE.PathPDF := sDir;
    sNome :=  'NFe Numero '+
      qryVendaNUMERO.AsString+' Serie '+
      qryVendaSERIE.AsString;
    sNomeXML  :=  sNome+'.xml';
    ACBrNFe.DANFE.NomeDocumento := sNome;
    sPath :=  ACBrNFe.DANFE.PathPDF+ACBrNFe.DANFE.NomeDocumento;
    sPathXML  := ACBrNFe.DANFE.PathPDF+sNomeXML;
    ACBrNFe.NotasFiscais.ImprimirPDF;
    ACBrNFe.NotasFiscais.Items[0].
      GravarXML(sNomeXML, ACBrNFe.DANFE.PathPDF);
    try
      frmEnvioWhatsApp := TfrmEnvioWhatsApp.Create(Application);
      frmEnvioWhatsApp.ShowModal;
    finally
      sNumero := frmEnvioWhatsApp.edtNumero.Text;
      frmEnvioWhatsApp.Release;
    end;
    if Length(sNumero) <> 11 then
      begin
        Application.MessageBox('Número invalido', 'EnvioWhatsApp',
          MB_OK+MB_ICONERROR);
        Exit;
      end;
    if not (qryVenda.State in dsEditModes) then
      qryVenda.Edit;
    qryVendaENVIO_WHATS_STATUS.AsInteger  :=  1;
    qryVendaPATH_PDF_WHATS.AsString :=  sPath;
    qryVendaNUMERO_WHATSAPP.AsString  :=  sNumero;
    qryVendaPATH_XML_WHATS.AsString :=  sPathXML;
    qryVenda.Post;
    dados.Conexao.Commit;
    ShowMessage('Sua NFe será enviada para o Número informado.');
  finally
    cxWhatsApp.Enabled := true;
    edtLoc.SetFocus;
  end;
end;

procedure TfrmConsNFe.EstornaEstoque;
begin
  if dados.qryConfigGERA_FI_ES.Value = 'S' then
  begin
    if (qryVendaFKVENDA.IsNull) or (qryVendaFKVENDA.AsInteger = 0) then
    begin
      try
        qryItem.EnableControls;
        qryItem.First;
        while not qryItem.eof do
        begin
          dados.AtualizaEstoque((qryItemQTD.AsFloat), qryItemID_PRODUTO.Value);
          qryItem.Next;
        end;
      finally
        qryItem.DisableControls;
      end;
    end;
  end;
end;

procedure TfrmConsNFe.btnConsCliForClick(Sender: TObject);
begin
  try
    frmConsCliForNFe  :=  TfrmConsCliForNFe.Create(Application);
    frmConsCliForNFe.ShowModal;
  finally
    if frmConsCliForNFe.iCodigo > 0 then
      begin
        cbReferencia.Text :=  IntToStr(frmConsCliForNFe.iCodigo);
        cbReferenciaChange(Self);
      end;
    frmConsCliForNFe.Release;
  end;
end;

procedure TfrmConsNFe.btnCorrecaoClick(Sender: TObject);
begin
  try
    btnCorrecao.Enabled := false;
    if (qryCorrecao.State in dsEditmodes) then
      qryCorrecao.Post;
    dados.Conexao.Commit;

    ACBrNFe.EventoNFe.Evento.Clear;
    with ACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := qryVendaCHAVE.Value;

      infEvento.CNPJ := TiraPontos(dados.qryEmpresaCNPJ.Value);
      if dados.qryEmpresaTIPO.Value = 'FÍSICA' then
        infEvento.CNPJ := '000' + TiraPontos(dados.qryEmpresaCNPJ.Value);

      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := qryCorrecaoSEQUENCIA.Value;
      infEvento.detEvento.xCorrecao := qryCorrecaoCORRECAO.Value;
    end;
    try
      if ACBrNFe.EnviarEvento(StrToInt('1')) then
      begin
        ACBrNFe.DANFE := ACBrNFeDANFeRL1;
        ACBrNFe.ImprimirEvento;
      end;
    except
      on E: Exception do
        LogTelegramBot('TfrmConsNFe.btnCorrecao', e.Message, 'ERP Fiscal');
    end;
  finally
    btnCorrecao.Enabled := true;
  end;
end;

procedure TfrmConsNFe.RecuperaNFe;
begin
  try
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);
    ACBrNFe.Consultar;

    if ACBrNFe.WebServices.Consulta.cStat = 100 then
    begin
      qryVenda.edit;
      qryVendaCHAVE.Value :=
        copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id, 4, 100);
      qryVendaPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
      qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XMLAssinado;
      qryVendaSITUACAO.Value := '2';
      qryVendaFLAG.Value := 'N';
      qryVenda.Post;

      ACBrNFe.NotasFiscais.GravarXML();

      ACBrNFe.DANFE.vTribFed := qryXMLTRIB_FED.AsFloat;
      ACBrNFe.DANFE.vTribEst := qryXMLTRIB_EST.AsFloat;
      ACBrNFe.DANFE.vTribMun := qryXMLTRIB_MUN.AsFloat;
      ACBrNFe.DANFE.PathPDF := dados.qryConfigPATHPDF.Value;

      ACBrNFe.NotasFiscais.ImprimirPDF;

      Application.ProcessMessages;

    end
    else
    begin
      Application.ProcessMessages;
      ShowMessage('Status:' + #13 + IntToStr(ACBrNFe.WebServices.Consulta.cStat) +
        '-' + ACBrNFe.WebServices.Consulta.XMotivo);
      LogTelegramBot('TfrmConsNFe.RecuperaNFe', 'Status: ' + IntToStr(ACBrNFe.WebServices.Consulta.cStat) +
        '-' + ACBrNFe.WebServices.Consulta.XMotivo, 'ERP Fiscal');
    end;
  except
    on E: Exception do
      LogTelegramBot('TfrmConsNFe', e.Message, 'ERP Fiscal');
  end;
end;

procedure TfrmConsNFe.habilitaBotoes;
begin

  // btnAlterar.Visible := false;
  cxCancelar.Enabled := false;
  cxInutiliza.Enabled := false;
  cxRecuperar.Enabled := false;
  cxImprimir.Enabled := false;
  cxCCe.Enabled := false;
  cxEmail.Enabled := false;
  cxRelatorio.Enabled := false;
  cxWhatsApp.Enabled :=  False;
  // btnAlterar.Visible := TabSet1.TabIndex = 0;
  cxCancelar.Enabled := TabSet1.TabIndex = 1;
  cxInutiliza.Enabled := true;
  cxRecuperar.Enabled := TabSet1.TabIndex = 3;
  cxImprimir.Enabled := TabSet1.TabIndex in [1, 2, 6];
  cxCCe.Enabled := TabSet1.TabIndex = 1;
  cxEmail.Enabled := TabSet1.TabIndex = 1;
  cxRelatorio.Enabled := true;
  if TabSet1.TabIndex in [1, 2] then
  cxWhatsApp.Enabled :=  True;

end;

procedure TfrmConsNFe.EnviarEmail;
var
  Dir, ArqXML, para, Assunto: string;
  MS: TMemoryStream;
  P, N: Integer;
begin
  ProgressBar1.Position := 1;

  Dir := edtArquivo.Text;

  Assunto := 'XML E DANFE NF-e REF.' + FormatDateTime('yyyymm',
    qryVendaDATA_EMISSAO.Value);

  ACBrMail1.Clear;
  ACBrMail1.IsHTML := false;
  ACBrMail1.Subject := Assunto;
  ACBrMail1.FromName := dados.qryEmpresaFANTASIA.AsString;
  ACBrMail1.Host := dados.qryConfigEMAILHOST.AsString;
  ACBrMail1.Port := dados.qryConfigEMAILPORTA.AsString;
  ACBrMail1.AddAddress(LowerCase(edtEmail.Text), '');
  ACBrMail1.Username := LowerCase(dados.qryConfigEMAILUSER.AsString);
  ACBrMail1.From := LowerCase(dados.qryConfigEMAILUSER.AsString);
  ACBrMail1.Password := dados.Crypt('D', dados.qryConfigEMAILSENHA.AsString);
  ACBrMail1.IsHTML := false;

  ACBrMail1.SetSSL := false;
  ACBrMail1.SetTLS := false;

  if dados.qryConfigEMAILSSL.Value = 'S' then
  begin
    ACBrMail1.SetSSL := true;
    ACBrMail1.SetTLS := true;
  end;

  try
    ACBrMail1.ReadingConfirmation := false;
    ACBrMail1.UseThread := false;
    para := LowerCase(edtEmail.Text);
    ACBrMail1.AltBody.Text := 'SEGUE EM ANEXO ARQUIVOS DE NF-E';
    ACBrMail1.AddAttachment(edtArquivo.Text);
    ACBrMail1.AddAttachment(edtRelatorio.Text + frxPDF.FileName);
    ACBrMail1.Send(false);
    ShowMessage('E-mail Enviado Com Sucesso!');
  except
    on E: Exception do
      LogTelegramBot('TfrmConsNFe.EnviarEmail', e.Message, 'ERP Fiscal');
  end;
end;

procedure TfrmConsNFe.btnSairCorrecaoClick(Sender: TObject);
begin
  qryCorrecao.Cancel;
  PagUtilidade.Visible := false;
  Application.ProcessMessages;
end;

procedure TfrmConsNFe.Button1Click(Sender: TObject);
begin
  try
    Button1.Enabled := false;

    if (Trim(edtEmail.Text) = '') then
    begin
      ShowMessage('Informe E-mail do Contador!');
      exit;
    end;

    if not FilesExists(edtArquivo.Text) then
    begin
      ShowMessage('Arquivo não existe');
      exit;
    end;

    EnviarEmail;
  finally
    Button1.Enabled := true;
  end;

end;

procedure TfrmConsNFe.cbClienteClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmConsNFe.cbClienteEnter(Sender: TObject);
begin
  TDBLookupComboBox(Sender).DropDown;
end;

procedure TfrmConsNFe.cbReferenciaChange(Sender: TObject);
begin
  if Trim(cbReferencia.Text) <> '' then
    cbCliente.KeyValue := dados.buscacodigoPessoa(cbReferencia.Text)
  else
    cbCliente.KeyValue := 0;
  localiza;
end;

function TfrmConsNFe.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmConsNFe.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio + '\*.*xml', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = true then
          begin
            TempNome := Diretorio + '\' + F.Name;
            ListarArquivos(TempNome, true);
          end;
      end
      else
      begin
        memLista.Items.Add(Diretorio + '\' + F.Name);
      end;
      Ret := FindNext(F);
    end;
  finally
    begin
      FindClose(F);
    end;
  end;
end;

procedure TfrmConsNFe.compactanfce(Caminho, pasta: string);
var
  ZipFile: TZipFile;
  arquivo: string;
begin
  // Cria uma instância da classe TZipFile
  ZipFile := TZipFile.Create;
  try
    // Indica o diretório e nome do arquivo Zip que será criado
    ZipFile.Open(Caminho + '\' + pasta + '.zip', zmWrite);
    for arquivo in memLista.Items do
      ZipFile.Add(arquivo);

    MessageDlg('Compactação concluída!', mtInformation, [mbOK], 0);
  finally
    // Libera o objeto da memória
    ZipFile.Free;
  end;
end;

procedure TfrmConsNFe.ACBrNFeStatusChange(Sender: TObject);
begin
  case ACBrNFe.Status of
    stIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFeStatusServico:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeRetRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeInutilizacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecibo:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCadastro:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCCe:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEvento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;

end;

procedure TfrmConsNFe.BitBtn1Click(Sender: TObject);
var
  dia, mes, ano, dia1, mes1, ano1: Word;
begin

  DecodeDate(strtodate(maskInicio.Text), ano, mes, dia);
  DecodeDate(strtodate(maskFim.Text), ano1, mes1, dia1);

  if (mes + ano) <> (mes1 + ano1) then
  begin
    ShowMessage('Período Inválido');
    exit;
  end;

  dados.qryconsulta.Close;
  dados.qryconsulta.sql.Text := ' SELECT NUMERO FROM NFE_MASTER' +
    ' WHERE SITUACAO IN (''1'',''4'',''7'') AND ' + ' FKEMPRESA=:EMPRESA AND ' +
    ' DATA_EMISSAO between :DATA1 AND :DATA2 ORDER BY numero';
  dados.qryconsulta.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  dados.qryconsulta.Params[1].AsDate := strtodate(maskInicio.EditText);
  dados.qryconsulta.Params[2].AsDate := strtodate(maskFim.EditText);
  dados.qryconsulta.Open;

  if not dados.qryconsulta.IsEmpty then
  begin
    ShowMessage('Existem Notas em ABERTO, CONTINGÊNCIA ou com DUPLICIDADE!' +
      sLineBreak + 'Não é Possivel Continuar!');
    exit;
  end;

  try
    BitBtn1.Enabled := false;
    qryXML.Close;
    qryXML.Params[0].AsDate := strtodate(maskInicio.EditText);
    qryXML.Params[1].AsDate := strtodate(maskFim.EditText);
    qryXML.Params[2].Value := dados.qryEmpresaCODIGO.Value;
    qryXML.Open;
    if not qryXML.IsEmpty then
    begin
      qryXML.Last;
      ProgressBar1.Position := 1;
      ProgressBar1.Min := 1;
      ProgressBar1.Max := qryXML.RecordCount;
      qryXML.First;
      while not qryXML.eof do
      begin
        GerarXml;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        qryXML.Next;
      end;
    end;
    GerarRelatorio;

    Sleep(5000);

    memLista.Items.Clear;
    ListarArquivos(ACBrNFe.Configuracoes.Arquivos.GetPathNFe
      (qryXMLDATA_EMISSAO.Value, TiraPontos(dados.qryEmpresaCNPJ.AsString),
      '55'), false);
    compactanfce(ACBrNFe.Configuracoes.Arquivos.PathNFe + '\' +
      TiraPontos(dados.qryEmpresaCNPJ.AsString), FormatDateTime('yyyymm',
      qryVendaDATA_EMISSAO.Value));
  finally
    BitBtn1.Enabled := true;
  end;

end;

procedure TfrmConsNFe.BitBtn2Click(Sender: TObject);
begin
  PagUtilidade.Visible := false;
  Application.ProcessMessages;
end;

procedure TfrmConsNFe.GerarXml;
begin

  ACBrNFe.NotasFiscais.Clear;
  if (qryVendaSITUACAO.Value = '2') then
    ACBrNFe.NotasFiscais.LoadFromString(qryXMLXML.AsString);
  if (qryVendaSITUACAO.Value = '3') then
    ACBrNFe.NotasFiscais.LoadFromString(qryXMLXML_CANCELAMENTO.AsString);

  ACBrNFe.DANFE.Cancelada := false;
  if qryVendaSITUACAO.Value = 'C' then
    ACBrNFe.DANFE.Cancelada := true;
  ACBrNFe.DANFE.vTribFed := qryVendaTRIB_FED.AsFloat + qryVendaTRIB_IMP.AsFloat;
  ACBrNFe.DANFE.vTribEst := qryVendaTRIB_EST.AsFloat;
  ACBrNFe.DANFE.vTribMun := qryVendaTRIB_MUN.AsFloat;
  ACBrNFe.DANFE.PathPDF := dados.qryConfigPATHPDF.Value;
  ACBrNFe.NotasFiscais.ImprimirPDF;

  if (qryVendaSITUACAO.Value = '2') or (qryVendaSITUACAO.Value = '3') then
    ACBrNFe.NotasFiscais.GravarXML();

end;

procedure TfrmConsNFe.GerarRelatorio;
begin
  qryRelatorio.Close;
  qryRelatorio.Params[0].AsDate := strtodate(maskInicio.Text);
  qryRelatorio.Params[1].AsDate := strtodate(maskFim.Text);
  qryRelatorio.Params[2].Value := dados.qryEmpresaCODIGO.Value;
  qryRelatorio.Open;

  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\RelNFE.fr3');

  frxPDF.FileName := 'Lista NF-e Ref.' + FormatDateTime('yyyymm',
    strtodate(maskInicio.Text)) + '.pdf';
  frxPDF.DefaultPath := edtRelatorio.Text;
  frxPDF.ShowDialog := false;
  frxPDF.ShowProgress := false;
  frxPDF.OverwritePrompt := false;
  frxReport.PrepareReport();
  frxReport.Export(frxPDF);

end;

procedure TfrmConsNFe.btnFecharClick(Sender: TObject);
begin
  PagUtilidade.Visible := false;
  Application.ProcessMessages;
end;

procedure TfrmConsNFe.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmConsNFe.InutilizaNFCe;
var
  i: Integer;
begin
  for i := StrToInt(edtInicial.Text) to StrToInt(edtFinal.Text) do
  begin

    dados.qryconsulta.Close;
    dados.qryconsulta.sql.Text :=
      'SELECT SITUACAO FROM NFE_MASTER WHERE NUMERO=:NUME';
    dados.qryconsulta.Params[0].Value := i;
    dados.qryconsulta.Open;

    if dados.qryconsulta.Fields[0].Value = 'O' then
    begin
      ShowMessage('Não é possível initulizar NFCe OFFLINE!');
      abort;
    end;

    qryInutiliza.Close;
    qryInutiliza.Params[0].Value := i;
    qryInutiliza.Params[1].Value := dados.qryEmpresaCODIGO.Value;
    qryInutiliza.Open;
    if not qryInutiliza.IsEmpty then
    begin
      qryInutiliza.edit;
      qryInutilizaSITUACAO.Value := '5';
      qryInutiliza.Post;
      dados.Conexao.Commit;
      Application.ProcessMessages;
    end
    else
    begin
      qryInutiliza.Insert;
      qryInutilizaCODIGO.Value := dados.Numerador('NFE_MASTER', 'CODIGO',
        'N', '', '');
      qryInutilizaNUMERO.Value := i;
      qryInutilizaCHAVE.Value := 'CHAVE NÃO GERADA';
      qryInutilizaMODELO.Value := '55';
      qryInutilizaSERIE.Value := dados.qryTerminalSERIE.Value;
      qryInutilizaDATA_EMISSAO.Value := date;
      qryInutilizaDATA_SAIDA.Value := date;
      qryInutilizaID_EMITENTE.Value := dados.qryEmpresaCODIGO.Value;
      qryInutilizaFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      qryInutilizaID_CLIENTE.Value := 0;
      qryInutilizaFK_USUARIO.Value := 0;
      qryInutilizaFK_CAIXA.Value := 0;
      qryInutilizaFK_VENDEDOR.Value := 0;
      qryInutilizaSUBTOTAL.Value := 0;
      qryInutilizaTOTAL.Value := 0;
      qryInutilizaSITUACAO.Value := '5';
      qryInutiliza.Post;
      dados.Conexao.Commit;
    end;
  end;
end;

procedure TfrmConsNFe.btnInutilizarClick(Sender: TObject);
var
  sNomeArquivo1, sNomeArquivo2, Justificativa: String;
  i: Integer;
begin
  try
    cxInutiliza.Enabled := false;
    Justificativa := edtJustificativa.Text;

    if length(edtJustificativa.Text) < 15 then
    begin
      Application.ProcessMessages;
      ShowMessage
        ('Justificativa de Inutilização deve ter mais de 15 caracteres!');
      exit;
    end;

    for i := StrToInt(edtInicial.Text) to StrToInt(edtFinal.Text) do
    begin

      dados.qryconsulta.Close;
      dados.qryconsulta.sql.Text :=
        'SELECT SITUACAO FROM NFE_MASTER WHERE NUMERO=:NUME';
      dados.qryconsulta.Params[0].Value := i;
      dados.qryconsulta.Open;

      if dados.qryconsulta.Fields[0].Value = 'O' then
      begin
        ShowMessage('Não é possível initulizar NFCe OFFLINE!');
        abort;
      end;
    end;

    try
      ACBrNFe.WebServices.Inutiliza(dados.qryEmpresaCNPJ.Value, Justificativa,
        StrToInt(edtAno.Text), StrToInt(edtModelo.Text),
        StrToInt(edtSerie.Text), StrToInt(edtInicial.Text),
        StrToInt(edtFinal.Text));

    except
      on e: exception do
      begin
        if ACBrNFe.WebServices.Inutilizacao.cStat = 563 then
          InutilizaNFCe;
        LogTelegramBot('TfrmConsNFe.btnInutilizar', e.Message, 'ERP Fiscal');
        raise exception.Create(e.Message);
      end;

    end;
    if ACBrNFe.WebServices.Inutilizacao.cStat = 102 then
    begin
      InutilizaNFCe;

      sNomeArquivo1 := ACBrNFe.Configuracoes.Arquivos.GetPathInu
        (TiraPontos(dados.qryEmpresaCNPJ.AsString)) + '\' +
        copy(ACBrNFe.WebServices.Inutilizacao.id, 3, 41) + '-inu.xml';

      sNomeArquivo2 := ACBrNFe.Configuracoes.Arquivos.GetPathInu
        (TiraPontos(dados.qryEmpresaCNPJ.AsString)) + '\' +
        copy(ACBrNFe.WebServices.Inutilizacao.id, 3, 41) + '-ped-inu.xml';

      if FilesExists(sNomeArquivo1) then
      begin
        DeleteFile(sNomeArquivo1);
      end;

      ShowMessage('Inutilizado com sucesso!');
    end;
  finally
    cxInutiliza.Enabled := true;
    btnFiltrar.Click;
  end;
end;

procedure TfrmConsNFe.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.05);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.08);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.28);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.26);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.09);
  DBGrid1.Columns[6].Width := round(Screen.Width * 0.09);
end;

procedure TfrmConsNFe.DBGrid1DblClick(Sender: TObject);
begin
  cxAlterar.Click;
end;

procedure TfrmConsNFe.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid1.Canvas.Font.Style := [];
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmConsNFe.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';
  idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'Número';
  DBGrid1.Columns[1].Title.Caption := 'Dt.Emissão';
  DBGrid1.Columns[2].Title.Caption := 'Dt.Saída';
  DBGrid1.Columns[3].Title.Caption := 'Cliente';
  DBGrid1.Columns[4].Title.Caption := 'Chave';
  DBGrid1.Columns[5].Title.Caption := 'Protocolo';
  DBGrid1.Columns[6].Title.Caption := 'Total';

  GroupBox1.Caption := 'F5 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  edtLoc.Width := DBGrid1.Columns[idx].Width + 50;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  localiza;

  if (idx in [2 .. 3]) then
    maskInicio.SetFocus
  else
    edtLoc.SetFocus;
end;

procedure TfrmConsNFe.dsVendaDataChange(Sender: TObject; Field: TField);
begin
  qryItem.Close;
  qryItem.Params[0].Value := qryVendaCODIGO.Value;
  qryItem.Open;
end;

procedure TfrmConsNFe.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmConsNFe.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryVenda.Prior;
  if Key = VK_DOWN then
    qryVenda.Next;
end;

procedure TfrmConsNFe.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmConsNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     frmPrincipal.dxStatusBar1.Panels[0].Text := '';
end;

procedure TfrmConsNFe.FormCreate(Sender: TObject);
var
  dia, mes, ano: Word;
begin
  vOrdem := ' ASC';
  DecodeDate(date, ano, mes, dia);
  maskInicio.EditText := '01' + '/' + FormatFloat('00', mes) + '/' +
    IntToStr(ano);
  maskFim.EditText := DateToStr(date);

  TabGerar.TabVisible := false;
  TabCarta.TabVisible := false;
  TabInutilizar.TabVisible := false;

  {btnNovo.Caption := 'F2' + sLineBreak + 'Novo';
  btnAlterar.Caption := 'F3' + sLineBreak + 'Alterar';
  btnCancelar.Caption := 'F4' + sLineBreak + 'Cancelar';
  btnInutiliza.Caption := 'F5' + sLineBreak + 'Inutilizar';
  btnRecuperar.Caption := 'F6' + sLineBreak + 'Recuperar';
  btnImprimir.Caption := 'F7' + sLineBreak + 'Imprimir';
  BtnCCe.Caption := 'F8' + sLineBreak + 'CCe';
  btnEmail.Caption := 'F9' + sLineBreak + 'Email';
  btnRelatorio.Caption := 'F10' + sLineBreak + 'Relatório';
  btnWhatsApp.Caption := 'F11' + sLineBreak + 'WhatsApp';
  btnGerar.Caption := 'F12' + sLineBreak + 'Fechar Mês';}

  ConfiguraNFe;

end;

procedure TfrmConsNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    cxNovo.Click;
  if Key = vk_f3 then
    cxAlterar.Click;
  if Key = vk_f4 then
    cxCancelar.Click;
  if Key = vk_f5 then
    cxInutiliza.Click;
  if Key = vk_f6 then
    cxRecuperar.Click;
  if Key = vk_f7 then
    cxImprimir.Click;
  if Key = vk_f8 then
    cxCCe.Click;
  if Key = vk_f9 then
    cxEmail.Click;
  if Key = vk_f10 then
    cxRelatorio.Click;
  if Key = vk_f11 then
    cxWhatsApp.Click;
  if Key = vk_f12 then
    cxGerar.Click;
end;

procedure TfrmConsNFe.FormShow(Sender: TObject);
begin
  dados.qryTerminal.Close;
  dados.qryTerminal.Open;

  if not dados.qryTerminal.Locate('nome', dados.nometerminal, []) then
  begin
    ShowMessage('Terminal não cadastrado!');
  end;

  tamanho;
  maskInicio.EditText := DateToStr(StartOfTheMonth(date));
  maskFim.EditText := DateToStr(date);

  qryCliente.Close;
  qryCliente.Open;
  if not qryCliente.IsEmpty then
    cbCliente.KeyValue := qryClienteCODIGO.Value;

  localiza;

  edtLoc.SetFocus;

  habilitaBotoes;

  GroupBox1.Enabled := true;

  ACBrNFeDANFeRL1.Site := dados.qryEmpresaSITE.Value;
  ACBrNFeDANFeRL1.Sistema := dados.qryEmpresaRAZAO.Value;
end;

procedure TfrmConsNFe.localiza;
var
  filtro, filtro1, ordem: string;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin

      filtro := '';
      filtro1 := '';
      ordem := '';

      vSql := ' select NFE.*, PES.razao, PES.EMAIL1 from NFE_MASTER NFE  ' +
        ' LEFT JOIN PESSOA PES ON PES.codigo=NFE.id_cliente ' + ' where ' +
        ' nfe.situacao in (''1'',''2'',''3'',''4'',''5'',''6'',''7'') ' +
        ' /*where*/ ';

      if cbCliente.KeyValue <> null then
        if cbCliente.KeyValue <> 0 then
          filtro := ' AND NFE.id_cliente=' + IntToStr(cbCliente.KeyValue);

      filtro := filtro + ' and NFE.fkempresa=' +
        dados.qryEmpresaCODIGO.AsString;

      filtro := filtro + ' and NFE.Data_emissao>=' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText)))
        + ' and NFE.Data_emissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
        strtodate(maskFim.EditText)));

      case idx of
        0 .. 1:
          begin
            if (Trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and nfe.numero like ' +
                QuotedStr(edtLoc.Text + '%');
          end;

        3:
          begin
            filtro := filtro + ' and nfe.Data_saida>=' +
              QuotedStr(FormatDateTime('mm-dd-yyyy',
              strtodate(maskInicio.EditText))) + ' and nfe.Data_saida<=' +
              QuotedStr(FormatDateTime('mm-dd-yyyy',
              strtodate(maskFim.EditText)));
          end;
        4:
          begin
            if (Trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and PES.razao like ' +
                QuotedStr(edtLoc.Text + '%');
          end;

        5:
          begin
            if (Trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and nfe.chave like ' +
                QuotedStr(edtLoc.Text + '%');
          end;
        6:
          begin
            if (Trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and nfe.protocolo like  ' +
                QuotedStr(edtLoc.Text + '%');
          end;
        7:
          begin
            if (Trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and nfe.total >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;

      end;

      case TabSet1.TabIndex of
        0:
          filtro1 := ' and nfe.situacao=''1'''; // ABERTA
        1:
          filtro1 := ' and nfe.situacao=''2'''; // TRANSMITIDA
        2:
          filtro1 := ' and nfe.situacao=''3'''; // CANCELADA
        3:
          filtro1 := ' and nfe.situacao=''4'''; // DUPLICIDADE
        4:
          filtro1 := ' and nfe.situacao=''5'''; // INUTILIZADA
        5:
          filtro1 := ' and nfe.situacao=''6'''; // DENEGADA
        6:
          filtro1 := ' and nfe.situacao=''7'''; // CONTINGENCIA

      end;

      case idx of
        0 .. 1:
          ordem := ' order by nfe.numero' + vOrdem;
        2:
          ordem := ' order by nfe.data_emissao ' + vOrdem;
        3:
          ordem := ' order by nfe.data_saida ' + vOrdem;
        4:
          ordem := ' order by pes.razao ' + vOrdem;
        5:
          ordem := ' order by nfe.chave ' + vOrdem;
        6:
          ordem := ' order by nfe.protocolo' + vOrdem;
        7:
          ordem := ' order by nfe.total ' + vOrdem;

      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          qryVenda.Close;
          qryVenda.sql.Text := vSql;
          qryVenda.sql.Text := StringReplace(qryVenda.sql.Text, '/*where*/',
            filtro + filtro1 + ordem, [rfReplaceAll]);
          qryVenda.Open;
        end);

    end).Start;

end;

procedure TfrmConsNFe.qryRelatorioCalcFields(DataSet: TDataSet);
begin
  if qryRelatorioSITUACAO.Value = '1' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'ABERTA';
  if qryRelatorioSITUACAO.Value = '2' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'TRANSMITIDA';
  if qryRelatorioSITUACAO.Value = '3' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'CANCELADA';
  if qryRelatorioSITUACAO.Value = '4' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'DUPLICIDADE';
  if qryRelatorioSITUACAO.Value = '5' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'INUTILIZADA';
  if qryRelatorioSITUACAO.Value = '6' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'DENEGADA';
  if qryRelatorioSITUACAO.Value = '7' then
    qryRelatorioVIRTUAL_SITUACAO.Value := 'CONTINGÊNCIA';

end;

procedure TfrmConsNFe.qryVendaCalcFields(DataSet: TDataSet);
begin
  if qryVendaSITUACAO.Value = '1' then
    qryVendaVIRTUAL_SITUACAO.Value := 'ABERTA';
  if qryVendaSITUACAO.Value = '2' then
    qryVendaVIRTUAL_SITUACAO.Value := 'TRANSMITIDA';
  if qryVendaSITUACAO.Value = '3' then
    qryVendaVIRTUAL_SITUACAO.Value := 'CANCELADA';
  if qryVendaSITUACAO.Value = '4' then
    qryVendaVIRTUAL_SITUACAO.Value := 'DUPLICIDADE';
  if qryVendaSITUACAO.Value = '5' then
    qryVendaVIRTUAL_SITUACAO.Value := 'INUTILIZADA';
  if qryVendaSITUACAO.Value = '6' then
    qryVendaVIRTUAL_SITUACAO.Value := 'DENEGADA';
  if qryVendaSITUACAO.Value = '7' then
    qryVendaVIRTUAL_SITUACAO.Value := 'CONTINGÊNCIA';

end;

procedure TfrmConsNFe.TabSet1Click(Sender: TObject);
begin
  habilitaBotoes;
  localiza;
end;

procedure TfrmConsNFe.TabSet2Click(Sender: TObject);
begin
  localiza;
end;

end.
