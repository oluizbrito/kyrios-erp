unit uImportar;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Data.db,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  System.Math;

type
  TfrmImportar = class(TForm)
    qryPedido: TFDQuery;
    dsPedido: TDataSource;
    qryOrcamento: TFDQuery;
    dsOrcamento: TDataSource;
    qryOS_Detalhe: TFDQuery;
    qryOS_DetalheCODIGO: TIntegerField;
    qryOS_DetalheFK_OS_MASTER: TIntegerField;
    qryOS_DetalheFK_FUNCIONARIO: TIntegerField;
    qryOS_DetalheFK_PRODUTO: TIntegerField;
    qryOS_DetalheDATA_INICIO: TDateField;
    qryOS_DetalheHORA_INICIO: TTimeField;
    qryOS_DetalheDATA_TERMINO: TDateField;
    qryOS_DetalheHORA_TERMINO: TTimeField;
    qryOS_DetalheDISCRIMINACAO: TStringField;
    qryOS_DetalheFK_USUARIO: TIntegerField;
    qryOS_DetalheFK_EMPRESA: TIntegerField;
    qryOS_DetalheTIPO: TStringField;
    qryOS_DetalheSITUACAO: TStringField;
    qryPedidoCODIGO: TIntegerField;
    qryPedidoDATA_EMISSAO: TDateField;
    qryPedidoDATA_SAIDA: TDateField;
    qryPedidoID_CLIENTE: TIntegerField;
    qryPedidoFK_USUARIO: TIntegerField;
    qryPedidoFK_CAIXA: TIntegerField;
    qryPedidoFK_VENDEDOR: TIntegerField;
    qryPedidoCPF_NOTA: TStringField;
    qryPedidoSUBTOTAL: TFMTBCDField;
    qryPedidoTIPO_DESCONTO: TStringField;
    qryPedidoDESCONTO: TFMTBCDField;
    qryPedidoTROCO: TFMTBCDField;
    qryPedidoDINHEIRO: TFMTBCDField;
    qryPedidoTOTAL: TFMTBCDField;
    qryPedidoOBSERVACOES: TMemoField;
    qryPedidoSITUACAO: TStringField;
    qryPedidoFKEMPRESA: TIntegerField;
    qryPedidoPERCENTUAL: TFMTBCDField;
    qryPedidoTIPO: TStringField;
    qryPedidoNECF: TIntegerField;
    qryPedidoFKORCAMENTO: TIntegerField;
    qryPedidoLOTE: TIntegerField;
    qryPedidoGERA_FINANCEIRO: TStringField;
    qryPedidoPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryPedidoACRESCIMO: TFMTBCDField;
    qryPedidoFK_TABELA: TIntegerField;
    qryPedidoPEDIDO: TStringField;
    qryPedidoFK_OS: TIntegerField;
    qryOs_Master: TFDQuery;
    qryOs_MasterCODIGO: TIntegerField;
    qryOs_MasterDATA_INICIO: TDateField;
    qryOs_MasterHORA_INICIO: TTimeField;
    qryOs_MasterPREVISAO_ENTREGA: TDateField;
    qryOs_MasterDATA_TERMINO: TDateField;
    qryOs_MasterHORA_TERMINO: TTimeField;
    qryOs_MasterDATA_ENTREGA: TDateField;
    qryOs_MasterHORA_ENTREGA: TTimeField;
    qryOs_MasterFK_ATENDENDE: TIntegerField;
    qryOs_MasterPROBLEMA: TMemoField;
    qryOs_MasterOBSERVACOES: TMemoField;
    qryOs_MasterFK_EMPRESA: TIntegerField;
    qryOs_MasterFK_USUARIO: TIntegerField;
    qryOs_MasterDOCUMENTO: TStringField;
    qryOs_MasterNOME: TStringField;
    qryOs_MasterFONE1: TStringField;
    qryOs_MasterFONE2: TStringField;
    qryOs_MasterSITUACAO: TStringField;
    qryOs_MasterNUMERO_SERIE: TStringField;
    qryOs_MasterDESCRICAO: TStringField;
    qryOs_MasterMODELO: TStringField;
    qryOs_MasterMARCA: TStringField;
    qryOs_MasterANO: TIntegerField;
    qryOs_MasterPLACA: TStringField;
    qryOs_MasterKM: TFMTBCDField;
    qryOs_MasterENDERECO: TStringField;
    qryOs_MasterBAIRRO: TStringField;
    qryOs_MasterCIDADE: TStringField;
    qryOs_MasterUF: TStringField;
    qryOs_MasterDATA_EMISSAO: TDateField;
    qryOs_MasterNUMERO: TStringField;
    qryOs_MasterNOME_TIME: TStringField;
    qryOs_MasterTIPO_SERVICO: TStringField;
    qryOs_MasterFK_TIPO_TECIDO: TIntegerField;
    qryOs_MasterQUANTIDADE: TIntegerField;
    qryOs_MasterFK_PRODUTO: TIntegerField;
    qryOs_MasterFOTO: TBlobField;
    qryOs_MasterFK_CLIENTE: TIntegerField;
    DsOs_Master: TDataSource;
    qryOrcamentoCODIGO: TIntegerField;
    qryOrcamentoDATA: TDateField;
    qryOrcamentoFKVENDEDOR: TIntegerField;
    qryOrcamentoFK_CLIENTE: TIntegerField;
    qryOrcamentoCLIENTE: TStringField;
    qryOrcamentoTELEFONE: TStringField;
    qryOrcamentoCELULAR: TStringField;
    qryOrcamentoENDERECO: TStringField;
    qryOrcamentoNUMERO: TStringField;
    qryOrcamentoBAIRRO: TStringField;
    qryOrcamentoCIDADE: TStringField;
    qryOrcamentoUF: TStringField;
    qryOrcamentoCNPJ: TStringField;
    qryOrcamentoFORMA_PAGAMENTO: TStringField;
    qryOrcamentoVALIDADE: TSmallintField;
    qryOrcamentoOBS: TMemoField;
    qryOrcamentoSITUACAO: TStringField;
    qryOrcamentoTOTAL: TFMTBCDField;
    qryOrcamentoCEP: TStringField;
    qryOrcamentoFKEMPRESA: TIntegerField;
    qryOrcamentoSUBTOTAL: TFMTBCDField;
    qryOrcamentoPERCENTUAL: TFMTBCDField;
    qryOrcamentoDESCONTO: TFMTBCDField;
    qryOrcamentoCODIGO_WEB: TIntegerField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtNumero: TEdit;
    maskInicio: TMaskEdit;
    maskFim: TMaskEdit;
    btnFiltrar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    btnPedido: TBitBtn;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    btnOrcamento: TBitBtn;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    btnOS: TBitBtn;
    DBGrid3: TDBGrid;
    qryVendedor: TFDQuery;
    qryVendedorCODIGO: TIntegerField;
    qryVendedorNOME: TStringField;
    qryPedidoVIRTUAL_VENDEDOR: TStringField;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Label6: TLabel;
    btnPedidoWeb: TBitBtn;
    qryPedidoWeb: TFDQuery;
    dsPedidoWeb: TDataSource;
    qryPedidoWebCODIGO: TIntegerField;
    qryPedidoWebDATA: TDateField;
    qryPedidoWebFK_CLIENTE: TIntegerField;
    qryPedidoWebFORMA_PAGAMENTO: TStringField;
    qryPedidoWebVALIDADE: TIntegerField;
    qryPedidoWebSITUACAO: TStringField;
    qryPedidoWebTOTAL: TFMTBCDField;
    qryPedidoWebSUBTOTAL: TFMTBCDField;
    qryPedidoWebPERCENTUAL: TFMTBCDField;
    qryPedidoWebDESCONTO: TFMTBCDField;
    qryPedidoWebCODIGOWEB: TIntegerField;
    qryPedidoWebFK_VENDEDOR: TIntegerField;
    qryPedidoWebFK_FRANQUIA: TIntegerField;
    qryPedidoWebCNPJ: TStringField;
    qryPedidoWebCLIENTE: TStringField;
    qryPedidoWebENDERECO: TStringField;
    qryPedidoWebNUMERO: TStringField;
    qryPedidoWebCIDADE: TStringField;
    qryPedidoWebBAIRRO: TStringField;
    qryPedidoWebUF: TStringField;
    qryPedidoWebCEP: TStringField;
    qryPedidoWebFKEMPRESA: TIntegerField;
    qryPedidoWebVIRTUAL_VENDEDOR: TStringField;
    qryPedidoWebDetalhe: TFDQuery;
    qryPedidoWebDetalheCODIGO: TIntegerField;
    qryPedidoWebDetalheFK_PEDIDO: TIntegerField;
    qryPedidoWebDetalheFK_PRODUTO: TIntegerField;
    qryPedidoWebDetalheQTD: TFMTBCDField;
    qryPedidoWebDetalhePRECO: TFMTBCDField;
    qryPedidoWebDetalheTOTAL: TFMTBCDField;
    qryPedidoWebDetalheCODIGOWEB: TIntegerField;
    qryPedidoWebDetalheITEM: TIntegerField;
    qryPedidoWebDetalheFK_GRADE: TIntegerField;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    btnPreVenda: TBitBtn;
    Label7: TLabel;
    qryPreVendaM: TFDQuery;
    dsPreVendaM: TDataSource;
    qryPreVendaMCODIGO: TIntegerField;
    qryPreVendaMDATA_EMISSAO: TDateField;
    qryPreVendaMID_CLIENTE: TIntegerField;
    qryPreVendaMFK_USUARIO: TIntegerField;
    qryPreVendaMFK_VENDEDOR: TIntegerField;
    qryPreVendaMSUBTOTAL: TFMTBCDField;
    qryPreVendaMDESCONTO: TFMTBCDField;
    qryPreVendaMTOTAL: TFMTBCDField;
    qryPreVendaMOBSERVACOES: TStringField;
    qryPreVendaMSITUACAO: TStringField;
    qryPreVendaMFKEMPRESA: TIntegerField;
    qryPreVendaMPERCENTUAL: TFMTBCDField;
    qryPreVendaMVENDEDOR: TStringField;
    qryPreVendaD: TFDQuery;
    qryPreVendaDCODIGO: TIntegerField;
    qryPreVendaDFK_PREVENDA: TIntegerField;
    qryPreVendaDID_PRODUTO: TIntegerField;
    qryPreVendaDITEM: TSmallintField;
    qryPreVendaDQTD: TFMTBCDField;
    qryPreVendaDPRECO: TFMTBCDField;
    qryPreVendaDVALOR_ITEM: TFMTBCDField;
    qryPreVendaDVDESCONTO: TFMTBCDField;
    qryPreVendaDPVDESCONTO: TFMTBCDField;
    qryPreVendaDTOTAL: TFMTBCDField;
    qryPreVendaDSITUACAO: TStringField;
    qryPreVendaDUNIDADE: TStringField;
    qryPreVendaDSUBTOTAL: TFMTBCDField;
    qryOs_MasterSUBTOTAL: TFMTBCDField;
    qryOs_MasterSUBTOTAL_PECAS: TFMTBCDField;
    qryOs_MasterSUBTOTAL_SERVICOS: TFMTBCDField;
    qryOs_MasterVL_DESC_PECAS: TFMTBCDField;
    qryOs_MasterVL_DESC_SERVICOS: TFMTBCDField;
    qryOs_MasterDESC_PERC_PECAS: TFMTBCDField;
    qryOs_MasterDESC_PERC_SERVICOS: TFMTBCDField;
    qryOs_MasterTOTAL_SERVICOS: TBCDField;
    qryOs_MasterTOTAL_PRODUTOS: TBCDField;
    qryOs_MasterTOTAL_GERAL: TBCDField;
    qryOs_MasterDESCRICAO2: TStringField;
    qryOs_MasterAVISAR_REVISAO: TStringField;
    qryOs_MasterLAUDO: TMemoField;
    qryOs_MasterMODELO_VEICULO: TStringField;
    qryOs_MasterCATEGORIA_VEICULO: TStringField;
    qryOs_MasterMARCA_VEICULO: TStringField;
    qryOs_MasterANO_VEICULO: TIntegerField;
    qryOs_MasterCOR_VEICULO: TStringField;
    qryOs_MasterPLACA_VEICULO: TStringField;
    qryOs_MasterTIPO_COMBUSTIVEL_VEICULO: TStringField;
    qryOs_MasterCHASSI_VEICULO: TStringField;
    qryOs_MasterPROXIMA_REVISAO: TDateField;
    qryOs_MasterENVIO_WHATS_STATUS: TIntegerField;
    qryOs_MasterPATH_PDF_WHATS: TStringField;
    qryOs_MasterNUMERO_WHATSAPP: TStringField;
    qryPedidoOS: TStringField;
    qryPedidoTOTAL_TROCA: TFMTBCDField;
    qryPedidoFORMA_PAGAMENTO: TStringField;
    qryPedidoFK_ENTREGADOR: TIntegerField;
    qryPedidoFLAG_NFCE: TStringField;
    qryPedidoFK_MESA: TIntegerField;
    qryPedidoNOME: TStringField;
    qryPedidoTELA: TStringField;
    qryPedidoEX: TIntegerField;
    qryPedidoALTERADO: TStringField;
    qryPedidoHORA: TTimeField;
    qryPedido2: TFDQuery;
    dsPedido2: TDataSource;
    qryPedido2CODIGO: TIntegerField;
    qryPedido2DATA_EMISSAO: TDateField;
    qryPedido2DATA_SAIDA: TDateField;
    qryPedido2ID_CLIENTE: TIntegerField;
    qryPedido2FK_USUARIO: TIntegerField;
    qryPedido2FK_CAIXA: TIntegerField;
    qryPedido2FK_VENDEDOR: TIntegerField;
    qryPedido2CPF_NOTA: TStringField;
    qryPedido2SUBTOTAL: TFMTBCDField;
    qryPedido2TIPO_DESCONTO: TStringField;
    qryPedido2DESCONTO: TFMTBCDField;
    qryPedido2TROCO: TFMTBCDField;
    qryPedido2DINHEIRO: TFMTBCDField;
    qryPedido2TOTAL: TFMTBCDField;
    qryPedido2OBSERVACOES: TMemoField;
    qryPedido2SITUACAO: TStringField;
    qryPedido2FKEMPRESA: TIntegerField;
    qryPedido2PERCENTUAL: TFMTBCDField;
    qryPedido2TIPO: TStringField;
    qryPedido2NECF: TIntegerField;
    qryPedido2FKORCAMENTO: TIntegerField;
    qryPedido2LOTE: TIntegerField;
    qryPedido2GERA_FINANCEIRO: TStringField;
    qryPedido2PERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryPedido2ACRESCIMO: TFMTBCDField;
    qryPedido2FK_TABELA: TIntegerField;
    qryPedido2PEDIDO: TStringField;
    qryPedido2OS: TStringField;
    qryPedido2FK_OS: TIntegerField;
    qryPedido2TOTAL_TROCA: TFMTBCDField;
    qryPedido2FORMA_PAGAMENTO: TStringField;
    qryPedido2FK_ENTREGADOR: TIntegerField;
    qryPedido2FLAG_NFCE: TStringField;
    qryPedido2FK_MESA: TIntegerField;
    qryPedido2NOME: TStringField;
    qryPedido2TELA: TStringField;
    qryPedido2EX: TIntegerField;
    qryPedido2ALTERADO: TStringField;
    qryPedido2HORA: TTimeField;
    qryOS_DetalheQTD: TFMTBCDField;
    qryOS_DetalhePRECO: TBCDField;
    qryOS_DetalheTOTAL: TBCDField;
    qryOS_DetalheCOR: TStringField;
    qryOS_DetalheTAMANHO: TStringField;
    qryOS_DetalheDETALHE: TStringField;
    qryOS_DetalheNOME: TStringField;
    qryOS_DetalheNUMERO: TStringField;
    qryOS_DetalheFK_GRADE: TIntegerField;
    qryPedido2Cliente: TStringField;
    qryAux: TFDQuery;
    procedure btnPedidoClick(Sender: TObject);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnOSClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure qryPedidoAfterOpen(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPedidoWebClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure qryPedidoWebAfterOpen(DataSet: TDataSet);
    procedure btnPreVendaClick(Sender: TObject);
  private
    { Private declarations }
    procedure RatearDesconto;
  public
    { Public declarations }
  end;

var
  frmImportar: TfrmImportar;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uPDV;

procedure TfrmImportar.btnPedidoClick(Sender: TObject);
begin

  If qryPedido2.IsEmpty then
    exit;

  FrmPDV.PodeAtualizarEstoque := false;

  if qryPedido2SITUACAO.Value = 'C' then
  begin
    Raise exception.create('Não é possivel importar Pedido Cancelado');
  end
  else
  begin

    Dados.qryExecute.Close;
    Dados.qryExecute.SQL.Clear;
    Dados.qryExecute.SQL.Add('Select SITUACAO from nfce_master');
    Dados.qryExecute.SQL.Add('where');
    Dados.qryExecute.SQL.Add('fk_venda=:codigo');
    Dados.qryExecute.Params[0].AsInteger := qryPedido2CODIGO.AsInteger;
    Dados.qryExecute.Open;

    if (trim(Dados.qryExecute.FieldByName('SITUACAO').AsString) <> 'O') and
      (trim(Dados.qryExecute.FieldByName('SITUACAO').AsString) <> '') and
      (trim(Dados.qryExecute.FieldByName('SITUACAO').AsString) <> 'G') then
      Raise exception.create('Já existe NFC-e gerada para esta venda!');

    try

      Dados.EstornaFinanceiro(qryPedido2CODIGO.AsInteger);

      Dados.qryExecute.Close;
      Dados.qryExecute.SQL.Text :=
        'update vendas_master set SITUACAO=''X'', FLAG_NFCE=''N'', TIPO_DESCONTO=''D'', FK_USUARIO=:USU, FK_CAIXA=:CAIXA, LOTE=:LT WHERE CODIGO=:CODIGO';
      Dados.qryExecute.Params[0].Value := Dados.idUsuario;
      Dados.qryExecute.Params[1].Value := Dados.idCaixa;
      Dados.qryExecute.Params[2].Value := Dados.Lote;
      Dados.qryExecute.Params[3].AsInteger := qryPedido2CODIGO.AsInteger;
      Dados.qryExecute.ExecSQL;
      Dados.Conexao.Commit;

      FrmPDV.qryVenda.Close;
      FrmPDV.qryVenda.Params[0].AsInteger := qryPedido2CODIGO.AsInteger;
      FrmPDV.qryVenda.Open;

      Application.ProcessMessages;
      ShowMessage('Importação realizada com sucesso!');
      Close;

    finally
      qryPedido2.Refresh;
    end;
  end;

  {if qryPedido.IsEmpty then
    exit;

  FrmPDV.PodeAtualizarEstoque := false;

  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.Add('Select FK_VENDA from nfce_master');
  dados.qryConsulta.SQL.Add('where');
  dados.qryConsulta.SQL.Add('fk_venda=:codigo');
  dados.qryConsulta.Params[0].Value := qryPedidoCODIGO.Value;
  dados.qryConsulta.Open;

  if qryPedidoSITUACAO.Value = 'C' then
  begin
    ShowMessage('Não é possivel importar pedido cancelado');
  end;

  if qryPedidoSITUACAO.Value = 'F' then
  begin
    ShowMessage('Não é possivel importar pedido finalizado');
  end;

  if dados.qryConsulta.RecordCount > 0 then
  begin
    qryPedido.Edit;
    qryPedidoSITUACAO.Value := 'F';
    qryPedido.Post;
    dados.Conexao.Commit;
    ShowMessage('Já existe NFC-e gerada para esta venda!');
    exit;
  end;

  try
    dados.EstornaFinanceiro(FrmPDV.qryVendaCODIGO.Value);

    if (FrmPDV.qryVenda.State in dsEditModes) then
      FrmPDV.qryVenda.Cancel;

    FrmPDV.qryVenda.Close;
    FrmPDV.qryVenda.Params[0].Value := qryPedidoCODIGO.Value;
    FrmPDV.qryVenda.Open;

    if not(FrmPDV.qryVenda.State in dsEditModes) then
      FrmPDV.qryVenda.Edit;
    FrmPDV.qryVendaSITUACAO.Value := 'X';
    FrmPDV.qryVendaTIPO_DESCONTO.Value := 'D';
    FrmPDV.qryVendaFK_USUARIO.Value := dados.idUsuario;
    FrmPDV.qryVendaFK_CAIXA.Value := dados.idCaixa;
    FrmPDV.qryVendaLOTE.Value := Dados.Lote;

    FrmPDV.qryVenda.Post;
    dados.Conexao.Commit;
    //FrmPDV.lblVendedor.Caption := qryPedidoVIRTUAL_VENDEDOR.AsString;
    //FrmPDV.lblVendedor.Refresh;

    // - Alimentar Memo
   // FrmPDV.AlimentaMemo(tpmIniciaVenda);

    {if FrmPDV.qryItem.RecordCount > 0 then
      begin
        FrmPDV.qryItem.First;
        while not FrmPDV.qryItem.Eof do
          begin
            FrmPDV.AlimentaMemo(tpmInsereItem);
            FrmPDV.AlimentaMemo(tpmDescontoItem);
            FrmPDV.qryItem.Next;
          end;
      end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    qryPedido.Close;
    qryPedido.Open;
  end;}
end;

procedure TfrmImportar.btnPedidoWebClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
begin
  if qryPedidoWeb.IsEmpty then
    exit;

  dados.Conexao.Commit;

  if not FrmPDV.qryItem.IsEmpty then
  begin
    ShowMessage('Atenção! Não é possivel importar PEDIDO WEB.' +
      #13'+ Venda atual possui ITENS cadastrados!');
    exit;
  end;

  FrmPDV.PodeAtualizarEstoque := true;
  numero := qryPedidoWebCODIGO.AsString;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select * FROM PEDIDO_WEB WHERE CODIGO=:NUM AND SITUACAO=''A''';
  dados.qryConsulta.Params[0].AsString := numero;
  dados.qryConsulta.Open;
  if dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('Pedido Web não encontrado!');
    exit;
  end;

  if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;

  FrmPDV.qryVendaOBSERVACOES.Value := 'Pedido Web: ' + dados.qryConsulta.FieldByName
    ('CODIGOWEB').AsString;

  FrmPDV.qryVendaFK_VENDEDOR.Value := dados.qryConsulta.FieldByName
    ('FK_VENDEDOR').Value;
  if (dados.qryConsulta.FieldByName('FK_CLIENTE').Value = 0) or
    (dados.qryConsulta.FieldByName('FK_CLIENTE').IsNull) then
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConfigCLIENTE_PADRAO.Value
  else
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConsulta.FieldByName
      ('FK_CLIENTE').Value;

  FrmPDV.qryVenda.Post;
  if not (qryPedidoWeb.State in [dsEdit, dsInsert]) then
    qryPedidoWeb.Edit;
  qryPedidoWebSITUACAO.AsString :=  'F';
  qryPedidoWeb.Post;
  dados.Conexao.Commit;

  qryPedidoWebDetalhe.Close;
  qryPedidoWebDetalhe.Params[0].Value := dados.qryConsulta.FieldByName
    ('codigo').Value;
  qryPedidoWebDetalhe.Open;

  qryPedidoWebDetalhe.First;
  while not qryPedidoWebDetalhe.Eof do
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual, pr.servico from produto pr '
      + ' where ' + ' pr.codigo=:id ';
    dados.qryConsulta.Params[0].Value := qryPedidoWebDetalheFK_PRODUTO.AsInteger;
    dados.qryConsulta.Open;
    qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

    if not(dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S') then
      qtd := 1;

    if dados.qryConsulta.FieldByName('servico').AsString = 'S' then
      qtd := 1;

    if qtd > 0 then
    begin
      FrmPDV.qryItem.Last;
      vitem := FrmPDV.qryItemITEM.AsInteger + 1;
      FrmPDV.qryItem.Append;
      FrmPDV.qryItemCODIGO.AsFloat := dados.Numerador('VENDAS_DETALHE',
        'CODIGO', 'N', '', '');
      FrmPDV.qryItemID_PRODUTO.Value := qryPedidoWebDetalheFK_PRODUTO.Value;
      FrmPDV.qryItemFKVENDA.Value := FrmPDV.qryVendaCODIGO.Value;
      FrmPDV.qryItemITEM.Value := vitem;
      FrmPDV.qryItemQTD.Value := qryPedidoWebDetalheQTD.Value;
      FrmPDV.qryItemFK_GRADE.Value := qryPedidoWebDetalheFK_GRADE.Value;

      if dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S' then
      begin
        if qtd < qryPedidoWebDetalheQTD.Value then
          FrmPDV.qryItemQTD.Value := qtd;
      end;

      FrmPDV.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      FrmPDV.qryItemPRECO.Value := qryPedidoWebDetalhePRECO.AsFloat;
      FrmPDV.qryItemVALOR_ITEM.AsFloat := FrmPDV.qryItemQTD.AsFloat *
        FrmPDV.qryItemPRECO.AsFloat;

      FrmPDV.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      FrmPDV.qryItemTOTAL.AsFloat := FrmPDV.qryItemVALOR_ITEM.AsFloat -
        FrmPDV.qryItemVDESCONTO.AsFloat;
      FrmPDV.qryItem.Post;
      dados.Conexao.Commit;
    end;

    qryPedidoWebDetalhe.Next;
  end;

  //Alimentar Memo
  {if FrmPDV.qryItem.RecordCount > 0 then
    begin
      FrmPDV.qryItem.First;
      while not FrmPDV.qryItem.Eof do
        begin
          FrmPDV.AlimentaMemo(tpmInsereItem);
          FrmPDV.AlimentaMemo(tpmDescontoItem);
          FrmPDV.qryItem.Next;
        end;
    end;}

  Application.ProcessMessages;
  ShowMessage('Importação realizada com sucesso!');
  Close;
end;

procedure TfrmImportar.btnPreVendaClick(Sender: TObject);
var
  numero: string;
  vitem: Integer;
  qtd: Real;
  novoCodigo: Integer;
begin
  if qryPreVendaM.IsEmpty then
    Exit;

  dados.Conexao.Commit;

  if not FrmPDV.qryItem.IsEmpty then
  begin
    ShowMessage('Atenção! Não é possível importar PRÉ-VENDA.' +
      #13 + 'A venda atual possui ITENS cadastrados!');
    Exit;
  end;

  FrmPDV.PodeAtualizarEstoque := True;
  numero := qryPreVendaMCODIGO.AsString;

  // Verificar se a pré-venda existe e está finalizada
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'SELECT * FROM PRE_VENDA_MASTER WHERE CODIGO = :NUM AND SITUACAO = ''F''';
  dados.qryConsulta.Params[0].AsString := numero;
  dados.qryConsulta.Open;
  if dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('Pré-venda não encontrada!');
    Exit;
  end;

  // Atualizar informações da venda
  if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;

  FrmPDV.qryVendaOBSERVACOES.Value := 'Pré-venda: ' + dados.qryConsulta.FieldByName('CODIGO').AsString;
  FrmPDV.qryVendaFK_VENDEDOR.Value := dados.qryConsulta.FieldByName('FK_VENDEDOR').Value;

  if (dados.qryConsulta.FieldByName('ID_CLIENTE').Value = 0) or
     (dados.qryConsulta.FieldByName('ID_CLIENTE').IsNull) then
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConfigCLIENTE_PADRAO.Value
  else
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConsulta.FieldByName('ID_CLIENTE').Value;

  FrmPDV.qryVenda.Post;
  dados.Conexao.Commit;

  // Atualizar o status da pré-venda para "Importada"
  if not (qryPreVendaM.State in [dsEdit, dsInsert]) then
    qryPreVendaM.Edit;
  qryPreVendaMSITUACAO.AsString := 'I'; // Status "Importada"
  qryPreVendaM.Post;
  dados.Conexao.Commit;

  // Importar os itens da pré-venda
  qryPreVendaD.Close;
  qryPreVendaD.Params[0].Value := dados.qryConsulta.FieldByName('CODIGO').Value;
  qryPreVendaD.Open;
  qryPreVendaD.First;

  while not qryPreVendaD.Eof do
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      'SELECT pr.CODIGO, pr.CODBARRA, pr.UNIDADE, pr.CFOP, pr.NCM, pr.QTD_ATUAL, pr.SERVICO ' +
      'FROM PRODUTO pr ' +
      'WHERE pr.CODIGO = :ID';
    dados.qryConsulta.Params[0].Value := qryPreVendaDID_PRODUTO.AsInteger;
    dados.qryConsulta.Open;
    qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

    if not (dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S') then
      qtd := 1;

    if dados.qryConsulta.FieldByName('SERVICO').AsString = 'S' then
      qtd := 1;

    if qtd > 0 then
    begin
      FrmPDV.qryItem.Last;
      vitem := FrmPDV.qryItemITEM.AsInteger + 1;

      FrmPDV.qryItem.Append;

      // Obter um novo código exclusivo do gerador GEN_VENDAS_DETALHE_ID
      qryAux.Close;
      qryAux.SQL.Text := 'SELECT GEN_ID(GEN_VENDAS_DETALHE_ID, 1) AS NEXT_ID FROM RDB$DATABASE';
      qryAux.Open;
      novoCodigo := qryAux.FieldByName('NEXT_ID').AsInteger;

      FrmPDV.qryItemCODIGO.AsFloat := novoCodigo; // Novo código exclusivo
      FrmPDV.qryItemID_PRODUTO.Value := qryPreVendaDID_PRODUTO.Value;
      FrmPDV.qryItemFKVENDA.Value := FrmPDV.qryVendaCODIGO.Value;
      FrmPDV.qryItemITEM.Value := vitem;
      FrmPDV.qryItemQTD.Value := qryPreVendaDQTD.Value;

      if dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S' then
      begin
        if qtd < qryPreVendaDQTD.Value then
          FrmPDV.qryItemQTD.Value := qtd;
      end;

      FrmPDV.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName('UNIDADE').AsString;
      FrmPDV.qryItemPRECO.Value := qryPreVendaDPRECO.AsFloat;
      FrmPDV.qryItemVALOR_ITEM.AsFloat := FrmPDV.qryItemQTD.AsFloat * FrmPDV.qryItemPRECO.AsFloat;
      FrmPDV.qryItemVDESCONTO.AsFloat := qryPreVendaDVDESCONTO.AsFloat;

      FrmPDV.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName('CODBARRA').AsString;
      FrmPDV.qryItemTOTAL.AsFloat := FrmPDV.qryItemVALOR_ITEM.AsFloat - FrmPDV.qryItemVDESCONTO.AsFloat;

      FrmPDV.qryItem.Post;
      dados.Conexao.Commit;
    end;

    qryPreVendaD.Next;
  end;

  // Atualizar valores da venda principal
  if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;

  FrmPDV.qryVendaDESCONTO.AsFloat := qryPreVendaMDESCONTO.AsFloat;
  FrmPDV.qryVendaTOTAL.AsFloat := FrmPDV.qryVendaSUBTOTAL.AsFloat - FrmPDV.qryVendaDESCONTO.AsFloat;

  FrmPDV.qryVenda.Post;
  Dados.Conexao.Commit;

  Application.ProcessMessages;
  ShowMessage('Importação realizada com sucesso!');
  Close;
end;


procedure TfrmImportar.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportar.Button1Click(Sender: TObject);
begin

  PageControl1.ActivePage := TabSheet1;
end;

procedure TfrmImportar.Button2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfrmImportar.Button3Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
end;

procedure TfrmImportar.DBGrid1DblClick(Sender: TObject);
begin
  btnOrcamento.Click;
end;

procedure TfrmImportar.DBGrid2DblClick(Sender: TObject);
begin
  btnPreVenda.Click;
end;

procedure TfrmImportar.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qryPedido2SITUACAO.Value = 'C' then // condição
    TDBGrid(Sender).Canvas.Font.Color:=clRed
  else
    TDBGrid(Sender).Canvas.Font.Color:=clBlack;

  Dbgrid2.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmImportar.DBGrid3DblClick(Sender: TObject);
begin
  btnOS.Click;
end;

procedure TfrmImportar.DBGrid4DblClick(Sender: TObject);
begin
  btnPedidoWebClick(Self);
end;

procedure TfrmImportar.DBGridEh1DblClick(Sender: TObject);
begin
  btnPedido.Click;
end;

procedure TfrmImportar.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmImportar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnPedido.Click;
  if Key = VK_F3 then
    btnOrcamento.Click;
  if Key = VK_F4 then
    btnOS.Click;
  if Key = VK_F5 then
    btnPedidoWeb.Click;
  if Key = VK_F6 then
    btnPreVenda.Click;
  if Key = vk_escape then
    Close;
end;

procedure TfrmImportar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if PageControl1.ActivePage = TabSheet1 then
  begin
    if Key = #13 then
      btnPedido.Click;
  end;
end;

procedure TfrmImportar.FormShow(Sender: TObject);
begin
  maskInicio.EditText := DateToStr(date);
  maskFim.EditText := DateToStr(date);
  btnFiltrarClick(self);
end;

procedure TfrmImportar.PageControl1Change(Sender: TObject);
begin
  btnFiltrar.Click;
end;

procedure TfrmImportar.qryPedidoAfterOpen(DataSet: TDataSet);
begin
  qryVendedor.Close;
  qryVendedor.Open;
end;

procedure TfrmImportar.qryPedidoWebAfterOpen(DataSet: TDataSet);
begin
  qryVendedor.Close;
  qryVendedor.Open;
end;

procedure TfrmImportar.RatearDesconto;
var
  TSoma, TDif, TPercentual: Extended;
  TSomaOutro, TDifOutro: Extended;
  ValorDesconto, ValorAcrescimo: Extended;
  MaiorItem: Extended;
begin
  {if FrmPDV.bDescItem then
    Exit;  }

  TSoma := 0;
  TSomaOutro := 0;
  ValorDesconto := 0;
  ValorAcrescimo := 0;
  frmpdv.qryItem.First;

  while not frmpdv.qryItem.Eof do
  begin
    TPercentual := frmpdv.qryItemVALOR_ITEM.AsFloat /
      frmpdv.qryVendaSUBTOTAL.AsFloat;

    ValorDesconto := SimpleRoundTo
      (TPercentual * frmpdv.qryVendaDESCONTO.AsFloat, -2);

    ValorAcrescimo := SimpleRoundTo
      (TPercentual * frmpdv.qryVendaACRESCIMO.AsFloat, -2);

    dados.qryExecute.Close;
    dados.qryExecute.sql.Clear;
    dados.qryExecute.sql.Text :=
      'update VENDAS_DETALHE set VDESCONTO=:DESCONTO, '+
      'ACRESCIMO=:ACRESCIMO, PDESCONTO=:PDESCONTO, TOTAL=:TOTAL WHERE CODIGO=:COD';
    dados.qryExecute.Params[0].Value := ValorDesconto;
    dados.qryExecute.Params[1].Value := ValorAcrescimo;
    dados.qryExecute.Params[2].AsFloat := frmpdv.qryVendaPERCENTUAL.AsFloat;
    dados.qryExecute.Params[3].AsFloat := frmpdv.qryItemVALOR_ITEM.AsFloat-ValorDesconto;
    dados.qryExecute.Params[4].Value := frmpdv.qryItemCODIGO.Value;
    dados.qryExecute.ExecSQL;

    dados.Conexao.Commit;

    TSoma := TSoma + ValorDesconto;
    TSomaOutro := TSomaOutro + ValorAcrescimo;
    frmpdv.qryItem.Next;
  end;

  frmpdv.qryItem.Close;
  frmpdv.qryItem.Open;

  TDif := frmpdv.qryVendaDESCONTO.AsFloat - TSoma;
  TDifOutro := frmpdv.qryVendaACRESCIMO.AsFloat - TSomaOutro;
  // desconto

  dados.qryconsulta.Close;
  dados.qryconsulta.sql.Clear;
  dados.qryconsulta.sql.Add
    ('select first 1 codigo, coalesce(max(total),0) total from vendas_detalhe');
  dados.qryconsulta.sql.Add('where fkvenda=:cod');
  dados.qryconsulta.sql.Add('group by 1');
  dados.qryconsulta.sql.Add('order by 2 desc');
  dados.qryconsulta.Params[0].Value := frmpdv.qryItemFKVENDA.Value;
  dados.qryconsulta.Open;

  MaiorItem := dados.qryconsulta.Fields[0].AsInteger;

  if TDif <> 0 then
  begin
    dados.qryExecute.Close;
    dados.qryExecute.sql.Clear;
    dados.qryExecute.sql.Text :=
      'update VENDAS_DETALHE set VDESCONTO= VDESCONTO + :DESCONTO, ACRESCIMO= ACRESCIMO + :ACRESCIMO WHERE CODIGO=:COD';
    dados.qryExecute.Params[0].Value := TDif;
    dados.qryExecute.Params[1].Value := TDifOutro;
    dados.qryExecute.Params[2].Value := MaiorItem;
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;
  end;
end;

procedure TfrmImportar.btnOSClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
begin
  if qryOs_Master.IsEmpty then
    exit;

  dados.Conexao.Commit;

  if not FrmPDV.qryItem.IsEmpty then
  begin
    ShowMessage('Atenção! Não é possivel importar OS.' +
      #13'+ Venda atual possui ITENS cadastrados!');
    exit;
  end;

  FrmPDV.PodeAtualizarEstoque := true;
  numero := qryOs_MasterCODIGO.AsString;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select * FROM OS_MASTER WHERE CODIGO=:NUM AND SITUACAO=''F''';
  dados.qryConsulta.Params[0].AsString := numero;
  dados.qryConsulta.Open;

  if dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('OS não encontrada!');
    exit;
  end;

  if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;
  FrmPDV.qryVendaFK_VENDEDOR.Value := dados.qryConfigVENDEDOR_PADRAO.Value;;
  FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConfigCLIENTE_PADRAO.Value;
  FrmPDV.qryVendaFK_OS.Value := qryOs_MasterCODIGO.Value;
  FrmPDV.qryVenda.Post;
  dados.Conexao.Commit;
  qryOS_Detalhe.Close;
  qryOS_Detalhe.Params[0].Value := dados.qryConsulta.FieldByName
    ('codigo').Value;
  qryOS_Detalhe.Open;

  qryOS_Detalhe.First;

  //Alimentar variavel para não permitir baixa de estoque
  //FrmPDV.bImportacao  :=  True;

  while not qryOS_Detalhe.Eof do
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
      + ' where ' + ' pr.codigo=:id ';
    dados.qryConsulta.Params[0].Value := qryOS_DetalheFK_PRODUTO.AsInteger;
    dados.qryConsulta.Open;
    qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

    FrmPDV.qryItem.Last;
    vitem := FrmPDV.qryItemITEM.AsInteger + 1;
    FrmPDV.qryItem.Append;
    FrmPDV.qryItemCODIGO.AsFloat := dados.Numerador('VENDAS_DETALHE', 'CODIGO',
      'N', '', '');
    FrmPDV.qryItemID_PRODUTO.Value := qryOS_DetalheFK_PRODUTO.Value;
    FrmPDV.qryItemFKVENDA.Value := FrmPDV.qryVendaCODIGO.Value;
    FrmPDV.qryItemITEM.Value := vitem;
    FrmPDV.qryItemQTD.Value := qryOS_DetalheQTD.Value;
    FrmPDV.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
      ('UNIDADE').AsString;
    FrmPDV.qryItemPRECO.Value := qryOS_DetalhePRECO.Value;;
    FrmPDV.qryItemVALOR_ITEM.AsFloat := FrmPDV.qryItemQTD.AsFloat *
      FrmPDV.qryItemPRECO.AsFloat;

    FrmPDV.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
      ('CODBARRA').AsString;

    FrmPDV.qryItemTOTAL.AsFloat := FrmPDV.qryItemVALOR_ITEM.AsFloat -
      FrmPDV.qryItemVDESCONTO.AsFloat;
    FrmPDV.qryItem.Post;
    dados.Conexao.Commit;
    qryOS_Detalhe.Next;
  end;

  //Atualizar Situação da O.S.
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'UPDATE OS_MASTER SET SITUACAO=''I'' WHERE CODIGO=:NUM';
  dados.qryConsulta.Params[0].AsString := numero;
  dados.qryConsulta.ExecSQL;

  // Alimentar Memo
  {if FrmPDV.qryItem.RecordCount > 0 then
    begin
      FrmPDV.qryItem.First;
      while not FrmPDV.qryItem.Eof do
        begin
          FrmPDV.AlimentaMemo(tpmInsereItem);
          FrmPDV.AlimentaMemo(tpmDescontoItem);
          FrmPDV.qryItem.Next;
        end;
    end;}

  Application.ProcessMessages;
  ShowMessage('Importação realizada com sucesso!');
 // FrmPDV.bImportacao  :=  False;
  Close;
end;

procedure TfrmImportar.btnFiltrarClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    {0:
      begin
        qryPedido2.Close;
        qryPedido2.Params[0].Value := edtNumero.Text + '%';
        qryPedido2.Params[1].Value := maskInicio.EditText;
        qryPedido2.Params[2].Value := maskFim.EditText;
        qryPedido2.Open;
        if qryPedido2.IsEmpty then
          ShowMessage('Sem Registros encontrados.');
      end; }
    0:
      begin
        qryPedido2.Close;
        //qryPedido2.Params[0].Value := maskInicio.EditText;
        //qryPedido2.Params[1].Value := maskFim.EditText;
        qryPedido2.Params[0].Value := edtNumero.Text + '%';
        qryPedido2.Params[1].Value := maskInicio.EditText;
        qryPedido2.Params[2].Value := maskFim.EditText;
        qryPedido2.Open;
      end;
    1:
      begin
        qryOrcamento.Close;
        qryOrcamento.Params[0].Value := edtNumero.Text + '%';
        qryOrcamento.Params[1].Value := maskInicio.EditText;
        qryOrcamento.Params[2].Value := maskFim.EditText;
        qryOrcamento.Open;
        if qryOrcamento.IsEmpty then
          ShowMessage('Sem Registros encontrados.');
      end;
    2:
      begin
        qryOs_Master.Close;
        qryOs_Master.Params[0].Value := edtNumero.Text + '%';
        qryOs_Master.Params[1].Value := maskInicio.EditText;
        qryOs_Master.Params[2].Value := maskFim.EditText;
        qryOs_Master.Open;
        if qryOs_Master.IsEmpty then
          ShowMessage('Sem Registros encontrados.');
      end;
    3:
      begin
        qryPedidoWeb.Close;
        qryPedidoWeb.Params[0].Value := edtNumero.Text + '%';
        qryPedidoWeb.Params[1].Value := maskInicio.EditText;
        qryPedidoWeb.Params[2].Value := maskFim.EditText;
        qryPedidoWeb.Open;
        if qryPedidoWeb.IsEmpty then
          ShowMessage('Sem Registros encontrados.');
      end;
    4:
      begin
        qryPreVendaM.Close;
        qryPreVendaM.Params[0].Value := edtNumero.Text + '%';
        qryPreVendaM.Params[1].Value := maskInicio.EditText;
        qryPreVendaM.Params[2].Value := maskFim.EditText;
        qryPreVendaM.Open;
        if qryPreVendaM.IsEmpty then
          ShowMessage('Sem Registros encontrados.');
      end;
  end;
end;

procedure TfrmImportar.btnOrcamentoClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
  novoCodigo: Integer;
begin
  if qryOrcamento.IsEmpty then
    exit;

  dados.Conexao.Commit;

  if not FrmPDV.qryItem.IsEmpty then
  begin
    ShowMessage('Atenção! Não é possivel importar ORÇAMENTO.' +
      #13'+ Venda atual possui ITENS cadastrados!');
    exit;
  end;

  FrmPDV.PodeAtualizarEstoque := true;
  numero := qryOrcamentoCODIGO.AsString;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Text :=
    'select * FROM ORCAMENTO WHERE CODIGO=:NUM AND SITUACAO=''F''';
  dados.qryConsulta.Params[0].AsString := numero;
  dados.qryConsulta.Open;
  if dados.qryConsulta.IsEmpty then
  begin
    ShowMessage('Orçamento não encontrado!');
    exit;
  end;

  if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;

  FrmPDV.qryVendaOBSERVACOES.Value := dados.qryConsulta.FieldByName
    ('OBS').AsString;

  FrmPDV.qryVendaFK_VENDEDOR.Value := dados.qryConsulta.FieldByName
    ('fkvendedor').Value;
  if (dados.qryConsulta.FieldByName('fk_cliente').Value = 0) or
    (dados.qryConsulta.FieldByName('fk_cliente').IsNull) then
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConfigCLIENTE_PADRAO.Value
  else
    FrmPDV.qryVendaID_CLIENTE.Value := dados.qryConsulta.FieldByName
      ('fk_cliente').Value;
  //FrmPDV.qryVendaDESCONTO.AsFloat := qryOrcamentoDESCONTO.AsFloat;
 // FrmPDV.qryVendaPERCENTUAL.AsFloat :=  qryOrcamentoPERCENTUAL.AsFloat;

  FrmPDV.qryVenda.Post;
  dados.Conexao.Commit;

  dados.qryItensO.Close;
  dados.qryItensO.Params[0].Value := dados.qryConsulta.FieldByName
    ('codigo').Value;
  dados.qryItensO.Open;
  dados.qryItensO.First;
  while not dados.qryItensO.Eof do
  begin
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  '+
      ' pr.qtd_atual, pr.servico, pr.descricao from produto pr '
      + ' where ' + ' pr.codigo=:id ';
    dados.qryConsulta.Params[0].Value := dados.qryItensOFK_PRODUTO.AsInteger;
    dados.qryConsulta.Open;
    qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

    //if not(dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S') then
    //  qtd := 1;

    if dados.qryConsulta.FieldByName('servico').AsString = 'S' then
      qtd := 1;

    if (dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S') then
      begin
        if dados.qryItensOQTD.AsFloat > qtd then
          begin
            ShowMessage(
              'Produto: '+dados.qryConsulta.FieldByName('DESCRICAO').AsString+sLineBreak+
              'Estoque Atual: '+FormatFloat(',0.00', qtd)+sLineBreak+
              'Quantidade no Orçamento: '+FormatFloat(',0.00', dados.qryItensOQTD.AsFloat)+sLineBreak+
              'Não tem estoque suficiente.');
            qtd :=  0;
          end
        else
          qtd :=  1;
      end
    else
      qtd := 1;

    if qtd > 0 then
    begin
      FrmPDV.qryItem.Last;
      vitem := FrmPDV.qryItemITEM.AsInteger + 1;
      FrmPDV.qryItem.Append;
      // Obter novo código exclusivo usando o generator
      qryAux.Close;
      qryAux.SQL.Text := 'SELECT GEN_ID(GEN_VENDAS_DETALHE_ID, 1) AS NEXT_ID FROM RDB$DATABASE';
      qryAux.Open;
      novoCodigo := qryAux.FieldByName('NEXT_ID').AsInteger;

      FrmPDV.qryItemCODIGO.AsFloat := novoCodigo; // Novo código exclusivo
      FrmPDV.qryItemID_PRODUTO.Value := dados.qryItensOFK_PRODUTO.Value;
      FrmPDV.qryItemFKVENDA.Value := FrmPDV.qryVendaCODIGO.Value;
      FrmPDV.qryItemITEM.Value := vitem;
      FrmPDV.qryItemQTD.Value := dados.qryItensOQTD.Value;
      FrmPDV.qryItemFK_GRADE.Value := dados.qryItensOFK_GRADE.Value;
     // FrmPDV.qryItemFATOR.Value :=  1;

     { if dados.qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO.Value = 'S' then
      begin
        if qtd < dados.qryItensOQTD.Value then
          FrmPDV.qryItemQTD.Value := qtd;
      end; }

      FrmPDV.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      FrmPDV.qryItemPRECO.Value := dados.qryItensOPRECO.AsFloat;
      FrmPDV.qryItemVALOR_ITEM.AsFloat := FrmPDV.qryItemQTD.AsFloat *
        FrmPDV.qryItemPRECO.AsFloat;

      FrmPDV.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      FrmPDV.qryItemTOTAL.AsFloat := FrmPDV.qryItemVALOR_ITEM.AsFloat -
        FrmPDV.qryItemVDESCONTO.AsFloat;
      FrmPDV.qryItem.Post;
      dados.Conexao.Commit;
    end;

    dados.qryItensO.Next;
  end;

 // if qryOrcamentoDESCONTO.AsFloat > 0 then
  //  RatearDesconto;

  FrmPDV.qrySoma.Close;
  FrmPDV.qrySoma.Params[0].Value := FrmPDV.qryVendaCODIGO.Value;
  FrmPDV.qrySoma.Open;

  // Alimentar Memo
  if FrmPDV.qryItem.RecordCount > 0 then
    begin
      FrmPDV.qryItem.First;
      while not FrmPDV.qryItem.Eof do
        begin
          //FrmPDV.AlimentaMemo(tpmInsereItem);
          //FrmPDV.AlimentaMemo(tpmDescontoItem);
          FrmPDV.qryItem.Next;
        end;
      if not (qryOrcamento.State in dsEditModes) then
        qryOrcamento.Edit;
      qryOrcamentoSITUACAO.AsString :=  'I';
      qryOrcamento.Post;
      ShowMessage('Importação realizada com sucesso!');
      dados.Conexao.Commit;
    end
  else
    ShowMessage('Sem produtos para serem importados.'+sLineBreak+
      'Importação não efetuada.');

   //correção desconto versão 5
   if not(FrmPDV.qryVenda.State in dsEditModes) then
    FrmPDV.qryVenda.Edit;

  FrmPDV.qryVendaDESCONTO.AsFloat := qryOrcamentoDESCONTO.AsFloat;

  FrmPDV.qryVendaTOTAL.AsFloat := FrmPDV.qryVendaSUBTOTAL.AsFloat -
    FrmPDV.qryVendaDESCONTO.AsFloat;

  if FrmPDV.qryVendaSUBTOTAL.AsFloat > 0 then
    FrmPDV.qryVendaPERCENTUAL.AsFloat :=
      (FrmPDV.qryVendaDESCONTO.AsFloat / FrmPDV.qryVendaSUBTOTAL.AsFloat) * 100;

  FrmPDV.qryVenda.Post;
  dados.Conexao.Commit;
  //fim correção

  Application.ProcessMessages;
  Close;


end;

end.

