unit uCadvenda;

interface // Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, math,

  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask,
  Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,

  EhLibVCL, GridsEh, DBAxisGridsEh, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrUtil, ACBrEnterTab, // Vcl.Grids,

  Vcl.DBGrids,

  JvComponentBase, JvEnterTab, dxSkinsCore,
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
  TfrmCadvenda = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label3: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    Label28: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Panel2: TPanel;
    Label14: TLabel;
    DBText2: TDBText;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBText3: TDBText;
    Panel4: TPanel;
    qryTransp: TFDQuery;
    dsTransp: TDataSource;
    qryTranspCODIGO: TIntegerField;
    qryTranspNOME: TStringField;
    qryGrade: TFDQuery;
    qryGradeCODIGO: TIntegerField;
    qryGradeDESCRICAO: TStringField;
    qryGradePRECO: TFMTBCDField;
    qryGradeFK_PRODUTO: TIntegerField;
    qryClientes: TFDQuery;
    qryClientesCODIGO: TIntegerField;
    qryClientesRAZAO: TStringField;
    qryClientesCNPJ: TStringField;
    qryClientesENDERECO: TStringField;
    qryClientesNUMERO: TStringField;
    qryClientesBAIRRO: TStringField;
    qryClientesMUNICIPIO: TStringField;
    qryClientesUF: TStringField;
    qryClientesCEP: TStringField;
    qryClientesFONE1: TStringField;
    qryClientesCELULAR1: TStringField;
    dsCliente: TDataSource;
    Label19: TLabel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label18: TLabel;
    TabSheet1: TTabSheet;
    DBMemoEh1: TDBMemoEh;
    dbProduto: TDataSource;
    pnPessoa: TPanel;
    DBGridPessooa: TDBGridEh;
    dbeCliente: TDBEdit;
    Label2: TLabel;
    Panel6: TPanel;
    cxSair: TcxButton;
    cxGravar: TcxButton;
    cxProdutos: TcxButton;
    cxPessoas: TcxButton;
    cxFinalizar: TcxButton;
    dsVenda: TDataSource;
    qryVenda: TFDQuery;
    qryVendaCODIGO: TIntegerField;
    qryVendaDATA_EMISSAO: TDateField;
    qryVendaDATA_SAIDA: TDateField;
    qryVendaID_CLIENTE: TIntegerField;
    qryVendaFK_USUARIO: TIntegerField;
    qryVendaFK_CAIXA: TIntegerField;
    qryVendaFK_VENDEDOR: TIntegerField;
    qryVendaCPF_NOTA: TStringField;
    qryVendaTIPO_DESCONTO: TStringField;
    qryVendaOBSERVACOES: TMemoField;
    qryVendaSITUACAO: TStringField;
    qryVendaVIRTUAL_CLIENTE: TStringField;
    qryVendaVIRTUAL_VENDEDOR: TStringField;
    qryVendaFKEMPRESA: TIntegerField;
    qryVendaTIPO: TStringField;
    qryVendaFKORCAMENTO: TIntegerField;
    qryVendaNECF: TIntegerField;
    qryVendaLOTE: TIntegerField;
    qryVendaVirtualEmpresa: TStringField;
    qryVendaGERA_FINANCEIRO: TStringField;
    qryVendaFK_TABELA: TIntegerField;
    qryVendaVIRTUAL_TABELA: TStringField;
    qryVendaVIRTUAL_TX_ACRESC: TFloatField;
    qryVendaVIRTUAL_CNPJ: TStringField;
    qryVendaSUBTOTAL: TFMTBCDField;
    qryVendaDESCONTO: TFMTBCDField;
    qryVendaTROCO: TFMTBCDField;
    qryVendaDINHEIRO: TFMTBCDField;
    qryVendaPERCENTUAL: TFMTBCDField;
    qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryVendaACRESCIMO: TFMTBCDField;
    qryVendaPEDIDO: TStringField;
    qryVendaTOTAL_TROCA: TFMTBCDField;
    qryVendaOS: TStringField;
    qryVendaFK_OS: TIntegerField;
    qryVendaFORMA_PAGAMENTO: TStringField;
    qryVendaFK_MESA: TIntegerField;
    qryVendaFK_ENTREGADOR: TIntegerField;
    qryVendaVIRTUAL_ENTREGADOR: TStringField;
    qryVendaNOME: TStringField;
    qryVendaVIRTUAL_ENDERECO: TStringField;
    qryVendaVIRTUAL_CELULAR: TStringField;
    qryVendaVIRTUAL_NUMERO: TStringField;
    qryVendaVIRTUAL_BAIRRO: TStringField;
    qryVendaVIRTUAL_COMPLEMENTO: TStringField;
    qryVendaFLAG_NFCE: TStringField;
    qryVendaTELA: TStringField;
    qryVendaEX: TIntegerField;
    qryVendaALTERADO: TStringField;
    qryVendaHORA: TTimeField;
    qryVendaTOTAL: TFMTBCDField;
    qrySoma: TFDQuery;
    qrySomaTOTAL: TFMTBCDField;
    dsItem: TDataSource;
    qryItem: TFDQuery;
    qryItemCODIGO: TIntegerField;
    qryItemFKVENDA: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemCOD_BARRA: TStringField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemSITUACAO: TStringField;
    qryItemUNIDADE: TStringField;
    qryItemDESCRICAO_SL: TStringField;
    qryItemEFISCAL: TStringField;
    qryItemFK_GRADE: TIntegerField;
    qryItemOS: TStringField;
    qryItemDESCRICAO_OBS: TStringField;
    qryItemOBSERVACAO: TStringField;
    qryItemVIRTUAL_TIPO_ALIMENTO: TStringField;
    qryItemQTD: TFMTBCDField;
    qryItemE_MEDIO: TFMTBCDField;
    qryItemPRECO: TFMTBCDField;
    qryItemVALOR_ITEM: TFMTBCDField;
    qryItemVDESCONTO: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryItemQTD_DEVOLVIDA: TFMTBCDField;
    qryItemACRESCIMO: TFMTBCDField;
    qryItemID_PRODUTO_SIMILAR: TIntegerField;
    qryItemID_SERIAL: TIntegerField;
    qryItemFK_MESA: TIntegerField;
    qryItemQTD_RESTANTE: TFMTBCDField;
    qryItemPDESCONTO: TFMTBCDField;
    qryItemVALOR_ITEM_SD: TFMTBCDField;
    qryItemFATOR: TFMTBCDField;
    qryItemFK_IMEI: TIntegerField;
    qryItemPR_VENDA: TFMTBCDField;
    qryItemPR_CUSTO: TFMTBCDField;
    qryItemTTOTAL: TAggregateField;
    qryBuscaVenda: TFDQuery;
    qryBuscaVendaCODIGO: TIntegerField;
    qryPesqProd: TFDQuery;
    qryPesqProdCODIGO: TIntegerField;
    qryPesqProdDESCRICAO: TStringField;
    qryPesqProdCFOP: TStringField;
    qryPesqProdCODBARRA: TStringField;
    qryPesqProdNCM: TStringField;
    qryPesqProdREFERENCIA: TStringField;
    qryPesqProdPR_VENDA: TFMTBCDField;
    qryPesqProdPRECO_ATACADO: TFMTBCDField;
    qryPesqProdQTD_ATACADO: TFMTBCDField;
    qryPesqProdQTD_ATUAL: TFMTBCDField;
    qryPesqProdUNIDADE: TStringField;
    qryPesqProdEFISCAL: TStringField;
    qryPesqProdE_MEDIO: TFMTBCDField;
    qryPesqProdLOCALIZACAO: TStringField;
    qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField;
    qryPesqProdPRECO_VARIAVEL: TStringField;
    qryPesqProdDESCONTO: TCurrencyField;
    qryPesqProdINICIO_PROMOCAO: TDateField;
    qryPesqProdFIM_PROMOCAO: TDateField;
    qryPesqProdSERVICO: TStringField;
    qryPesqProdREMEDIO: TStringField;
    qryPesqProdGRADE: TStringField;
    qryPesqProdPREFIXO_BALANCA: TStringField;
    qryPesqProdVIRTUAL_PRECO: TExtendedField;
    qryPesqProdPRODUTO_PESADO: TStringField;
    qryPesqProdQTD_FISCAL: TBCDField;
    qryPesqProdSERIAL: TStringField;
    pnlprod: TPanel;
    EdtProdutoP: TEdit;
    GrpBxDadosProduto: TGroupBox;
    edtQtdP: TEdit;
    edtPrecoP: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblTotalP: TLabel;
    Shape1: TShape;
    DBGridBuscaP: TDBGridEh;
    DBGridP: TDBGridEh;
    qryVendaVIRTUAL_CEP: TStringField;
    qryVendaVIRTUAL_CIDADE: TStringField;
    qryVendaVIRTUAL_UF: TStringField;
    btnCaixa: TLabel;
    qryTabela: TFDQuery;
    qryTabelaCODIGO: TIntegerField;
    qryTabelaDESCRICAO: TStringField;
    qryTabelaFKEMPRESA: TIntegerField;
    qryTabelaATIVO: TStringField;
    qryTabelaACRESCIMO: TFMTBCDField;
    qryEntregador: TFDQuery;
    qryEntregadorCODIGO: TIntegerField;
    qryEntregadorNOME: TStringField;
    qryClientesCOMPLEMENTO: TStringField;
    dsPesqProd: TDataSource;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdEFISCAL: TStringField;
    qryProdE_MEDIO: TFMTBCDField;
    qryProdQTD_FISCAL: TBCDField;
    qryProdTIPO_ALIMENTO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryOrcamentoAfterPost(DataSet: TDataSet);
    procedure qryItensOAfterPost(DataSet: TDataSet);
    procedure qryItensOAfterDelete(DataSet: TDataSet);
    procedure dbeClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPessooaDblClick(Sender: TObject);
    procedure pnPessoaExit(Sender: TObject);
    procedure DBGridPessooaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxFinalizarClick(Sender: TObject);
    procedure cxProdutosClick(Sender: TObject);
    procedure cxPessoasClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure qryVendaAfterDelete(DataSet: TDataSet);
    procedure EdtProdutoPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridBuscaPDblClick(Sender: TObject);
    procedure EdtProdutoPChange(Sender: TObject);
    procedure EdtProdutoPKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridPDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure edtQtdPExit(Sender: TObject);
    procedure edtQtdPKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoPExit(Sender: TObject);
    procedure edtPrecoPKeyPress(Sender: TObject; var Key: Char);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure qryVendaAfterOpen(DataSet: TDataSet);
    procedure qryVendaAfterPost(DataSet: TDataSet);
    procedure qryVendaBeforeOpen(DataSet: TDataSet);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure qryPesqProdCalcFields(DataSet: TDataSet);
    procedure DBGridBuscaPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridBuscaPDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryItemAfterDelete(DataSet: TDataSet);
    procedure qryItemBeforeOpen(DataSet: TDataSet);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryItemCalcFields(DataSet: TDataSet);
    procedure cxGravarClick(Sender: TObject);
  private
    vPosicao: Integer;
    FQtdLancada: Double;
    vSql, vSQLVenda, vSqlBusca: string;
    vPesquisa: string;
    vQtd: extended;
    FPodeAlterar: Boolean;
    CaixaAberto, PesquisaProduto: Boolean;
    vletras: string[100];
    procedure LocalizaCliente(Tipo: string);
    // procedure InsereItem(CodigoBarra: String);
    // function BuscaPreco(CodProduto, CodGrade: integer; qtd: extended): extended;
    procedure BuscaPreco(Descricao: String);

    procedure GetCliente;
    procedure CalculaTotalVenda(idVenda: Integer);
    procedure SituacaoPedido;

    function BuscaNumeroVenda: Integer;
    procedure AtualizarEstoqueVenda;

    procedure FinalizaVenda;
    procedure FecharPrevenda;
    procedure InsereItem(Descricao, OBSERVACAO: String;
      Preco, Qtd, Total: extended);
    function RetornaMaiorItem(idVenda: Integer): Integer;
    procedure DescricaoSetFocus(Op: String);
    procedure PreencheBuscaPreco;
    procedure GeraSqlProduto;
    procedure AbreCaixa;
    procedure PesquisaDescricao(FPesquisa: String);
    procedure PesquisaCodBarra(FPesquisa, Descricao: String);
    procedure PesquisaCodBarraGeral(FPesquisa: string);
    procedure AtualizaDescricao(Descricao: String);
    procedure FechaVenda(Descricao: String);
    function SituacaoCaixa: Boolean;
    procedure btnCaixaClick(Sender: TObject);
    procedure FecharCaixa;
    procedure PesquisaTipoTerminal;
    procedure ProdutoCalcFieldGenerico(Descricao: string; Qtd: extended);
    procedure ExibirMensagemProdutoNaoEncontrado;
    function ValidaItem(Qtd, vPreco: extended): Boolean;
    procedure LimpaCamposVenda;
    procedure GravaVenda;
    procedure LimpaCliente;
    procedure ConfiguraTipodecaixa;

    { Private declarations }
  public
    vpessoa: string;
    PodeAtualizarEstoque: Boolean;
    procedure CalculaTotais;
    procedure inserevenda;
    procedure VendaExiste;
    procedure AbreVenda(Codigo: Integer; tela: String);
    { Public declarations }
  end;

var
  FrmCadvenda: TfrmCadvenda;

implementation

{$R *.dfm}

uses uFormMensagem, Udados, uCadProduto, uCadPessoa, uFormaPagamento,
  uDMEstoque, uAbreCaixa;

procedure TfrmCadvenda.CalculaTotalVenda(idVenda: Integer);
begin
  qrySoma.close;
  qrySoma.Params[0].Value := idVenda;
  qrySoma.Open;
  if qrySomaTOTAL.AsFloat = 0 then
  begin
    Dados.qryExecute.close;
    Dados.qryExecute.SQL.Text :=
      'UPDATE VENDAS_MASTER SET SUBTOTAL=:SUBTOTAL,TOTAL=:TOTAL, ACRESCIMO=:ACRESCIMO, DESCONTO=:DESCONTO, PERCENTUAL=:PERCENTUAL, PERCENTUAL_ACRESCIMO=:PERCENTUAL_ACRESCIMO WHERE CODIGO=:CODIGO';
    Dados.qryExecute.ParamByName('TOTAL').Value := 0;
    Dados.qryExecute.ParamByName('SUBTOTAL').Value := 0;
    Dados.qryExecute.ParamByName('ACRESCIMO').Value := 0;
    if ((qryVendaFK_OS.AsInteger = 0) or (qryVendaFK_OS.IsNull)) and
      ((qryVendaFKORCAMENTO.AsInteger = 0) or (qryVendaFKORCAMENTO.IsNull)) then
    begin
      Dados.qryExecute.ParamByName('DESCONTO').Value := 0;
      Dados.qryExecute.ParamByName('PERCENTUAL').Value := 0;
    end;
    Dados.qryExecute.ParamByName('PERCENTUAL_ACRESCIMO').Value := 0;
    Dados.qryExecute.ParamByName('CODIGO').Value := qryVendaCODIGO.Value;
    Dados.qryExecute.ExecSQL;
  end
  else
  begin
    Dados.qryExecute.close;
    Dados.qryExecute.SQL.Text :=
      'UPDATE VENDAS_MASTER SET SUBTOTAL=:SUBTOTAL, TOTAL=:TOTAL,  PERCENTUAL=:PERCENTUAL, PERCENTUAL_ACRESCIMO=:PERCENTUAL_ACRESCIMO WHERE CODIGO=:CODIGO';
    Dados.qryExecute.ParamByName('SUBTOTAL').AsFloat := qrySomaTOTAL.AsFloat;
    Dados.qryExecute.ParamByName('TOTAL').AsFloat :=
      Dados.qryExecute.ParamByName('SUBTOTAL').AsFloat -
      FrmCadvenda.qryVendaDESCONTO.AsFloat + qryVendaACRESCIMO.AsFloat;
    Dados.qryExecute.ParamByName('PERCENTUAL').AsFloat :=
      (FrmCadvenda.qryVendaDESCONTO.AsFloat / Dados.qryExecute.ParamByName
      ('SUBTOTAL').AsFloat) * 100;
    Dados.qryExecute.ParamByName('PERCENTUAL_ACRESCIMO').AsFloat :=
      (FrmCadvenda.qryVendaACRESCIMO.AsFloat / Dados.qryExecute.ParamByName
      ('SUBTOTAL').AsFloat) * 100;
    Dados.qryExecute.ParamByName('CODIGO').Value := qryVendaCODIGO.Value;
    Dados.qryExecute.ExecSQL;
  end;
  Dados.Conexao.CommitRetaining;
  qryVenda.Refresh;
end;

procedure TfrmCadvenda.ExibirMensagemProdutoNaoEncontrado;
begin
  TFormMensagem.MostrarMensagem('PRODUTO NÃO ENCONTRADO');
end;

procedure TfrmCadvenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Sair da Tela?', 'Confirmação', MB_YESNO) <> mrYes
  then
  begin
    Action := caNone;
    Exit;
  end;
  // Verifica se há itens na venda; se não houver, tenta cancelar ou deletar a venda
  if qryItem.RecordCount = 0 then
  begin
    if qryVenda.Active then
    begin
      if qryVenda.State in [dsInsert, dsEdit] then
        qryVenda.Cancel
      else
        qryVenda.Delete;
    end;
  end;

  if qryPesqProd.Active then
    qryPesqProd.close;
end;

procedure TfrmCadvenda.FormCreate(Sender: TObject);
begin
  GeraSqlProduto;
  Dados.qryTerminal.close;
  Dados.qryTerminal.Params[0].Value := Dados.Getcomputer;
  Dados.qryTerminal.Open;
  Dados.qryTerminal.Locate('NOME', Dados.Getcomputer, []);
  Dados.qryConfig.close;
  Dados.qryConfig.Params[0].Value := Dados.qryEmpresaCODIGO.AsInteger;
  Dados.qryConfig.Open;
  // vletras := ''; // pesquisa parte
  // qryProd.Filtered := false;

end;

procedure TfrmCadvenda.GeraSqlProduto;
begin
  if Dados.qryEmpresaCHECA_ESTOQUE_FISCAL.Value = 'N' then
  begin
    vSql := ' SELECT PRO.CODIGO,' + ' PRO.DESCRICAO,' + ' PRO.CFOP,' +
      ' PRO.CODBARRA,' + ' PRO.NCM, PRO.REFERENCIA,' + ' PRO.PR_VENDA,' +
      ' PRO.PRECO_ATACADO, ' + 'PRO.QTD_ATACADO,' + ' PRO.QTD_ATUAL,' +
      ' PRO.QTD_FISCAL,' +
      ' PRO.UNIDADE, PRO.EFISCAL,PRO.E_MEDIO, PRO.LOCALIZACAO, PRO.PRODUTO_PESADO,'
      + ' PRO.PRECO_PROMO_VAREJO,PRO.PRECO_PROMO_ATACADO, PRO.PRECO_VARIAVEL, PRO.DESCONTO,'
      + ' PRO.INICIO_PROMOCAO,PRO.FIM_PROMOCAO, PRO.SERVICO, PRO.REMEDIO, PRO.GRADE, PRO.SERIAL, PRO.PREFIXO_BALANCA'
      + ' FROM PRODUTO PRO' +
      ' WHERE (PRO.EMPRESA=:EMP) and (PRO.QTD_ATUAL>0) AND (PRO.ATIVO=''S'') ' +
      '/*where*/';
  end
  else
  begin
    vSql := ' SELECT PRO.CODIGO,' + ' PRO.DESCRICAO,' + ' PRO.CFOP,' +
      ' PRO.CODBARRA,' + ' PRO.NCM, PRO.REFERENCIA,' + ' PRO.PR_VENDA,' +
      ' PRO.PRECO_ATACADO, ' + 'PRO.QTD_ATACADO,' + ' PRO.QTD_ATUAL,' +
      ' PRO.QTD_FISCAL,' +
      ' PRO.UNIDADE, PRO.EFISCAL,PRO.E_MEDIO, PRO.LOCALIZACAO, PRO.PRODUTO_PESADO, '
      + ' PRO.PRECO_PROMO_VAREJO,PRO.PRECO_PROMO_ATACADO, PRO.PRECO_VARIAVEL, PRO.DESCONTO,'
      + ' PRO.INICIO_PROMOCAO,PRO.FIM_PROMOCAO, PRO.SERVICO, PRO.REMEDIO, PRO.GRADE, PRO.SERIAL, PRO.PREFIXO_BALANCA '
      + ' FROM PRODUTO PRO' + ' WHERE (PRO.EMPRESA=:EMP) AND (PRO.ATIVO=''S'') '
      + ' /*where*/';
  end;
  qryPesqProd.close;
  qryPesqProd.SQL.Text := vSql;
  qryPesqProd.ParamByName('EMP').Value := qryVendaFKEMPRESA.Value;
  qryPesqProd.Open;
end;

procedure TfrmCadvenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F12:
      EdtProdutoP.SetFocus;
    vk_f2:
      cxGravarClick(self);
    vk_f3:
      cxFinalizarClick(self);
    vk_f6:
      cxProdutosClick(self);
    vk_f7:
      cxPessoasClick(self);
    VK_ESCAPE:
      begin
        if ActiveControl <> DBGridP then
          cxSairClick(self)
        else if not(dsItem.DataSet.State in dsEditModes) then
          cxSairClick(self)
      end;
    vk_f11:
      EdtProdutoP.SetFocus;
  end;
end;

function TfrmCadvenda.SituacaoCaixa: Boolean;
begin
  // verifica se caixa estÁ aberto
  result := false;
  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Text :=
    'select CODIGO, DATA_ABERTURA, LOTE, SITUACAO from contas where id_usuario=:id AND SITUACAO=''A''';
  Dados.qryConsulta.Params[0].Value := Dados.idUsuario;
  Dados.qryConsulta.Open;
  if Dados.qryConsulta.FieldByName('SITUACAO').AsString = 'A' then
    result := true;
end;

procedure TfrmCadvenda.AbreCaixa;
begin
  Try
    Application.CreateForm(TfrmAbreCaixa, frmAbreCaixa);
    frmAbreCaixa.iTipo := 1;
    Dados.tela := 'PVENDA';
    frmAbreCaixa.ShowModal;
  Finally
    frmAbreCaixa.Release;
  End;
end;

procedure TfrmCadvenda.FecharCaixa;
var
  Data: Tdate;
  Hora: TTime;
  idLote: Integer;
begin
  if Application.MessageBox('Tem certeza de que deseja Fechar Caixa?' + #13#10 +
    'Confirmação', 'Confirmação', MB_YESNO) = mrno then
    //
    // if Application.messagebox('Tem certeza de que deseja Fechar Caixa?',
    // 'Confirmação', mb_yesno) = mrno then
    Exit;
  Dados.vPodeFecharCaixa := false;
  // try
  // frmResumoCaixa := TfrmResumoCaixa.Create(Application);
  // frmResumoCaixa.Caption := 'Resumo Caixa - Usuário:' + Dados.vUsuario;
  // frmResumoCaixa.FUsuario := Dados.idUsuario;
  // frmResumoCaixa.FLote := Dados.Lote;
  // frmResumoCaixa.Tag := 1;
  // frmResumoCaixa.VwResumo := false;
  // frmResumoCaixa.qryResumo.Open;
  // frmResumoCaixa.ShowModal;
  // finally
  // frmResumoCaixa.Release;
  // end;
  if Dados.vPodeFecharCaixa then
  begin
    AbreVenda(BuscaNumeroVenda, 'PVENDA');
    if qryVendaCODIGO.Value > 0 then
      Dados.EstornaFinanceiro(qryVendaCODIGO.Value);
    Dados.qryExecute.close;
    Dados.qryExecute.SQL.Text :=
      'UPDATE CONTAS SET ID_USUARIO=NULL, DATA_ABERTURA=NULL, SITUACAO=''F'', LOTE=0 WHERE CODIGO=:COD';
    Dados.qryExecute.Params[0].Value := Dados.idCaixa;
    Dados.qryExecute.ExecSQL;
    Dados.Conexao.CommitRetaining;
    if qryVendaCODIGO.Value > 0 then
    begin
      Dados.qryExecute.close;
      Dados.qryExecute.SQL.Text :=
        'delete from CONTAS_MOVIMENTO WHERE fkvenda=:COD';
      Dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      Dados.qryExecute.ExecSQL;
      Dados.Conexao.CommitRetaining;
    end;
    close;
  end;
end;

procedure TfrmCadvenda.btnCaixaClick(Sender: TObject);
begin
  { if not btnCaixa.Visible then
    exit; }
  if btnCaixa.Tag = 1 then
  begin
    AbreCaixa;
    Exit;
  end
  else
  begin
    FecharCaixa;
    Exit;
  end;
end;

procedure TfrmCadvenda.FormShow(Sender: TObject);
var
  Resp: Integer;
begin
  Dados.tela := 'PVENDA';
  PesquisaProduto := true;

  DBGridBuscaP.Columns[6].Visible := false;
  if Dados.qryEmpresaEXIBE_ESTOQUE_FISCAL.Value = 'S' then
    DBGridBuscaP.Columns[6].Visible := true;

  Dados.qryPesqEmp.close;
  Dados.qryPesqEmp.Open;
  if FrmCadvenda.Tag <> 1 then
  begin
    if Panel3.Enabled then
      dbeCliente.SetFocus;
  end
  else
    EdtProdutoP.SetFocus;

  PesquisaTipoTerminal;
  CaixaAberto := SituacaoCaixa;

  if CaixaAberto then
  begin
    Dados.idCaixa := Dados.qryConsulta.Fields[0].Value;
    Dados.Lote := Dados.qryConsulta.Fields[2].Value;
  end
  else
  begin
    Resp := Application.MessageBox(PWideChar('CAIXA Fechado. Deseja Abrir?'),
      'Confirmação', MB_YESNO or MB_ICONQUESTION);
    if Resp <> IDYES then
    begin
      close; // Fecha o formulário se o usuário não quiser abrir o caixa
      Exit; // Interrompe a execução do evento
    end;
    AbreCaixa; // Se respondeu Sim, abre o caixa
  end;

  if FrmCadvenda.Tag = 0 then
    VendaExiste;

  qryTransp.close;
  qryTransp.Open;

  ConfiguraTipodecaixa;
end;

procedure TfrmCadvenda.ConfiguraTipodecaixa;
begin
  if Dados.qryEmpresaCAIXA_RAPIDO.Value = 'N' then
  begin
    edtQtdP.ReadOnly := false;
    edtPrecoP.ReadOnly := false;
  end
  else
  begin
    if Dados.qryEmpresaBLOQUEAR_PRECO.Value = 'S' then
    begin
      edtPrecoP.ReadOnly := true;
    end
    else
    begin
      edtPrecoP.ReadOnly := false;
    end;
  end;
end;

procedure TfrmCadvenda.qryOrcamentoAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.CommitRetaining;
end;

Procedure TfrmCadvenda.ProdutoCalcFieldGenerico(Descricao: string;
  Qtd: extended);
var
  Qtde: real;
  valida1, valida2: Boolean;
begin
  if Pos('*', Descricao) > 1 then
  begin
    Qtde := StrToFloatDef((copy(Descricao, 1, Pos('*', Descricao) - 1)), 1);
  end
  else
  begin
    Qtde := 0;
    if trim(Qtd.ToString) <> '' then
      Qtde := StrToFloatDef(Qtd.ToString, 1);
  end;
  if (date >= qryPesqProdINICIO_PROMOCAO.AsDateTime) and
    (date <= qryPesqProdFIM_PROMOCAO.AsDateTime) then
  begin
    // produto em promoÇÃo
    qryPesqProdVIRTUAL_PRECO.AsFloat := qryPesqProdPRECO_PROMO_VAREJO.AsFloat;
    if (Qtde >= qryPesqProdQTD_ATACADO.AsFloat) and
      (qryPesqProdQTD_ATACADO.AsFloat > 0) and
      (qryPesqProdPRECO_PROMO_ATACADO.AsFloat > 0) then
      qryPesqProdVIRTUAL_PRECO.AsFloat :=
        qryPesqProdPRECO_PROMO_ATACADO.AsFloat;
  end
  else
  begin
    qryPesqProdVIRTUAL_PRECO.AsFloat := qryPesqProdPR_VENDA.AsFloat;
    if ((Qtde >= qryPesqProdQTD_ATACADO.AsFloat) and
      (qryPesqProdQTD_ATACADO.AsFloat > 0) and (qryPesqProdPRECO_ATACADO.AsFloat
      > 0)) then
      qryPesqProdVIRTUAL_PRECO.AsFloat := qryPesqProdPRECO_ATACADO.AsFloat;
  end;
end;

procedure TfrmCadvenda.qryPesqProdCalcFields(DataSet: TDataSet);
begin
  if PageControl1.ActivePage = TabSheet2 then
    ProdutoCalcFieldGenerico(EdtProdutoP.Text, StrToFloatDef(edtQtdP.Text, 1));
end;

procedure TfrmCadvenda.qryVendaAfterDelete(DataSet: TDataSet);
begin
  CalculaTotalVenda(qryVendaCODIGO.Value);
end;

procedure TfrmCadvenda.qryVendaAfterOpen(DataSet: TDataSet);
begin
  qryItem.close;
  // qryItem.Params[0].Value := qryVendaCODIGO.Value;
  qryItem.Open;
  // qryItem.First;
end;

procedure TfrmCadvenda.qryVendaAfterPost(DataSet: TDataSet);
begin
  CalculaTotalVenda(qryVendaCODIGO.Value);
end;

procedure TfrmCadvenda.qryVendaBeforeOpen(DataSet: TDataSet);
begin
  qryClientes.close;
  qryClientes.Params[0].Value := '%';
  qryClientes.Params[1].Value := '%';
  qryClientes.Open;
  Dados.qryVendedor.close;
  Dados.qryVendedor.Open;
end;

procedure TfrmCadvenda.CalculaTotais;
begin
  CalculaTotalVenda(qryVendaCODIGO.Value);
  // qrySoma.Refresh;
  // qryOrcamento.Edit;
  // qryOrcamentoSUBTOTAL.AsFloat := qrySomaTOTAL.AsFloat;
  // qryOrcamento.Post;
end;

procedure TfrmCadvenda.GetCliente;
begin
  if (qryVenda.State in dsEditModes) then
    qryVenda.Edit;
  if dbeCliente.Text <> '' then
    LocalizaCliente('nome')
  else
    LocalizaCliente('');
end;

procedure TfrmCadvenda.cbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(self.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCadvenda.SituacaoPedido;
begin

  if Dados.VerificaCodigoVenda(qryVendaCODIGO.Value) then
  begin
    repeat
      // gera um novo nmero
      if not Dados.VerificaCodigoVenda(qryVendaCODIGO.Value) then
        Break
      else
      begin
        // Garante que o DataSet está em modo de edição para incrementar o cdigo
        if not(qryVenda.State in dsEditModes) then
          qryVenda.Edit;
        qryVendaCODIGO.Value := qryVendaCODIGO.Value + 1; // Incrementa o nmero
      end;
    until false;
    VendaExiste; // Notifica que a venda já foi finalizada
    raise Exception.Create('Venda foi finalizada em outra instância do sistema!'
      + sLineBreak +
      'Evite abrir o PDV com o mesmo usuário em mais de uma instância do Sistema!');
  end;
end;

procedure TfrmCadvenda.PesquisaTipoTerminal;
begin
  Dados.qryTerminal.close;
  Dados.qryTerminal.Params[0].Value := Dados.Getcomputer;
  Dados.qryTerminal.Open;
  if not Dados.qryTerminal.Locate('nome', Dados.Getcomputer, []) then
  begin
    ShowMessage('Terminal não cadastrado!');
    close;
  end;
  Dados.TerminalCaixa := Dados.qryTerminalEH_CAIXA.AsString = 'S';
end;

function TfrmCadvenda.BuscaNumeroVenda: Integer;
var
  filtro: string;
  vSqlBusca: string;
begin
  filtro := '';
  vSqlBusca :=
    ' select max(CODIGO)CODIGO from VENDAS_MASTER where SITUACAO = ''X'' and ' +
    ' fk_usuario = :ID and fkempresa = :emp and tela=:tela' + filtro;
  if Dados.TerminalCaixa then
  begin
    qryBuscaVenda.close;
    qryBuscaVenda.SQL.Text := vSqlBusca;
    qryBuscaVenda.Params[0].Value := Dados.idUsuario;
    qryBuscaVenda.Params[1].Value := Dados.qryEmpresaCODIGO.Value;
    qryBuscaVenda.Params[2].Value := 'PVENDA';
    qryBuscaVenda.Open;
  end
  else
  begin
    qryBuscaVenda.close;
    qryBuscaVenda.SQL.Text := vSqlBusca;
    qryBuscaVenda.Params[0].Value := Dados.idUsuario;
    qryBuscaVenda.Params[1].Value := Dados.qryEmpresaCODIGO.Value;
    qryBuscaVenda.Params[2].Value := 'PVENDA';
    qryBuscaVenda.Open;
  end;
  result := qryBuscaVendaCODIGO.Value;
end;

procedure TfrmCadvenda.AtualizarEstoqueVenda;
var
  dsGrid: TDataSet;
begin
  // Garante que os itens estão carregados antes de atualizar o estoque
  // qryItem.Close;
  // qryItem.Open;

  dsGrid := qryItem;

  if dsGrid.IsEmpty then
  begin
    ShowMessage('Nenhum item na venda para atualizar estoque.');
    Exit;
  end;

  dsGrid.DisableControls;
  try
    dsGrid.First;
    while not dsGrid.Eof do
    begin
      if not dsGrid.FieldByName('ID_PRODUTO').IsNull and
        not dsGrid.FieldByName('QTD').IsNull then
      begin
        DMEstoque.AtualizaEstoque(dsGrid.FieldByName('ID_PRODUTO').AsInteger,
          dsGrid.FieldByName('QTD').AsFloat, 0, 'S', 'R');
      end
      else
      begin
        ShowMessage('Erro: Campo PRODUTO ou QTD está nulo.');
      end;

      dsGrid.Next;
    end;
  finally
    dsGrid.EnableControls;
  end;
end;

procedure TfrmCadvenda.inserevenda;
var
  codigo1, codigo2: Integer;
begin

  Dados.qryExecute.SQL.Clear;
  Dados.qryExecute.SQL.Add('INSERT INTO VENDAS_MASTER (');
  Dados.qryExecute.SQL.Add('CODIGO,');
  Dados.qryExecute.SQL.Add('DATA_EMISSAO,');
  Dados.qryExecute.SQL.Add('DATA_SAIDA,');
  Dados.qryExecute.SQL.Add('ID_CLIENTE,');
  Dados.qryExecute.SQL.Add('FK_USUARIO,');
  Dados.qryExecute.SQL.Add('FK_CAIXA,');
  Dados.qryExecute.SQL.Add('FK_VENDEDOR,');
  Dados.qryExecute.SQL.Add('CPF_NOTA,');
  Dados.qryExecute.SQL.Add('SUBTOTAL,');
  Dados.qryExecute.SQL.Add('TIPO_DESCONTO,');
  Dados.qryExecute.SQL.Add('DESCONTO,');
  Dados.qryExecute.SQL.Add('TROCO,');
  Dados.qryExecute.SQL.Add('DINHEIRO,');
  Dados.qryExecute.SQL.Add('TOTAL,');
  Dados.qryExecute.SQL.Add('SITUACAO,');
  Dados.qryExecute.SQL.Add('FKEMPRESA,');
  Dados.qryExecute.SQL.Add('PERCENTUAL,');
  Dados.qryExecute.SQL.Add('TIPO,');
  Dados.qryExecute.SQL.Add('NECF,');
  Dados.qryExecute.SQL.Add('FKORCAMENTO,');
  Dados.qryExecute.SQL.Add('FK_MESA,');
  Dados.qryExecute.SQL.Add('LOTE,');
  Dados.qryExecute.SQL.Add('GERA_FINANCEIRO,');
  Dados.qryExecute.SQL.Add('PERCENTUAL_ACRESCIMO,');
  Dados.qryExecute.SQL.Add('ACRESCIMO,');
  Dados.qryExecute.SQL.Add('FK_TABELA,');
  Dados.qryExecute.SQL.Add('PEDIDO,');
  Dados.qryExecute.SQL.Add('OS,');
  Dados.qryExecute.SQL.Add('FK_OS,');
  Dados.qryExecute.SQL.Add('TOTAL_TROCA,');
  Dados.qryExecute.SQL.Add('FORMA_PAGAMENTO,');
  Dados.qryExecute.SQL.Add('FK_ENTREGADOR,');
  Dados.qryExecute.SQL.Add('TELA,');
  Dados.qryExecute.SQL.Add('FLAG_NFCE');
  Dados.qryExecute.SQL.Add(')');
  Dados.qryExecute.SQL.Add('VALUES');
  Dados.qryExecute.SQL.Add('(');
  Dados.qryExecute.SQL.Add(':CODIGO,');
  Dados.qryExecute.SQL.Add(':DATA_EMISSAO,');
  Dados.qryExecute.SQL.Add(':DATA_SAIDA,');
  Dados.qryExecute.SQL.Add(':ID_CLIENTE,');
  Dados.qryExecute.SQL.Add(':FK_USUARIO,');
  Dados.qryExecute.SQL.Add(':FK_CAIXA,');
  Dados.qryExecute.SQL.Add(':FK_VENDEDOR,');
  Dados.qryExecute.SQL.Add(':CPF_NOTA,');
  Dados.qryExecute.SQL.Add(':SUBTOTAL,');
  Dados.qryExecute.SQL.Add(':TIPO_DESCONTO,');
  Dados.qryExecute.SQL.Add(':DESCONTO,');
  Dados.qryExecute.SQL.Add(':TROCO,');
  Dados.qryExecute.SQL.Add(':DINHEIRO,');
  Dados.qryExecute.SQL.Add(':TOTAL,');
  Dados.qryExecute.SQL.Add(':SITUACAO,');
  Dados.qryExecute.SQL.Add(':FKEMPRESA,');
  Dados.qryExecute.SQL.Add(':PERCENTUAL,');
  Dados.qryExecute.SQL.Add(':TIPO,');
  Dados.qryExecute.SQL.Add(':NECF,');
  Dados.qryExecute.SQL.Add(':FKORCAMENTO,');
  Dados.qryExecute.SQL.Add(':FK_MESA,');
  Dados.qryExecute.SQL.Add(':LOTE,');
  Dados.qryExecute.SQL.Add(':GERA_FINANCEIRO,');
  Dados.qryExecute.SQL.Add(':PERCENTUAL_ACRESCIMO,');
  Dados.qryExecute.SQL.Add(':ACRESCIMO,');
  Dados.qryExecute.SQL.Add(':FK_TABELA,');
  Dados.qryExecute.SQL.Add(':PEDIDO,');
  Dados.qryExecute.SQL.Add(':OS,');
  Dados.qryExecute.SQL.Add(':FK_OS,');
  Dados.qryExecute.SQL.Add(':TOTAL_TROCA,');
  Dados.qryExecute.SQL.Add(':FORMA_PAGAMENTO,');
  Dados.qryExecute.SQL.Add(':FK_ENTREGADOR,');
  Dados.qryExecute.SQL.Add(':TELA,');
  Dados.qryExecute.SQL.Add(':FLAG_NFCE');
  Dados.qryExecute.SQL.Add(');');

  if Dados.TerminalCaixa then
    Dados.qryExecute.ParamByName('TIPO').Value := 'V';

  Dados.qryExecute.ParamByName('FKEMPRESA').Value :=
    Dados.qryEmpresaCODIGO.Value;
  Dados.qryExecute.ParamByName('FK_USUARIO').Value := Dados.idUsuario;
  Dados.qryExecute.ParamByName('ID_CLIENTE').Value :=
    Dados.qryConfigCLIENTE_PADRAO.Value;
  Dados.qryExecute.ParamByName('FK_VENDEDOR').Value :=
    Dados.qryConfigVENDEDOR_PADRAO.Value;
  Dados.qryExecute.ParamByName('TELA').Value := 'PVENDA';
  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Text :=
    ' select FK_VENDEDOR from USUARIOS where codigo=:id';
  Dados.qryConsulta.Params[0].Value := Dados.idUsuario;
  Dados.qryConsulta.Open;

  if not Dados.qryConsulta.FieldByName('FK_VENDEDOR').IsNull then
    Dados.qryExecute.ParamByName('FK_VENDEDOR').Value :=
      Dados.qryConsulta.FieldByName('FK_VENDEDOR').Value;;
  Dados.qryExecute.ParamByName('FK_TABELA').Value := 1;
  Dados.qryExecute.ParamByName('CPF_NOTA').Value := '';
  Dados.qryExecute.ParamByName('FK_CAIXA').Value := Dados.idCaixa;
  Dados.qryExecute.ParamByName('LOTE').Value := Dados.Lote;
  Dados.qryExecute.ParamByName('DATA_EMISSAO').Value := date;
  Dados.qryExecute.ParamByName('DATA_SAIDA').Value := date;
  Dados.qryExecute.ParamByName('SUBTOTAL').Value := 0;
  Dados.qryExecute.ParamByName('TIPO_DESCONTO').Value := 'D';
  Dados.qryExecute.ParamByName('DESCONTO').Value := 0;
  Dados.qryExecute.ParamByName('PERCENTUAL').Value := 0;
  Dados.qryExecute.ParamByName('ACRESCIMO').Value := 0;
  Dados.qryExecute.ParamByName('DESCONTO').Value := 0;
  Dados.qryExecute.ParamByName('TOTAL').Value := 0;
  Dados.qryExecute.ParamByName('TROCO').Value := 0;
  Dados.qryExecute.ParamByName('FK_MESA').Clear;
  Dados.qryExecute.ParamByName('DINHEIRO').Value := 0;
  Dados.qryExecute.ParamByName('SITUACAO').Value := 'X';
  codigo1 := Dados.Numerador('VENDAS_MASTER', 'CODIGO', 'N', '', '');
  Dados.qryExecute.ParamByName('CODIGO').Value := codigo1;
  Dados.qryExecute.ExecSQL;
  Dados.Conexao.CommitRetaining;
  qryItem.close;
  qryItem.Open;
  // AtualizarEstoqueVenda;
  AbreVenda(codigo1, 'PVENDA');

end;

procedure TfrmCadvenda.AbreVenda(Codigo: Integer; tela: String);
begin
  qryVenda.close;
  qryVenda.Params[0].AsInteger := Codigo;
  qryVenda.Params[1].AsString := tela;
  qryVenda.Open;
end;

procedure TfrmCadvenda.LimpaCliente;
begin
  qryVendaNOME.Value := '';
  qryVendaVIRTUAL_ENDERECO.AsString := '';
  qryVendaVIRTUAL_NUMERO.Value := '';
  qryVendaVIRTUAL_BAIRRO.Value := '';
  qryVendaVIRTUAL_CIDADE.Value := '';
  qryVendaVIRTUAL_UF.Value := '';
  qryVendaVIRTUAL_CEP.Value := '';
  qryVendaVIRTUAL_CNPJ.Value := '';
  qryVendaVIRTUAL_CELULAR.Value := '';
end;

procedure TfrmCadvenda.VendaExiste;
begin
  if BuscaNumeroVenda = 0 then
    inserevenda
  else
  begin
    AbreVenda(BuscaNumeroVenda, 'PVENDA');
    qryVenda.Edit;
    if qryVendaID_CLIENTE.Value = 0 then
      LimpaCliente;
    qryVendaDATA_EMISSAO.Value := now;
    qryVendaDATA_SAIDA.Value := now;
    qryVendaFK_CAIXA.Value := Dados.idCaixa;
    qryVendaLOTE.Value := Dados.Lote;
  end;
end;

procedure TfrmCadvenda.cxFinalizarClick(Sender: TObject);
var
  cont: Integer;
begin

  if not cxFinalizar.Visible then
    Exit;
  SituacaoPedido;
  Dados.BloqueiaCliente;
  if Dados.qryConfigCLIENTE_PADRAO.IsNull then
  begin
    ShowMessage
      ('Vá em configurações e informe o código do cliente Consumidor Final!');
    Exit;
  end;

  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;
  if (qryVendaNOME.IsNull) or (qryVendaNOME.AsString = '') then
    qryVendaNOME.AsString := qryVendaVIRTUAL_CLIENTE.AsString;
  qryVenda.Post;

  Dados.Conexao.CommitRetaining;

  if Dados.TerminalCaixa then

  begin
    qryItem.close;
    // Garante que os itens estão atualizados antes da finalização
    qryItem.Open;

    if (qryItem.IsEmpty) then
    begin
      ShowMessage('OPS!, NAO TEM ITENS PRA FECHAR VENDA');
      Exit;
    end;

    try
      frmFechavenda := TfrmFechaVenda.Create(Application);
      frmFechavenda.vpessoa := qryVendaNOME.Value;
      frmFechavenda.vTelaPEDIDO := 'S';
      if Dados.qryEmpresaTABELA_PRECO.Value = 'S' then
        frmFechavenda.Tag := 2
      else
        frmFechavenda.Tag := 1;
      frmFechavenda.PageControl1.ActivePageIndex := 0;
      frmFechavenda.Caption := 'Forma de Pagamento';
      frmFechavenda.Height := 778;
      Dados.tela := 'FPG';
      Dados.vEnviarSefa := 'N';
      frmFechavenda.qryVenda.close;
      frmFechavenda.qryVenda.Params[0].Value := qryVendaCODIGO.Value;
      frmFechavenda.qryVenda.Open;
      frmFechavenda.qryItem.close;
      frmFechavenda.qryItem.Params[0].Value := qryVendaCODIGO.Value;
      frmFechavenda.qryItem.Open;
      Dados.qryExecute.close;
      Dados.qryExecute.SQL.Text :=
        'update vendas_fpg set valor=0 where vendas_master=:codigo and FEZ_TEF=''N''';
      Dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      Dados.qryExecute.ExecSQL;
      Dados.Conexao.CommitRetaining;
      frmFechavenda.JvDBGrid1.Visible := true;
      frmFechavenda.PageControl2.ActivePageIndex := 0;
      frmFechavenda.pngeral.Enabled := true;
      frmFechavenda.Totais.Enabled := true;
      if Dados.checanfce(qryVendaCODIGO.Value) then
      begin
        frmFechavenda.pngeral.Enabled := false;
        frmFechavenda.Totais.Enabled := false;
      end;
      frmFechavenda.ShowModal;

    finally
      // edtFone.Text := '';
      if frmFechavenda.vFinalizou then
      begin
        FinalizaVenda;
      end;
      FreeAndNil(frmFechavenda);
      Dados.tela := 'PVENDA';
      // DBGridSetFocus;
      // DescricaoSetFocus('');
    end;
  end
  else
  begin
    qryItem.Refresh;
    if (qryItem.IsEmpty) then
    begin
      ShowMessage('Digite os itens!');
      // DescricaoSetFocus('');
      Exit;
    end;
    try
      frmFechavenda := TfrmFechaVenda.Create(Application);
      frmFechavenda.vpessoa := qryVendaNOME.Value;
      if Dados.qryEmpresaTABELA_PRECO.Value = 'S' then
        frmFechavenda.Tag := 2
      else
        frmFechavenda.Tag := 1;
      frmFechavenda.PageControl1.ActivePageIndex := 0;
      frmFechavenda.Caption := 'Forma de Pagamento';
      // frmFechavenda.Height := 350;
      Dados.tela := 'FPG';
      Dados.vEnviarSefa := 'N';
      frmFechavenda.qryVenda.close;
      frmFechavenda.qryVenda.Params[0].Value := qryVendaCODIGO.Value;
      frmFechavenda.qryVenda.Open;
      Dados.qryExecute.close;
      Dados.qryExecute.SQL.Text :=
        'update vendas_fpg set valor=0  where vendas_master=:codigo and FEZ_TEF=''N''';
      Dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
      Dados.qryExecute.ExecSQL;
      Dados.Conexao.CommitRetaining;
      frmFechavenda.JvDBGrid1.Visible := false;
      frmFechavenda.PageControl2.ActivePageIndex := 1;
      frmFechavenda.ShowModal;
    finally
      if frmFechavenda.vFinalizou then
      begin
        FecharPrevenda;
        FinalizaVenda;
        // AtualizarEstoqueVenda;
      end;
      // frmFechavenda.Release;
      FreeAndNil(frmFechavenda);
      Dados.tela := 'PVENDA';
      Dados.Conexao.CommitRetaining;
      // DBGridSetFocus;
      // DescricaoSetFocus('');
    end;
  end;
end;

procedure TfrmCadvenda.cxGravarClick(Sender: TObject);
begin
  if (qryItem.IsEmpty) then
  begin
    ShowMessage('Digite os itens!');
    DescricaoSetFocus('');
    Exit;
  end;
  // GravaVenda;
  if Application.MessageBox('Deseja Gravar a Venda?', 'Confirmação', MB_YESNO) = mrYes
  then
    FecharPrevenda;

end;

procedure TfrmCadvenda.GravaVenda;
var
  vNumVenda: Integer;
begin
  Dados.vEnviarSefa := 'N';
  vNumVenda := BuscaNumeroVenda;

  if vNumVenda = 0 then
  begin
    inserevenda;
  end
  else
  begin
    AbreVenda(vNumVenda, 'PVENDA');
    qryVenda.Edit;
    qryVendaDATA_EMISSAO.Value := now;
    qryVendaDATA_SAIDA.Value := now;
    if Dados.TerminalCaixa then
      qryVendaSITUACAO.Value := 'G';
    qryVendaFK_CAIXA.Value := Dados.idCaixa;
    qryVendaLOTE.Value := Dados.Lote;
    qryVenda.Post;
    Dados.Conexao.CommitRetaining;
  end;
end;

procedure TfrmCadvenda.FinalizaVenda;
var
  vNumVenda: Integer;
begin
  Dados.vEnviarSefa := 'N';
  vNumVenda := BuscaNumeroVenda;

  if vNumVenda = 0 then
  begin
    inserevenda;
  end
  else
  begin
    AbreVenda(vNumVenda, 'PVENDA');
    qryVenda.Edit;
    qryVendaDATA_EMISSAO.Value := now;
    qryVendaDATA_SAIDA.Value := now;
    if Dados.TerminalCaixa then
      qryVendaSITUACAO.Value := 'F';
    qryVendaFK_CAIXA.Value := Dados.idCaixa;
    qryVendaLOTE.Value := Dados.Lote;
    qryVenda.Post;
  end;
end;

procedure TfrmCadvenda.FecharPrevenda;
begin

  try
    if not(qryVenda.State in dsEditModes) then
      qryVenda.Edit;
    qryVendaSITUACAO.Value := 'G';
    qryVendaDATA_EMISSAO.Value := now;
    qryVendaDATA_SAIDA.Value := now;
    qryVendaFK_CAIXA.Value := Dados.idCaixa;
    qryVendaLOTE.Value := Dados.Lote;
    qryVenda.Post;
  finally
    Dados.Conexao.CommitRetaining;
    ShowMessage('Venda Gravada com Sucesso!!');
    FrmCadvenda.close;
    // frmPedidoVenda.btnAtualizarClick(self);
  end;

end;

procedure TfrmCadvenda.cxPessoasClick(Sender: TObject);
begin
  try
    cxPessoas.Enabled := false;
    frmCadPessoa := TfrmCadPessoa.Create(Application);
    if Not Dados.qryPessoas.Active then
      Dados.qryPessoas.Open;
    Dados.qryPessoas.Insert;
    frmCadPessoa.ShowModal;
  finally
    frmCadPessoa.Release;
    cxPessoas.Enabled := true;
    Dados.qryFornecedor.close;
    Dados.qryFornecedor.Open;
  end;
end;

procedure TfrmCadvenda.cxProdutosClick(Sender: TObject);
begin
  try
    FrmCadProduto := TFrmCadProduto.Create(Application);
    FrmCadProduto.qryProdutos.close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;
    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.ShowModal;
  finally
    FrmCadProduto.Release;
    Dados.qryProd.close;
    Dados.qryProd.Open;
  end;
end;

procedure TfrmCadvenda.cxSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadvenda.qryItemAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.CommitRetaining;
  CalculaTotalVenda(qryVendaCODIGO.Value);
end;

procedure TfrmCadvenda.qryItemAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.CommitRetaining;
end;

procedure TfrmCadvenda.qryItemBeforeOpen(DataSet: TDataSet);
begin
  qryProd.close;
  qryProd.Open;
end;

procedure TfrmCadvenda.qryItemBeforePost(DataSet: TDataSet);
begin
  qryItemTOTAL.AsFloat := qryItemVALOR_ITEM.AsFloat - qryItemVDESCONTO.AsFloat +
    qryItemACRESCIMO.AsFloat;
  if not(qryItemOS.Value = 'S') then
  begin
    if Dados.tela <> 'FPG' then
    begin
      DMEstoque.AtualizaEstoque(qryItemID_PRODUTO.Value, qryItemQTD.AsFloat, 0,
        'S', 'R');
      DMEstoque.AtualizaGrade(qryItemID_PRODUTO.Value, qryItemFK_GRADE.Value,
        qryItemQTD.AsFloat, 'S', 0);
      DMEstoque.AtualizaComposicao(qryItemID_PRODUTO.Value, qryItemQTD.AsFloat,
        0, 'S', 'R');
      DMEstoque.AtualizaComposicao(qryItemID_PRODUTO.Value, qryItemQTD.AsFloat,
        0, 'S', 'R');
    end;
  end;
end;

procedure TfrmCadvenda.qryItemCalcFields(DataSet: TDataSet);
begin
  qryItemDESCRICAO_OBS.AsString := qryItemDESCRICAO_SL.AsString +
    qryItemOBSERVACAO.AsString;
end;

procedure TfrmCadvenda.qryItensOAfterDelete(DataSet: TDataSet);
begin
  CalculaTotais;
end;

procedure TfrmCadvenda.qryItensOAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.CommitRetaining;
  CalculaTotais;
  vletras := '';
  qryProd.Filtered := false;
end;

function TfrmCadvenda.RetornaMaiorItem(idVenda: Integer): Integer;
begin
  Dados.qryConsulta.close;
  Dados.qryConsulta.SQL.Clear;
  Dados.qryConsulta.SQL.Add
    ('Select coalesce(max(item),0)+1 item from vendas_detalhe');
  Dados.qryConsulta.SQL.Add('where');
  Dados.qryConsulta.SQL.Add('fkvenda=:codigo');
  Dados.qryConsulta.ParamByName('codigo').AsInteger := idVenda;
  Dados.qryConsulta.Open;
  result := Dados.qryConsulta.FieldByName('item').AsInteger;
end;

function TfrmCadvenda.ValidaItem(Qtd, vPreco: extended): Boolean;
var
  Preco, percentual: real;
begin
  if Dados.tela <> 'PVENDA' then
    Exit;
  result := true;
  if Dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S' then
  begin
    if qryPesqProdQTD_ATUAL.Value < 0 then
    begin
      if (qryPesqProdSERVICO.Value <> 'S') then
      // se não for servico
      begin
        if PageControl1.ActivePage = TabSheet2 then
        begin
          EdtProdutoP.Clear;
          edtQtdP.Text := '1';
          edtPrecoP.Text := '0,00';
          lblTotalP.Caption := '0,00';
        end;
        result := false;
        raise Exception.Create('Estoque Negativo!');
      end;
    end
    else
    begin
      if qryPesqProdQTD_ATUAL.Value < Qtd then
      begin
        if (qryPesqProdSERVICO.Value <> 'S') then
        // se não for servico
        begin
          if PageControl1.ActivePage = TabSheet2 then
          begin
            EdtProdutoP.Clear;
            edtQtdP.Text := '1';
            edtPrecoP.Text := '0,00';
            lblTotalP.Caption := '0,00';
          end;
          result := false;
          raise Exception.Create('Estoque insuficiente!');
        end;
      end;
    end;
    // if qryPesqProd.FieldByName('GRADE').AsString = 'S' then
    // begin
    // Dados.qryConsulta.close;
    // Dados.qryConsulta.SQL.Text :=
    // ' select qtd from PRODUTO_GRADE where CODIGO=:cod ';
    // Dados.qryConsulta.ParamByName('cod').Value := FGrade;
    // Dados.qryConsulta.Open;
    // if Dados.qryConsulta.FieldByName('qtd').AsFloat < Qtd then
    // raise Exception.Create('Quantidade Grade Insuficiente');
    // end;
  end;
  Preco := vPreco;
  if not((qryPesqProdINICIO_PROMOCAO.Value >= date) and
    (date <= qryPesqProdFIM_PROMOCAO.Value)) then
  // não está em promoção
  begin //
    if qryPesqProdDESCONTO.Value > 0 then
    begin
      percentual := 100 - ((Preco / qryPesqProdPR_VENDA.AsFloat) * 100);
      if percentual > qryPesqProdDESCONTO.AsFloat then
      begin
        ShowMessage('Desconto máximo para este produto é de' +
          qryPesqProdDESCONTO.AsString + '%');
        result := false;
        Exit;
      end;
    end;
  end
  else
  begin
    if Dados.qryEmpresaDESCONTO_PROD_PROMO.Value = 'S' then
    begin
      if qryPesqProdDESCONTO.Value > 0 then
      begin
        percentual := 100 - ((Preco / qryPesqProdVIRTUAL_PRECO.Value) * 100);
        if percentual > qryPesqProdDESCONTO.AsFloat then
        begin
          ShowMessage('Desconto máximo para este produto é de' +
            qryPesqProdDESCONTO.AsString + '%');
          result := false;
          Exit;
        end;
      end;
    end
    else
    begin
      if qryPesqProdVIRTUAL_PRECO.AsFloat < Preco then
      begin
        ShowMessage('Não é permitido descontos para produtos em promoção!');
        result := false;
        Exit;
      end;
    end;
  end;
end;

procedure TfrmCadvenda.LimpaCamposVenda();
begin
  if PageControl1.ActivePage = TabSheet2 then
  begin
    EdtProdutoP.Clear;
    edtPrecoP.Text := '0,00';
    lblTotalP.Caption := '0,00';
    edtQtdP.Text := '1';
    // if PanelPDV.Enabled then
    EdtProdutoP.SetFocus;
  end
end;

procedure TfrmCadvenda.InsereItem(Descricao, OBSERVACAO: String;
  Preco, Qtd, Total: extended);
var
  idItem, MaiorItem: Integer;
  ValorDesconto, ValorItem, TotalItem: extended;
begin

  PodeAtualizarEstoque := true;
  if (qryVenda.State in dsEditModes) then
    qryVenda.Post;
  Dados.Conexao.CommitRetaining;

  if copy(Descricao, 1, 1) = '*' then
    Exit;
  if trim(Descricao) = '' then
    Exit;
  if qryPesqProd.IsEmpty then
    Exit;

  if Preco <= 0 then
  begin
    ShowMessage('Produto está com o preço inválido');
    Exit;
  end;
  if Qtd <= 0 then
  begin
    ShowMessage('Produto está com a quantidade inválida');
  end;
  if Qtd > 9999 then
  begin
    ShowMessage('Produto está com a quantidade inválida');
    // LimpaCamposVenda();
  end;
  if PageControl1.ActivePage = TabSheet2 then
  begin
    if not ValidaItem(StrToFloatDef(edtQtdP.Text, 1),
      StrToFloatDef(edtPrecoP.Text, 0)) then
    begin
      DescricaoSetFocus('I');
      Exit;
    end;
  end;
  // Calcula valores desconto
  ValorDesconto := qryPesqProd.FieldByName('DESCONTO').AsFloat;
  ValorItem := Preco * Qtd; // sem desconto
  TotalItem := (Preco - ValorDesconto) * Qtd; // Valor total com desconto

  // insere de fato os intens na venda
  MaiorItem := RetornaMaiorItem(qryVendaCODIGO.AsInteger);
  try
    Dados.qryExecute.SQL.Clear;
    Dados.qryExecute.SQL.Add('INSERT INTO VENDAS_DETALHE');
    Dados.qryExecute.SQL.Add('(');
    Dados.qryExecute.SQL.Add('CODIGO,');
    Dados.qryExecute.SQL.Add('FKVENDA,');
    Dados.qryExecute.SQL.Add('FK_MESA,');
    Dados.qryExecute.SQL.Add('ID_PRODUTO,');
    Dados.qryExecute.SQL.Add('ITEM,');
    Dados.qryExecute.SQL.Add('COD_BARRA,');
    Dados.qryExecute.SQL.Add('QTD,');
    Dados.qryExecute.SQL.Add('E_MEDIO,');
    Dados.qryExecute.SQL.Add('PRECO,');
    Dados.qryExecute.SQL.Add('VALOR_ITEM,');
    Dados.qryExecute.SQL.Add('VDESCONTO,');
    Dados.qryExecute.SQL.Add('TOTAL,');
    Dados.qryExecute.SQL.Add('SITUACAO,');
    Dados.qryExecute.SQL.Add('UNIDADE,');
    Dados.qryExecute.SQL.Add('QTD_DEVOLVIDA,');
    Dados.qryExecute.SQL.Add('ACRESCIMO,');
    Dados.qryExecute.SQL.Add('OS,');
    Dados.qryExecute.SQL.Add('OBSERVACAO,');
    Dados.qryExecute.SQL.Add('FK_GRADE,');
    Dados.qryExecute.SQL.Add('ID_SERIAL)');
    Dados.qryExecute.SQL.Add('VALUES (');
    Dados.qryExecute.SQL.Add(':CODIGO,');
    Dados.qryExecute.SQL.Add(':FKVENDA,');
    Dados.qryExecute.SQL.Add(':FK_MESA,');
    Dados.qryExecute.SQL.Add(':ID_PRODUTO,');
    Dados.qryExecute.SQL.Add(':ITEM,');
    Dados.qryExecute.SQL.Add(':COD_BARRA,');
    Dados.qryExecute.SQL.Add(':QTD,');
    Dados.qryExecute.SQL.Add(':E_MEDIO,');
    Dados.qryExecute.SQL.Add(':PRECO,');
    Dados.qryExecute.SQL.Add(':VALOR_ITEM,');
    Dados.qryExecute.SQL.Add(':VDESCONTO,');
    Dados.qryExecute.SQL.Add(':TOTAL,');
    Dados.qryExecute.SQL.Add(':SITUACAO,');
    Dados.qryExecute.SQL.Add(':UNIDADE,');
    Dados.qryExecute.SQL.Add(':QTD_DEVOLVIDA,');
    Dados.qryExecute.SQL.Add(':ACRESCIMO,');
    Dados.qryExecute.SQL.Add(':OS,');
    Dados.qryExecute.SQL.Add(':OBSERVACAO,');
    Dados.qryExecute.SQL.Add(':FK_GRADE,');
    Dados.qryExecute.SQL.Add(':ID_SERIAL');
    Dados.qryExecute.SQL.Add(');');

    Dados.qryExecute.ParamByName('ID_PRODUTO').Value :=
      qryPesqProdCODIGO.AsInteger;
    Dados.qryExecute.ParamByName('FKVENDA').Value := qryVendaCODIGO.Value;
    Dados.qryExecute.ParamByName('ITEM').Value :=
      RetornaMaiorItem(qryVendaCODIGO.Value);
    Dados.qryExecute.ParamByName('QTD').AsFloat := Qtd;
    Dados.qryExecute.ParamByName('UNIDADE').AsString :=
      qryPesqProdUNIDADE.Value;
    Dados.qryExecute.ParamByName('OBSERVACAO').AsString := OBSERVACAO;

    Dados.qryExecute.ParamByName('PRECO').AsFloat := Preco;

    Dados.qryExecute.ParamByName('VALOR_ITEM').AsFloat := ValorItem;
    // RoundABNT(Preco * Qtd, 2);
    Dados.qryExecute.ParamByName('COD_BARRA').Value :=
      trim(qryPesqProdCODBARRA.Value);
    // Dados.qryExecute.ParamByName('ID_SERIAL').Value := strtointdef(vSerie, 0);
    Dados.qryExecute.ParamByName('E_MEDIO').Value := qryPesqProdE_MEDIO.AsFloat;
    // idItem := Dados.Numerador('VENDAS_DETALHE', 'CODIGO', 'N', '', ''); // erro concorrencia na tabela
    Dados.qryExecute.ParamByName('FK_MESA').Clear;

    Dados.qryExecute.ParamByName('VDESCONTO').AsFloat := ValorDesconto * Qtd;

    Dados.qryExecute.ParamByName('TOTAL').AsFloat := TotalItem;

    // Dados.qryExecute.ParamByName('TOTAL').AsFloat := Dados.qryExecute.ParamByName('VALOR_ITEM').AsFloat;
    // Dados.qryExecute.ParamByName('CODIGO').AsFloat := idItem; // erro concorrencia na tabela
    Dados.qryExecute.ParamByName('QTD_DEVOLVIDA').AsFloat := 0;
    // Dados.qryExecute.ParamByName('FK_GRADE').AsFloat := FGrade;
    Dados.qryExecute.Prepare;
    Dados.qryExecute.ExecSQL;
    Dados.Conexao.CommitRetaining;

    FQtdLancada := 0;
    FQtdLancada := StrToFloatDef(edtQtdP.Text, 0);

    // if (qryPesqProdQTD_ATACADO.AsFloat > 0) and
    // (qryPesqProdPRECO_ATACADO.AsFloat > 0) then
    // ChecaATACADO(qryPesqProdCODIGO.AsInteger, qryVendaCODIGO.AsInteger);

    LimpaCamposVenda();

    Dados.Conexao.CommitRetaining;

    // qryItem.Close;
    // qryItem.Open;

    // AtualizarEstoqueVenda;

    qryItem.Refresh;
    qryItem.Locate('codigo', idItem, []);
    CalculaTotalVenda(qryVendaCODIGO.Value);
    // InsereComposicao(qryItemID_PRODUTO.Value);

    // if not(qryItemOS.Value = 'S') then
    // begin
    // if Dados.tela <> 'FPG' then
    // begin
    // DMEstoque.AtualizaEstoque(qryItemID_PRODUTO.Value, FQtdLancada, 0, 'S', 'R');

    // DMEstoque.AtualizaGrade(qryItemID_PRODUTO.Value, qryItemFK_GRADE.Value,
    // qryItemQTD.AsFloat, 'S', 0);
    // DMEstoque.AtualizaComposicao(qryItemID_PRODUTO.Value,
    // qryItemQTD.AsFloat, 0, 'S', 'R');
    // end;
    // end;

    qryItem.First;

  except
    on e: Exception do
      raise Exception.Create(e.Message + sLineBreak +
        'Entre em contato com o suporte!');
  end;
end;

procedure TfrmCadvenda.dbeClienteChange(Sender: TObject);
begin
  if not Panel3.Enabled then
    Exit;
  if vpessoa <> dbeCliente.Text then
  begin
    DBGridPessooa.Visible := true;
    pnPessoa.Height := 135;
  end;
  qryClientes.close;
  if Dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
  begin
    qryClientes.Params[0].Value := '%' + dbeCliente.Text + '%';
    qryClientes.Params[1].Value := copy(dbeCliente.Text, 1, 14) + '%';
  end
  else
  begin
    qryClientes.Params[0].Value := dbeCliente.Text + '%';
    qryClientes.Params[1].Value := copy(dbeCliente.Text, 1, 14) + '%';
  end;
  qryClientes.Open;
end;

procedure TfrmCadvenda.dbeClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryClientes.Prior;
  if Key = VK_DOWN then
    qryClientes.Next;
end;

procedure TfrmCadvenda.dbeClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if qryClientes.IsEmpty then
    begin
      ShowMessage('Escolha o Cliente');
      dbeCliente.SetFocus;
    end
    else
      EdtProdutoP.SetFocus;
    Key := #0; // Evita que a tecla Enter seja processada novamente
  end;
end;

procedure TfrmCadvenda.LocalizaCliente(Tipo: string);
begin
  if not(qryVenda.State in dsEditModes) then
    qryVenda.Edit;
  if Tipo = 'nome' then
  begin
    if not qryClientes.IsEmpty then
    begin
      qryVendaID_CLIENTE.Value := qryClientesCODIGO.Value;
      qryVendaNOME.Value := qryClientesRAZAO.Value;
      qryVendaVIRTUAL_CNPJ.Value := qryClientesCNPJ.Value;
      qryVendaVIRTUAL_ENDERECO.AsString := qryClientesENDERECO.Value;
      { TEMSO QUE AJUSTAR AQUI }
      qryVendaVIRTUAL_NUMERO.Value := qryClientesNUMERO.Value;
      qryVendaVIRTUAL_BAIRRO.Value := qryClientesBAIRRO.Value;
      qryVendaVIRTUAL_CIDADE.Value := qryClientesMUNICIPIO.Value;
      qryVendaVIRTUAL_UF.Value := qryClientesUF.Value;
      qryVendaVIRTUAL_CEP.Value := qryClientesCEP.Value;
      if qryClientesFONE1.IsNull then
        qryVendaVIRTUAL_CELULAR.Value := qryClientesCELULAR1.Value;
      qryVendaVIRTUAL_CELULAR.Value := qryClientesFONE1.Value;

    end
    else
    begin
      qryVendaID_CLIENTE.Value := 0;
      LimpaCliente;
    end;
  end;
end;

procedure TfrmCadvenda.pnPessoaExit(Sender: TObject);
begin
  if not qryClientes.IsEmpty then
  begin
    if vpessoa <> dbeCliente.Text then
    begin
      GetCliente;
    end;
  end;
  DBGridPessooa.Visible := false;
  pnPessoa.Height := 45;
end;

procedure TfrmCadvenda.DBGrid1Exit(Sender: TObject);
begin
  if dbeCliente.Text <> '' then
    LocalizaCliente('nome')
  else
    LocalizaCliente('');
  DBEdit5.SetFocus;
end;

procedure TfrmCadvenda.DBGridBuscaPDblClick(Sender: TObject);
var
  vQtd: String;
begin
  try
    PesquisaProduto := false;
    if PageControl1.ActivePage = TabSheet2 then // item
    begin
      vQtd := copy(EdtProdutoP.Text, 1, Pos('*', EdtProdutoP.Text));
      EdtProdutoP.Text := vQtd + qryPesqProdDESCRICAO.Value;
      EdtProdutoP.SetFocus;
    end;
    if PageControl1.ActivePage = TabSheet1 then // obs
    begin
      ShowMessage('Click em Itens pra iniciar a inclusão!!!')
    end;

  finally
    PesquisaProduto := true;
  end;
end;

procedure TfrmCadvenda.DBGridBuscaPDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  eSALDO: extended;
  Grid: TDBGridEh;
begin
  Grid := TDBGridEh(Sender);
  if not Grid.DataSource.DataSet.IsEmpty then
  begin
    eSALDO := Grid.DataSource.DataSet.FieldByName('QTD_ATUAL').AsFloat;
    with Grid.Canvas do
    begin
      Font.Name := 'Verdana';
      Font.Size := 10;
      if gdSelected in State then
      begin
        Brush.Color := clSkyBlue;
        FillRect(Rect);
        Font.Color := clBlack;
      end
      else if eSALDO = 0 then
      begin
        Brush.Color := clWebSalmon;
        FillRect(Rect);
        Font.Color := clOlive;
      end
      else if eSALDO < 0 then
      begin
        Brush.Color := clCream;
        FillRect(Rect);
        Font.Color := clDkGray;
      end
      else
      begin
        Brush.Color := clWindow;
        FillRect(Rect);
        Font.Color := clBlack;
      end;
    end;
  end;
  Grid.DefaultDrawDataCell(Rect, Grid.Columns[DataCol].Field, State);
end;

procedure TfrmCadvenda.DBGridBuscaPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridBuscaPDblClick(self);
end;

procedure TfrmCadvenda.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) then
    Key := 0;
  case Key of
    vk_delete:
      begin
        if Application.MessageBox('Deseja Excluir Produto?', 'Confirmação',
          MB_YESNO) = mrYes then
          qryItem.Delete;
      end;
  end;
end;

procedure TfrmCadvenda.DBGridPDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  TDBGridEh(Sender).Canvas.Font.Color := clBlack;
  if odd(TDBGridEh(Sender).DataSource.DataSet.RecNo) then
    TDBGridEh(Sender).Canvas.Brush.Color := clMenuBar
  else
    TDBGridEh(Sender).Canvas.Brush.Color := clCream;
  if gdSelected in State then
    with (Sender as TDBGridEh).Canvas do
    begin
      Brush.Color := clMoneyGreen;
      FillRect(Rect);
      Font.Style := [fsbold]
    end;
  TDBGridEh(Sender).DefaultDrawDataCell(Rect, TDBGridEh(Sender).Columns[DataCol]
    .Field, State);
end;

procedure TfrmCadvenda.DBGridPessooaDblClick(Sender: TObject);
begin
  dbeCliente.Field.AsString := qryClientesRAZAO.Value;
  qryVendaNOME.AsString := qryClientesRAZAO.Value;
end;

procedure TfrmCadvenda.DBGridPessooaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    qryVendaNOME.AsString := qryClientesRAZAO.Value;
end;

procedure TfrmCadvenda.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  EdtProdutoP.SetFocus;
end;

procedure TfrmCadvenda.BuscaPreco(Descricao: String);
var
  vQtd, vTotal: real;
begin
  // Se a descrição contém '*' indica que a quantidade está informada (ex.: "2*PRODUTO")
  if Pos('*', Descricao) > 0 then
  begin
    try
      vQtd := StrToFloatDef(copy(Descricao, 1, Pos('*', Descricao) - 1), 1);
      edtQtdP.Text := FloatToStr(vQtd);
      edtPrecoP.Text := FormatFloat('0.00', qryPesqProdVIRTUAL_PRECO.AsFloat);
      vTotal := qryPesqProdVIRTUAL_PRECO.AsFloat * vQtd;
      lblTotalP.Caption := FormatFloat('0.00', RoundABNT(vTotal, 2));
    except
      raise Exception.Create('Não foi possível selecionar o produto!');
    end;
  end
  else
  begin
    // Caso não haja '*' na descrição, utiliza o valor atual de quantidade ou 1
    vQtd := StrToFloatDef(edtQtdP.Text, 1);
    edtPrecoP.Text := FormatFloat('0.00', qryPesqProdVIRTUAL_PRECO.AsFloat);
    vTotal := qryPesqProdVIRTUAL_PRECO.AsFloat * vQtd;
    lblTotalP.Caption := FormatFloat('0.00', RoundABNT(vTotal, 2));
  end;
end;

procedure TfrmCadvenda.DescricaoSetFocus(Op: String);
begin
  if PageControl1.ActivePage = TabSheet2 then
    EdtProdutoP.SetFocus;
  if PageControl1.ActivePage <> TabSheet2 then
  begin
    if Op = 'I' then
    begin
      EdtProdutoP.SetFocus;
    end;
  end;
end;

procedure TfrmCadvenda.edtPrecoPExit(Sender: TObject);
var
  Total: real;
begin

  if PageControl1.ActivePage = TabSheet2 then
  begin
    Total := StrToFloatDef(edtQtdP.Text, 1) * StrToFloatDef(edtPrecoP.Text, 0);
    if copy(EdtProdutoP.Text, 1, 1) <> Dados.qryConfigPREFIXO_BALANCA.Value then
      lblTotalP.Caption := FormatFloat('0.00', RoundABNT(Total, 2));
    EdtProdutoP.SetFocus;
    InsereItem(EdtProdutoP.Text, '', StrToFloatDef(edtPrecoP.Text, 0),
      StrToFloatDef(edtQtdP.Text, 1), StrToFloatDef(lblTotalP.Caption, 0));
  end;
end;

procedure TfrmCadvenda.edtPrecoPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', '.', #8, #9, #13, #27]) then
    Key := #0;
  if Key = #13 then
  begin
    qryPesqProd.Refresh;
    DescricaoSetFocus('I');
  end;
end;

procedure TfrmCadvenda.PreencheBuscaPreco;
begin
  if PageControl1.ActivePage = TabSheet2 then
    BuscaPreco(EdtProdutoP.Text);
end;

procedure TfrmCadvenda.PesquisaDescricao(FPesquisa: String);
// pesquisa
begin
  qryPesqProd.close;
  qryPesqProd.IndexFieldNames := 'DESCRICAO';
  qryPesqProd.SQL.Text := vSql;
  qryPesqProd.SQL.Text := StringReplace(vSql, '/*where*/',
    ' AND ((PRO.DESCRICAO LIKE :DESCRICAO) or (PRO.REFERENCIA LIKE :REF)) ORDER BY DESCRICAO',
    [rfReplaceAll]);
  qryPesqProd.ParamByName('EMP').Value := qryVendaFKEMPRESA.Value;
  if Dados.qryEmpresaPESQUISA_POR_PARTE.Value = 'S' then
    qryPesqProd.ParamByName('DESCRICAO').Value := '%' + FPesquisa + '%'
  else
    qryPesqProd.ParamByName('DESCRICAO').Value := FPesquisa + '%';

  qryPesqProd.ParamByName('REF').Value := copy(FPesquisa, 1, 19) + '%';
  //
  qryPesqProd.ResourceOptions.DirectExecute := true;
  qryPesqProd.FetchOptions.RowsetSize := 20;

  qryPesqProd.Open;
  if not(qryPesqProd.IsEmpty) then
  begin
    // PrecoVariavel;
    PreencheBuscaPreco;
    // ItemDesconhecido;
  end;
end;

procedure TfrmCadvenda.EdtProdutoPChange(Sender: TObject);
var
  Qtd: Integer;
  Descricao: string;
begin

  // EdtProdutoP.Font.Size := 9;

  // edtProdutoD.Font.Size := 26;

  if PageControl1.ActivePage = TabSheet2 then
    Descricao := EdtProdutoP.Text;
  if Length(Descricao) = 13 then
    Qtd := 1;
  if PageControl1.ActivePage = TabSheet2 then // PDV
  begin
    if Pos('*', Descricao) = 0 then
      edtQtdP.Text := '1';
    DBGridBuscaP.Visible := false;
  end;

  if not PesquisaProduto then
    Exit;

  vPosicao := Pos('*', trim(Descricao)) + 1;
  vPesquisa := trim(copy((Descricao), vPosicao, 1000));
  if (trim(Descricao) <> '') then
  begin
    if PageControl1.ActivePage = TabSheet2 then
      DBGridBuscaP.Visible := true;
    if not Dados.EhNumero(vPesquisa) then
    begin
      if Descricao <> '' then
        PesquisaDescricao(vPesquisa);
    end;
  end;
end;

procedure TfrmCadvenda.EdtProdutoPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DBGridBuscaP.Visible then
  begin
    if Key = vk_up then
    begin
      qryPesqProd.Prior;
      BuscaPreco(EdtProdutoP.Text);;
      DescricaoSetFocus('I')
    end;
    if Key = VK_DOWN then
    begin
      qryPesqProd.Next;
      PreencheBuscaPreco;
      DescricaoSetFocus('I')
    end;
  end
  else
  begin
    if Key = vk_up then
    begin
      qryItem.Prior;
      DescricaoSetFocus('I')
    end;
    if Key = VK_DOWN then
    begin
      qryItem.Next;
      DescricaoSetFocus('I')
    end;
  end;
end;

procedure TfrmCadvenda.PesquisaCodBarraGeral(FPesquisa: string);
begin
  qryPesqProd.close;
  qryPesqProd.IndexFieldNames := 'CODBARRA';
  qryPesqProd.SQL.Text := vSql;
  qryPesqProd.SQL.Text := StringReplace(qryPesqProd.SQL.Text, '/*where*/',
    ' AND ((PRO.CODBARRA=:BARRA) or (PRO.REFERENCIA=:REF) or (PRO.CODIGO =:CODIGO)) ORDER BY PRO.CODBARRA',
    [rfReplaceAll]);
  qryPesqProd.ParamByName('EMP').Value := qryVendaFKEMPRESA.Value;
  qryPesqProd.ParamByName('BARRA').Value := copy(FPesquisa, 1, 14);
  qryPesqProd.ParamByName('REF').Value := copy(FPesquisa, 1, 19);
  qryPesqProd.ParamByName('CODIGO').Value := copy(FPesquisa, 1, 6);
  qryPesqProd.Open;
  if not(qryPesqProd.IsEmpty) then
  begin
    PreencheBuscaPreco;
  end;
end;

procedure TfrmCadvenda.PesquisaCodBarra(FPesquisa, Descricao: String);
begin
  if copy(Descricao, 1, 1) = Dados.qryConfigPREFIXO_BALANCA.Value then
  begin
    if (Length(FPesquisa) >= 13) then
    begin
      if Pos('*', Descricao) = 0 then
        PesquisaCodBarraGeral(FPesquisa);
    end
    else
      PesquisaCodBarraGeral(FPesquisa);
  end
  else
    PesquisaCodBarraGeral(FPesquisa);
end;

procedure TfrmCadvenda.FechaVenda(Descricao: String);
begin
  if (trim(Descricao) = '') then
  begin
    if PageControl1.ActivePage = TabSheet2 then
    begin
      edtQtdP.Text := '1';
      edtPrecoP.Text := '0,00';
      lblTotalP.Caption := '0,00';
    end;
    cxFinalizarClick(self);
  end;
end;

procedure TfrmCadvenda.AtualizaDescricao(Descricao: String);
begin
  if Descricao <> '' then
  begin
    try
      PesquisaProduto := false;
      if PageControl1.ActivePage = TabSheet2 then
        EdtProdutoP.Text := qryPesqProdDESCRICAO.Value;
    finally
      PesquisaProduto := true;
    end;
  end;
end;

procedure TfrmCadvenda.EdtProdutoPKeyPress(Sender: TObject; var Key: Char);
var
  Qtd: Integer;
  Descricao: String;
begin
  // produtos
  if PageControl1.ActivePage = TabSheet2 then
  begin
    Descricao := EdtProdutoP.Text;
    if Length(EdtProdutoP.Text) = 13 then
      Qtd := 1;
    vPosicao := Pos('*', trim(EdtProdutoP.Text)) + 1;
    vPesquisa := trim(copy((EdtProdutoP.Text), vPosicao, 1000));
    if EdtProdutoP.ReadOnly then
      Exit;
    if copy(EdtProdutoP.Text, 1, 1) = '*' then
    begin
      if not(Key in ['1' .. '9', #8, #9, #13, #27]) then
        Key := #0;
      Exit;
    end;
  end;

  if (Key = #13) then
  begin
    try
      if (Dados.EhNumero(vPesquisa)) and (vPesquisa <> '') then
      begin
        PesquisaCodBarra(vPesquisa, Descricao);
        if not qryPesqProd.IsEmpty then
          PreencheBuscaPreco
        else
        Begin
          ExibirMensagemProdutoNaoEncontrado;
          EdtProdutoP.Clear;
          EdtProdutoP.SetFocus;
          Exit;
        End;
      end
      else
      begin
        AtualizaDescricao(EdtProdutoP.Text);
        if qryPesqProd.IsEmpty then
        begin
          ExibirMensagemProdutoNaoEncontrado;
          EdtProdutoP.Clear;
          EdtProdutoP.SetFocus;
          Exit;
        end;
        PreencheBuscaPreco;
      end;
      if PageControl1.ActivePage = TabSheet2 then
        FechaVenda(EdtProdutoP.Text);

      if trim(Descricao) <> '' then
        edtQtdP.SetFocus
      else
      begin
        if PageControl1.ActivePage = TabSheet2 then
          EdtProdutoP.SetFocus;
      end;
      // aqui pra caixa rapido tenho que ver tudo isso

      // InsereItem(EdtProdutoP.Text, '', StrToFloatDef(edtPrecoP.Text, 0),
      // StrToFloatDef(edtQtdP.Text, 1),
      // StrToFloatDef(lblTotalP.Caption, 0));
    finally
      // if (qryPesqProdGRADE.AsString = 'N') and (ehCaixaRapido = 'S') then
      // begin
      // if PageControl2.ActivePage = TabPDV then
      // EdtProdutoP.Clear;
      // if PageControl2.ActivePage = tabRestaurante then
      // begin
      // edtOBSR.Clear;
      // edtProdutoR.Clear;
      // end;
      // if PageControl2.ActivePage = tabDelivery then
      // begin
      // edtObsD.Clear;
      // edtProdutoD.Clear;
      // end;
    end;
  end;
end;

procedure TfrmCadvenda.edtQtdPExit(Sender: TObject);
var
  Total: real;
begin
  if PageControl1.ActivePage = TabSheet2 then
  begin
    Total := StrToFloatDef(edtQtdP.Text, 1) * StrToFloatDef(edtPrecoP.Text, 0);
    lblTotalP.Caption := FormatFloat('0.00', RoundABNT(Total, 2));
  end;
end;

procedure TfrmCadvenda.edtQtdPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key In ['0' .. '9', ',', #8, #9, #13, #27]) then
    Key := #0;
  if Key = #13 then
  begin
    if PageControl1.ActivePage = TabSheet2 then
      edtPrecoP.SetFocus;
  end;
end;

end.
