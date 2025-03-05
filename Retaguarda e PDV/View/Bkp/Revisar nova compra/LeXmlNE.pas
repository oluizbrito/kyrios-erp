unit LeXmlNE;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, shellapi,
  StdCtrls, Buttons, Mask, DBCtrls, ACBrNFe, Inifiles, ACBrUtil, pcnAuxiliar,
  pcnConversao,
  ComCtrls, ACBrBase, ACBrDFe, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBCtrlsEh, DBLookupEh,
  System.Math, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons;

type
  TFrmXml = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    ACBrNFe: TACBrNFe;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    dsProduto: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label25: TLabel;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label21: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    DBGrid1: TDBGrid;
    qryFornecedor: TFDQuery;
    qryFornecedorEMPRESA: TSmallintField;
    qryFornecedorCODIGO: TIntegerField;
    qryFornecedorTIPO: TStringField;
    qryFornecedorCNPJ: TStringField;
    qryFornecedorIE: TStringField;
    qryFornecedorFANTASIA: TStringField;
    qryFornecedorRAZAO: TStringField;
    qryFornecedorENDERECO: TStringField;
    qryFornecedorNUMERO: TStringField;
    qryFornecedorCOMPLEMENTO: TStringField;
    qryFornecedorCODMUN: TIntegerField;
    qryFornecedorMUNICIPIO: TStringField;
    qryFornecedorBAIRRO: TStringField;
    qryFornecedorUF: TStringField;
    qryFornecedorCEP: TStringField;
    qryFornecedorFONE1: TStringField;
    qryFornecedorFONE2: TStringField;
    qryFornecedorCELULAR1: TStringField;
    qryFornecedorCELULAR2: TStringField;
    qryFornecedorEMAIL1: TStringField;
    qryFornecedorEMAIL2: TStringField;
    qryFornecedorFOTO: TBlobField;
    qryFornecedorSEXO: TStringField;
    qryFornecedorDT_NASC: TDateField;
    qryFornecedorECIVIL: TStringField;
    qryFornecedorDIA_PGTO: TSmallintField;
    qryFornecedorOBS: TMemoField;
    qryFornecedorNUM_USU: TSmallintField;
    qryFornecedorFATURA: TStringField;
    qryFornecedorCHEQUE: TStringField;
    qryFornecedorCCF: TStringField;
    qryFornecedorSPC: TStringField;
    qryFornecedorISENTO: TStringField;
    qryFornecedorFORN: TStringField;
    qryFornecedorFUN: TStringField;
    qryFornecedorCLI: TStringField;
    qryFornecedorFAB: TStringField;
    qryFornecedorTRAN: TStringField;
    qryFornecedorADM: TStringField;
    qryFornecedorATIVO: TStringField;
    qryFornecedorDT_ADMISSAO: TDateField;
    qryFornecedorDT_DEMISSAO: TDateField;
    dsNatureza: TDataSource;
    qryCadProduto: TFDQuery;
    QRYUnidade: TFDQuery;
    QRYUnidadeCODIGO: TStringField;
    QRYUnidadeDESCRICAO: TStringField;
    pnAguarde: TPanel;
    OpenDialog: TOpenDialog;
    QRYUnidadeFK_USUARIO: TIntegerField;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    btnLoc: TBitBtn;
    Label8: TLabel;
    qryCFOP: TFDQuery;
    qryCFOPCODIGO: TIntegerField;
    qryCFOPDESCRICAO: TStringField;
    qryCFOPTIPO: TStringField;
    qryCFOPMOV_ES: TStringField;
    qryCFOPATIVO: TStringField;
    dsCFOP: TDataSource;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    Button1: TButton;
    qryCompra: TFDQuery;
    qryItensCompra: TFDQuery;
    qryCompraID: TIntegerField;
    qryCompraEMPRESA: TSmallintField;
    qryCompraDTENTRADA: TDateField;
    qryCompraDTEMISSAO: TDateField;
    qryCompraFORNECEDOR: TIntegerField;
    qryCompraMODELO: TStringField;
    qryCompraSERIE: TStringField;
    qryCompraCHAVE: TStringField;
    qryCompraNR_NOTA: TStringField;
    qryCompraGERA_CP: TStringField;
    qryCompraGERA_ES: TStringField;
    qryCompraAJUSTA_PC: TStringField;
    qryCompraAJUSTA_PV: TStringField;
    qryCompraEHFISCAL: TStringField;
    qryCompraLEUXML: TStringField;
    qryCompraSTATUS: TStringField;
    qryCompraXML: TMemoField;
    qryCompraTIPO: TStringField;
    qryItensCompraID: TIntegerField;
    qryItensCompraFK_COMPRA: TIntegerField;
    qryItensCompraEMPRESA: TSmallintField;
    qryItensCompraITEM: TSmallintField;
    qryItensCompraFK_PRODUTO: TIntegerField;
    qryItensCompraCFOP: TStringField;
    qryItensCompraCST_ICM: TStringField;
    qryItensCompraGERA_CP: TStringField;
    qryItensCompraGERA_ES: TStringField;
    qryItensCompraSITUACAO: TStringField;
    qryItensCompraFK_PRODUTO_FORN: TStringField;
    qryItensCompraCST_PIS: TStringField;
    qryItensCompraCST_COF: TStringField;
    qryItensCompraCST_IPI: TStringField;
    qryItensCompraFK_USUARIO: TIntegerField;
    qryCadProdutoCODIGO: TIntegerField;
    qryCadProdutoTIPO: TStringField;
    qryCadProdutoCODBARRA: TStringField;
    qryCadProdutoREFERENCIA: TStringField;
    qryCadProdutoGRUPO: TIntegerField;
    qryCadProdutoUNIDADE: TStringField;
    qryCadProdutoULTFORN: TIntegerField;
    qryCadProdutoLOCALIZACAO: TStringField;
    qryCadProdutoCSTICMS: TStringField;
    qryCadProdutoCSTE: TStringField;
    qryCadProdutoCSTS: TStringField;
    qryCadProdutoCSTIPI: TStringField;
    qryCadProdutoCSOSN: TStringField;
    qryCadProdutoNCM: TStringField;
    qryCadProdutoFOTO: TBlobField;
    qryCadProdutoATIVO: TStringField;
    qryCadProdutoCFOP: TStringField;
    qryCadProdutoULT_COMPRA: TIntegerField;
    qryCadProdutoULT_COMPRA_ANTERIOR: TIntegerField;
    qryCadProdutoCOD_BARRA_ATACADO: TStringField;
    qryCadProdutoEMPRESA: TSmallintField;
    qryCadProdutoCEST: TStringField;
    qryCadProdutoGRADE: TStringField;
    qryCadProdutoEFISCAL: TStringField;
    qryCadProdutoPAGA_COMISSAO: TStringField;
    qryCadProdutoCOMPOSICAO: TStringField;
    qryCadProdutoINICIO_PROMOCAO: TDateField;
    qryCadProdutoFIM_PROMOCAO: TDateField;
    qryCadProdutoESTOQUE_INICIAL: TFMTBCDField;
    qryCadProdutoAPLICACAO: TStringField;
    qryCadProdutoPRODUTO_PESADO: TStringField;
    qryCadProdutoSERVICO: TStringField;
    qryCadProdutoDT_CADASTRO: TDateField;
    qryCadProdutoDESCRICAO: TStringField;
    qryCadProdutoALIQ_ICM: TCurrencyField;
    qryCadProdutoALIQ_PIS: TCurrencyField;
    qryCadProdutoALIQ_COF: TCurrencyField;
    qryCadProdutoPR_CUSTO: TFMTBCDField;
    qryCadProdutoMARGEM: TCurrencyField;
    qryCadProdutoPR_VENDA: TFMTBCDField;
    qryCadProdutoQTD_ATUAL: TFMTBCDField;
    qryCadProdutoQTD_MIN: TFMTBCDField;
    qryCadProdutoE_MEDIO: TFMTBCDField;
    qryCadProdutoCOMISSAO: TCurrencyField;
    qryCadProdutoDESCONTO: TCurrencyField;
    qryCadProdutoPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryCadProdutoPR_VENDA_ANTERIOR: TFMTBCDField;
    qryCadProdutoPRECO_ATACADO: TFMTBCDField;
    qryCadProdutoQTD_ATACADO: TFMTBCDField;
    qryCadProdutoALIQ_IPI: TFMTBCDField;
    qryCadProdutoPESO: TFMTBCDField;
    qryCadProdutoPRECO_PROMO_ATACADO: TFMTBCDField;
    qryCadProdutoPRECO_PROMO_VAREJO: TFMTBCDField;
    qryCadProdutoPR_VENDA_PRAZO: TFMTBCDField;
    qryCadProdutoPRECO_VARIAVEL: TStringField;
    qryCadProdutoREDUCAO_BASE: TFMTBCDField;
    qryCadProdutoMVA: TFMTBCDField;
    qryCadProdutoFCP: TFMTBCDField;
    qryCadProdutoPR_CUSTO2: TFMTBCDField;
    qryCadProdutoPERC_CUSTO: TFMTBCDField;
    qryCompraSUBTOTAL: TFMTBCDField;
    qryCompraFRETE: TFMTBCDField;
    qryCompraDESPESAS: TFMTBCDField;
    qryCompraSEGURO: TFMTBCDField;
    qryCompraDESCONTO: TFMTBCDField;
    qryCompraBASE_IPI: TFMTBCDField;
    qryCompraTOTAL_IPI: TFMTBCDField;
    qryCompraBASE_ICM: TFMTBCDField;
    qryCompraTOTAL_ICM: TFMTBCDField;
    qryCompraBASE_ST: TFMTBCDField;
    qryCompraTOTAL_ST: TFMTBCDField;
    qryCompraBASE_PIS: TFMTBCDField;
    qryCompraTOTAL_PIS: TFMTBCDField;
    qryCompraBASE_COF: TFMTBCDField;
    qryCompraTOTAL_COF: TFMTBCDField;
    qryCompraTOTAL: TFMTBCDField;
    qryItensCompraVL_UNITARIO: TFMTBCDField;
    qryItensCompraQTD: TFMTBCDField;
    qryItensCompraE_MEDIO: TFMTBCDField;
    qryItensCompraVL_ITEM: TFMTBCDField;
    qryItensCompraBASE_IPI: TFMTBCDField;
    qryItensCompraALIQ_IPI: TFMTBCDField;
    qryItensCompraVL_IPI: TFMTBCDField;
    qryItensCompraBASE_ICMS: TFMTBCDField;
    qryItensCompraALIQ_ICMS: TFMTBCDField;
    qryItensCompraVL_ICMS: TFMTBCDField;
    qryItensCompraBASE_ST: TFMTBCDField;
    qryItensCompraVL_ST: TFMTBCDField;
    qryItensCompraBASE_PIS: TFMTBCDField;
    qryItensCompraALIQ_PIS: TFMTBCDField;
    qryItensCompraVL_PIS: TFMTBCDField;
    qryItensCompraBASE_COF: TFMTBCDField;
    qryItensCompraALIQ_COF: TFMTBCDField;
    qryItensCompraVL_COF: TFMTBCDField;
    qryItensCompraFRETE1: TFMTBCDField;
    qryItensCompraDESPESA: TFMTBCDField;
    qryItensCompraSEGURO: TFMTBCDField;
    qryItensCompraDESCONTO: TFMTBCDField;
    qryItensCompraALIQ_ST: TFMTBCDField;
    qryFornecedorLIMITE: TFMTBCDField;
    qryFornecedorSALARIO: TFMTBCDField;
    qryFornecedorPAI: TStringField;
    qryFornecedorMAE: TStringField;
    qryFornecedorBANCO: TStringField;
    qryFornecedorAGENCIA: TStringField;
    qryFornecedorGERENTE: TStringField;
    qryFornecedorFONE_GERENTE: TStringField;
    qryFornecedorPROPRIEDADE: TStringField;
    qryFornecedorDT_CADASTRO: TDateField;
    qryFornecedorTECNICO: TStringField;
    qryFornecedorATENDENTE: TStringField;
    btnCadastrar: TBitBtn;
    btnDesvincularTodos: TBitBtn;
    btnGrupo: TBitBtn;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    btnDesvincular: TBitBtn;
    Label2: TLabel;
    qryItensCompraPR_VENDA: TFMTBCDField;
    qryItensCompraFK_GRADE_PRODUTO: TIntegerField;
    cxFinalizar: TcxButton;
    cxImportar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnLocClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure btnGrupoClick(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure qryCompraNewRecord(DataSet: TDataSet);
    procedure qryCompraAfterOpen(DataSet: TDataSet);
    procedure qryCompraAfterPost(DataSet: TDataSet);
    procedure qryItensCompraAfterPost(DataSet: TDataSet);
    procedure qryItensCompraNewRecord(DataSet: TDataSet);
    procedure btnDesvincularTodosClick(Sender: TObject);
    procedure qryItensCompraBeforePost(DataSet: TDataSet);
    procedure qryItensCompraBeforeEdit(DataSet: TDataSet);
    procedure qryItensCompraBeforeDelete(DataSet: TDataSet);
    procedure btnDesvincularClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxFinalizarClick(Sender: TObject);
    procedure cxImportarClick(Sender: TObject);
  private
    QuantidadeAnterior: extended;
    procedure Vincular;
    procedure InsereCompra;
    procedure InsereItens;
    function BuscaPrecoVenda(id: Integer): extended;
    function ChamaGrade(id: integer): integer;
    procedure atualizagrade(tipo: string; qtd_atual: real;
      produto: Integer; grade: integer);
    procedure tamanho;
    { Private declarations }
  public
    { Public declarations }
    JaLeuXml: Boolean;
  end;

var
  FrmXml: TFrmXml;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uCadProduto, PesquisaProduto, uCadCompra, uGrupo, uGrade,
  uGradeEntrada;

procedure TFrmXml.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TFrmXml.FormDblClick(Sender: TObject);
begin

  if dados.QryXmlDetailID_PRODUTO_LOC.IsNull then
    exit;

  if not dados.vLiberaProduto then
  begin
    ShowMessage
      ('Usuário não tem permissão para alterar os dados cadastrais do produto!');
    exit;
  end;

  if not dados.QryXmlDetail.IsEmpty then
  begin

    try
      FrmCadProduto := TFrmCadProduto.Create(application);
      FrmCadProduto.qryProdutos.Close;
      FrmCadProduto.qryProdutos.Params[0].Value :=
        dados.QryXmlDetailID_PRODUTO_LOC.Value;
      FrmCadProduto.qryProdutos.Open;
      FrmCadProduto.qryProdutos.Edit;

      FrmCadProduto.ShowModal;

    finally
      FrmCadProduto.Release;
    end;

  end;

end;

procedure TFrmXml.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrmXml.FormShow(Sender: TObject);
begin
  dados.vCodGrupo := 0;
  dados.vCodGrupo := 0;
  dados.QRYUnidade.Close;
  dados.QRYUnidade.SQL.Text :=
    'select * from unidade /*where*/ order by descricao';
  dados.QRYUnidade.Open;

  dados.qryGrupo.Close;
  dados.qryGrupo.SQL.Text := 'select * from grupo /*where*/ order by descricao';
  dados.qryGrupo.Open;

  dados.qryFornecedor.Close;
  dados.qryFornecedor.Open;

  qryCFOP.Close;
  qryCFOP.Open;

  dados.qryXmlMaster.Close;
  dados.qryXmlMaster.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  dados.qryXmlMaster.Params[1].Value := dados.idUsuario;
  dados.qryXmlMaster.Open;

  dados.QryXmlDetail.Close;
  dados.QryXmlDetail.Params[0].Value := dados.qryXmlMasterCODIGO.Value;
  dados.QryXmlDetail.Params[1].Value := dados.qryEmpresaCODIGO.Value;
  dados.QryXmlDetail.Open;

  tamanho;
end;

function TFrmXml.BuscaPrecoVenda(id: Integer): extended;
begin
  result := 0;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select pr_venda from produto where codigo=:codigo';
  dados.qryConsulta.Params[0].Value := id;
  dados.qryConsulta.Open;

  result := dados.qryConsulta.FieldByName('pr_venda').AsFloat;

end;

procedure TFrmXml.btnGrupoClick(Sender: TObject);
begin
  try
    frmGrupo := TfrmGrupo.Create(application);
    frmGrupo.ShowModal;
  finally
    frmGrupo.Release;
    dados.qryGrupo.Close;
    dados.qryGrupo.Open;
  end;
end;

procedure TFrmXml.btnLocClick(Sender: TObject);
var
  iGrade: integer;
begin
  if (dados.QryXmlDetailID_PRODUTO_LOC.AsInteger > 0) then
  begin
    ShowMessage('Produto já vinculado!');
    exit;
  end;

  try
    btnLoc.Enabled := false;
    dados.vCodProduto := 0;
    dados.vCodGrupo := 0;
    dados.vPrecoProduto := 0;

    FrmPesquisaProduto := TFrmPesquisaProduto.Create(application);
    FrmPesquisaProduto.idx := 2;
    FrmPesquisaProduto.edtLoc.Text :=
      Copy(dados.QryXmlDetailDESCRICAO_FORNECEDOR.Value, 1, 40);
    FrmPesquisaProduto.ShowModal;
    application.ProcessMessages;
  finally
    if dados.vCodProduto <> 0 then
    begin
      if not(dados.QryXmlDetail.State in dsEditModes) then
        dados.QryXmlDetail.Edit;
      dados.QryXmlDetailID_PRODUTO_LOC.Value := dados.vCodProduto;
      dados.QryXmlDetailFK_GRUPO.Value := dados.vCodGrupo;
      dados.QryXmlDetailPR_VENDA.Value := dados.vPrecoProduto;
      // Verificar grade
      if Dados.qryEmpresaNAO_ATUALIZA_GRADE.AsString <> 'S' then
        iGrade  :=  ChamaGrade(Dados.vCodProduto);
      if iGrade > 0 then
        Dados.QryXmlDetailFK_GRADE_PRODUTO.Value  :=  iGrade;
      dados.QryXmlDetail.Post;
      dados.Conexao.CommitRetaining;
    end;
    btnLoc.Enabled := true;
    FrmPesquisaProduto.Release;
  end;
end;

procedure TFrmXml.Button1Click(Sender: TObject);
begin
  try
    dados.QryXmlDetail.DisableControls;
    dados.QryXmlDetail.First;
    while not dados.QryXmlDetail.eof do
    begin
      if (dados.QryXmlDetailCFOP.IsNull) or
        (trim(dados.QryXmlDetailCFOP.Value) = '') then
      begin
        dados.QryXmlDetail.Edit;
        dados.QryXmlDetailCFOP.Value := dados.qryXmlMasterCFOP.Value;
        dados.QryXmlDetail.Post;
      end;
      dados.QryXmlDetail.Next;
    end;
  finally
    dados.Conexao.CommitRetaining;
    dados.QryXmlDetail.First;
    dados.QryXmlDetail.EnableControls;
  end;
end;

function TFrmXml.ChamaGrade(id: integer): integer;
var
  QRY: TFDQuery;
begin
  try
    QRY :=  TFDQuery.Create(Self);
    QRY.Connection  :=  Dados.Conexao;

    QRY.Close;
    QRY.SQL.Clear;
    QRY.SQL.Text  :=  'select codigo, grade from produto where codigo = '+
      IntToStr(id);
    QRY.Open;

    if QRY.FieldByName('GRADE').Value = 'S' then
    begin
      try
        FrmGradeEntrada := TFrmGradeEntrada.Create(application);
        FrmGradeEntrada.Compra :=  'S';
        FrmGradeEntrada.qryGrade.Close;
        FrmGradeEntrada.qryGrade.Params[0].Value := QRY.FieldByName('CODIGO').Value;
        FrmGradeEntrada.qryGrade.Open;
        FrmGradeEntrada.ShowModal;
      finally
        Result  :=  FrmGradeEntrada.idGrade;
        FrmGradeEntrada.Release;
      end;
    end;
  finally
    QRY.Free;
  end;
end;

procedure TFrmXml.cxFinalizarClick(Sender: TObject);
begin
   DBEdit9.SetFocus;
  if (dados.qryXmlMasterCFOP.IsNull) or (trim(dados.qryXmlMasterCFOP.Value) = '')
  then
  begin
    ShowMessage('Informe o CFOP de Entrada!');
    exit;
  end;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select nr_nota from compra where nr_nota=:nota and fornecedor=:forn and status=''F''';
  dados.qryConsulta.Params[0].Value := dados.qryXmlMasterNOTA_FISCAL.Value;
  dados.qryConsulta.Params[1].Value := dados.qryXmlMasterID_FORNECEDOR.Value;
  dados.qryConsulta.Open;
  if not dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('Já existe nota cadastrada com este Número!');
    exit;
  end;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select  count(*) from xml_detail where id_produto_loc is null and FK_XML_MASTER=:id';
  dados.qryConsulta.Params[0].Value := dados.qryXmlMasterCODIGO.Value;
  dados.qryConsulta.Open;
  if dados.qryConsulta.Fields[0].Value > 0 then
  begin
    ShowMessage('Existem produtos sem vincular!');
    exit;
  end;

  try
    if dados.QryXmlDetail.State in dsEditModes then
      dados.QryXmlDetail.Post;

    dados.QryXmlDetail.DisableControls;
    pnAguarde.Visible := true;
    application.ProcessMessages;
    cxFinalizar.Enabled := false;

    Vincular;
    try
      InsereCompra;

      frmCadCompra := TfrmCadCompra.Create(application);
      frmCadCompra.qryCompra.Close;
      frmCadCompra.qryCompra.Params[0].Value := qryCompraID.Value;
      frmCadCompra.qryCompra.Open;
      frmCadCompra.ShowModal;
    finally
      FrmXml.Release;
    end;
    FrmXml.Close;
  finally
    dados.QryXmlDetail.EnableControls;
    cxFinalizar.Enabled := true;
    pnAguarde.Visible := false;
  end;
end;

procedure TFrmXml.cxImportarClick(Sender: TObject);
var
  CNPJ_CPF, CNPJ_CPF_MASCARA, Tipo, crt: string;
  n, i: Integer;
  idFornecedor: Integer;
begin
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text := 'delete from xml_master where codigo=:cod';
  dados.qryConsulta.Params[0].Value := dados.idUsuario;
  dados.qryConsulta.ExecSQL;
  dados.Conexao.CommitRetaining;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'delete from xml_detail where FK_XML_MASTER=:id';
  dados.qryConsulta.Params[0].Value := dados.idUsuario;
  dados.qryConsulta.ExecSQL;
  dados.Conexao.CommitRetaining;

  if not JaLeuXml then
  begin
    If application.messagebox('Deseja Importar Novo XML?', 'Confirmação',
      mb_yesno + mb_iconquestion) <> idyes then
      exit;

  end;

  try
    cxImportar.Enabled := false;
    pnAguarde.Visible := true;
    if not JaLeuXml then
    begin

      ACBrNFe.NotasFiscais.Clear;
      OpenDialog.Execute;
      if OpenDialog.FileName <> '' then
        ACBrNFe.NotasFiscais.LoadFromFile(OpenDialog.FileName)
      else
      begin
        ShowMessage('Arquivo inválido!');
        exit;

      end;
    end;

    dados.qryXmlMaster.Close;
    dados.qryXmlMaster.Params[0].Value := dados.qryEmpresaCODIGO.Value;
    dados.qryXmlMaster.Params[1].Value := dados.idUsuario;
    dados.qryXmlMaster.Open;

    dados.QryXmlDetail.Close;
    dados.QryXmlDetail.Params[0].Value := dados.qryXmlMasterCODIGO.Value;
    dados.QryXmlDetail.Params[1].Value := dados.qryEmpresaCODIGO.Value;
    dados.QryXmlDetail.Open;

    CNPJ_CPF := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    // formata CNPJ

    if length(CNPJ_CPF) = 11 then
    begin
      CNPJ_CPF_MASCARA := Copy(CNPJ_CPF, 1, 3) + '.' + Copy(CNPJ_CPF, 4, 3) +
        '.' + Copy(CNPJ_CPF, 7, 3) + '-' + Copy(CNPJ_CPF, 10, 2);
      Tipo := 'FÍSICA';
    end;
    if length(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) = 14 then
    begin
      CNPJ_CPF_MASCARA := Copy(CNPJ_CPF, 1, 2) + '.' + Copy(CNPJ_CPF, 3, 3) +
        '.' + Copy(CNPJ_CPF, 6, 3) + '/' + Copy(CNPJ_CPF, 9, 4) + '-' +
        Copy(CNPJ_CPF, 13, 2);
      Tipo := 'JURÍDICA';
    end;

    // consulta fornecedor
    qryFornecedor.Close;
    qryFornecedor.Params[0].AsString := CNPJ_CPF_MASCARA;
    qryFornecedor.Open;

    if qryFornecedor.IsEmpty then
    begin // cadastra fornecedor senão existir
      qryFornecedor.Insert;
      qryFornecedorEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      qryFornecedorCODIGO.Value := dados.Numerador('PESSOA', 'CODIGO',
        'N', '', '');
      qryFornecedorRAZAO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xNome;
      qryFornecedorFANTASIA.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.xFant;
      qryFornecedorENDERECO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.xLgr;
      qryFornecedorNUMERO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.nro;
      qryFornecedorBAIRRO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.xBairro;
      qryFornecedorMUNICIPIO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.xMun;
      qryFornecedorCODMUN.AsInteger := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.cMun;
      qryFornecedorUF.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.UF;
      qryFornecedorCEP.AsInteger := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.CEP;
      qryFornecedorFONE1.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Emit.EnderEmit.fone;
      crt := CRTToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.crt);
      qryFornecedorCNPJ.Value := CNPJ_CPF_MASCARA;
      qryFornecedorTIPO.Value := Tipo;
      qryFornecedorIE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.IE;
      qryFornecedorATIVO.Value := 'S';
      qryFornecedorLIMITE.Value := 0;
      qryFornecedorFATURA.Value := 'N';
      qryFornecedorCHEQUE.Value := 'N';
      qryFornecedorCCF.Value := 'N';
      qryFornecedorSPC.Value := 'N';
      qryFornecedorISENTO.Value := 'N';
      qryFornecedorADM.Value := 'N';
      qryFornecedorTRAN.Value := 'N';
      qryFornecedorCLI.Value := 'N';
      qryFornecedorFORN.Value := 'S';
      qryFornecedorFAB.Value := 'N';
      qryFornecedorFUN.Value := 'N';
      qryFornecedorDT_CADASTRO.Value := date;
      qryFornecedor.Post;
      dados.Conexao.CommitRetaining;
    end;
    idFornecedor := qryFornecedorCODIGO.Value;
    dados.qryFornecedor.Close;
    dados.qryFornecedor.Open;

    // importa cabeçalho para xml
    with dados do
    begin
      qryXmlMaster.Insert;
      qryXmlMasterCODIGO.Value := dados.idUsuario;
      qryXmlMasterFK_USUARIO.Value := dados.idUsuario;
      qryXmlMasterEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      qryXmlMasterID_FORNECEDOR.Value := idFornecedor;
      qryXmlMasterDATA_ENTRADA.Value := date;
      qryXmlMasterDATA_EMISSAO_NF.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Ide.dEmi;
      qryXmlMasterNOTA_FISCAL.AsInteger := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Ide.nNF;
      qryXmlMasterMODELO.AsInteger := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Ide.modelo;
      qryXmlMasterSERIE.AsInteger := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Ide.serie;
      qryXmlMasterCHAVE.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.procNFe.chNFe;
      qryXmlMasterSUB_TOTAL.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vProd;
      qryXmlMasterFRETE.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vFrete;
      qryXmlMasterSEGURO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vSeg;
      qryXmlMasterOUTRAS_DESPESAS.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vOutro;
      qryXmlMasterDESCONTO.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vDesc;
      qryXmlMasterTOTAL.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vNF;
      qryXmlMasterBASE_PIS.Value := 0;
      qryXmlMasterBASE_COFINS.Value := 0;
      qryXmlMasterBASE_IPI.Value := 0;
      qryXmlMasterBASE_ICMS.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vBC;
      qryXmlMasterTOTAL_ICMS.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vICMS;
      qryXmlMasterBASE_ST.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vBCST;
      qryXmlMasterTOTAL_ST.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vST;
      qryXmlMasterTOTAL_IPI.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vIPI;
      qryXmlMasterTOTAL_PIS.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vPIS;
      qryXmlMasterTOTAL_COFINS.Value := ACBrNFe.NotasFiscais.Items[0]
        .NFe.Total.ICMSTot.vCOFINS;
      qryXmlMasterXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;

      if qryXmlMasterVITUAL_UF.Value = dados.qryEmpresaUF.Value then
        qryXmlMasterCFOP.Value := '1102';

      if qryXmlMasterVITUAL_UF.Value <> dados.qryEmpresaUF.Value then
        qryXmlMasterCFOP.Value := '2102';

      qryXmlMaster.Post;
      Conexao.CommitRetaining;
    end;

    // importa itens do xml
    for n := 0 to ACBrNFe.NotasFiscais.Count - 1 do
    begin
      with ACBrNFe.NotasFiscais.Items[n].NFe do
      begin
        for i := 0 to Det.Count - 1 do
        begin
          dados.QryXmlDetail.Insert;
          with Det.Items[i] do
          begin

            dados.QryXmlDetailFK_XML_MASTER.Value :=
              dados.qryXmlMasterCODIGO.Value;

            dados.QryXmlDetailCFOP.Value := dados.qryXmlMasterCFOP.Value;

            dados.QryXmlDetailCODIGO.Value := dados.Numerador('XML_DETAIL',
              'CODIGO', 'N', '', '');

            dados.QryXmlDetailFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;

            dados.QryXmlDetailID_PRODUTO_LOC.Clear;
            dados.QryXmlDetailID_PRODUTO_FOR.Value := prod.cProd;
            dados.QryXmlDetailDESCRICAO_FORNECEDOR.Value :=
              UpperCase(prod.xProd);
            dados.QryXmlDetailDESCRICAO_LOCAL.Value := UpperCase(prod.xProd);
            dados.QryXmlDetailUND_E.Value := UpperCase(prod.uCom);
            dados.QryXmlDetailUND_S.Value := UpperCase(prod.uCom);
            dados.QryXmlDetailREFERENCIA.Value := UpperCase(prod.cProd);
            dados.QryXmlDetailQUANT_E.Value := prod.qCom;
            dados.QryXmlDetailQUANT_S.Value := 1;
            dados.QryXmlDetailFK_GRUPO.Value := 0;
            dados.QryXmlDetailEMBALAGEM.Value := prod.qCom;
            dados.QryXmlDetailCEST.Value := prod.CEST;
            dados.QryXmlDetailCFOP_E.Value := prod.CFOP;
            dados.QryXmlDetailPRECO_E.Value := prod.vUnCom;
            dados.QryXmlDetailVL_ITEM.Value := prod.vProd;
            dados.QryXmlDetailPRECO_S.Value := dados.QryXmlDetailPRECO_E.Value;
            dados.QryXmlDetailCODBARRA.Value := prod.cEAN;

            dados.qryXMLProduto.Close;
            dados.qryXMLProduto.Params[0].Value := idFornecedor;
            dados.qryXMLProduto.Params[1].Value := prod.cProd;
            dados.qryXMLProduto.Params[2].Value := dados.qryEmpresaCODIGO.Value;
            dados.qryXMLProduto.Open;

            if not dados.qryXMLProduto.IsEmpty then
            begin

              dados.QryXmlDetailID_PRODUTO_LOC.AsFloat :=
                dados.qryXMLProdutoID_PRODUTO_LOCAL.Value;

              dados.QryXmlDetailPR_VENDA.AsFloat :=
                BuscaPrecoVenda(dados.qryXMLProdutoID_PRODUTO_LOCAL.AsInteger);

              dados.QryXmlDetailUND_S.Value := dados.qryXMLProdutoUN_S.Value;
              dados.QryXmlDetailFK_GRUPO.Value :=
                dados.qryXMLProdutoFK_GRUPO.Value;
              dados.QryXmlDetailQUANT_S.Value :=
                dados.qryXMLProdutoQTD_S.AsFloat;

              if dados.QryXmlDetailQTD_TOTAL.Value > 0 then
                dados.QryXmlDetailPRECO_S.Value :=
                  (dados.QryXmlDetailVL_ITEM.Value /
                  dados.QryXmlDetailQTD_TOTAL.Value);
            end;

            dados.QryXmlDetailNCM.Value := prod.NCM;
            dados.QryXmlDetailFRETE.Value := prod.vFrete;
            dados.QryXmlDetailSEGURO.Value := prod.vSeg;
            dados.QryXmlDetailDESPESAS.Value := prod.vOutro;
            dados.QryXmlDetailDESCONTO.Value := prod.vDesc;

            dados.QryXmlDetailCST_ICMS.Value := OrigToStr(Imposto.ICMS.orig) +
              CSTICMSToStr(Imposto.ICMS.CST);

            dados.QryXmlDetailCST_E.Value := OrigToStr(Imposto.ICMS.orig) +
              CSTICMSToStr(Imposto.ICMS.CST);

            dados.QryXmlDetailBASE_ICMS.AsCurrency := Imposto.ICMS.vBC;
            dados.QryXmlDetailVL_ICMS.AsCurrency := Imposto.ICMS.vICMS;
            dados.QryXmlDetailALIQ_ICMS.AsCurrency := Imposto.ICMS.pICMS;
            if crt = '1' then
              dados.QryXmlDetailCST_ICMS.Value := '041';

            if (CSTICMSToStr(Imposto.ICMS.CST) = '00') and
              (dados.QryXmlDetailVL_ICMS.Value = 0) then
              dados.QryXmlDetailCST_ICMS.Value := '041';

            dados.QryXmlDetailCST_IPI.Value := CSTIPIToStr(Imposto.IPI.CST);
            dados.QryXmlDetailBASE_IPI.AsCurrency := Imposto.IPI.vBC;
            dados.QryXmlDetailVL_IPI.AsCurrency := Imposto.IPI.vIPI;
            dados.QryXmlDetailALIQ_IPI.AsCurrency := Imposto.IPI.pIPI;

            dados.QryXmlDetailCST_PIS.Value := CSTPISToStr(Imposto.PIS.CST);
            dados.QryXmlDetailBASE_PIS.AsCurrency := Imposto.PIS.vBC;
            dados.QryXmlDetailVL_PIS.AsCurrency := Imposto.PIS.vPIS;
            dados.QryXmlDetailALIQ_PIS.AsCurrency := Imposto.PIS.pPIS;

            dados.QryXmlDetailCST_COFINS.Value :=
              CSTCOFINSToStr(Imposto.COFINS.CST);
            dados.QryXmlDetailBASE_COFINS.AsCurrency := Imposto.COFINS.vBC;
            dados.QryXmlDetailALIQ_COFINS.AsCurrency := Imposto.COFINS.pCOFINS;
            dados.QryXmlDetailVL_COFINS.AsCurrency := Imposto.COFINS.vCOFINS;

            dados.QryXmlDetailREDBC.AsCurrency := Imposto.ICMS.pRedBC;
            dados.QryXmlDetailALIQ_ST.AsCurrency := Imposto.ICMS.pICMSST;
            dados.QryXmlDetailBASE_ST.AsCurrency := Imposto.ICMS.vBCST;
            dados.QryXmlDetailVL_ST.AsCurrency := Imposto.ICMS.vICMSST;

            dados.QryXmlDetail.Post;
            dados.Conexao.CommitRetaining;

            QRYUnidade.Close;
            QRYUnidade.Params[0].Value := UpperCase(Copy(prod.uCom, 1, 2));
            QRYUnidade.Open;
            if QRYUnidade.IsEmpty then
            begin
              QRYUnidade.Insert;
              QRYUnidadeCODIGO.Value := UpperCase(Copy(prod.uCom, 1, 2));
              QRYUnidadeDESCRICAO.Value := UpperCase(prod.uCom);
              QRYUnidadeFK_USUARIO.Value := dados.idUsuario;
              QRYUnidade.Post;
              dados.Conexao.CommitRetaining;
            end;
          end;
        end;
      end;

      dados.qryXmlMaster.Edit;
      dados.qryXmlMasterBASE_PIS.Value := dados.qryXmlMasterBASE_PIS.Value +
        dados.QryXmlDetailBASE_PIS.Value;
      dados.qryXmlMasterBASE_COFINS.Value := dados.qryXmlMasterBASE_COFINS.Value
        + dados.QryXmlDetailBASE_COFINS.Value;
      dados.qryXmlMasterBASE_IPI.Value := dados.qryXmlMasterBASE_IPI.Value +
        dados.QryXmlDetailBASE_IPI.Value;
      dados.qryXmlMaster.Post;
      dados.Conexao.CommitRetaining;
    end;

    dados.QryXmlDetail.Close;
    dados.QryXmlDetail.Params[0].Value := dados.qryXmlMasterCODIGO.Value;
    dados.QryXmlDetail.Params[1].Value := dados.qryEmpresaCODIGO.Value;
    dados.QryXmlDetail.Open;

    dados.QRYUnidade.Close;
    dados.QRYUnidade.Open;

  finally
    cxImportar.Enabled := true;
    pnAguarde.Visible := false;
  end;
end;

procedure TFrmXml.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TFrmXml.DBGridEh1DblClick(Sender: TObject);
begin

  if not dados.vLiberaProduto then
  begin
    ShowMessage
      ('Usuário não tem permissão para alterar os dados cadastrais do produto!');
    exit;
  end;

  if not qryItensCompra.IsEmpty then
  begin

    try
      FrmCadProduto := TFrmCadProduto.Create(application);
      FrmCadProduto.qryProdutos.Close;
      FrmCadProduto.qryProdutos.Params[0].Value :=
        dados.QryXmlDetailID_PRODUTO_LOC.Value;
      FrmCadProduto.qryProdutos.Open;
      FrmCadProduto.qryProdutos.Edit;

      FrmCadProduto.ShowModal;

    finally
      FrmCadProduto.Release;
    end;

  end;
end;

procedure TFrmXml.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  If dados.QryXmlDetailCHECAR.Value = 'S' then // condição
    DBGridEh1.Canvas.Font.Color := clRed; // coloque aqui a cor desejada
  if dados.QryXmlDetailID_PRODUTO_LOC.AsInteger > 0 then
    DBGridEh1.Canvas.Font.Color := clBlue;
  DBGridEh1.DefaultDrawDataCell(Rect, DBGridEh1.columns[DataCol].Field, State);
end;

procedure TFrmXml.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TFrmXml.InsereCompra;
begin
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select  id from compra where nr_nota=:nota and fornecedor=:forn and status<>''F''';
  dados.qryConsulta.Params[0].Value := dados.qryXmlMasterNOTA_FISCAL.Value;
  dados.qryConsulta.Params[1].Value := dados.qryXmlMasterID_FORNECEDOR.Value;
  dados.qryConsulta.Open;

  if dados.qryConsulta.IsEmpty then
  begin
    qryCompra.Close;
    qryCompra.Params[0].Value := -1;
    qryCompra.Open;
    qryCompra.Insert;
  end
  else
  begin
    qryCompra.Close;
    qryCompra.Params[0].Value := dados.qryConsulta.Fields[0].AsInteger;
    qryCompra.Open;
    qryCompra.Edit;
  end;

  qryCompraEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  qryCompraDTEMISSAO.Value := dados.qryXmlMasterDATA_EMISSAO_NF.Value;
  qryCompraFORNECEDOR.Value := dados.qryXmlMasterID_FORNECEDOR.Value;
  qryCompraMODELO.Value := dados.qryXmlMasterMODELO.Value;
  qryCompraSERIE.Value := dados.qryXmlMasterSERIE.Value;
  qryCompraCHAVE.Value := dados.qryXmlMasterCHAVE.Value;
  qryCompraFRETE.Value := dados.qryXmlMasterFRETE.Value;
  qryCompraSUBTOTAL.Value := dados.qryXmlMasterSUB_TOTAL.Value;
  qryCompraDESPESAS.Value := dados.qryXmlMasterOUTRAS_DESPESAS.Value;
  qryCompraSEGURO.Value := dados.qryXmlMasterSEGURO.Value;
  qryCompraDESCONTO.Value := dados.qryXmlMasterDESCONTO.Value;
  qryCompraBASE_IPI.Value := dados.qryXmlMasterBASE_IPI.Value;
  qryCompraBASE_ICM.Value := dados.qryXmlMasterBASE_ICMS.Value;
  qryCompraBASE_ST.Value := dados.qryXmlMasterBASE_ST.Value;
  qryCompraBASE_PIS.Value := dados.qryXmlMasterBASE_PIS.Value;
  qryCompraBASE_COF.Value := dados.qryXmlMasterBASE_COFINS.Value;
  qryCompraTOTAL_IPI.Value := dados.qryXmlMasterTOTAL_IPI.Value;
  qryCompraTOTAL_ICM.Value := dados.qryXmlMasterTOTAL_ICMS.Value;
  qryCompraTOTAL_ST.Value := dados.qryXmlMasterTOTAL_ST.Value;
  qryCompraTOTAL_PIS.Value := dados.qryXmlMasterTOTAL_PIS.Value;
  qryCompraTOTAL_COF.Value := dados.qryXmlMasterTOTAL_COFINS.Value;
  qryCompraTOTAL.Value := dados.qryXmlMasterTOTAL.Value;
  qryCompraLEUXML.Value := 'S';
  qryCompraAJUSTA_PC.Value := 'N';
  qryCompraAJUSTA_PV.Value := 'N';
  qryCompraNR_NOTA.Value := dados.qryXmlMasterNOTA_FISCAL.Value;
  qryCompraXML.Value := dados.qryXmlMasterXML.Value;
  qryCompra.Post;
  InsereItens;
end;

procedure TFrmXml.InsereItens;
begin
  dados.qryexecute.Close;
  dados.qryexecute.SQL.Text := 'delete from compra_itens where fk_compra=:id';
  dados.qryexecute.Params[0].Value := qryCompraID.Value;
  dados.qryexecute.ExecSQL;
  dados.Conexao.CommitRetaining;
  dados.QryXmlDetail.First;
  while not dados.QryXmlDetail.eof do
  begin
    qryItensCompra.Insert;
    qryItensCompraVL_UNITARIO.Value := dados.QryXmlDetailPRECO_S.Value;
    qryItensCompraFK_PRODUTO.Value := dados.QryXmlDetailID_PRODUTO_LOC.Value;
    qryItensCompraFK_PRODUTO_FORN.Value :=
      dados.QryXmlDetailID_PRODUTO_FOR.Value;
    qryItensCompraFK_GRADE_PRODUTO.Value  :=  dados.QryXmlDetailFK_GRADE_PRODUTO.Value;

    qryItensCompraCFOP.Value := dados.QryXmlDetailCFOP.Value;

    qryItensCompraCST_ICM.Value := dados.QryXmlDetailCST_ICMS.Value;

    qryItensCompraCST_PIS.Value := dados.QryXmlDetailCST_PIS.Value;

    qryItensCompraCST_COF.Value := dados.QryXmlDetailCST_COFINS.Value;

    qryItensCompraCST_IPI.Value := dados.QryXmlDetailCST_COFINS.Value;

    qryItensCompraVL_UNITARIO.Value := dados.QryXmlDetailPRECO_S.Value;
    qryItensCompraQTD.Value := dados.QryXmlDetailQTD_TOTAL.Value;
    qryItensCompraE_MEDIO.Value := dados.QryXmlDetailQTD_TOTAL.Value;
    qryItensCompraVL_ITEM.Value := qryItensCompraVL_UNITARIO.Value *
      qryItensCompraQTD.Value;
    qryItensCompraBASE_IPI.Value := dados.QryXmlDetailBASE_IPI.Value;
    qryItensCompraBASE_PIS.Value := dados.QryXmlDetailBASE_PIS.Value;
    qryItensCompraBASE_COF.Value := dados.QryXmlDetailBASE_COFINS.Value;

    qryItensCompraBASE_ST.Value := dados.QryXmlDetailBASE_ST.Value;
    qryItensCompraALIQ_ST.Value := dados.QryXmlDetailALIQ_ST.AsFloat;

    qryItensCompraBASE_ICMS.Value := dados.QryXmlDetailBASE_ICMS.Value;
    qryItensCompraALIQ_IPI.Value := dados.QryXmlDetailALIQ_IPI.AsFloat;
    qryItensCompraALIQ_PIS.Value := dados.QryXmlDetailALIQ_PIS.AsFloat;
    qryItensCompraALIQ_COF.Value := dados.QryXmlDetailALIQ_COFINS.AsFloat;

    qryItensCompraCFOP.Value := dados.qryXmlMasterCFOP.Value;

    qryItensCompraALIQ_ICMS.Value := dados.QryXmlDetailALIQ_ICMS.AsFloat;
    qryItensCompraVL_ST.Value := dados.QryXmlDetailVL_ST.AsFloat;
    qryItensCompraVL_IPI.Value := dados.QryXmlDetailVL_IPI.AsFloat;
    qryItensCompraVL_PIS.Value := dados.QryXmlDetailVL_PIS.AsFloat;
    qryItensCompraVL_COF.Value := dados.QryXmlDetailVL_COFINS.AsFloat;
    qryItensCompraVL_ICMS.Value := dados.QryXmlDetailVL_ICMS.AsFloat;
    qryItensCompraFRETE1.Value := dados.QryXmlDetailFRETE.AsFloat;
    qryItensCompraDESPESA.Value := dados.QryXmlDetailDESPESAS.AsFloat;
    qryItensCompraSEGURO.Value := dados.QryXmlDetailSEGURO.AsFloat;
    qryItensCompraDESCONTO.Value := dados.QryXmlDetailDESCONTO.AsFloat;
    qryItensCompraPR_VENDA.Value := dados.QryXmlDetailPR_VENDA.AsFloat;
    qryItensCompra.Post;
    dados.Conexao.CommitRetaining;
    dados.QryXmlDetail.Next;
  end;
  qryItensCompra.Refresh;
end;

procedure TFrmXml.qryCompraAfterOpen(DataSet: TDataSet);
begin
  qryItensCompra.Close;
  qryItensCompra.Open;
end;

procedure TFrmXml.qryCompraAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.CommitRetaining;
end;

procedure TFrmXml.qryCompraNewRecord(DataSet: TDataSet);
begin
  qryCompraID.Value := dados.Numerador('COMPRA', 'ID', 'N', '', '');
  qryCompraSTATUS.Value := 'A';
  qryCompraDTENTRADA.Value := date;
  qryCompraDTEMISSAO.Value := date;
  qryCompraSUBTOTAL.Value := 0;
  qryCompraTOTAL.Value := 0;
  qryCompraFRETE.Value := 0;
  qryCompraDESPESAS.Value := 0;
  qryCompraSEGURO.Value := 0;
  qryCompraDESCONTO.Value := 0;
  qryCompraBASE_IPI.Value := 0;
  qryCompraBASE_ICM.Value := 0;
  qryCompraBASE_ST.Value := 0;
  qryCompraBASE_PIS.Value := 0;
  qryCompraBASE_COF.Value := 0;
  qryCompraTOTAL_IPI.Value := 0;
  qryCompraTOTAL_ICM.Value := 0;
  qryCompraTOTAL_ST.Value := 0;
  qryCompraTOTAL_PIS.Value := 0;
  qryCompraTOTAL_COF.Value := 0;
  qryCompraGERA_CP.Value := 'S';
  qryCompraGERA_ES.Value := 'S';
  qryCompraAJUSTA_PC.Value := 'S';
  qryCompraLEUXML.Value := 'N';
  qryCompraEHFISCAL.Value := 'N';
  qryCompraEMPRESA.Value := dados.qryEmpresaCODIGO.Value;

end;

procedure TFrmXml.qryItensCompraAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.CommitRetaining;
end;

procedure TFrmXml.qryItensCompraBeforeDelete(DataSet: TDataSet);
begin
  dados.AtualizaEstoque(-1 * qryItensCompraQTD.AsFloat,
    qryItensCompraFK_PRODUTO.Value);
  atualizagrade('-', qryItensCompraQTD.AsFloat,
    qryItensCompraFK_PRODUTO.Value, qryItensCompraFK_GRADE_PRODUTO.Value);
end;

procedure TFrmXml.qryItensCompraBeforeEdit(DataSet: TDataSet);
begin
  QuantidadeAnterior := qryItensCompraQTD.AsFloat;
end;

procedure TFrmXml.qryItensCompraBeforePost(DataSet: TDataSet);
begin
  if qryItensCompra.State = dsInsert then
    begin
      dados.AtualizaEstoque(qryItensCompraQTD.AsFloat,
        qryItensCompraFK_PRODUTO.Value);
      atualizagrade('+', qryItensCompraQTD.AsFloat,
        qryItensCompraFK_PRODUTO.Value, qryItensCompraFK_GRADE_PRODUTO.Value);
    end;

  if qryItensCompra.State = dsEdit then
    begin
      dados.AtualizaEstoque(qryItensCompraQTD.AsFloat - QuantidadeAnterior,
        qryItensCompraFK_PRODUTO.Value);
      atualizagrade('+', qryItensCompraQTD.AsFloat,
        qryItensCompraFK_PRODUTO.Value, qryItensCompraFK_GRADE_PRODUTO.Value);
    end;
  QuantidadeAnterior := 0;
end;

procedure TFrmXml.qryItensCompraNewRecord(DataSet: TDataSet);
begin
  qryItensCompraID.Value := dados.Numerador('COMPRA_ITENS', 'ID', 'N', '', '');
  qryItensCompraITEM.Value := dados.Numerador('COMPRA_ITENS', 'ITEM', 'S',
    'FK_COMPRA', qryCompraID.AsString);
  qryItensCompraFK_COMPRA.Value := qryCompraID.Value;
  qryItensCompraEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  qryItensCompraVL_UNITARIO.Value := 0;
  qryItensCompraQTD.Value := 1;
  qryItensCompraBASE_IPI.Value := 0;
  qryItensCompraBASE_ICMS.Value := 0;
  qryItensCompraBASE_ST.Value := 0;
  qryItensCompraBASE_PIS.Value := 0;
  qryItensCompraBASE_COF.Value := 0;
  qryItensCompraALIQ_IPI.Value := 0;
  qryItensCompraALIQ_ICMS.Value := 0;
  qryItensCompraALIQ_PIS.Value := 0;
  qryItensCompraALIQ_COF.Value := 0;
  qryItensCompraVL_IPI.Value := 0;
  qryItensCompraVL_ICMS.Value := 0;
  qryItensCompraVL_ST.Value := 0;
  qryItensCompraVL_PIS.Value := 0;
  qryItensCompraVL_COF.Value := 0;
  qryItensCompraFRETE1.Value := 0;
  qryItensCompraDESPESA.Value := 0;
  qryItensCompraDESCONTO.Value := 0;
  qryItensCompraSEGURO.Value := 0;
  qryItensCompraGERA_CP.Value := qryCompraAJUSTA_PV.Value;
  qryItensCompraGERA_ES.Value := qryCompraGERA_ES.Value;
  qryItensCompraSITUACAO.Value := qryCompraSTATUS.Value;
  qryItensCompraCFOP.Value := '....';
  qryItensCompraCST_ICM.Value := '...';

end;

procedure TFrmXml.tamanho;
begin
  DBGridEh1.Columns[0].Width := round(DBGridEh1.Width * 0.04);
  DBGridEh1.Columns[1].Width := round(DBGridEh1.Width * 0.30);
  DBGridEh1.Columns[2].Width := round(DBGridEh1.Width * 0.11);
  DBGridEh1.Columns[3].Width := round(DBGridEh1.Width * 0.06);
  DBGridEh1.Columns[4].Width := round(DBGridEh1.Width * 0.06);
  DBGridEh1.Columns[5].Width := round(DBGridEh1.Width * 0.06);
  DBGridEh1.Columns[6].Width := round(DBGridEh1.Width * 0.08);
  DBGridEh1.Columns[7].Width := round(DBGridEh1.Width * 0.09);
  DBGridEh1.Columns[8].Width := round(DBGridEh1.Width * 0.09);
  DBGridEh1.Columns[9].Width := round(DBGridEh1.Width * 0.06);
end;

procedure TFrmXml.Vincular;
begin
  dados.QryXmlDetail.First;
  while not dados.QryXmlDetail.eof do
  begin
    if dados.QryXmlDetailID_PRODUTO_LOC.AsInteger > 0 then
    begin

      dados.qryXMLProduto.Close;
      dados.qryXMLProduto.Params[0].Value :=
        dados.qryXmlMasterID_FORNECEDOR.Value; // código fornecedor

      dados.qryXMLProduto.Params[1].Value :=
        dados.QryXmlDetailID_PRODUTO_FOR.Value; // código produto fornecedor

      dados.qryXMLProduto.Params[2].Value := dados.qryEmpresaCODIGO.Value;
      dados.qryXMLProduto.Open; // código produto local

      if dados.qryXMLProduto.IsEmpty then
      begin
        dados.qryXMLProduto.Insert;

        dados.qryXMLProdutoFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;

        dados.qryXMLProdutoID_FORNECEDOR.Value :=
          dados.qryXmlMasterID_FORNECEDOR.Value;

        dados.qryXMLProdutoID_PRODUTO_LOCAL.Value :=
          dados.QryXmlDetailID_PRODUTO_LOC.Value;

        dados.qryXMLProdutoID_PRODUTO_FORN.Value :=
          dados.QryXmlDetailID_PRODUTO_FOR.Value;

      end
      else
        dados.qryXMLProduto.Edit;
      dados.qryXMLProdutoUN_E.Value := dados.QryXmlDetailUND_E.Value;
      dados.qryXMLProdutoUN_S.Value := dados.QryXmlDetailUND_S.Value;
      dados.qryXMLProdutoFK_GRUPO.Value := dados.QryXmlDetailFK_GRUPO.Value;

      if dados.qryXMLProdutoUN_S.Value = dados.qryXMLProdutoUN_E.Value then
      begin
        dados.qryXMLProdutoQTD_E.Value := 1;
        dados.qryXMLProdutoQTD_S.Value := dados.QryXmlDetailQUANT_S.Value;
      end
      else
      begin
        dados.qryXMLProdutoQTD_E.Value := 1;
        dados.qryXMLProdutoQTD_S.Value := dados.QryXmlDetailQUANT_S.Value;
      end;
      dados.qryXMLProduto.Post;
      dados.Conexao.CommitRetaining;
    end;
    dados.QryXmlDetail.Next;
  end;
end;

procedure TFrmXml.atualizagrade(tipo: string; qtd_atual: real; produto,
  grade: integer);
begin
  if tipo = '+' then
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text := 'select grade from produto where codigo=:id';
    dados.qryConsulta.Params[0].Value := produto;

    dados.qryConsulta.Open;
    if dados.qryConsulta.Fields[0].AsString = 'S' then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'update produto_grade set qtd=qtd+:qtd1 where codigo=:cod';
      dados.qryExecute.Params[0].AsFloat := qtd_atual * qtd_atual;
      dados.qryExecute.Params[1].Value := grade;
      dados.qryExecute.ExecSQL;
      dados.Conexao.CommitRetaining;
    end;
  end;

  if tipo = '-' then
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text := 'select grade from produto where codigo=:id';
    dados.qryConsulta.Params[0].Value := produto;
    dados.qryConsulta.Open;
    if dados.qryConsulta.Fields[0].AsString = 'S' then
    begin
      dados.qryExecute.Close;
      dados.qryExecute.SQL.Text :=
        'update produto_grade set qtd=qtd-:qtd1 where codigo=:cod';
      dados.qryExecute.Params[0].AsFloat := qtd_atual * qtd_atual;
      dados.qryExecute.Params[1].Value := grade;
      dados.qryExecute.ExecSQL;
      dados.Conexao.CommitRetaining;
    end;
  end;
end;

procedure TFrmXml.btnCadastrarClick(Sender: TObject);
var
  idProduto: Integer;
  iGrade: integer;
begin
  if (dados.QryXmlDetailID_PRODUTO_LOC.AsInteger > 0) then
  begin
    ShowMessage('Já existe produto vinculado!');
    exit;
  end;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'SELECT CODIGO, CODBARRA FROM PRODUTO WHERE CODBARRA=:COD and descricao=:descri';
  dados.qryConsulta.Params[0].Value := dados.QryXmlDetailCODBARRA.Value;
  dados.qryConsulta.Params[1].Value := dados.QryXmlDetailDESCRICAO_LOCAL.Value;

  dados.qryConsulta.Open;

  if not dados.qryConsulta.IsEmpty then
  begin
    if application.messagebox
      ('Já existe produtos com este código de barras. Deseja Vincular a ele?',
      'Confirmação', mb_yesno) = mrYes then
    begin

      dados.QryXmlDetail.Edit;
      dados.QryXmlDetailID_PRODUTO_LOC.Value :=
        dados.qryConsulta.Fields[0].Value;
      dados.QryXmlDetail.Post;
      dados.Conexao.CommitRetaining;
      dados.QryXmlDetail.Next;
      exit;
    end;
  end;

  if (dados.QryXmlDetailFK_GRUPO.IsNull) then
  begin
    ShowMessage('Informe o grupo do Item!');
    exit;
  end;

  FrmCadProduto := TFrmCadProduto.Create(application);

  FrmCadProduto.qryProdutos.Close;
  FrmCadProduto.qryProdutos.Params[0].Value := -1;
  FrmCadProduto.qryProdutos.Open;
  FrmCadProduto.qryProdutos.Insert;
  FrmCadProduto.qryProdutosCODIGO.Value := dados.Numerador('PRODUTO', 'CODIGO',
    'N', '', '');
  FrmCadProduto.qryProdutosATIVO.Value := 'S';
  FrmCadProduto.qryProdutosPR_CUSTO.Value := dados.QryXmlDetailPRECO_S.Value;
  FrmCadProduto.qryProdutosPERC_CUSTO.Value := 0;
  // adicionando impostos
  if Dados.qryEmpresaNT_COMPRA_IMP_CUSTO.AsString = 'S' then
    begin
      FrmCadProduto.qryProdutosPR_CUSTO2.Value :=
        ((dados.QryXmlDetailFRETE.AsCurrency +
         dados.QryXmlDetailSEGURO.AsCurrency +
         dados.QryXmlDetailDESPESAS.AsCurrency +
	       dados.QryXmlDetailVL_IPI.AsCurrency +
         dados.QryXmlDetailVL_ST.AsCurrency)-
         dados.QryXmlDetailDESCONTO.AsCurrency)+
         dados.QryXmlDetailPRECO_S.AsCurrency;
      if FrmCadProduto.qryProdutosPR_CUSTO2.Value < 0 then
        FrmCadProduto.qryProdutosPR_CUSTO2.Value  :=
          dados.QryXmlDetailPRECO_S.AsCurrency;
      //Atualizar Margens
      if FrmCadProduto.qryProdutosPR_CUSTO.AsFloat > 0 then
        FrmCadProduto.qryProdutosPERC_CUSTO.AsFloat  :=
          SimpleRoundTo(((FrmCadProduto.qryProdutosPR_CUSTO2.AsFloat * 100) /
          FrmCadProduto.qryProdutosPR_CUSTO.AsFloat) -100, -2);

      if FrmCadProduto.qryProdutosPERC_CUSTO.AsFloat < 0 then
        FrmCadProduto.qryProdutosPERC_CUSTO.AsFloat  :=  0;

      if FrmCadProduto.qryProdutosPR_CUSTO.Value > 0 then
        FrmCadProduto.qryProdutosMARGEM.AsFloat :=
          ((FrmCadProduto.qryProdutosPR_VENDA.AsFloat * 100) /
          FrmCadProduto.qryProdutosPR_CUSTO2.AsFloat) - 100;

      if FrmCadProduto.qryProdutosMARGEM.Value < 0 then
        FrmCadProduto.qryProdutosMARGEM.AsFloat := 0;
    end
  else
    FrmCadProduto.qryProdutosPR_CUSTO2.Value := dados.QryXmlDetailPRECO_S.Value;

  FrmCadProduto.qryProdutosPR_VENDA.Value :=
    FrmCadProduto.qryProdutosPR_VENDA.Value;

  FrmCadProduto.qryProdutosMARGEM.Value :=
    ((FrmCadProduto.qryProdutosPR_VENDA.AsFloat /
    FrmCadProduto.qryProdutosPR_CUSTO.AsFloat) - 1) * 100;

  FrmCadProduto.qryProdutosDESCRICAO.Value :=
    dados.QryXmlDetailDESCRICAO_LOCAL.Value;
  FrmCadProduto.qryProdutosCODBARRA.Value := dados.QryXmlDetailCODBARRA.Value;
  FrmCadProduto.qryProdutosREFERENCIA.Value :=
    dados.QryXmlDetailREFERENCIA.Value;;
  FrmCadProduto.qryProdutosULTFORN.Value :=
    dados.qryXmlMasterID_FORNECEDOR.Value;
  FrmCadProduto.qryProdutosMARGEM.Value := 0;
  FrmCadProduto.qryProdutosPR_CUSTO_ANTERIOR.Value := 0;
  FrmCadProduto.qryProdutosPR_VENDA_ANTERIOR.Value := 0;
  FrmCadProduto.qryProdutosULT_COMPRA.Value := 0;
  FrmCadProduto.qryProdutosULT_COMPRA_ANTERIOR.Value := 0;
  FrmCadProduto.qryProdutosEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
  FrmCadProduto.qryProdutosPRECO_ATACADO.Value := 0;
  FrmCadProduto.qryProdutosCOMISSAO.Value := 0;
  FrmCadProduto.qryProdutosAPLICACAO.Value := '';
  FrmCadProduto.qryProdutosPRECO_VARIAVEL.Value := 'N';
  FrmCadProduto.qryProdutosGRADE.Value := 'N';
  FrmCadProduto.qryProdutosGRUPO.Value := dados.QryXmlDetailFK_GRUPO.Value;
  FrmCadProduto.qryProdutosCEST.Value := dados.QryXmlDetailCEST.Value;
  FrmCadProduto.qryProdutosUNIDADE.Value := dados.QryXmlDetailVIRTUAL_UN.Value;
  FrmCadProduto.qryProdutosQTD_ATUAL.Value := 0;
  FrmCadProduto.qryProdutosQTD_MIN.Value := 2;
  FrmCadProduto.qryProdutosE_MEDIO.Value := 0;
  FrmCadProduto.qryProdutosNCM.Value := dados.QryXmlDetailNCM.Value;
  FrmCadProduto.qryProdutosCFOP.Value := '5102';
  FrmCadProduto.qryProdutosQTD_ATACADO.Value := 0;
  FrmCadProduto.qryProdutosPRECO_ATACADO.Value := 0;
  FrmCadProduto.qryProdutosTIPO.Value := '00-MERCADORIA PARA REVENDA';
  FrmCadProduto.qryProdutosALIQ_ICM.Value := dados.qryEmpresaALIQ_ICMS.AsFloat;
  FrmCadProduto.qryProdutosALIQ_PIS.Value := dados.qryEmpresaALIQ_PIS.AsFloat;
  FrmCadProduto.qryProdutosALIQ_COF.Value := dados.qryEmpresaALIQ_COF.AsFloat;
  FrmCadProduto.qryProdutosALIQ_IPI.Value := dados.qryEmpresaALIQ_IPI.AsFloat;
  FrmCadProduto.qryProdutosCSTICMS.Value := dados.qryEmpresaCST_ICMS.Value;
  FrmCadProduto.qryProdutosCSTE.Value := dados.qryEmpresaCST_ENTRADA.Value;
  FrmCadProduto.qryProdutosCSTS.Value := dados.qryEmpresaCST_SAIDA.Value;
  FrmCadProduto.qryProdutosCSTIPI.Value := dados.qryEmpresaCST_IPI.Value;
  FrmCadProduto.qryProdutosCSOSN.Value := dados.qryEmpresaCSOSN.Value;
  FrmCadProduto.qryProdutosPAGA_COMISSAO.Value := 'N';
  FrmCadProduto.qryProdutosEFISCAL.Value := 'S';
  dados.vCodProduto := 0;

  FrmCadProduto.DBEdit24.ReadOnly := true;
  FrmCadProduto.DBEdit9.ReadOnly := true;
  FrmCadProduto.Tag := 1;
  FrmCadProduto.ShowModal;

  try
    btnCadastrar.Enabled := false;
    if dados.vCodProduto <> 0 then
    begin
      if not(dados.QryXmlDetail.State in dsEditModes) then
        dados.QryXmlDetail.Edit;
      dados.QryXmlDetailID_PRODUTO_LOC.Value := dados.vCodProduto;
      // Verificar grade
      iGrade  :=  ChamaGrade(Dados.vCodProduto);
      if iGrade > 0 then
        Dados.QryXmlDetailFK_GRADE_PRODUTO.Value  :=  iGrade;
      dados.QryXmlDetail.Post;
      dados.Conexao.CommitRetaining;
    end;
  finally
    FrmCadProduto.DBEdit24.ReadOnly := false;
    FrmCadProduto.DBEdit9.ReadOnly := false;
    if FrmCadProduto <> nil then
      FrmCadProduto.Release;
    btnCadastrar.Enabled := true;
    dados.QryXmlDetail.Next;
  end;
end;

procedure TFrmXml.btnDesvincularClick(Sender: TObject);
begin
  try
    if application.messagebox
      ('Tem certeza de que deseja desvincular os produtos desta nota',
      'Confirmação', mb_yesno) = mrno then
      exit;

    btnDesvincular.Enabled := false;

    dados.qryexecute.Close;
    dados.qryexecute.SQL.Text :=
      'delete from xmlproduto where ID_FORNECEDOR=:idforn and ID_PRODUTO_LOCAL=:id_prod_loc';
    dados.qryexecute.Params[0].Value := dados.qryXmlMasterID_FORNECEDOR.Value;;
    dados.qryexecute.Params[1].Value := dados.QryXmlDetailID_PRODUTO_LOC.Value;
    dados.qryexecute.ExecSQL;
    dados.Conexao.CommitRetaining;

    dados.QryXmlDetail.Edit;
    dados.QryXmlDetailID_PRODUTO_LOC.Clear;
    dados.QryXmlDetail.Post;
    dados.Conexao.CommitRetaining;

  finally
    btnDesvincular.Enabled := true;
    dados.QryXmlDetail.EnableControls;
  end;
end;

procedure TFrmXml.btnDesvincularTodosClick(Sender: TObject);
begin
  if application.messagebox
    ('Tem certeza de que deseja desvincular os produtos desta nota',
    'Confirmação', mb_yesno) = mrno then
    exit;
  try
    btnDesvincularTodos.Enabled := false;
    dados.QryXmlDetail.DisableControls;
    dados.QryXmlDetail.First;
    while not dados.QryXmlDetail.eof do
    begin
      dados.qryexecute.Close;
      dados.qryexecute.SQL.Clear;
      dados.qryexecute.SQL.Text :=
        'delete from xmlproduto where ID_FORNECEDOR=:idforn and ID_PRODUTO_LOCAL=:id_prod_loc';
      dados.qryexecute.Params[0].Value :=
        dados.qryXmlMasterID_FORNECEDOR.Value;;
      dados.qryexecute.Params[1].Value :=
        dados.QryXmlDetailID_PRODUTO_LOC.Value;
      dados.qryexecute.ExecSQL;
      dados.Conexao.CommitRetaining;

      dados.qryexecute.Close;
      dados.qryexecute.SQL.Clear;
      dados.qryexecute.SQL.Text :=
        'update XML_DETAIL set ID_PRODUTO_LOC=null  where CODIGO=:id';
      dados.qryexecute.Params[0].Value := dados.QryXmlDetailCODIGO.Value;
      dados.qryexecute.ExecSQL;
      dados.Conexao.CommitRetaining;

      dados.QryXmlDetail.Next;
    end;

  finally
    btnDesvincularTodos.Enabled := true;
    dados.QryXmlDetail.EnableControls;
    dados.QryXmlDetail.Refresh;
  end;
end;

end.
