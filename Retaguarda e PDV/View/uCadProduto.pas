unit uCadProduto;

interface // Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.math, dateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ExtDlgs, Data.DB, jpeg, ACBrBase, ACBrEnterTab,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ACBrSocket, ACBrNCMs, DBCtrlsEh,
  DBLookupEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, dxGDIPlusClasses, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.Imaging.pngimage,
  uRESTDWBasicTypes, uRESTDWBasicDB, uRESTDWBasicClass,
  uRESTDWIdBase, uRESTDWAbout, uRESTDWComponentBase;

type
  TFrmCadProduto = class(TForm)
    OpenPicture: TOpenPictureDialog;
    dsProdutos: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    GroupBox1: TGroupBox;
    dsCsoSn: TDataSource;
    qryCSTE: TFDQuery;
    qryCSTECODIGO: TStringField;
    qryCSTEDESCRICAO: TStringField;
    qryCSTETIPO: TStringField;
    dsCSTE: TDataSource;
    dsCSTIPI: TDataSource;
    qryCSTIPI: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    qryIBPT: TFDQuery;
    qryIBPTCODIGO: TStringField;
    qryIBPTDESCRICAO: TStringField;
    dsIBPT: TDataSource;
    qryProdutos: TFDQuery;
    qryProdutosEMPRESA: TSmallintField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosTIPO: TStringField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosUNIDADE: TStringField;
    qryProdutosULTFORN: TIntegerField;
    qryProdutosLOCALIZACAO: TStringField;
    qryProdutosCSTICMS: TStringField;
    qryProdutosCSTE: TStringField;
    qryProdutosCSTS: TStringField;
    qryProdutosCSTIPI: TStringField;
    qryProdutosCSOSN: TStringField;
    qryProdutosNCM: TStringField;
    qryProdutosFOTO: TBlobField;
    qryProdutosATIVO: TStringField;
    qryProdutosGRUPO_SL: TStringField;
    qryProdutosCFOP: TStringField;
    qryProdutosVIRTUAL_GRUPO: TStringField;
    qryProdutosVIRTUAL_FORNECEDOR: TStringField;
    qryProdutosULT_COMPRA: TIntegerField;
    qryProdutosULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdutosCOD_BARRA_ATACADO: TStringField;
    qryProdutosCODBARRA: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosGRADE: TStringField;
    qryProdutosCEST: TStringField;
    qryProdutosEFISCAL: TStringField;
    qryProdutosPAGA_COMISSAO: TStringField;
    qryProdutosCOMPOSICAO: TStringField;
    qryProdutosVIRTUAL_EMPRESA: TStringField;
    qryProdutosVIRTUAL_UNIDADE: TStringField;
    qryProdutosINICIO_PROMOCAO: TDateField;
    qryProdutosFIM_PROMOCAO: TDateField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosPRECO_VARIAVEL: TStringField;
    qryComposicao: TFDQuery;
    dsComposicao: TDataSource;
    qryProd: TFDQuery;
    qryComposicaoFK_PRODUTO: TIntegerField;
    qryComposicaoID_PRODUTO: TIntegerField;
    qryComposicaoVIRTUAL_CUSTO: TExtendedField;
    qryComposicaoVIRTUAL_VENDA: TExtendedField;
    qryComposicaoTVENDA: TAggregateField;
    qryComposicaoVITUAL_PRODUTO: TStringField;
    qryProdutosSERVICO: TStringField;
    qryProdutosPRODUTO_PESADO: TStringField;
    qryProdutosDT_CADASTRO: TDateField;
    DBEdit34: TDBEdit;
    qryProdutosALIQ_ICM: TCurrencyField;
    qryProdutosALIQ_PIS: TCurrencyField;
    qryProdutosALIQ_COF: TCurrencyField;
    qryProdutosPR_CUSTO: TFMTBCDField;
    qryProdutosMARGEM: TCurrencyField;
    qryProdutosPR_VENDA: TFMTBCDField;
    qryProdutosQTD_ATUAL: TFMTBCDField;
    qryProdutosQTD_MIN: TFMTBCDField;
    qryProdutosE_MEDIO: TFMTBCDField;
    qryProdutosCOMISSAO: TCurrencyField;
    qryProdutosDESCONTO: TCurrencyField;
    qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdutosPRECO_ATACADO: TFMTBCDField;
    qryProdutosQTD_ATACADO: TFMTBCDField;
    qryProdutosALIQ_IPI: TFMTBCDField;
    qryProdutosPESO: TFMTBCDField;
    qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdutosESTOQUE_INICIAL: TFMTBCDField;
    qryProdutosPR_VENDA_PRAZO: TFMTBCDField;
    qryProdutosREDUCAO_BASE: TFMTBCDField;
    qryProdutosMVA: TFMTBCDField;
    qryProdutosFCP: TFMTBCDField;
    qryProdutosPR_CUSTO2: TFMTBCDField;
    qryProdutosPERC_CUSTO: TFMTBCDField;
    qryComposicaoQUANTIDADE: TFMTBCDField;
    qryComposicaoPRECO: TFMTBCDField;
    qryComposicaoTOTAL: TFMTBCDField;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdutosRESTAUTANTE: TStringField;
    qryProdutosTEMPO_ESPERA: TIntegerField;
    qryProdutosCOMPLEMENTO: TStringField;
    qryProdutosTIPO_RESTAURANTE: TStringField;
    qryProdutosREMEDIO: TStringField;
    dsGrade: TDataSource;
    qryGrade: TFDQuery;
    qryGradeCODIGO: TIntegerField;
    qryGradeFK_PRODUTO: TIntegerField;
    qryGradeDESCRICAO: TStringField;
    qryGradeQTD: TFMTBCDField;
    qryGradeTQTD: TAggregateField;
    qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField;
    qryProdutosPREFIXO_BALANCA: TStringField;
    dsPrincipio: TDataSource;
    qryProdutosFK_MARCA: TIntegerField;
    dsMarca: TDataSource;
    qryGradePRECO: TFMTBCDField;
    qryProdutosCFOP_EXTERNO: TIntegerField;
    qryProdutosCOMBUSTIVEL: TStringField;
    qryProdutosCSOSN_EXTERNO: TStringField;
    qryProdutosCST_EXTERNO: TStringField;
    qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdutosORIGEM: TIntegerField;
    qryProdutosUSA_TAB_PRECO: TStringField;
    qryTabPreco: TFDQuery;
    dsTabPreco: TDataSource;
    qryTabPrecoCODIGO: TIntegerField;
    qryTabPrecoDESCRICAO: TStringField;
    qryTabPrecoItem: TFDQuery;
    dsTabPrecoItem: TDataSource;
    qryTabPrecoItemCODIGO: TIntegerField;
    qryTabPrecoItemFK_TAB_PRECO: TIntegerField;
    qryTabPrecoItemFK_PRODUTO: TIntegerField;
    qryTabPrecoItemVALOR: TFMTBCDField;
    qryTabPrecoItemFATOR: TFMTBCDField;
    qryTabPrecoItemVIRTUAL_TAB_PRECO: TStringField;
    Dtcadastro: TLabel;
    Label57: TLabel;
    qryProdutosFK_TECIDO: TDateField;
    qryProdutosETQ: TStringField;
    qryProdutosFK_LCP: TStringField;
    qryProdutosTIPO_TRIBUTACAO: TStringField;
    qryProdutosCODIGO_AUX: TIntegerField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    Label30: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label12: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label46: TLabel;
    Label56: TLabel;
    DBEdit12: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    btnGrupo: TBitBtn;
    btnUnidade: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox6: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    DBEdit20: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit8: TDBEdit;
    DBImage1: TDBImage;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    btnMarca: TBitBtn;
    DBEdit40: TDBEdit;
    DBEdit48: TDBEdit;
    Panel4: TPanel;
    qryGradeTAMANHO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButton3: TSpeedButton;
    Label55: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit47: TDBEdit;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    GroupBox7: TGroupBox;
    Label45: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit39: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet3: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabSheet5: TTabSheet;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    DBGrid1: TDBGrid;
    Promoção: TTabSheet;
    Label28: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit26: TDBEdit;
    TabSheet6: TTabSheet;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    TabSheet7: TTabSheet;
    Label47: TLabel;
    DBEdit38: TDBEdit;
    TabCombustivel: TTabSheet;
    Label43: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit36: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    tabTabelaPreco: TTabSheet;
    gridTabPrecoItem: TDBGrid;
    Panel3: TPanel;
    btnNovoTab: TButton;
    btnEditarTab: TButton;
    btnGravarTab: TButton;
    btnDeleteTab: TButton;
    btnCancelarTab: TButton;
    GroupBox8: TGroupBox;
    dblcbTabPreco: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    qryProdutosUSA_IMEI: TStringField;
    DBCheckBox11: TDBCheckBox;
    qryGradePRECO_ATACADO: TFMTBCDField;
    qryProdutosCONTROLA_ESTOQUE_GRADE: TStringField;
    DBCheckBox12: TDBCheckBox;
    dsUltPrecos: TDataSource;
    qryUltPrecos: TFDQuery;
    qryUltPrecosCODIGO: TSmallintField;
    qryUltPrecosFKPRODUTO: TIntegerField;
    qryUltPrecosULTIMO_PRECO: TFMTBCDField;
    qryUltPrecosDT_ULTIMO_PRECO: TDateField;
    qryUltPrecosUSUARIO: TStringField;
    qryProdutosGLP: TBCDField;
    qryProdutosGNN: TBCDField;
    qryProdutosGNI: TBCDField;
    qryProdutosPESO_LIQ: TBCDField;
    qryProdutosANP: TStringField;
    qryProdutosISSQN: TBCDField;
    Panel5: TPanel;
    cxSair: TcxButton;
    cxGravar: TcxButton;
    Label42: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label58: TLabel;
    RESTDWClientSQL: TRESTDWClientSQL;
    btnCons: TBitBtn;
    DWClientREST: TRESTDWIdClientREST;
    Label59: TLabel;
    DBCheckBox13: TDBCheckBox;
    Image2: TImage;
    Label60: TLabel;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit35: TDBEdit;
    qryProdutosCOD_BENEFICIO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure btnUnidadeClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbEmpresaEnter(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboboxEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboboxEh4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2Enter(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure qryProdutosNewRecord(DataSet: TDataSet);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure qryComposicaoID_PRODUTOChange(Sender: TField);
    procedure qryComposicaoNewRecord(DataSet: TDataSet);
    procedure qryComposicaoBeforePost(DataSet: TDataSet);
    procedure qryComposicaoAfterPost(DataSet: TDataSet);
    procedure qryProdutosAfterOpen(DataSet: TDataSet);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure qryProdutosBeforePost(DataSet: TDataSet);
    procedure qryProdutosAfterPost(DataSet: TDataSet);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure qryProdutosAfterEdit(DataSet: TDataSet);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure qryGradeNewRecord(DataSet: TDataSet);
    procedure btnMarcaClick(Sender: TObject);
    procedure DBLookupComboboxEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Exit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure qryProdutosBeforeCancel(DataSet: TDataSet);
    procedure DBCheckBox10Click(Sender: TObject);
    procedure qryTabPrecoItemAfterPost(DataSet: TDataSet);
    procedure qryTabPrecoItemAfterDelete(DataSet: TDataSet);
    procedure qryTabPrecoItemNewRecord(DataSet: TDataSet);
    procedure gridTabPrecoItemKeyPress(Sender: TObject; var Key: Char);
    procedure dsTabPrecoItemStateChange(Sender: TObject);
    procedure gridTabPrecoItemDblClick(Sender: TObject);
    procedure btnNovoTabClick(Sender: TObject);
    procedure btnEditarTabClick(Sender: TObject);
    procedure btnGravarTabClick(Sender: TObject);
    procedure btnDeleteTabClick(Sender: TObject);
    procedure btnCancelarTabClick(Sender: TObject);
    procedure gridTabPrecoItemEnter(Sender: TObject);
    procedure gridTabPrecoItemExit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure qryProdutosBeforeDelete(DataSet: TDataSet);
    procedure cxGravarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure btnConsClick(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
  private
    vOperacao: String;
    rUltimoPreco: Real;
    function ValidaCST: boolean;
    function GeraEAN(Codigo: Integer): string;
    procedure ApagaGrade;
    procedure GetImageByUrl(URL: string; sGTIN: string; out wFile: string);
    procedure CarregaImagemProduto(wFile: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProduto: TFrmCadProduto;

implementation
// Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uProdutos, uGrupo, uUnidade, uTabelaIcms, uPrincipio_Ativo, uMarca;

function CalculaDigEAN13(Cod: String): String;
  function Par(Cod: Integer): boolean;
  begin
    Result := Cod Mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

function TFrmCadProduto.GeraEAN(Codigo: Integer): string;
begin
  Result := '777' + FormatFloat('000000000', Codigo);
  Result := Result + CalculaDigEAN13(Result);
end;

procedure TFrmCadProduto.gridTabPrecoItemDblClick(Sender: TObject);
begin
  dsTabPrecoItemStateChange(Self);
end;

procedure TFrmCadProduto.gridTabPrecoItemEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrmCadProduto.gridTabPrecoItemExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadProduto.gridTabPrecoItemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if gridTabPrecoItem.Columns.Grid.SelectedIndex <
      gridTabPrecoItem.Columns.Count - 1 then
      gridTabPrecoItem.Columns[gridTabPrecoItem.Columns.Grid.SelectedIndex + 1]
        .Field.FocusControl
    else
    begin
      btnGravarTab.SetFocus;
      // Table1.Next;
      // gridTabPreco.Columns[0].field.FocusControl;
    end;
  end;
end;

procedure TFrmCadProduto.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet5 then
  begin
    qryGrade.close;
    qryGrade.Params[0].Value := qryProdutosCODIGO.Value;
    qryGrade.Open;
  end;

end;

procedure TFrmCadProduto.SpeedButton3Click(Sender: TObject);
begin
  if FrmTabela = nil then
    FrmTabela := TFrmTabela.Create(Application);
  FrmTabela.Show;
end;

procedure TFrmCadProduto.ApagaGrade;
begin
  dados.qryExecute.close;
  dados.qryExecute.SQL.Text :=
    'delete from produto_grade where FK_PRODUTO=:codigo';
  dados.qryExecute.Params[0].Value := qryProdutosCODIGO.Value;
  dados.qryExecute.ExecSQL;
  dados.Conexao.Commit;
end;

procedure TFrmCadProduto.btnCancelarTabClick(Sender: TObject);
begin
  if (qryTabPrecoItem.State in [dsEdit, dsInsert]) then
    qryTabPrecoItem.Cancel;
end;

procedure TFrmCadProduto.btnConsClick(Sender: TObject);
var
  sGTIN: string;
  URL: string;
  RetornoGet: Integer;
  Response: TStringStream;
  wFile: string;
begin
  try
    try
      Response := TStringStream.Create;
      sGTIN := DBEdit12.Text;
      if not dados.EhSoNumero(sGTIN) then
      begin
        Application.MessageBox
          (PChar('Digite Um Código de ' +
          'Barras Apenas com Digitos Númericos'), PChar(Self.Caption),
          MB_OK + MB_ICONWARNING);
        Exit;
      end;
      URL := Format('http://www.eanpictures.com.br:9000/api/desc/%s', [sGTIN]);
      RetornoGet := DWClientREST.Get(URL, Nil, Response);
      if RetornoGet = 200 then
      begin
        if (Trim(Response.DataString) <> '') then
        begin
          RESTDWClientSQL.OpenJson(Response.DataString);
          if not(qryProdutos.State in dsEditModes) then
            qryProdutos.Edit;
          qryProdutosDESCRICAO.AsString :=
            Copy(RESTDWClientSQL.FieldByName('Nome').AsString, 1, 100);
          qryProdutosNCM.AsString := RESTDWClientSQL.FieldByName('Ncm')
            .AsString;
          qryProdutosCEST.AsString := RESTDWClientSQL.FieldByName
            ('Cest_Codigo').AsString;
          URL := Format
            ('http://www.eanpictures.com.br:9000/api/gtin/%s', [sGTIN]);
          GetImageByUrl(URL, sGTIN, wFile);
          CarregaImagemProduto(wFile);
        end

      end
      else
        ShowMessage('Consulta não trouxe nenhuma informação!');
    finally
      Response.DisposeOf;
    end;
  except
    on E: Exception do
      raise Exception.Create('Consulta não trouxe nenhuma informação!');
  end;
end;

procedure TFrmCadProduto.CarregaImagemProduto(wFile: string);
var
  vPng: TPngImage;
  JPG: TJPegImage;
  Bmp: TBitmap;
begin
  if (qryProdutos.State in dsEditModes) then
  begin
    if wFile <> '' then
    begin
      // JPG := TJPegImage.Create;
      // JPG.LoadFromFile(wFile);
      vPng := TPngImage.Create;
      vPng.LoadFromFile(wFile);
      Bmp := TBitmap.Create;
      Bmp.Assign(vPng);
      // Bmp.Assign(JPG);
      // JPG.Free;
      DBImage1.Picture.Bitmap.Assign(Bmp);
      Bmp.Free;
      vPng.Free;
    end;
  end;
end;

procedure TFrmCadProduto.btnDeleteTabClick(Sender: TObject);
begin
  if not(qryTabPrecoItem.State in [dsEdit, dsInsert]) then
    qryTabPrecoItem.Delete;
end;

procedure TFrmCadProduto.btnEditarTabClick(Sender: TObject);
begin
  if (qryTabPrecoItem.State in [dsEdit, dsInsert]) then
    qryTabPrecoItem.Cancel;
  qryTabPrecoItem.Edit;
  gridTabPrecoItem.Columns[1].Field.FocusControl;
  gridTabPrecoItem.SetFocus;
end;

function TFrmCadProduto.ValidaCST: boolean;
var
  tabelaa, tabelab: Word;
begin
  Result := True;
  if length(qryProdutosCSTICMS.AsString) <> 3 then
  begin
    ShowMessage('CST ICMS inválido');
    Result := false;
    Exit;
  end;
  tabelaa := StrToInt(Copy(qryProdutosCSTICMS.AsString, 1, 1));
  tabelab := StrToInt(Copy(qryProdutosCSTICMS.AsString, 2, 2));
  case tabelaa of
    0 .. 7: // nada
    else
    begin
      ShowMessage('CST ICMS inválido');
      Result := false;
      Exit;
    end;
  end;
  case tabelab of
    0, 10, 20, 30, 40, 41, 50, 51, 60, 61, 70, 90: // nada
    else
    begin
      ShowMessage('CST ICMS inválido');
      Result := false;
      Exit;
    end;
  end;
end;

procedure TFrmCadProduto.btnGravarTabClick(Sender: TObject);
begin
  if qryTabPrecoItem.State in [dsInsert] then
  begin
    if (dblcbTabPreco.KeyValue = null) or (dblcbTabPreco.KeyValue = 0) then
    begin
      ShowMessage('Selecione uma tabela de preço.');
      Exit;
    end;
  end;
  qryTabPrecoItemFK_TAB_PRECO.Value := dblcbTabPreco.KeyValue;
  if (qryTabPrecoItem.State in [dsEdit, dsInsert]) then
    qryTabPrecoItem.Post;
end;

procedure TFrmCadProduto.btnGrupoClick(Sender: TObject);
begin
  try
    frmGrupo := TfrmGrupo.Create(Application);
    btnGrupo.Enabled := false;
    frmGrupo.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosGRUPO.Value := dados.qryGrupoCODIGO.Value;
    btnGrupo.Enabled := True;
    DBLookupComboboxEh4.SetFocus;
    frmGrupo.Release;
  end;
end;

procedure TFrmCadProduto.btnMarcaClick(Sender: TObject);
begin
  try
    frmMarca := TfrmMarca.Create(Application);
    btnMarca.Enabled := false;
    frmMarca.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosFK_MARCA.Value := dados.qryMarcaCODIGO.Value;
    btnMarca.Enabled := True;
    DBLookupComboboxEh2.SetFocus;
    frmMarca.Release;
  end;
end;

procedure TFrmCadProduto.btnNovoTabClick(Sender: TObject);
begin
  if (qryTabPrecoItem.State in [dsEdit, dsInsert]) then
    qryTabPrecoItem.Cancel;
  qryTabPrecoItem.Insert;
  gridTabPrecoItem.Columns[1].Field.FocusControl;
  gridTabPrecoItem.SetFocus;
end;

procedure TFrmCadProduto.btnUnidadeClick(Sender: TObject);
begin
  try
    frmUnidade := TfrmUnidade.Create(Application);
    btnUnidade.Enabled := false;
    frmUnidade.ShowModal;

  finally
    if qryProdutos.State in dsEditModes then
      qryProdutosUNIDADE.Value := dados.qryUnidadeCODIGO.Value;
    btnUnidade.Enabled := True;
    DBEdit11.SetFocus;
    frmUnidade.Release;
  end;

end;

procedure TFrmCadProduto.Button1Click(Sender: TObject);
begin
  qryProdutosFOTO.Clear;
  DBImage1.Picture := nil;
end;

procedure TFrmCadProduto.DBCheckBox10Click(Sender: TObject);
begin
  // Quando clicar mostrar ou ocultar tab
  if DBCheckBox10.Checked then
  begin
    tabTabelaPreco.TabVisible := True;
    PageControl1.ActivePageIndex := 9;
  end
  else
    tabTabelaPreco.TabVisible := false;
end;

procedure TFrmCadProduto.DBCheckBox13Click(Sender: TObject);
begin
  DBEdit38.Clear;
end;

procedure TFrmCadProduto.DBCheckBox5Click(Sender: TObject);
begin
  if DBCheckBox5.Checked then
    TabSheet3.TabVisible := True;

  if not DBCheckBox5.Checked then
    TabSheet3.TabVisible := false;

end;

procedure TFrmCadProduto.DBCheckBox7Click(Sender: TObject);
begin
  if DBCheckBox7.Checked then
    TabCombustivel.TabVisible := True;

  if not DBCheckBox7.Checked then
    TabCombustivel.TabVisible := false;

end;

procedure TFrmCadProduto.DBCheckBox8Click(Sender: TObject);
begin
  if DBCheckBox8.Checked then
    TabSheet5.TabVisible := True;

  if not DBCheckBox8.Checked then
    TabSheet5.TabVisible := false;
end;

procedure TFrmCadProduto.DBComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnUnidade.Click;
end;

procedure TFrmCadProduto.DBEdit11Exit(Sender: TObject);
begin
  qryProdutosPR_CUSTO2.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosPERC_CUSTO.AsFloat / 100), -2);
end;

procedure TFrmCadProduto.DBEdit12Exit(Sender: TObject);
begin
  if Trim(DBEdit12.EditText) = '' then
    DBEdit12.Text := GeraEAN(qryProdutosCODIGO.AsInteger);
  qryProdutosCODBARRA.Value := DBEdit12.Text;
end;

procedure TFrmCadProduto.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    SpeedButton3.Click;
end;

procedure TFrmCadProduto.DBEdit1Exit(Sender: TObject);
begin
  if Trim(DBEdit1.EditText) = '' then
    DBEdit1.EditText := DBEdit23.EditText;

end;

procedure TFrmCadProduto.DBEdit24Exit(Sender: TObject);
begin
  if qryProdutos.State = dsInsert then
    qryProdutosQTD_ATUAL.AsFloat := qryProdutosESTOQUE_INICIAL.AsFloat;
end;

procedure TFrmCadProduto.DBEdit32Exit(Sender: TObject);
begin
  qryProdutosPR_CUSTO2.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosPERC_CUSTO.AsFloat / 100), -2);

  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit33Exit(Sender: TObject);
begin
  if qryProdutosPR_CUSTO.Value > 0 then

    qryProdutosPERC_CUSTO.AsFloat :=
      SimpleRoundTo(((qryProdutosPR_CUSTO2.AsFloat * 100) /
      qryProdutosPR_CUSTO.AsFloat) - 100, -2);

  if qryProdutosPERC_CUSTO.AsFloat < 0 then
    qryProdutosPERC_CUSTO.AsFloat := 0;

  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit48Exit(Sender: TObject);
begin
  if Trim(DBEdit48.EditText) = '' then
    DBEdit48.Text := GeraEAN(qryProdutosCODIGO.AsInteger);
  qryProdutosCOD_BARRA_ATACADO.Value := DBEdit48.Text;
end;

procedure TFrmCadProduto.DBEdit4Exit(Sender: TObject);
begin
  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO2.AsFloat +
    (qryProdutosPR_CUSTO2.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);

end;

procedure TFrmCadProduto.DBEdit5Exit(Sender: TObject);
begin
  if qryProdutosPR_CUSTO.Value > 0 then
    qryProdutosMARGEM.AsFloat :=
      ((qryProdutosPR_VENDA.AsFloat * 100) /
      qryProdutosPR_CUSTO2.AsFloat) - 100;

  if qryProdutosMARGEM.Value < 0 then
    qryProdutosMARGEM.AsFloat := 0;

end;

procedure TFrmCadProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGrid1.Perform(WM_KEYDOWN, VK_TAB, 0);

  if DBGrid1.SelectedField.FieldName = 'DESCRICAO' THEN
    Key := AnsiUpperCase(Key)[length(Key)];
end;

procedure TFrmCadProduto.DBGridEh2Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;

end;

procedure TFrmCadProduto.DBGridEh2Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadProduto.DBImage1Click(Sender: TObject);
var
  JPG: TJPegImage;
  Bmp: TBitmap;
begin
  if (qryProdutos.State in dsEditModes) then
  begin
    OpenPicture.Execute;
    if OpenPicture.FileName <> '' then
    begin
      JPG := TJPegImage.Create;
      JPG.LoadFromFile(OpenPicture.FileName);
      Bmp := TBitmap.Create;
      Bmp.Assign(JPG);
      JPG.Free;
      DBImage1.Picture.Bitmap.Assign(Bmp);
      Bmp.Free;
    end;
  end;
end;

procedure TFrmCadProduto.DBLookupComboBox2Enter(Sender: TObject);
begin
  DBLookupComboBox2.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox3Enter(Sender: TObject);
begin
  DBLookupComboBox3.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox4Enter(Sender: TObject);
begin
  DBLookupComboBox4.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox5Enter(Sender: TObject);
begin
  DBLookupComboBox5.DropDown;
end;

procedure TFrmCadProduto.DBLookupComboBox6Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrmCadProduto.DBLookupComboboxEh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnMarca.Click;
end;

procedure TFrmCadProduto.DBLookupComboboxEh3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnGrupo.Click;
end;

procedure TFrmCadProduto.DBLookupComboboxEh4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnUnidade.Click;
end;

procedure TFrmCadProduto.dsProdutosDataChange(Sender: TObject; Field: TField);
begin
  {
    if qryProdutosRESTAUTANTE.Value = 'S' then
    begin
    TabSheet4.TabVisible := true;
    end
    else
    begin
    TabSheet4.TabVisible := false;
    end; }

  // Mostrar Tab de Tabela de Preço
  if qryProdutosUSA_TAB_PRECO.Value = 'S' then
    tabTabelaPreco.TabVisible := True
  else
    tabTabelaPreco.TabVisible := false;
end;

procedure TFrmCadProduto.dsTabPrecoItemStateChange(Sender: TObject);
begin
  case qryTabPrecoItem.State of
    dsInsert:
      begin
        btnNovoTab.Enabled := false;
        btnEditarTab.Enabled := false;
        btnGravarTab.Enabled := True;
        btnDeleteTab.Enabled := false;
        btnCancelarTab.Enabled := True;
      end;
    dsEdit:
      begin
        btnNovoTab.Enabled := false;
        btnEditarTab.Enabled := false;
        btnGravarTab.Enabled := True;
        btnDeleteTab.Enabled := false;
        btnCancelarTab.Enabled := True;
        dblcbTabPreco.KeyValue := qryTabPrecoItemFK_TAB_PRECO.Value;
      end;
    dsBrowse:
      begin
        btnNovoTab.Enabled := True;
        btnEditarTab.Enabled := True;
        btnGravarTab.Enabled := false;
        btnDeleteTab.Enabled := True;
        btnCancelarTab.Enabled := false;
      end;
    dsInactive:
      begin
        btnNovoTab.Enabled := false;
        btnEditarTab.Enabled := false;
        btnGravarTab.Enabled := false;
        btnDeleteTab.Enabled := false;
        btnCancelarTab.Enabled := false;
      end;
  end;
end;

procedure TFrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not(frmProdutos = Nil) then
    frmProdutos.bDuplicado := false;
  if (qryProdutos.State in dsEditModes) then
  begin
    qryProdutos.Cancel;
    dados.vCodProduto := 0;
  end;
end;

procedure TFrmCadProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f5 then
    cxGravar.Click;
  if Key = VK_ESCAPE then
  begin
    if ActiveControl <> DBGridEh2 then
    begin
      if Application.MessageBox
        ('Tem Certeza de que deseja sair do cadastro de produtos?',
        'Confirmação', mb_YesNo) = mrYes then
      begin
        cxSair.Click;
      end
    end;
  end;

end;

procedure TFrmCadProduto.cbEmpresaEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TFrmCadProduto.cbEmpresaExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadProduto.cbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(FrmCadProduto.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmCadProduto.cxGravarClick(Sender: TObject);
var
  vProduto: String;
begin
  if qryProdutos.State in [dsInsert, dsEdit] then
  begin
    DBEdit9.SetFocus;

    if (DBEdit12.Text <> 'SEM GTIN') and (Trim(DBEdit12.Text) <> '') then
    begin
      dados.qryConsulta.close;
      dados.qryConsulta.SQL.Text :=
        'select codigo, descricao from produto where codbarra=:codbarra and codigo<>:cod';
      dados.qryConsulta.Params[0].Value := DBEdit12.Text;
      dados.qryConsulta.Params[1].Value := DBEdit23.Text;
      dados.qryConsulta.Open;
      if not dados.qryConsulta.IsEmpty then
      begin
        ShowMessage('Já existe produto cadastrado com este CÓDIGO DE BARRAS!' +
          sLineBreak + dados.qryConsulta.Fields[0].AsString + '-' +
          dados.qryConsulta.Fields[1].AsString);
        Exit;
      end;
    end;

    dados.qryConsulta.close;
    dados.qryConsulta.SQL.Text :=
      'select codigo, descricao from produto where descricao=:descricao and codigo<>:cod';
    dados.qryConsulta.Params[0].Value := DBEdit8.Text;
    dados.qryConsulta.Params[1].Value := DBEdit23.Text;
    dados.qryConsulta.Open;
    if not dados.qryConsulta.IsEmpty then
    begin
      if Application.MessageBox
        ('Já existe produto cadastrado com esta DESCRIÇÃO!' + sLineBreak +
        'Deseja Continuar?', 'Confirmação', mb_YesNo) = mrNo then
        Exit;
    end;

    if dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S' then
    begin
      if qryProdutosGRADE.Value = 'S' then
      begin
        if qryProdutosCONTROLA_ESTOQUE_GRADE.Value = 'S' then
        begin
          if qryProdutosQTD_ATUAL.AsFloat <> qryGradeTQTD.Value then
            raise Exception.Create
              ('Quantidade em Grade é Diferente de Estoque Atual!!');
        end;
      end;
    end;

    if (Trim(qryProdutosCODBARRA.Value) <> '') and
      (Trim(qryProdutosCODBARRA.Value) <> 'SEM GTIN') then
    begin
      dados.qryConsulta.close;
      dados.qryConsulta.SQL.Text :=
        'select codbarra, codigo, descricao from produto where codbarra=:barra and codigo<>:cod';
      dados.qryConsulta.Params[0].Value := DBEdit12.Text;
      dados.qryConsulta.Params[1].Value := DBEdit23.Text;
      dados.qryConsulta.Open;

      if not dados.qryConsulta.IsEmpty then
      begin
        vProduto := dados.qryConsulta.Fields[1].AsString + '-' +
          dados.qryConsulta.Fields[2].AsString;
        if Application.MessageBox(pwidechar('Código de Barras já Cadastrado!' +
          #13 + vProduto + #13 + ' Deseja Continuar?'), 'Confirmação', mb_YesNo)
          = mrNo then
        begin
          DBEdit12.SetFocus;
          Exit;
        end;
      end;
    end;

    if qryProdutosCOMBUSTIVEL.Value = 'S' then
    begin
      if (qryProdutosGLP.AsFloat + qryProdutosGNN.AsFloat +
        qryProdutosGNI.AsFloat) <> 100 then
        if (qryProdutosGLP.AsFloat + qryProdutosGNN.AsFloat +
          qryProdutosGNI.AsFloat) > 0 then

          raise Exception.Create
            ('A soma das alíquotas de GLP, GNi e GNn são diferentes de 100% ');
    end;

    if Trim(qryProdutosREFERENCIA.Value) <> '' then
    begin
      dados.qryConsulta.close;
      dados.qryConsulta.SQL.Text :=
        'select referencia from produto where referencia=:barra and codigo<>:cod';
      dados.qryConsulta.Params[0].Value := DBEdit1.Text;
      dados.qryConsulta.Params[1].Value := DBEdit23.Text;
      dados.qryConsulta.Open;

      if not dados.qryConsulta.IsEmpty then
      begin
        Application.ProcessMessages;
        ShowMessage('Referência já Cadastrado!');
        DBEdit1.SetFocus;
        Exit;
      end;
    end;

    if not ValidaCST then
    begin
      DBEdit16.SetFocus;
      Exit;
    end;

    if (qryProdutosDESCRICAO.IsNull) or (Trim(qryProdutosDESCRICAO.Value) = '')
    then
    begin
      Application.ProcessMessages;
      ShowMessage('Digite DESCRIÇÃO!');
      DBEdit8.SetFocus;
      Exit;
    end;

    if qryProdutosPR_VENDA.Value = 0 then
    begin
      Application.ProcessMessages;
      ShowMessage('Digite o Preço de Venda!');
      DBEdit5.SetFocus;
      Exit;
    end;

    if Trim(qryProdutosUNIDADE.Value) = '' then
    begin
      Application.ProcessMessages;
      ShowMessage('Digite a Unidade!');
      DBLookupComboboxEh4.SetFocus;
      Exit;
    end;

    if (Copy(qryProdutosCSTICMS.Value, 2, 2) = '10') or
      (Copy(qryProdutosCSTICMS.Value, 2, 2) = '30') or
      (Copy(qryProdutosCSTICMS.Value, 2, 2) = '60') or
      (Copy(qryProdutosCSTICMS.Value, 2, 2) = '61') or
      (Copy(qryProdutosCSTICMS.Value, 2, 2) = '70') then
    begin
      if (Trim(qryProdutosCEST.Value) = '') or (qryProdutosCEST.IsNull) then
      begin
        Application.ProcessMessages;
        ShowMessage('Informe o CEST!');
        Exit;
      end;
    end;

    dados.vCodProduto := qryProdutosCODIGO.Value;
    qryProdutos.Post;
    dados.Conexao.Commit;
  end;
  close;
end;

procedure TFrmCadProduto.cxSairClick(Sender: TObject);
begin
  // Se duplicar e cancelar apagar registro
  { if frmProdutos.bDuplicado then
    begin
    if (qryProdutos.State in [dsEdit, dsInsert]) then
    qryProdutos.Cancel;
    qryProdutos.Delete;
    end; }
  close;
end;

procedure TFrmCadProduto.FormShow(Sender: TObject);
begin
  rUltimoPreco := 0;
  PageControl1.ActivePageIndex := 0;

  dados.qryCSOSN.close;
  dados.qryCSOSN.Open;

  qryCSTE.close;
  qryCSTE.Open;

  qryCSTIPI.close;
  qryCSTIPI.Open;

  qryIBPT.close;
  qryIBPT.Open;

  dados.qryUnidade.close;
  dados.qryUnidade.SQL.Text := 'select * from unidade /*where*/';
  dados.qryUnidade.Open;

  dados.qryPesqEmp.close;
  dados.qryPesqEmp.Open;
  DBEdit8.SetFocus;
  if tag = 1 then
    DBEdit11.SetFocus;
  PageControl1.ActivePageIndex := 0;

  // Buscar Tabela de Preço
  qryTabPreco.close;
  qryTabPreco.Open;

  qryUltPrecos.close;
  qryUltPrecos.Params[0].AsInteger := qryProdutosCODIGO.AsInteger;
  qryUltPrecos.Open;

  // Mostrar data do Cadastro do produto
  Dtcadastro.Caption := Formatdatetime('dd/mm/yyyy',
    dados.qryProdutosDT_CADASTRO.Value);

  // Pegar preço antes de mudar
  rUltimoPreco := qryProdutosPR_VENDA.AsFloat;

  // qryUltimoPreco.Close;
  // qryUltimoPreco.Params[0].Value := qryProdutosCODIGO.Value ;
  // qryUltimoPreco.Open();
  if DBCheckBox8.Checked then
    TabSheet5.TabVisible := True;

  if not DBCheckBox8.Checked then
    TabSheet5.TabVisible := false;

  if DBCheckBox5.Checked then
    TabSheet3.TabVisible := True;

  if not DBCheckBox5.Checked then
    TabSheet3.TabVisible := false;

end;

procedure TFrmCadProduto.qryComposicaoAfterPost(DataSet: TDataSet);
var
  total: extended;
begin
  total := 0;

  if qryComposicaoTVENDA.AsVariant > 0 then
    total := qryComposicaoTVENDA.Value;

  dados.Conexao.Commit;
  if not(qryProdutos.State in dsEditModes) then
    qryProdutos.Edit;
  qryProdutosPR_CUSTO.Value := total;
  qryProdutosPR_VENDA.AsFloat := SimpleRoundTo(qryProdutosPR_CUSTO.AsFloat +
    (qryProdutosPR_CUSTO.AsFloat * qryProdutosMARGEM.AsFloat / 100), -2);
  qryProdutos.Post;
end;

procedure TFrmCadProduto.qryComposicaoBeforePost(DataSet: TDataSet);
begin
  qryComposicaoTOTAL.Value := qryComposicaoQUANTIDADE.AsFloat *
    qryComposicaoPRECO.AsFloat;
end;

procedure TFrmCadProduto.qryComposicaoID_PRODUTOChange(Sender: TField);
begin
  if qryComposicao.State in dsEditModes then
    qryComposicaoPRECO.Value := qryComposicaoVIRTUAL_VENDA.Value;
end;

procedure TFrmCadProduto.qryComposicaoNewRecord(DataSet: TDataSet);
begin
  qryComposicaoFK_PRODUTO.Value := qryProdutosCODIGO.Value;
  qryComposicaoQUANTIDADE.Value := 1;
  qryComposicaoPRECO.Value := 0;
  qryComposicaoTOTAL.Value := 0;
end;

procedure TFrmCadProduto.qryGradeNewRecord(DataSet: TDataSet);
begin
  qryGradeCODIGO.Value := dados.Numerador('PRODUTO_GRADE', 'CODIGO',
    'N', '', '');
  qryGradeFK_PRODUTO.Value := qryProdutosCODIGO.Value;
  qryGradePRECO.Value := 0;
  qryGradePRECO_ATACADO.Value := 0;

end;

procedure TFrmCadProduto.qryProdutosAfterEdit(DataSet: TDataSet);
begin
  if Pos('.', qryProdutosREFERENCIA.Value) > 0 then
    qryProdutosREFERENCIA.Value := Copy(qryProdutosREFERENCIA.Value, 1,
      length(qryProdutosREFERENCIA.Value) - 1);
end;

procedure TFrmCadProduto.qryProdutosAfterOpen(DataSet: TDataSet);
begin
  dados.qryGrupo.close;
  dados.qryGrupo.Open;

  dados.qryUnidade.close;
  dados.qryUnidade.Open;

  dados.qryFornecedor.close;
  dados.qryFornecedor.Open;

  qryComposicao.close;
  qryComposicao.Open;

  dados.qryMarca.close;
  dados.qryMarca.SQL.Text := 'select * from Marca /*where*/';
  dados.qryMarca.Open;

  dados.qryPrincipio.close;
  dados.qryPrincipio.SQL.Text := ' select * from principio_ativo' + ' /*where*/'
    + ' order by descricao';
  dados.qryPrincipio.Open;

  // Abrir query de tabela preco itens
  qryTabPrecoItem.close;
  qryTabPrecoItem.Params[0].Value := qryProdutosCODIGO.Value;
  qryTabPrecoItem.Open;
end;

procedure TFrmCadProduto.qryProdutosAfterPost(DataSet: TDataSet);
begin
  if qryProdutosESTOQUE_INICIAL.Value > 0 then
  begin
    if vOperacao = 'NOVO' then
    begin
      dados.qryAcerta.close;
      dados.qryAcerta.Open;
      dados.qryAcerta.Insert;
      dados.qryAcertaCODIGO.Value := dados.Numerador('ACERTA_ESTOQUE', 'CODIGO',
        'N', '', '');
      dados.qryAcertaFKPRODUTO.Value := qryProdutosCODIGO.Value;
      dados.qryAcertaDATA.Value := Date;
      dados.qryAcertaQTD_A.Value := qryProdutosESTOQUE_INICIAL.AsFloat;
      dados.qryAcertaQTD_F.Value := 0;
      dados.qryAcertaE_S.Value := 'E';
      dados.qryAcerta.Post;
      dados.Conexao.Commit;
    end;
  end;

  if qryProdutosGRADE.Value = 'N' then
    ApagaGrade;

  vOperacao := '';
end;

procedure TFrmCadProduto.qryProdutosBeforeCancel(DataSet: TDataSet);
begin
  if qryProdutos.State = dsInsert then
    ApagaGrade;
end;

procedure TFrmCadProduto.qryProdutosBeforeDelete(DataSet: TDataSet);
begin
  dados.DeletarUltimoPreco(qryProdutosCODIGO.Value);
end;

procedure TFrmCadProduto.qryProdutosBeforePost(DataSet: TDataSet);
begin
  vOperacao := 'ALTERAR';

  if qryProdutos.State = dsInsert then
  begin
    vOperacao := 'NOVO';
    qryProdutosCODIGO.Value := dados.Numerador('PRODUTO', 'CODIGO',
      'N', '', '');
    qryProdutosQTD_ATUAL.AsFloat := qryProdutosESTOQUE_INICIAL.AsFloat;
  end;

  if (Trim(qryProdutosCODBARRA.AsString) = '') or (qryProdutosCODBARRA.IsNull)
  then
    qryProdutosCODBARRA.Value := 'SEM GTIN';

  if (Trim(qryProdutosREFERENCIA.AsString) = '') or
    (qryProdutosREFERENCIA.IsNull) then
    qryProdutosREFERENCIA.Value := qryProdutosCODIGO.AsString;

  if rUltimoPreco <> qryProdutosPR_VENDA.AsFloat then
    if not dados.GravaUltimoPreco(qryProdutosCODIGO.Value, rUltimoPreco) then
      ShowMessage('Falha ao gravar ultimo preço');
end;

procedure TFrmCadProduto.qryProdutosNewRecord(DataSet: TDataSet);
begin
  qryProdutosCODIGO.Value := dados.Numerador('PRODUTO', 'CODIGO', 'N', '', '');
  qryProdutosATIVO.Value := 'S';
  qryProdutosPR_VENDA.Value := 0;
  qryProdutosPR_CUSTO.Value := 0;
  qryProdutosQTD_MIN.Value := 1;
  qryProdutosE_MEDIO.Value := 0;
  qryProdutosNCM.Value := '00000000';
  qryProdutosMARGEM.Value := 0;
  qryProdutosQTD_ATUAL.Value := 0;
  qryProdutosQTD_ATACADO.Value := 0;
  qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
  qryProdutosPR_VENDA_ANTERIOR.Value := 0;
  qryProdutosULT_COMPRA.Value := 0;
  qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
  qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  qryProdutosPRECO_ATACADO.Value := 0;
  qryProdutosORIGEM.Value := 0;

  if qryProdutosCFOP.Value = '' then
  begin
    qryProdutosCFOP.Value := dados.qryEmpresaCFOP.Value;
    qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
    qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
    qryProdutosCFOP_EXTERNO.AsString := dados.qryEmpresaCFOP_EXTERNO.Value;
    qryProdutosCST_EXTERNO.AsString := dados.qryEmpresaCST_EXTERNO.Value;
    qryProdutosCSOSN_EXTERNO.AsString := dados.qryEmpresaCSOSN_EXTERNO.Value;
    qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
    qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
    qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
  end;

  qryProdutosALIQ_ICM.Value := dados.qryEmpresaALIQ_ICMS.AsFloat;
  qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
  qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
  qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;

  qryProdutosALIQ_ICMS_EXTERNO.AsFloat :=
    dados.qryEmpresaALIQ_ICMS_EXTERNO.AsFloat;

  qryProdutosCOMISSAO.Value := 0;
  qryProdutosDESCONTO.Value := 0;
  qryProdutosPAGA_COMISSAO.Value := 'N';
  qryProdutosEFISCAL.Value := 'S';
  qryProdutosSERVICO.Value := 'N';
  qryProdutosPRECO_VARIAVEL.Value := 'N';
  qryProdutosCOMPOSICAO.Value := 'N';
  qryProdutosDT_CADASTRO.Value := Date;
  qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';
  qryProdutosUSA_IMEI.Value := 'N';
end;

procedure TFrmCadProduto.qryTabPrecoItemAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TFrmCadProduto.qryTabPrecoItemAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TFrmCadProduto.qryTabPrecoItemNewRecord(DataSet: TDataSet);
begin
  qryTabPrecoItemCODIGO.Value := dados.Numerador('TABELA_PRECO_PROD_DETALHE',
    'CODIGO', 'N', '', '');
  qryTabPrecoItemFK_PRODUTO.Value := qryProdutosCODIGO.Value;
  qryTabPrecoItemVALOR.Value := 0;
  qryTabPrecoItemFATOR.Value := 0;
end;

// update 5
procedure TFrmCadProduto.GetImageByUrl(URL: string; sGTIN: string;
  out wFile: string);
var
  sDir: string;
  sFile: string;
  vArquivo: TFileStream;
  vIdHTTP: TIdHTTP;
begin
  try
    sDir := ExtractFilePath(ParamStr(0)) + 'imgProdutos\';
    if not(DirectoryExists(sDir)) then
      ForceDirectories(sDir);
    sFile := sDir + sGTIN + '.png';
    vArquivo := TFileStream.Create(sFile, fmCreate);
    vIdHTTP := TIdHTTP.Create(nil);
    Try
      vIdHTTP.Get(URL, vArquivo);
      wFile := sFile;
    except
      ShowMessage('Não foi possivel baixar a Imagem do Produto !'); //
    End;
  finally
    FreeAndNil(vArquivo);
    vIdHTTP.Free;
  end;
end;

end.
