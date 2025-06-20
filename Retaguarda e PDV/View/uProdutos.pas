unit uProdutos;
interface //Suporte e Vendas direto no Whatsapp (48)998463846
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF,
  frxExportBaseDialog, frxExportXLS, dxCore, cxClasses, cxLookAndFeels, dxSkinsForm,
  cxGraphics, cxControls, cxLookAndFeelPainters, dxCustomTileControl, dxTileBar,
  Vcl.Menus, cxButtons, SWHEdit, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, Datasnap.Provider,
  Datasnap.DBClient, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  ACBrBase, ACBrEnterTab, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TfrmProdutos = class(TForm)
    OpenPicture: TOpenPictureDialog;
    dsProdutos: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    frxReport: TfrxReport;
    frxDBProduto: TfrxDBDataset;
    dsEmpresa: TDataSource;
    qryRelProd: TFDQuery;
    qryRelProdCODIGO: TIntegerField;
    qryRelProdCODBARRA: TStringField;
    qryRelProdDESCRICAO: TStringField;
    qryRelProdREFERENCIA: TStringField;
    qryRelProdUNIDADE: TStringField;
    qryRelProdTOTAL_COMPRA: TFMTBCDField;
    qryRelProdTOTAL_VENDA: TFMTBCDField;
    qryRelProdGRUPO_SL: TStringField;
    qryRelProdFORNECEDOR_SL: TStringField;
    qryRelProdQTD_ATUAL: TFMTBCDField;
    qryRelProdPR_VENDA: TFMTBCDField;
    qryRelProdPR_CUSTO: TFMTBCDField;
    frxXLSExport1: TfrxXLSExport;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    TabSet2: TTabSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    qrySeriais: TFDQuery;
    Label28: TLabel;
    qrySeriaisCODIGO: TIntegerField;
    qrySeriaisID_PRODUTO: TIntegerField;
    qrySeriaisNUMERO_SERIE: TStringField;
    qrySeriaisDOC_SAIDA: TStringField;
    qrySeriaisSITUACAO: TStringField;
    qrySeriaisDATA_BAIXA: TDateField;
    qrySeriaisDESCRICAO: TStringField;
    dsSeriais: TDataSource;
    Panel1: TPanel;
    cxEditar: TcxButton;
    cxAtualizar: TcxButton;
    cxImprimir: TcxButton;
    cxNovo: TcxButton;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    cxDuplicar: TcxButton;
    cxHistorico: TcxButton;
    cxPesquisa: TcxButton;
    cxSair: TcxButton;
    procedure edtLocChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbTemploChange(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSet2Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxAtualizarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxHistoricoClick(Sender: TObject);
    procedure cxDuplicarClick(Sender: TObject);
    procedure cxPesquisaClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    filtro, filtro1, filtro2: string;
    parte, ordem: String;
    procedure localiza;
    procedure tamanho;
    procedure LocalizaProduto;
    procedure LocalizaSerial;
    procedure Botoes;
    function ClonarProd(CodPro: integer): Boolean;
    { Private declarations }
  public
    idx: Integer;
    vOrdem: string[5];
    digito: string;
    vSql, vSqlConsulta: String;
    bDuplicado: Boolean;
    { Public declarations }
  end;
var
  frmProdutos: TfrmProdutos;
implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.
{$R *.dfm}
uses Udados, uCadProduto, uSupervisor, unit_msg_confirma, uProdutoCardex;
procedure TfrmProdutos.Botoes;
begin
  cxnovo.Visible := Dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  cxeditar.Visible := Dados.qryPermissoesBotaoEDITAR.Value = 'S';
end;
procedure TfrmProdutos.btnAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxatualizar.Enabled := false;
    codigo := dados.qryProdutosCODIGO.Value;
    localiza;
    dados.qryProdutos.Locate('codigo', codigo, []);
  finally
    cxatualizar.Enabled := true;
  end;
end;
procedure TfrmProdutos.cbTemploChange(Sender: TObject);
begin
  //localiza;
end;
procedure TfrmProdutos.cxEditarClick(Sender: TObject);
begin
if dados.qryProdutos.IsEmpty then
    exit;
  dados.vAutorizar := true;
  if not dados.eSupervisor then
  begin
    try
      frmSupervisor := TFrmSupervisor.Create(Application);
      dados.vAutorizar := false;
      frmSupervisor.ShowModal;
    finally
      frmSupervisor.Release;
    end;
  end;
  if not dados.vAutorizar then
  begin
    exit;
  end;
  try
    FrmCadProduto := TFrmCadProduto.Create(Application);
    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := dados.qryProdutosCODIGO.Value;
    FrmCadProduto.qryProdutos.Open;
    FrmCadProduto.qryProdutos.edit;
    cxeditar.Enabled := false;
    FrmCadProduto.Tag := 0;
    FrmCadProduto.DBEdit24.ReadOnly := true;
    FrmCadProduto.DBCheckBox8.Enabled := true;
    FrmCadProduto.DBCheckBox5.Enabled := true;
    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    cxeditar.Enabled := true;
    FrmCadProduto.Release;
    cxatualizar.Click;
    edtLoc.SetFocus;
  end;
end;
procedure TfrmProdutos.cxHistoricoClick(Sender: TObject);
begin
   try
    FrmCardex := TFrmCardex.Create(Application);
    FrmCardex.iCodProd  :=  Dados.qryProdutosCODIGO.Value;
    FrmCardex.ShowModal;
  finally
    FrmCardex.Release;
  end;
end;

procedure TfrmProdutos.cxAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxatualizar.Enabled := false;
    codigo := dados.qryProdutosCODIGO.Value;
    localiza;
    dados.qryProdutos.Locate('codigo', codigo, []);
  finally
    cxatualizar.Enabled := true;
  end;
end;
procedure TfrmProdutos.cxButton1Click(Sender: TObject);
begin
edtloc.Clear;
cxComboBox1.ItemIndex := 3;
{vSql := ' select PRO.CODIGO, PRO.REFERENCIA, PRO.CODBARRA, PRO.DESCRICAO, PRO.PR_VENDA, PRO.QTD_ATUAL, PRO.QTD_FISCAL, PRO.LOCALIZACAO, PRO.DT_CADASTRO, gr.descricao grupo_sl, pes.razao fornecedor_sl  from Produto PRO '
        + ' left join grupo gr on gr.codigo=pro.grupo ' +
        ' left join pessoa pes on pes.codigo=pro.ultforn where pro.codigo>0 ' +
        ' /*where*/';
          dados.qryProdutos.Close;
          dados.qryProdutos.SQL.Text := vSql;
          dados.qryProdutos.Open;}
          //Melhorar Consulta - Wagner
localiza;
end;
procedure TfrmProdutos.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
edtloc.Clear;
edtloc.SetFocus;
end;
procedure TfrmProdutos.cxDuplicarClick(Sender: TObject);
begin
   //duplicar
  ClonarProd(Dados.qryProdutosCODIGO.Value);
end;

procedure TfrmProdutos.cxImprimirClick(Sender: TObject);
begin
  qryRelProd.Close;
  qryRelProd.SQL.Text := vSqlConsulta;
  qryRelProd.SQL.Text := StringReplace(qryRelProd.SQL.Text, '/*ordem*/',
    filtro + filtro1 + filtro2 + ordem, []);
  qryRelProd.Params[0].Value := 0;
  qryRelProd.Params[1].Value := 1000;
  qryRelProd.Open;
  if qryRelProd.IsEmpty then
  begin
    ShowMessage('Informações não encontradas!');
    exit;
  end;
  try
    cximprimir.Enabled := false;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelEstoque.fr3');
    frxReport.ShowReport;
  finally
    cximprimir.Enabled := true;
    edtLoc.SetFocus;
  end;
end;
procedure TfrmProdutos.cxNovoClick(Sender: TObject);
begin
  {
  try
    FrmCadProduto := TFrmCadProduto.Create(Application);
    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;
    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.qryProdutosCODIGO.Value := dados.Numerador('PRODUTO',
      'CODIGO', 'N', '', '');
    FrmCadProduto.qryProdutosATIVO.Value := 'S';
    FrmCadProduto.qryProdutosREMEDIO.Value := 'N';
    FrmCadProduto.qryProdutosGRADE.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := ' ';
    FrmCadProduto.qryProdutosORIGEM.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO2.Value := 0;
    FrmCadProduto.qryProdutosPERC_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA.Value := 0;
    FrmCadProduto.qryProdutosQTD_FISCAL.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosMVA_NORMAL.AsFloat := 0;
    FrmCadProduto.qryProdutosQTD_MIN.Value := 1;
    FrmCadProduto.qryProdutosESTOQUE_INICIAL.Value := 0;
    FrmCadProduto.qryProdutosMOTIVO_DESONERACAO.Value := 9;
    FrmCadProduto.qryProdutosE_MEDIO.Value := 0;
    FrmCadProduto.qryProdutosCOMBUSTIVEL.Value := 'N';
    FrmCadProduto.qryProdutosPRODUTO_PESADO.Value := 'N';
    FrmCadProduto.qryProdutosNCM.Value := '00000000';
    FrmCadProduto.qryProdutosMARGEM.Value :=
      dados.qryEmpresaLUCRO_PADRAO.AsFloat;
    FrmCadProduto.qryProdutosQTD_ATUAL.Value := 0;
    FrmCadProduto.qryProdutosQTD_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    FrmCadProduto.qryProdutosPRECO_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
    FrmCadProduto.qryProdutosALIQ_ICM.Value :=
      dados.qryEmpresaALIQ_ICMS.AsFloat;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
    FrmCadProduto.qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
    FrmCadProduto.qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
    FrmCadProduto.qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
    FrmCadProduto.qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
    FrmCadProduto.qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
    FrmCadProduto.qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
    FrmCadProduto.qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
    FrmCadProduto.qryProdutosCOMISSAO.Value := 0;
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosPAGA_COMISSAO.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := '';
    FrmCadProduto.qryProdutosEFISCAL.Value := 'S';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosSERVICO.Value := 'N';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosCOMPOSICAO.Value := 'N';
    FrmCadProduto.qryProdutosRESTAUTANTE.Value := 'N';
    FrmCadProduto.qryProdutosMVA.Value := 0;
    FrmCadProduto.qryProdutosREDUCAO_BASE.Value := 0;
    FrmCadProduto.qryProdutosFCP.Value := 0;
    FrmCadProduto.qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';
    FrmCadProduto.Tag := 0;
    cxnovo.Enabled := false;
    FrmCadProduto.DBCheckBox8.Enabled := false;
    FrmCadProduto.DBCheckBox5.Enabled := false;
    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    cxnovo.Enabled := true;
    FrmCadProduto.Release;
    cxatualizar.Click;
    edtLoc.SetFocus;
  end; }

  try
    FrmCadProduto := TFrmCadProduto.Create(Application);

    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;

    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.qryProdutosCODIGO.Value := dados.Numerador('PRODUTO',
      'CODIGO', 'N', '', '');
    FrmCadProduto.qryProdutosATIVO.Value := 'S';
    FrmCadProduto.qryProdutosREMEDIO.Value := 'N';
    FrmCadProduto.qryProdutosGRADE.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := ' ';
    FrmCadProduto.qryProdutosPR_CUSTO2.Value := 0;
    FrmCadProduto.qryProdutosPERC_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO.Value := 0;
    FrmCadProduto.qryProdutosQTD_MIN.Value := 1;
    FrmCadProduto.qryProdutosESTOQUE_INICIAL.Value := 0;
    FrmCadProduto.qryProdutosE_MEDIO.Value := 0;
    FrmCadProduto.qryProdutosNCM.Value := '00000000';
    FrmCadProduto.qryProdutosMARGEM.Value := 0;
    FrmCadProduto.qryProdutosQTD_ATUAL.Value := 0;
    FrmCadProduto.qryProdutosQTD_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosPR_VENDA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA.Value := 0;
    FrmCadProduto.qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
    FrmCadProduto.qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
    FrmCadProduto.qryProdutosPRECO_ATACADO.Value := 0;
    FrmCadProduto.qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
    FrmCadProduto.qryProdutosALIQ_ICM.Value :=
      dados.qryEmpresaALIQ_ICMS.AsFloat;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
    FrmCadProduto.qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
    FrmCadProduto.qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
    FrmCadProduto.qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
    FrmCadProduto.qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
    FrmCadProduto.qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
    FrmCadProduto.qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
    FrmCadProduto.qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
    FrmCadProduto.qryProdutosCOMISSAO.Value := 0;
    FrmCadProduto.qryProdutosPAGA_COMISSAO.Value := 'N';
    FrmCadProduto.qryProdutosAPLICACAO.Value := '';
    FrmCadProduto.qryProdutosEFISCAL.Value := 'S';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
    FrmCadProduto.qryProdutosSERVICO.Value := 'N';
    FrmCadProduto.qryProdutosDESCONTO.Value := 0;
    FrmCadProduto.qryProdutosCOMPOSICAO.Value := 'N';
    FrmCadProduto.qryProdutosGRADE.Value := 'N';
    FrmCadProduto.qryProdutosCONTROLA_ESTOQUE_GRADE.Value := 'N';
    FrmCadProduto.qryProdutosCOMBUSTIVEL.Value := 'N';
    FrmCadProduto.qryProdutosPRODUTO_PESADO.Value := 'N';
    FrmCadProduto.qryProdutosUSA_TAB_PRECO.Value := 'N';
    FrmCadProduto.qryProdutosRESTAUTANTE.Value := 'S';
    FrmCadProduto.qryProdutosMVA.Value := 0;
    FrmCadProduto.qryProdutosREDUCAO_BASE.Value := 0;
    FrmCadProduto.qryProdutosFCP.Value := 0;
    FrmCadProduto.qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';

    FrmCadProduto.Tag := 0;
    cxNovo.Enabled := false;
    FrmCadProduto.DBEdit24.ReadOnly := false;
    FrmCadProduto.DBCheckBox8.Enabled := false;
    FrmCadProduto.DBCheckBox5.Enabled := false;
    FrmCadProduto.Dtcadastro.Visible := false;
    FrmCadProduto.ShowModal;
    Application.ProcessMessages;
  finally
    cxNovo.Enabled := true;
    FrmCadProduto.Release;
    cxAtualizar.Click;
    edtLoc.SetFocus;
  end;
end;
procedure TfrmProdutos.cxPesquisaClick(Sender: TObject);
begin
   localiza;
end;

procedure TfrmProdutos.cxSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  cxeditarClick(self);
end;
procedure TfrmProdutos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
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
procedure TfrmProdutos.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  if cxComboBox1.ItemIndex = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';
  cxComboBox1.ItemIndex := Column.Index;
  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];
  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];
  //localiza;
end;
procedure TfrmProdutos.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid2.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid2.Canvas.Font.Style := [];
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
procedure TfrmProdutos.DBGrid2TitleClick(Column: TColumn);
var
 i: Integer;
begin
  edtLoc.Clear;
  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' DESC';
  idx := Column.Index;
  if idx <= 1 then
  begin
    DBGrid2.Columns[idx].Title.Caption := DBGrid2.Columns[idx].Title.Caption;
    for i := 0 to DBGrid2.Columns.Count - 1 do
      DBGrid1.Columns[i].Title.Font.Style := [];
    DBGrid2.Columns[idx].Title.Font.Style := [fsbold];
    //localiza;
  end;
end;
procedure TfrmProdutos.edtLocChange(Sender: TObject);
begin
    //localiza;
end;
procedure TfrmProdutos.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    dados.qryProdutos.Prior;
  if Key = VK_DOWN then
    dados.qryProdutos.Next;
  if Key = VK_RETURN then
  cxPesquisa.Click;
end;
procedure TfrmProdutos.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
   if cxComboBox1.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;
procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //frmPrincipal.dxStatusBar1.Panels[0].Text := '';
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
    dados.aMenu := 'MnProdutos';
    Dados.Habilitacoes(dados.aMenu, TForm(self).Name);
    Botoes;
  if vSqlConsulta = '' then
    vSqlConsulta := qryRelProd.SQL.Text;
end;
procedure TfrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_f2:
      cxnovoClick(self);
    vk_f3:
      cxeditarClick(self);
    vk_f4:
      cximprimirClick(self);
    vk_f5:
      cxatualizar.Click;
    vk_f6:
      edtLoc.SetFocus;
    vk_f7:
      cxHistoricoClick(self);
    vk_f8:
      cxDuplicarClick(self);

    vk_delete:
        begin
          form_msg_confirmacao := Tform_msg_confirmacao.Create( frmProdutos );
          form_msg_confirmacao.lbl_pergunta.Caption:= 'Exclusão de Registro?';
          form_msg_confirmacao.lbl_texto.Caption   := 'Tem certeza que deseja excluir esse registro?';
          form_msg_confirmacao.ShowModal;
            if form_msg_confirmacao.bResposta = true then
            begin
             dados.vAutorizar := true;
            try
              frmSupervisor := TFrmSupervisor.Create(Application);
              dados.vAutorizar := false;
              frmSupervisor.ShowModal;
            finally
              frmSupervisor.Release;
            end;
            if not dados.vAutorizar then
              begin
                abort;
              end;
            try
              dados.qryProdutos.Delete;
              except
                on e: exception do
                  raise exception.Create('O produto possui movimentações e não pode ser excluído!' +
                    sLineBreak);
              end;
            end;
         abort;
      end;
  end;
end;
procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  dados.qryProdutos.close;
  dados.qryProdutos.Open;
  cxComboBox1.ItemIndex := 3;
  vOrdem := ' ASC';
  dados.qryGrupo.SQL.Text := 'select * from grupo order by 1';
  dados.qryUnidade.SQL.Text := 'select * from unidade order by 1';
  tamanho;
  DBGrid1TitleClick(DBGrid1.Columns[cxComboBox1.ItemIndex]);
  DBGrid2TitleClick(DBGrid1.Columns[idx]);
  DBGrid1.Columns[7].Visible := false;
  if dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
    DBGrid1.Columns[7].Visible := true;
end;
procedure TfrmProdutos.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.04);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.08);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.08);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.28);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.11);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[6].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[7].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[8].Width := round(Screen.Width * 0.18);
end;
procedure TfrmProdutos.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
  filtro: string;
begin
  filtro := '';
  if edtLoc.Text <> '' then
    filtro := ' | FILTRO:' + edtLoc.Text;
  if VarName = 'PARAMETRO' then
  begin
    Value := ' | SITUAÇÃO:' + TabSet2.Tabs.Strings[TabSet2.TabIndex] + filtro +
      ' | ORDENADO: ' + copy(DBGrid1.Columns[idx].Title.Caption, 3, 100000);
  end;
end;
procedure TfrmProdutos.LocalizaProduto;
begin
      vSql := ' select PRO.CODIGO, PRO.REFERENCIA, PRO.CODBARRA, PRO.DESCRICAO, PRO.PR_VENDA, PRO.QTD_ATUAL, PRO.QTD_FISCAL, PRO.LOCALIZACAO, PRO.DT_CADASTRO, gr.descricao grupo_sl, pes.razao fornecedor_sl  from Produto PRO '
        + ' left join grupo gr on gr.codigo=pro.grupo ' +
        ' left join pessoa pes on pes.codigo=pro.ultforn where pro.codigo>0 ' +
        ' /*where*/';
      filtro := '';
      filtro1 := '';
      filtro2 := '';
      ordem := '';
      parte := '';
      if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
        parte := '%';
      filtro := ' AND pro.empresa=' + dados.qryEmpresaCODIGO.AsString;
      if (trim(edtLoc.Text) <> '') then
        case cxComboBox1.ItemIndex of
          0:
            filtro1 := ' and pro.CODIGO=' + edtLoc.Text;
          1:
            filtro1 := ' and pro.REFERENCIA LIKE' +
              QuotedStr(parte + edtLoc.Text + '%');
          2:
            filtro1 := ' and pro.CODBARRA LIKE ' + QuotedStr(edtLoc.Text + '%');
          3:
            filtro1 := ' and pro.DESCRICAO LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          4:
            filtro1 := ' and gr.descricao LIKE ' + QuotedStr(edtLoc.Text + '%');
          8:
            filtro1 := ' and pro.localizacao LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          5:
            filtro1 := ' and pro.pr_venda  >= ' + StringReplace(edtLoc.Text,
              ',', '.', []);
          6:
            filtro1 := ' and pro.qtd_atual >= ' + StringReplace(edtLoc.Text,
              ',', '.', []);
          7:
            filtro1 := ' and pro.qtd_fiscal >= ' + StringReplace(edtLoc.Text,
              ',', '.', []);
        end;
      case TabSet2.TabIndex of
        0:
          filtro2 := ' and pro.ATIVO=''S''';
        1:
          filtro2 := ' and pro.ATIVO=''N''';
      end;

          case cxComboBox1.ItemIndex of
        0:
          ordem := ' order by pro.CODIGO' + vOrdem;
        1:
          ordem := ' order by pro.REFERENCIA' + vOrdem;
        2:
          ordem := ' order by pro.CODBARRA' + vOrdem;
        3:
          ordem := ' order by pro.DESCRICAO' + vOrdem;
        4:
          ordem := ' order by gr.descricao' + vOrdem;
        5:
          ordem := ' order by pro.localizacao' + vOrdem;
        6:
          ordem := ' order by pro.pr_venda' + vOrdem;
        7:
          ordem := ' order by pro.qtd_atual' + vOrdem;
        8:
          ordem := ' order by pro.qtd_fiscal' + vOrdem;
      end;
          dados.qryProdutos.Close;
          dados.qryProdutos.SQL.Text := vSql;
          dados.qryProdutos.SQL.Text :=
          StringReplace(dados.qryProdutos.SQL.Text, '/*where*/',
          filtro + filtro1 + filtro2 + ordem, [rfReplaceAll]);
          dados.qryProdutos.Open;
end;
procedure TfrmProdutos.LocalizaSerial;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      vSql := ' select ps.*, pro.descricao from produto_serial ps' +
        ' left join produto pro on pro.codigo=ps.id_produto /*where*/ ';
      filtro := '';
      ordem := '';
      parte := '';
      if dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
        parte := '%';
      if (trim(edtLoc.Text) <> '') then
        case idx of
          0:
            filtro := ' WHERE pro.DESCRICAO LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
          1:
            filtro := ' WHERE ps.NUMERO_SERIE LIKE ' +
              QuotedStr(parte + edtLoc.Text + '%');
        end;
      case idx of
        0:
          ordem := ' order by pro.DESCRICAO' + vOrdem;
        1:
          ordem := ' order by ps.NUMERO_SERIE' + vOrdem;
      end;
      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          qrySeriais.Close;
          qrySeriais.SQL.Text := vSql;
          qrySeriais.SQL.Text := StringReplace(qrySeriais.SQL.Text, '/*where*/',
            filtro + ordem, [rfReplaceAll]);
          qrySeriais.Open;
        end);
    end).Start;
end;
procedure TfrmProdutos.localiza;
begin
  case PageControl1.ActivePageIndex of
    0:
      LocalizaProduto;
    1:
      LocalizaSerial;
  end;
end;
procedure TfrmProdutos.TabSet2Click(Sender: TObject);
begin
  localiza;
end;
function TfrmProdutos.ClonarProd(CodPro: integer): Boolean;
var
  qryProdu: TFDQuery;
  qryClone: TFDQuery;
  x: Integer;
  ID: Integer;
  Campo: string;
begin
  Result  :=  True;
  try
    try
      qryProdu  :=  TFDQuery.Create(nil);
      qryClone  :=  TFDQuery.Create(nil);
      qryProdu.Connection :=  Dados.Conexao;
      qryClone.Connection :=  Dados.Conexao;
      //Pesquisar produto
      qryProdu.Close;
      qryProdu.SQL.Clear;
      qryProdu.SQL.Text :=  'select * from produto where codigo = '+ IntToStr(CodPro);
      qryProdu.Open;
      //Clona Registro
      qryClone.Close;
      qryClone.SQL.Clear;
      qryClone.SQL.Text :=  'select * from produto';
      qryClone.Open;
      qryClone.Insert;
      for x := 0 to Pred(qryProdu.Fields.count) do
        begin
          Campo := qryProdu.Fields[x].FieldName;
          qryClone.FieldByName(Campo).Value := qryProdu.FieldByName(Campo).Value;
        end;
      ID  :=  Dados.Numerador('PRODUTO', 'CODIGO', 'N', '', '');
      qryClone.FieldByName('CODIGO').Value    :=  ID;
      qryClone.FieldByName('PR_CUSTO').Value  :=  0;
      qryClone.FieldByName('PR_VENDA').Value  :=  0;
      qryClone.FieldByName('CODBARRA').Clear;
      qryClone.FieldByName('REFERENCIA').Clear;
      qryClone.FieldByName('QTD_ATUAL').Value :=  0;
      qryClone.Post;
      Dados.Conexao.Commit;
      Dados.qryProdutos.Close;
      Dados.qryProdutos.Open;
      if Dados.qryProdutos.Locate('CODIGO', ID, []) then
        if Dados.qryProdutosCODIGO.Value = ID then
          begin
            bDuplicado  := True;
            cxEditarClick(Self);
          end;
    finally
      qryProdu.Free;
      qryClone.Free;
    end;
  except
    Result  :=  False;
  end;
end;
end.
