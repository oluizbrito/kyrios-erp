unit uCadProcedimentoPet;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDBLabel, DBGridEh,
  DBCtrlsEh, DBLookupEh, System.ImageList, Vcl.ImgList, cxImageList,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, System.Math, ACBrBase, ACBrEnterTab, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, frxRich, dxtree, dxdbtree,
  JvExComCtrls, JvDBTreeView, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox;

type
  TFrmProcedimentoPet = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Image1: TImage;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    btnImprimir: TSpeedButton;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel3: TPanel;
    btnAbrir: TBitBtn;
    btnFechar: TBitBtn;
    Label10: TLabel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Panel4: TPanel;
    ImgFechar: TImage;
    Label15: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image2: TImage;
    dsProcM: TDataSource;
    qryProcM: TFDQuery;
    qryProcMCODIGO: TIntegerField;
    qryProcMFK_EMPRESA: TIntegerField;
    qryProcMFK_CLIENTE: TIntegerField;
    qryProcMFK_PET: TIntegerField;
    qryProcMFK_VETERINARIO: TIntegerField;
    qryProcMFK_ATENDENTE: TIntegerField;
    qryProcMSITUACAO: TStringField;
    qryProcMDATA_ENTRADA: TDateField;
    qryProcMHORA_ENTRADA: TTimeField;
    qryProcMDATA_SAIDA: TDateField;
    qryProcMHORA_SAIDA: TTimeField;
    qryProcMEXAMES: TMemoField;
    qryProcMRECEITA: TMemoField;
    qryProcMOBS: TMemoField;
    qryProcMSUBTOTAL: TFMTBCDField;
    qryProcMSUBTOTAL_PECAS: TFMTBCDField;
    qryProcMSUBTOTAL_SERVICOS: TFMTBCDField;
    qryProcMVL_DESC_PECAS: TFMTBCDField;
    qryProcMVL_DESC_SERVICOS: TFMTBCDField;
    qryProcMDESC_PERC_PECAS: TFMTBCDField;
    qryProcMDESC_PERC_SERVICOS: TFMTBCDField;
    qryProcMTOTAL_SERVICOS: TFMTBCDField;
    qryProcMTOTAL_PRODUTOS: TFMTBCDField;
    qryProcMTOTAL_GERAL: TFMTBCDField;
    lblSituacao: TcxDBLabel;
    qryProcMSTATUS: TStringField;
    qryClientes: TFDQuery;
    qryClientesCODIGO: TIntegerField;
    qryClientesRAZAO: TStringField;
    qryClientesFONE1: TStringField;
    dsClientes: TDataSource;
    qryProcMFONE1: TStringField;
    qryProcMVIRTUAL_CLIENTE: TStringField;
    dsVeterinario: TDataSource;
    qryVeterinario: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    dsAtendente: TDataSource;
    qryAtendente: TFDQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    dsProcD: TDataSource;
    qryProcD: TFDQuery;
    qryProcDCODIGO: TIntegerField;
    qryProcDFK_EMPRESA: TIntegerField;
    qryProcDFK_PROCEDIMENTO_PET: TIntegerField;
    qryProcDFK_PLANO: TIntegerField;
    qryProcDFK_PRODUTO: TIntegerField;
    qryProcDQTD: TFMTBCDField;
    qryProcDPRECO: TFMTBCDField;
    qryProcDTOTAL: TFMTBCDField;
    qryProcDTIPO: TStringField;
    dsProduto: TDataSource;
    qryProduto: TFDQuery;
    qryProdutoCODIGO: TIntegerField;
    qryProdutoDESCRICAO: TStringField;
    qryProdutoSERVICO: TStringField;
    qryProdutoPR_VENDA: TFMTBCDField;
    qryProcDVIRTUAL_PRODUTO: TStringField;
    dsPet: TDataSource;
    qryPet: TFDQuery;
    qryPetCODIGO: TIntegerField;
    qryPetFK_PESSOA: TIntegerField;
    qryPetNOME: TStringField;
    qryPetIDADE: TStringField;
    qryPetSEXO: TStringField;
    qryPetRACA: TStringField;
    qryPetESPECIE: TStringField;
    qryPetPELAGEM: TStringField;
    qryPetPEDIGREE: TStringField;
    qryPetRACAO_CONSUMO: TStringField;
    qryPetALERGIAS: TStringField;
    qryPetFOTO: TMemoField;
    qryPetPORTE: TStringField;
    qryPetOBS: TMemoField;
    qryPetDT_CADASTRO: TDateField;
    qryPetEMPRESA: TIntegerField;
    qryPetDT_NASCIMENTO: TDateField;
    qryPetPESO: TFMTBCDField;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Label13: TLabel;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    cxImageList: TcxImageList;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    qryProcDSITUACAO: TStringField;
    btnFinalizar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    DBMemo3: TDBMemo;
    ACBrEnterTab: TACBrEnterTab;
    DBMemo1: TDBMemo;
    frxDBEmpresa: TfrxDBDataset;
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    qryProcCapa: TFDQuery;
    qryProcCapaCODIGO: TIntegerField;
    qryProcCapaFK_CLIENTE: TIntegerField;
    qryProcCapaRAZAO: TStringField;
    qryProcCapaCNPJ: TStringField;
    qryProcCapaENDERECO: TStringField;
    qryProcCapaNUMERO: TStringField;
    qryProcCapaBAIRRO: TStringField;
    qryProcCapaMUNICIPIO: TStringField;
    qryProcCapaUF: TStringField;
    qryProcCapaFONE1: TStringField;
    qryProcCapaCELULAR1: TStringField;
    qryProcCapaFK_PET: TIntegerField;
    qryProcCapaNOME: TStringField;
    qryProcCapaIDADE: TStringField;
    qryProcCapaSEXO: TStringField;
    qryProcCapaRACA: TStringField;
    qryProcCapaESPECIE: TStringField;
    qryProcCapaPELAGEM: TStringField;
    qryProcCapaPESO: TFMTBCDField;
    qryProcCapaFK_VETERINARIO: TIntegerField;
    qryProcCapaRAZAO_1: TStringField;
    qryProcCapaFK_ATENDENTE: TIntegerField;
    qryProcCapaSITUACAO: TStringField;
    qryProcCapaDATA_ENTRADA: TDateField;
    qryProcCapaHORA_ENTRADA: TTimeField;
    qryProcCapaDATA_SAIDA: TDateField;
    qryProcCapaHORA_SAIDA: TTimeField;
    qryProcCapaSUBTOTAL_GERAL: TFMTBCDField;
    qryProcCapaSUBTOTAL_PRODUTO: TFMTBCDField;
    qryProcCapaSUBTOTAL_SERVICO: TFMTBCDField;
    qryProcCapaDESCONTO_PRODUTO: TFMTBCDField;
    qryProcCapaDESCONTO_SERVICO: TFMTBCDField;
    qryProcCapaTOTAL_SERVICO: TFMTBCDField;
    qryProcCapaTOTAL_PRODUTO: TFMTBCDField;
    qryProcCapaTOTAL_GERAL: TFMTBCDField;
    frxDBProcCapa: TfrxDBDataset;
    frxDBProcCorpo: TfrxDBDataset;
    qryProcCorpo: TFDQuery;
    qryProcCorpoCODIGO: TIntegerField;
    qryProcCorpoFK_PRODUTO: TIntegerField;
    qryProcCorpoDESCRICAO: TStringField;
    qryProcCorpoQTD: TFMTBCDField;
    qryProcCorpoPRECO: TFMTBCDField;
    qryProcCorpoTOTAL: TFMTBCDField;
    qryProcCorpoTIPO: TStringField;
    qryProcCorpoSITUACAO: TStringField;
    GroupBox5: TGroupBox;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    Label49: TLabel;
    DBEdit37: TDBEdit;
    Label50: TLabel;
    DBEdit38: TDBEdit;
    Label39: TLabel;
    DBEdit29: TDBEdit;
    Label40: TLabel;
    DBEdit10: TDBEdit;
    Label41: TLabel;
    DBEdit30: TDBEdit;
    Label42: TLabel;
    DBEdit31: TDBEdit;
    Label44: TLabel;
    DBEdit32: TDBEdit;
    Label45: TLabel;
    DBEdit33: TDBEdit;
    Label48: TLabel;
    DBEdit36: TDBEdit;
    GroupBox4: TGroupBox;
    lblPorte: TLabel;
    imgPorte: TImage;
    GroupBox6: TGroupBox;
    DBImage2: TDBImage;
    qryProcDDATA: TDateField;
    qryProcDFK_CLIENTE: TIntegerField;
    GroupBox7: TGroupBox;
    qryPlano: TFDQuery;
    dsPlano: TDataSource;
    qryPlanoDESCRICAO: TStringField;
    qryPlanoVALOR: TFMTBCDField;
    qryClientesFK_PLANO_PET: TIntegerField;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    qryProcDVACINA: TStringField;
    qryProcDDATA_VACINA: TDateField;
    ppmImpressao: TPopupMenu;
    ppmProcedimento: TMenuItem;
    ppmReceita: TMenuItem;
    frxDBProcM: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    GroupBox8: TGroupBox;
    DBMemo2: TDBMemo;
    qryExamesProc: TFDQuery;
    qryExamesProcFK_EXAMES: TIntegerField;
    qryExamesProcEXAME: TStringField;
    qryExamesProcFK_GRUPO: TIntegerField;
    qryExamesProcGRUPO: TStringField;
    qryExamesProcUSAR: TStringField;
    dsExamesProc: TDataSource;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridDBTableView1EXAME: TcxGridDBColumn;
    cxGridDBTableView1GRUPO: TcxGridDBColumn;
    cxGridDBTableView1USAR: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    qryExamesProcVALOR: TFMTBCDField;
    qryExames: TFDQuery;
    qryExamesCODIGO: TIntegerField;
    qryExamesFK_GRUPO: TIntegerField;
    qryExamesEXAMES: TStringField;
    qryExamesGRUPO: TStringField;
    qryExamesFK_EMPRESA: TIntegerField;
    qryExamesVIRTUAL_EMPRESA: TStringField;
    qryExamesVALOR: TFMTBCDField;
    qryExamesProcFK_PROCEDIMENTO: TIntegerField;
    DBText1: TDBText;
    Label25: TLabel;
    qryExamesProcTOTAL: TAggregateField;
    qryExamesProcVIRTUAL_VALOR: TFloatField;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    ppmExames: TMenuItem;
    frxDBExamesProc: TfrxDBDataset;
    frxDBPet: TfrxDBDataset;
    frxDBCliente: TfrxDBDataset;
    procedure ImgFecharClick(Sender: TObject);
    procedure qryProcMCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryProcMAfterCancel(DataSet: TDataSet);
    procedure qryProcMAfterPost(DataSet: TDataSet);
    procedure qryProcDAfterCancel(DataSet: TDataSet);
    procedure qryProcDAfterPost(DataSet: TDataSet);
    procedure qryProcDNewRecord(DataSet: TDataSet);
    procedure qryProcDFK_PRODUTOChange(Sender: TField);
    procedure CalculaTotalProduto;
    procedure qryProcDQTDChange(Sender: TField);
    procedure qryProcDPRECOChange(Sender: TField);
    procedure PageControl2Change(Sender: TObject);
    procedure qryProcMNewRecord(DataSet: TDataSet);
    procedure CalculaTotal;
    procedure TotalProdSer(sTipo: string; iCodProc: Integer);
    function TemPet(iCodPessoa: Integer): Boolean;
    procedure DBLookupComboboxEh1Enter(Sender: TObject);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure qryPetAfterScroll(DataSet: TDataSet);
    procedure qryProcMAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure qryProcDAfterDelete(DataSet: TDataSet);
    procedure qryProcDBeforeDelete(DataSet: TDataSet);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure dsProcDDataChange(Sender: TObject; Field: TField);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure DBGridEh2ColEnter(Sender: TObject);
    procedure DBGridEh2ColExit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBMemo3Enter(Sender: TObject);
    procedure DBMemo3Exit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure qryProcDBeforePost(DataSet: TDataSet);
    procedure qryProcDBeforeInsert(DataSet: TDataSet);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure qryProcDFK_PRODUTOValidate(Sender: TField);
    procedure ppmProcedimentoClick(Sender: TObject);
    procedure ppmReceitaClick(Sender: TObject);
    constructor Create(AOwner: TComponent;
      iCodProcedimento: Integer = 0; Visualizar: Boolean = False);
    procedure qryExamesProcAfterCancel(DataSet: TDataSet);
    procedure qryExamesProcAfterPost(DataSet: TDataSet);
    procedure qryExamesProcCalcFields(DataSet: TDataSet);
    procedure cxGridDBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure ppmExamesClick(Sender: TObject);
  private
    { Private declarations }
    iCodCliente: Integer;
    bSoVisualiza: Boolean;
    procedure ChangePortePet;
    procedure CalculaTotalGeral;
    procedure SoVisualizar;
    procedure PorLinhaDBEdit;
    procedure CriarShape(CompPai: TWinControl; sNome: string;
      Cor: TColor; Largura, Altura, Left, Top: integer);
    function TemServicoAberto: Boolean;
    procedure GetUtilizacaoPlano(var Valor: Extended;
      var QtdPlano: Extended; var QtdUtilizada: Extended;
      Plano, Produto, Cliente: Integer);
    function ProdutoEstaNoPlano(Plano, Produto: integer): Boolean;
    function GetPr_VendaProduto(Codigo: Integer): Extended;
    function EhServico(CodProduto: Integer): Boolean;
    procedure AtualizaExamesProcedimentos;
    function GetContatoCliente(CodCliente: Integer): string;
  public
    { Public declarations }
  end;

var
  FrmProcedimentoPet: TFrmProcedimentoPet;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}
uses Udados, uPetCliente, uPrincipalPet, uExames, uAgendaVacina, uConsPlanosPet,
  uListaProcedimento, uDisplay;

constructor TFrmProcedimentoPet.Create(AOwner: TComponent;
  iCodProcedimento: Integer; Visualizar: Boolean);
begin
  inherited Create(AOwner);
  bSoVisualiza  :=  False;
  qryProcM.Close;
  qryProcM.Params[0].Value  :=  Dados.qryEmpresaCODIGO.Value;
  qryProcM.Params[1].Value  :=  iCodProcedimento;
  qryProcM.Open;
  PageControl1.ActivePageIndex  :=  0;
  PageControl2.ActivePageIndex  :=  0;
  Panel3.Visible  :=  False;
  if Visualizar then
    SoVisualizar;
  PorLinhaDBEdit;
end;

procedure TFrmProcedimentoPet.AtualizaExamesProcedimentos;
begin
  try
    qryExames.Close;
    qryExames.Params[0].Value :=
      dados.qryEmpresaCODIGO.Value;
    qryExames.Open;
    if qryExames.IsEmpty then
      Exit;
    qryExames.First;
    qryExamesProc.Close;
    qryExamesProc.Params[0].Value :=
      qryProcMCODIGO.Value;
    qryExamesProc.Open;
    while not qryExames.Eof do
      begin
        if not qryExamesProc.Locate('FK_EXAMES', qryExamesCODIGO.Value, []) then
          begin
            qryExamesProc.Insert;
            qryExamesProcFK_EXAMES.Value  :=  qryExamesCODIGO.Value;
            qryExamesProcFK_PROCEDIMENTO.Value  := qryProcMCODIGO.Value;
            qryExamesProcUSAR.Value :=  'N';
            qryExamesProc.Post;
          end;
        qryExames.Next;
      end;
    qryExamesProc.Refresh;
  except
    on E: Exception do
      Application.MessageBox(
        PChar('Falha ao Atualizar Exames: '+sLineBreak+E.Message),
        'Exames', 0+16);
  end;
end;

procedure TFrmProcedimentoPet.btnAbrirClick(Sender: TObject);
begin
  if qryProcD.Active then
    begin
      if not (qryProcD.State in [dsEdit, dsInsert]) then
        qryProcD.Edit;
      qryProcDSITUACAO.Value  :=  'A';
      qryProcD.Post;
      ShowMessage('Serviço '+qryProdutoDESCRICAO.Value+' Aberto.');      
    end;
end;

procedure TFrmProcedimentoPet.btnFecharClick(Sender: TObject);
begin
  if qryProcD.Active then
    begin
      if not (qryProcD.State in [dsEdit, dsInsert]) then
        qryProcD.Edit;
      qryProcDSITUACAO.Value  :=  'F';
      qryProcD.Post;
      ShowMessage('Serviço '+qryProdutoDESCRICAO.Value+' Finalizado.');
    end;
end;

procedure TFrmProcedimentoPet.btnFinalizarClick(Sender: TObject);
var
  Fechar: Boolean;
begin
  try
    if TemServicoAberto then
      begin
        ShowMessage('Existem serviços em aberto, finalize-os!');
        Exit;
      end
    else
      begin
        Fechar  :=  Application.MessageBox('Deseja Finalizar o Procedimento? '+
          'Este processo é irreversível!', 'Procedimento Pet', 4+32) = 6;
        if Fechar then
          begin
            if not (qryProcM.State in [dsEdit, dsInsert]) then
              qryProcM.Edit;
            qryProcMSITUACAO.AsString :=  'F';
            if qryProcMDATA_SAIDA.IsNull then
              qryProcMDATA_SAIDA.Value  :=  Date;
            if qryProcMHORA_SAIDA.IsNull then
              qryProcMHORA_SAIDA.Value  :=  Date;
            qryProcM.Post;
            Close;
          end
        else
          Exit;
      end;
  except
    on E: exception do
      ShowMessage('Falha ao Finalizar. Falha: '+E.Message);
  end;
end;

procedure TFrmProcedimentoPet.btnGravarClick(Sender: TObject);
var
  Fechar: Boolean;
begin
  try
    btnGravar.Enabled := false;
    if not (qryProcM.State in [dsEdit, dsInsert]) then
      qryProcM.Edit;
    qryProcMSITUACAO.AsString := 'P';
    if (qryProcD.State in [dsInsert, dsEdit]) then
      qryProcD.Cancel;
    if qryProcM.State in dsEditModes then
      qryProcM.Post;
    Fechar  :=  Application.MessageBox('Procedimento Pet '+
    'Salvo com Sucesso, Deseja Sair?', 'Procedimento Pet',
    4+32) = 6;
  finally
    btnGravar.Enabled := true;
    if Fechar then
      Close;
  end;
end;

procedure TFrmProcedimentoPet.btnImprimirClick(Sender: TObject);
begin
  with TButton(Sender).ClientToScreen(point(0, 0)) do
    ppmImpressao.Popup(X, Y);
end;

procedure TFrmProcedimentoPet.CalculaTotal;
begin
  if not (qryProcM.State in [dsEdit, dsInsert]) then
    qryProcM.Edit;
  qryProcMTOTAL_GERAL.AsFloat :=
    qryProcMTOTAL_PRODUTOS.AsFloat +
    qryProcMTOTAL_SERVICOS.AsFloat;
end;

procedure TFrmProcedimentoPet.CalculaTotalGeral;
var
  qry: TFDQuery;
  TotP,
  TotS,
  DescP,
  DescS: Double;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  Dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'SELECT COALESCE(SUM(PD.total), 0) TOTAL '+
      'FROM procedimento_pet_detalhe PD '+
      'WHERE (PD.fk_procedimento_pet='+
      IntToStr(qryProcMCODIGO.AsInteger)+') and '+
      '(PD.tipo=''P'') ';
    qry.Open;
    TotP  :=  qry.Fields[0].AsFloat;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'SELECT COALESCE(SUM(PD.total), 0) TOTAL '+
      'FROM procedimento_pet_detalhe PD '+
      'WHERE (PD.fk_procedimento_pet='+
      IntToStr(qryProcMCODIGO.AsInteger)+') and '+
      '(PD.tipo=''S'') ';
    qry.Open;
    TotS  :=  qry.Fields[0].AsFloat;
    DescP :=  qryProcMVL_DESC_PECAS.AsFloat;
    DescS :=  qryProcMVL_DESC_SERVICOS.AsFloat;
    //Atualizar
    if not (qryProcM.State in [dsEdit, dsInsert]) then
      qryProcM.Edit;
    qryProcMSUBTOTAL.AsFloat  :=  TotP+TotS;
    qryProcMSUBTOTAL_PECAS.AsFloat  :=  TotP;
    qryProcMSUBTOTAL_SERVICOS.AsFloat  :=  TotS;
    qryProcMTOTAL_PRODUTOS.AsFloat  :=  TotP-DescP;
    qryProcMTOTAL_SERVICOS.AsFloat  :=  TotS-DescS;
    qryProcMTOTAL_GERAL.AsFloat :=
      qryProcMTOTAL_PRODUTOS.AsFloat +
      qryProcMTOTAL_SERVICOS.AsFloat +
      StrToFloatDef(qryExamesProcTOTAL.AsString, 0);
    qryProcM.Post;
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.CalculaTotalProduto;
begin
  if not (qryProcD.State in [dsEdit, dsInsert]) then
    qryProcD.Edit;
  qryProcDTOTAL.AsFloat :=
    qryProcDQTD.AsFloat * qryProcDPRECO.AsFloat;
end;

procedure TFrmProcedimentoPet.ChangePortePet;
var
  iIndex: Integer;
begin
  try
    iIndex  :=  0;
    lblPorte.Caption  :=  '';
    imgPorte.Picture  :=  nil;
    if qryPetPORTE.Value = 'P' then
      begin
        lblPorte.Caption  :=  'PEQUENO';
        iIndex  :=  0;
      end
    else if qryPetPORTE.Value = 'M' then
      begin
        lblPorte.Caption  :=  'MEDIO';
        iIndex  :=  1;
      end
    else if qryPetPORTE.Value = 'G' then
      begin
        lblPorte.Caption  :=  'GRANDE';
        iIndex  :=  2;
      end
    else if qryPetPORTE.Value = 'GG' then
      begin
        lblPorte.Caption  :=  'GIGANTE';
        iIndex  :=  3;
      end;
    cxImageList.GetBitmap(iIndex, imgPorte.Picture.Bitmap);
  except
    lblPorte.Caption  :=  '';
    imgPorte.Picture  :=  nil;
  end;
end;

procedure TFrmProcedimentoPet.CriarShape(CompPai: TWinControl; sNome: string;
  Cor: TColor; Largura, Altura, Left, Top: integer);
var
  Shape: TShape;
begin
  try
    Shape :=  TShape.Create(Self);
    Shape.Pen.Color :=  Cor;
    Shape.Visible :=  True;
    Shape.Parent  :=  CompPai;
    Shape.Name  :=  'sha'+sNome;
    Shape.Height  :=  1;
    Shape.Width :=  Largura;
    Shape.Left  :=  Left;
    Shape.Top :=  Top + Altura;
  except
  end;
end;

procedure TFrmProcedimentoPet.cxGridDBTableView1EditChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  if UpperCase(AItem.Caption) = 'X' then
    begin
      qryExamesProc.Refresh;
      CalculaTotalGeral;
    end;
end;

procedure TFrmProcedimentoPet.DBEdit14Exit(Sender: TObject);
begin
  if not (qryProcM.State in [dsEdit, dsInsert]) then
    qryProcM.Edit;
  if qryProcMDESC_PERC_PECAS.AsFloat = 0 then
    begin
      qryProcMDESC_PERC_PECAS.AsFloat :=
        SimpleRoundTo((qryProcMVL_DESC_PECAS.AsFloat/
        qryProcMSUBTOTAL_PECAS.AsFloat)*100 ,-2);
    end
  else
    begin
      if qryProcMVL_DESC_PECAS.AsFloat = 0 then
        qryProcMDESC_PERC_PECAS.AsFloat :=  0;  
    end;
  qryProcM.Post;
  CalculaTotalGeral;
end;

procedure TFrmProcedimentoPet.DBEdit15Exit(Sender: TObject);
begin
  if not (qryProcM.State in [dsEdit, dsInsert]) then
    qryProcM.Edit;
  if qryProcMDESC_PERC_SERVICOS.AsFloat = 0 then
    begin
      qryProcMDESC_PERC_SERVICOS.AsFloat :=
        SimpleRoundTo((qryProcMVL_DESC_SERVICOS.AsFloat/
        qryProcMSUBTOTAL_SERVICOS.AsFloat)*100 ,-2);
    end
  else
    begin
      if qryProcMVL_DESC_SERVICOS.AsFloat = 0 then
        qryProcMDESC_PERC_SERVICOS.AsFloat :=  0;  
    end;
  qryProcM.Post;
  CalculaTotalGeral;
end;

procedure TFrmProcedimentoPet.DBEdit16Exit(Sender: TObject);
begin
  if not (qryProcM.State in [dsEdit, dsInsert]) then
    qryProcM.Edit;  
  if qryProcMVL_DESC_PECAS.AsFloat = 0 then
    begin
      qryProcMVL_DESC_PECAS.AsFloat :=
        SimpleRoundTo(qryProcMSUBTOTAL_PECAS.AsFloat *
        (qryProcMDESC_PERC_PECAS.AsFloat/100) ,-2);            
    end
  else
    begin
      if qryProcMDESC_PERC_PECAS.AsFloat = 0 then
        qryProcMVL_DESC_PECAS.AsFloat := 0;
    end;
  qryProcM.Post;
  CalculaTotalGeral;
end;

procedure TFrmProcedimentoPet.DBEdit17Exit(Sender: TObject);
begin
  if not (qryProcM.State in [dsEdit, dsInsert]) then
    qryProcM.Edit;
  if qryProcMVL_DESC_SERVICOS.AsFloat = 0 then
    begin
      qryProcMVL_DESC_SERVICOS.AsFloat :=
        SimpleRoundTo(qryProcMSUBTOTAL_SERVICOS.AsFloat *
        (qryProcMDESC_PERC_SERVICOS.AsFloat/100) ,-2);            
    end
  else
    begin
      if qryProcMDESC_PERC_SERVICOS.AsFloat = 0 then
        qryProcMVL_DESC_SERVICOS.AsFloat := 0;
    end;
  qryProcM.Post;
  CalculaTotalGeral;
end;

procedure TFrmProcedimentoPet.DBGridEh1ColEnter(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TFrmProcedimentoPet.DBGridEh1ColExit(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  True;
end;

procedure TFrmProcedimentoPet.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if DBGridEh1.SelectedIndex = 6 then
        begin
          if qryProcD.State in [dsEdit, dsInsert] then
            begin
              qryProcD.Post;
              qryProcD.Insert;
            end
          else
            qryProcD.Next;
        end;
    end
  else if Key = VK_DELETE then
    begin
      if qryProcDCODIGO.Value > 0 then
        qryProcD.Delete;
    end;
end;

procedure TFrmProcedimentoPet.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TFrmProcedimentoPet.DBGridEh2ColEnter(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TFrmProcedimentoPet.DBGridEh2ColExit(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  True;
end;

procedure TFrmProcedimentoPet.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if DBGridEh2.SelectedIndex = 4 then
        begin
          qryProcD.Post;
          qryProcD.Insert;
        end;
    end
  else if Key = VK_DELETE then
    begin
      if qryProcDCODIGO.Value > 0 then
        qryProcD.Delete;
    end;
end;

procedure TFrmProcedimentoPet.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh2.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TFrmProcedimentoPet.DBLookupComboboxEh1Enter(Sender: TObject);
begin
  iCodCliente :=  qryProcMFK_CLIENTE.AsInteger;
end;

procedure TFrmProcedimentoPet.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  if not TemPet(qryClientesCODIGO.AsInteger) then
    begin
      ShowMessage('Cliente não possui pets.');
      qryProcMFK_CLIENTE.AsInteger  :=  iCodCliente;
    end
  else
    begin
      if qryClientes.Active and qryProcM.Active then
        begin
          if not (qryProcM.State in [dsInsert, dsEdit]) then
            qryProcM.Edit;
          qryProcMFONE1.AsString  :=  GetContatoCliente(qryClientesCODIGO.AsInteger);
        end;
    end;
end;

procedure TFrmProcedimentoPet.DBMemo1Enter(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TFrmProcedimentoPet.DBMemo1Exit(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  True;
end;

procedure TFrmProcedimentoPet.DBMemo2Enter(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TFrmProcedimentoPet.DBMemo2Exit(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  True;
end;

procedure TFrmProcedimentoPet.DBMemo3Enter(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TFrmProcedimentoPet.DBMemo3Exit(Sender: TObject);
begin
  ACBrEnterTab.EnterAsTab :=  True;
end;

procedure TFrmProcedimentoPet.dsClientesDataChange(Sender: TObject;
  Field: TField);
begin
  qryPlano.Close;
  qryPlano.Params[0].Value  :=
    qryClientesFK_PLANO_PET.Value;
  qryPlano.Open;
  qryPet.Close;
  qryPet.Params[0].Value  :=
    qryClientesCODIGO.Value;
  qryPet.Open;
end;

procedure TFrmProcedimentoPet.dsProcDDataChange(Sender: TObject; Field: TField);
begin
  if bSoVisualiza then
    Exit;
  if qryProcD.Active then
    begin
      if qryProcDSITUACAO.Value = 'A' then
        begin
          btnAbrir.Enabled  :=  False;
          btnFechar.Enabled :=  True;
        end
      else
        begin      
          btnAbrir.Enabled  :=  True;
          btnFechar.Enabled :=  False;        
        end;    
    end
  else
    begin
      btnAbrir.Enabled  :=  False;
      btnFechar.Enabled :=  False;      
    end;
end;

function TFrmProcedimentoPet.EhServico(CodProduto: Integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select p.servico from '+
      'produto p where p.codigo = '+IntToStr(CodProduto);
    qry.Open;
    Result  :=  qry.Fields[0].AsString = 'S';
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
    btnGravarClick(self)
  else if Key = VK_ESCAPE then
    btnCancelarClick(self)
  else if Key = VK_F3 then
    btnFinalizarClick(self)
  else if Key = VK_F4 then
    btnImprimirClick(self)
  else if Key = VK_F6 then
    begin
      if PageControl1.ActivePageIndex = 1 then
        if PageControl2.ActivePageIndex = 1 then
          if btnAbrir.Enabled then
            btnAbrirClick(Self);
    end
  else if Key = VK_F7 then
    begin
      if PageControl1.ActivePageIndex = 1 then
        if PageControl2.ActivePageIndex = 1 then
          if btnFechar.Enabled then
            btnFecharClick(Self);
    end
end;

procedure TFrmProcedimentoPet.FormShow(Sender: TObject);
begin
  Self.Height :=  FrmPrincipalPet.Height;
  Self.Width  :=  FrmPrincipalPet.Width;
  FrmPrincipalPet.Top :=  0;
  FrmPrincipalPet.Left  :=  0;
  qryClientes.Close;
  qryClientes.Params[0].Value :=
    Dados.qryEmpresaCODIGO.Value;
  qryClientes.Open;
  qryVeterinario.Close;
  qryVeterinario.Params[0].Value :=
    Dados.qryEmpresaCODIGO.Value;
  qryVeterinario.Open;
  qryAtendente.Close;
  qryAtendente.Params[0].Value :=
    Dados.qryEmpresaCODIGO.Value;
  qryAtendente.Open;
  qryProduto.Close;
  qryProduto.Open;
  qryPet.Close;
  qryPet.Open;
  qryPlano.Close;
  qryPlano.Open;
  PageControl1.ActivePageIndex  :=  0;
  PageControl2.ActivePageIndex  :=  0;
  PageControl2Change(Self);
  AtualizaExamesProcedimentos;
end;

function TFrmProcedimentoPet.GetContatoCliente(CodCliente: Integer): string;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select fone1, fone2, celular1, celular2 '+
      'from pessoa where codigo = '+IntToStr(CodCliente);
    qry.Open;
    if Trim(qry.Fields[0].AsString) <> '' then
      Result  := qry.Fields[0].AsString
    else if Trim(qry.Fields[1].AsString) <> '' then
      Result  := qry.Fields[1].AsString
    else if Trim(qry.Fields[2].AsString) <> '' then
      Result  := qry.Fields[2].AsString
    else if Trim(qry.Fields[3].AsString) <> '' then
      Result  := qry.Fields[3].AsString;
  finally
    qry.Free;
  end;
end;

function TFrmProcedimentoPet.GetPr_VendaProduto(Codigo: Integer): Extended;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select coalesce(PR_VENDA, 0) PR_VENDA '+
      'from produto where codigo='+IntToStr(Codigo);
    qry.Open;
    Result  :=  qry.Fields[0].AsFloat;
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.GetUtilizacaoPlano(var Valor, QtdPlano,
  QtdUtilizada: Extended; Plano, Produto, Cliente: Integer);
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select '+
      'pp.valor, '+
      'pp.qtde quantidade_plano, '+
      'coalesce( '+
      '(select sum(ppds.qtd) from PROCEDIMENTO_PET_DETALHE ppds '+
      'where (ppds.fk_produto=pp.fk_produto) and (ppds.fk_cliente='+IntToStr(Cliente)+') '+
      'and (ppds.data between '+
      '(select cast(CURRENT_DATE as date) - extract(day from cast(CURRENT_DATE as date)) + 1 from RDB$DATABASE) '+
      'and '+
      '(select cast(CURRENT_DATE as date) - extract(day from cast(CURRENT_DATE as date)) + 32 - '+
      'extract(day from (cast(CURRENT_DATE as date) - extract(day from cast(CURRENT_DATE as date)) + 32)) '+
      'from RDB$DATABASE) '+
      ' ) ), 0) quantidade_utilizada '+
      'from plano_pet_detalhe pp '+
      'where pp.fk_plano_pet_master='+IntToStr(Plano)+' and '+
      'pp.fk_produto='+IntToStr(Produto);
    qry.Open;
    Valor :=  qry.Fields[0].AsFloat;
    QtdPlano :=  qry.Fields[1].AsFloat;
    QtdUtilizada :=  qry.Fields[2].AsFloat;
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.ImgFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmProcedimentoPet.PageControl2Change(Sender: TObject);
var
  sTipo: string;
begin
  if qryProcD.Active then
    begin
      qryProcD.Filtered :=  False;
      if PageControl2.ActivePageIndex = 0 then
        sTipo :=  'P'
      else if PageControl2.ActivePageIndex = 1 then
        sTipo :=  'S'
      else
        Exit;
      qryProcD.Filter :=  'tipo='+QuotedStr(sTipo);
      qryProcD.Filtered :=  True;

      if qryProduto.Active then
        begin
          qryProduto.Filtered :=  False;
          if PageControl2.ActivePageIndex = 0 then
            qryProduto.Filter :=  'servico<>''S'''
          else if PageControl2.ActivePageIndex = 1 then
            qryProduto.Filter :=  'servico=''S''';
          qryProduto.Filtered :=  True;
        end;
    end;
  if PageControl2.ActivePageIndex = 1 then
    Panel3.Visible  :=  True
  else
    Panel3.Visible  :=  False;
end;

procedure TFrmProcedimentoPet.PorLinhaDBEdit;
var
  i : integer;
begin
  try
    for i := 0 to Self.ComponentCount - 1 do
      begin
        //GroupBox5
        if Self.Components[i].GetParentComponent = GroupBox5 then
          begin
            if Self.Components[i] is TDBEdit then
              begin
                TDBEdit(Self.Components[i]).BorderStyle := bsNone;
                TDBEdit(Self.Components[i]).Height  :=  15;
                CriarShape(GroupBox5, TDBEdit(Self.Components[i]).Name,
                  clBlue, TDBEdit(Self.Components[i]).Width,
                  TDBEdit(Self.Components[i]).Height, TDBEdit(Self.Components[i]).Left,
                  TDBEdit(Self.Components[i]).Top);
              end;
          end;
        //TabSheet2
        if Self.Components[i].GetParentComponent = TabSheet2 then
          begin
            if Self.Components[i] is TDBEdit then
              begin
                TDBEdit(Self.Components[i]).BorderStyle := bsNone;
                TDBEdit(Self.Components[i]).Height  :=  15;
                CriarShape(TabSheet2, TDBEdit(Self.Components[i]).Name,
                  clBlack, TDBEdit(Self.Components[i]).Width,
                  TDBEdit(Self.Components[i]).Height, TDBEdit(Self.Components[i]).Left,
                  TDBEdit(Self.Components[i]).Top);
              end;
          end;
      end;
  except
  end;
end;

procedure TFrmProcedimentoPet.ppmExamesClick(Sender: TObject);
begin
  try
    btnImprimir.Enabled :=  False;
    qryExamesProc.Filtered  :=  False;
    qryExamesProc.Filter  :=  ' USAR=''S'' ';
    qryExamesProc.Filtered  :=  True;
    if qryExamesProc.IsEmpty then
      begin
        ShowMessage('Nenhuma Exame Selecionados.');
        Exit;
      end;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelExamesPetProcedimento.fr3');
    frxReport.ShowReport;
  finally
    qryExamesProc.Filtered  :=  False;
    btnImprimir.Enabled :=  True;
  end;
end;

procedure TFrmProcedimentoPet.ppmProcedimentoClick(Sender: TObject);
begin
  try
    btnImprimir.Enabled :=  False;
    qryProcCapa.Close;
    qryProcCapa.Params[0].Value :=
      qryProcMFK_EMPRESA.Value;
    qryProcCapa.Params[1].Value :=
      qryProcMCODIGO.Value;
    qryProcCapa.Open;
    qryProcCorpo.Close;
    qryProcCorpo.Params[0].Value  :=
      qryProcMCODIGO.Value;
    qryProcCorpo.Open;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelPetProcedimento.fr3');
    frxReport.ShowReport;
  finally
    btnImprimir.Enabled :=  True;
  end;
end;

procedure TFrmProcedimentoPet.ppmReceitaClick(Sender: TObject);
begin
  try
    btnImprimir.Enabled :=  False;
    if qryProcMRECEITA.AsString = '' then
      begin
        ShowMessage('Nenhuma Receita Escrita.');
        Exit;
      end;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelFolhaReceitaPet.fr3');
    frxReport.ShowReport;
  finally
    btnImprimir.Enabled :=  True;
  end;
end;

function TFrmProcedimentoPet.ProdutoEstaNoPlano(Plano,
  Produto: integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select count(*) '+
      'from PLANO_PET_DETALHE '+
      'where '+
      'FK_PLANO_PET_MASTER='+IntToStr(Plano)+' and '+
      'FK_PRODUTO='+IntToStr(Produto);
    qry.Open;
    Result  :=  qry.Fields[0].AsInteger > 0;
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.qryExamesProcAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TFrmProcedimentoPet.qryExamesProcAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TFrmProcedimentoPet.qryExamesProcCalcFields(DataSet: TDataSet);
begin
  if qryExamesProcUSAR.Value = 'S' then
    begin
      qryExamesProcVIRTUAL_VALOR.AsFloat :=
      qryExamesProcVALOR.AsFloat;
    end
  else
    begin
      qryExamesProcVIRTUAL_VALOR.AsFloat := 0;
    end;
end;

procedure TFrmProcedimentoPet.qryPetAfterScroll(DataSet: TDataSet);
begin
  ChangePortePet;
end;

procedure TFrmProcedimentoPet.qryProcDAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TFrmProcedimentoPet.qryProcDAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
  CalculaTotalGeral;
  TotalProdSer(qryProcDTIPO.AsString, qryProcMCODIGO.AsInteger);
  CalculaTotal;
end;

procedure TFrmProcedimentoPet.qryProcDAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
  CalculaTotalGeral;
  TotalProdSer(qryProcDTIPO.AsString, qryProcMCODIGO.AsInteger);
  CalculaTotal;
end;

procedure TFrmProcedimentoPet.qryProcDBeforeDelete(DataSet: TDataSet);
var
  str, tipo: string;
begin
  if PageControl2.ActivePageIndex = 0 then
    tipo := ' produto '
  else if PageControl2.ActivePageIndex = 1 then
    tipo := ' serviço ';
  str :=  'Deseja excluir o'+tipo+qryProdutoDESCRICAO.AsString;
  if Application.MessageBox(PChar(str), 'Excluir', 4+32) = 7 then
    Abort;
end;

procedure TFrmProcedimentoPet.qryProcDBeforeInsert(DataSet: TDataSet);
begin
  if not qryProcMFK_CLIENTE.AsInteger > 0 then
    begin
      ShowMessage('Procedimento sem Cliente '+
        'selecionado, por favor selecionar um cliente.');
      Abort;
    end;
end;

procedure TFrmProcedimentoPet.qryProcDBeforePost(DataSet: TDataSet);
begin
  if qryProcDVACINA.AsString = 'S' then
    begin
      if qryProcDDATA_VACINA.IsNull then
        begin
          DBGridEh1.SelectedIndex := 3;
          ShowMessage('Obrigatorio preencher data da vacina.');
          Abort;
        end;
    end;
  if qryProcMFK_CLIENTE.AsInteger > 0 then
    begin
      if not (qryProcD.State in [dsInsert, dsEdit]) then
        qryProcD.Edit;
      qryProcDFK_CLIENTE.Value  := qryProcMFK_CLIENTE.Value;
    end
  else
    begin
      ShowMessage('Procedimento sem Cliente '+
        'selecionado, por favor selecionar um cliente.');
      Abort;
    end;
end;

procedure TFrmProcedimentoPet.qryProcDFK_PRODUTOChange(Sender: TField);
begin
  if qryProcMFK_CLIENTE.AsInteger > 0 then
    begin
      if not (qryProcD.State in [dsInsert, dsEdit]) then
        qryProcD.Edit;
      qryProcDFK_CLIENTE.Value  := qryProcMFK_CLIENTE.Value;
    end
  else
    begin
      ShowMessage('Procedimento sem Cliente '+
        'selecionado, por favor selecionar um cliente.');
      Abort;
    end;
  if qryProdutoCODIGO.Value > 0 then
    begin
      qryProcDPRECO.AsFloat :=  GetPr_VendaProduto(qryProcDFK_PRODUTO.AsInteger);
      qryProcDQTD.AsFloat :=  1;
      CalculaTotalProduto;
      if qryProdutoSERVICO.AsString = 'S' then
        qryProcDTIPO.AsString :=  'S'
      else
        qryProcDTIPO.AsString :=  'P';
    end;
end;

procedure TFrmProcedimentoPet.qryProcDFK_PRODUTOValidate(Sender: TField);
begin
  if PageControl2.ActivePageIndex = 0 then
    begin
      if EhServico(qryProcDFK_PRODUTO.AsInteger) then
        Abort;
    end
  else if PageControl2.ActivePageIndex = 1 then
    begin
      if not EhServico(qryProcDFK_PRODUTO.AsInteger) then
        Abort;
    end;
end;

procedure TFrmProcedimentoPet.qryProcDNewRecord(DataSet: TDataSet);
begin
  qryProcDCODIGO.Value  :=  dados.Numerador('PROCEDIMENTO_PET_DETALHE', 'CODIGO',
      'N', '', '');
  qryProcDFK_EMPRESA.Value  :=  Dados.qryEmpresaCODIGO.Value;
  qryProcDFK_PROCEDIMENTO_PET.Value :=  qryProcMCODIGO.Value;
  qryProcDFK_PLANO.Value  :=  Dados.GetPlanoPetPessoa(qryProcMFK_CLIENTE.AsInteger);
  qryProcDDATA.AsDateTime :=  Date;
  qryProcDVACINA.AsString :=  'N';
  qryProcDDATA_VACINA.Clear;
end;

procedure TFrmProcedimentoPet.qryProcDPRECOChange(Sender: TField);
begin
  CalculaTotalProduto;
end;

procedure TFrmProcedimentoPet.qryProcDQTDChange(Sender: TField);
var
  ValorPlano,
  QtdPlano,
  QtdUtilizado,
  QtdRestante: Extended;
begin
  GetUtilizacaoPlano(ValorPlano, QtdPlano,
  QtdUtilizado, qryProcDFK_PLANO.AsInteger,
  qryProcDFK_PRODUTO.AsInteger,
  qryProcDFK_CLIENTE.AsInteger);
  QtdRestante :=  QtdPlano - QtdUtilizado;
  if QtdRestante < 0 then
    QtdRestante :=  0;
  if (QtdRestante > 0) and (qryProcDQTD.AsFloat <= QtdRestante) then
    begin
      if not (qryProcD.State in [dsInsert, dsEdit]) then
        qryProcD.Edit;
      qryProcDPRECO.AsFloat :=  ValorPlano;
    end
  else
    begin
      if qryProcDFK_PLANO.AsInteger > 0 then
        begin
          if not ProdutoEstaNoPlano(qryProcDFK_PLANO.AsInteger, qryProcDFK_PRODUTO.AsInteger) then
            Exit;
          Application.MessageBox(
            PChar('Você só tem mais '+FormatFloat('#,##0.00', QtdRestante)+
            ' restante do seu plano para este item, como você está'+
            ' tentando utilizar '+FormatFloat('#,##0.00', qryProcDQTD.AsFloat)+
            ' o valor do plano não será aplicao ao item.'), 'Atenção',
            0+48);
        end;
    end;
  CalculaTotalProduto;
end;

procedure TFrmProcedimentoPet.qryProcMAfterCancel(DataSet: TDataSet);
begin
  Dados.Conexao.RollbackRetaining;
end;

procedure TFrmProcedimentoPet.qryProcMAfterOpen(DataSet: TDataSet);
begin
  qryProcD.Close;
  qryProcD.Params[0].Value  :=  dados.qryEmpresaCODIGO.Value;
  qryProcD.Params[1].Value  :=  qryProcMCODIGO.Value;
  qryProcD.Open;
end;

procedure TFrmProcedimentoPet.qryProcMAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;  
end;

procedure TFrmProcedimentoPet.qryProcMCalcFields(DataSet: TDataSet);
begin
  if qryProcMSITUACAO.AsString = 'A' then
    begin
      qryProcMSTATUS.AsString :=  'ABERTO';
      lblSituacao.Style.TextColor :=  clGreen;
    end
  else if qryProcMSITUACAO.AsString = 'P' then
    begin
      qryProcMSTATUS.AsString :=  'ANDAMENTO';
      lblSituacao.Style.TextColor :=  clBlue;
    end
  else if qryProcMSITUACAO.AsString = 'F' then
    begin
      qryProcMSTATUS.AsString :=  'FINALIZADO';
      lblSituacao.Style.TextColor :=  clRed;
    end;
end;

procedure TFrmProcedimentoPet.qryProcMNewRecord(DataSet: TDataSet);
begin
  qryProcMCODIGO.Value  := dados.Numerador('PROCEDIMENTO_PET_MASTER', 'CODIGO',
      'N', '', '');
  qryProcMFK_EMPRESA.Value  :=  Dados.qryEmpresaCODIGO.Value;
  qryProcMSITUACAO.Value  :=  'A';
end;

procedure TFrmProcedimentoPet.SoVisualizar;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TDBEdit then
        TDBEdit(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TDBLookupComboboxEh then
        TDBLookupComboboxEh(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TDBLookupComboBox then
        TDBLookupComboBox(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TDBImage then
        TDBImage(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TBitBtn then
        TBitBtn(Self.Components[i]).Enabled  :=  False
      else if Self.Components[i] is TSpeedButton then
        TSpeedButton(Self.Components[i]).Enabled  :=  False
      else if Self.Components[i] is TDBGridEh then
        TDBGridEh(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TDBGrid then
        TDBGrid(Self.Components[i]).ReadOnly  :=  True
      else if Self.Components[i] is TDBMemo then
        TDBMemo(Self.Components[i]).ReadOnly  :=  True;
    end;
  ImgFechar.Enabled :=  True;
  btnCancelar.Enabled :=  True;
  btnImprimir.Enabled :=  True;
  bSoVisualiza  := True;
end;

procedure TFrmProcedimentoPet.SpeedButton1Click(Sender: TObject);
var
  sRazao,
  sFantasia: string;
  iCod: Integer;
begin
  try
    Dados.ConsultaCliente(iCod, sRazao, sFantasia);
    if iCod = 0 then
      Exit;
    if not TemPet(iCod) then
      begin
        ShowMessage('Cliente não possui pets.');
        Exit
      end;
    if not (qryProcM.State in [dsEdit, dsInsert]) then
      qryProcM.Edit;
    qryProcMFONE1.Value :=  GetContatoCliente(iCod);
    qryProcMFK_CLIENTE.Value  :=  iCod;
  except
    qryProcM.Cancel;
  end;
end;

procedure TFrmProcedimentoPet.btnCancelarClick(Sender: TObject);
begin
  try
    btnCancelar.Enabled := false;
    if qryProcM.State in dsEditModes then
      qryProcM.Cancel;
    Close;
  finally
    btnCancelar.Enabled := true;
  end;
end;

function TFrmProcedimentoPet.TemPet(iCodPessoa: Integer): Boolean;
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'SELECT COUNT(*) FROM PETS P ' +
      'WHERE P.FK_PESSOA=:PESSOA';
    qry.ParamByName('PESSOA').AsInteger :=  iCodPessoa;
    qry.Open;
    Result  :=  qry.Fields[0].AsInteger > 0;
  finally
    qry.Free;
  end;
end;

function TFrmProcedimentoPet.TemServicoAberto: Boolean;
var
  qry: TFDQuery;
begin
  try
    Result  :=  False;
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=  
      'select count(*) from procedimento_pet_detalhe pd '+
      'where pd.fk_procedimento_pet='+IntToStr(qryProcMCODIGO.AsInteger)+
      ' and pd.situacao=''A'' ';
    qry.Open;
    Result  :=  qry.Fields[0].Value > 0;
  finally
    qry.Free;
  end;
end;

procedure TFrmProcedimentoPet.TotalProdSer(sTipo: string; iCodProc: Integer);
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'SELECT '+
      'SUM(PD.TOTAL) TOTAL '+
      'FROM PROCEDIMENTO_PET_DETALHE PD '+
      'WHERE PD.FK_PROCEDIMENTO_PET=:PROC ';
    qry.ParamByName('PROC').AsInteger :=  iCodProc;
    qry.Open;
    if qry.Fields[0].AsFloat > 0 then
      begin
        if not (qryProcM.State in [dsEdit, dsInsert]) then
          qryProcM.Edit;
        qryProcMSUBTOTAL.AsFloat  :=  qry.Fields[0].AsFloat;
      end;

    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'SELECT '+
      'SUM(PD.TOTAL) TOTAL '+
      'FROM PROCEDIMENTO_PET_DETALHE PD '+
      'WHERE PD.TIPO=:TIPO AND PD.FK_PROCEDIMENTO_PET=:PROC ';
    qry.ParamByName('TIPO').AsString  :=  sTipo;
    qry.ParamByName('PROC').AsInteger :=  iCodProc;
    qry.Open;
    if qry.Fields[0].AsFloat > 0 then
      begin
        if not (qryProcM.State in [dsEdit, dsInsert]) then
          qryProcM.Edit;
        if sTipo = 'P' then
          qryProcMSUBTOTAL_PECAS.AsFloat  :=  qry.Fields[0].AsFloat
        else if sTipo = 'S' then
          qryProcMSUBTOTAL_SERVICOS.AsFloat  :=  qry.Fields[0].AsFloat;
      end;
  finally
    qry.Free;
  end;
end;

end.
