unit uImportarNFe;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, StrUtils;

type
  TfrmImportarNFe = class(TForm)
    Panel1: TPanel;
    btnOrcamento: TSpeedButton;
    btnNFCe: TSpeedButton;
    GroupBox1: TGroupBox;
    edtNumero: TEdit;
    qryOrcamento: TFDQuery;
    qryItemO: TFDQuery;
    qryPV: TFDQuery;
    qryPV_Itens: TFDQuery;
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
    qryItemOCODIGO: TIntegerField;
    qryItemOFK_ORCAMENTO: TIntegerField;
    qryItemOFK_PRODUTO: TIntegerField;
    qryItemOQTD: TFMTBCDField;
    qryItemOPRECO: TFMTBCDField;
    qryItemOTOTAL: TFMTBCDField;
    qryItemOITEM: TSmallintField;
    qryPVCODIGO: TIntegerField;
    qryPVDATA_EMISSAO: TDateField;
    qryPVDATA_SAIDA: TDateField;
    qryPVID_CLIENTE: TIntegerField;
    qryPVFK_USUARIO: TIntegerField;
    qryPVFK_CAIXA: TIntegerField;
    qryPVFK_VENDEDOR: TIntegerField;
    qryPVCPF_NOTA: TStringField;
    qryPVSUBTOTAL: TFMTBCDField;
    qryPVTIPO_DESCONTO: TStringField;
    qryPVDESCONTO: TFMTBCDField;
    qryPVTROCO: TFMTBCDField;
    qryPVDINHEIRO: TFMTBCDField;
    qryPVTOTAL: TFMTBCDField;
    qryPVOBSERVACOES: TMemoField;
    qryPVSITUACAO: TStringField;
    qryPVFKEMPRESA: TIntegerField;
    qryPVPERCENTUAL: TFMTBCDField;
    qryPVTIPO: TStringField;
    qryPVNECF: TIntegerField;
    qryPVFKORCAMENTO: TIntegerField;
    qryPVLOTE: TIntegerField;
    qryPVGERA_FINANCEIRO: TStringField;
    qryPVPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryPVACRESCIMO: TFMTBCDField;
    qryPVFK_TABELA: TIntegerField;
    qryPVPEDIDO: TStringField;
    qryPVFK_OS: TIntegerField;
    qryPV_ItensCODIGO: TIntegerField;
    qryPV_ItensFKVENDA: TIntegerField;
    qryPV_ItensID_PRODUTO: TIntegerField;
    qryPV_ItensITEM: TSmallintField;
    qryPV_ItensCOD_BARRA: TStringField;
    qryPV_ItensQTD: TFMTBCDField;
    qryPV_ItensE_MEDIO: TFMTBCDField;
    qryPV_ItensPRECO: TFMTBCDField;
    qryPV_ItensVALOR_ITEM: TFMTBCDField;
    qryPV_ItensVDESCONTO: TFMTBCDField;
    qryPV_ItensTOTAL: TFMTBCDField;
    qryPV_ItensSITUACAO: TStringField;
    qryPV_ItensUNIDADE: TStringField;
    qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField;
    qryPV_ItensACRESCIMO: TFMTBCDField;
    qryPV_ItensOS: TStringField;
    btnDevCompra: TSpeedButton;
    btnDevVenda: TSpeedButton;
    qryDevVenda: TFDQuery;
    qryItensDevVenda: TFDQuery;
    qryDevVendaCODIGO: TIntegerField;
    qryDevVendaFK_VENDA: TIntegerField;
    qryDevVendaFK_CLIENTE: TIntegerField;
    qryDevVendaDATA: TDateField;
    qryDevVendaTOTAL: TFMTBCDField;
    qryDevVendaOBS: TStringField;
    qryDevVendaSITUACAO: TStringField;
    qryDevVendaFKEMPRESA: TIntegerField;
    qryDevVendaFK_VENDEDOR: TIntegerField;
    qryDevVendaTIPO_DEVOLUCAO: TStringField;
    qryItensDevVendaCODIGO: TIntegerField;
    qryItensDevVendaFK_DEVOLUCAO: TIntegerField;
    qryItensDevVendaFK_PRODUTO: TIntegerField;
    qryItensDevVendaQTD: TFMTBCDField;
    qryItensDevVendaQTD_VENDIDA: TFMTBCDField;
    qryItensDevVendaPRECO: TFMTBCDField;
    qryItensDevVendaFK_DEVOLUCAO_ITEM: TIntegerField;
    qryItensDevVendaTOTAL: TFMTBCDField;
    qryDevCompra: TFDQuery;
    qryDevItensCompra: TFDQuery;
    qryDevCompraCODIGO: TIntegerField;
    qryDevCompraDATA: TDateField;
    qryDevCompraFK_FORNECEDOR: TIntegerField;
    qryDevCompraTOTAL: TFMTBCDField;
    qryDevCompraNUMERO_COMPRA: TIntegerField;
    qryDevCompraFK_EMPRESA: TIntegerField;
    qryDevCompraSITUACAO: TStringField;
    qryDevCompraFK_USUARIO: TIntegerField;
    qryDevCompraOBSERVACAO: TStringField;
    qryDevItensCompraCODIGO: TIntegerField;
    qryDevItensCompraFK_DEVOLUCAO_COMPRA_M: TIntegerField;
    qryDevItensCompraID_PRODUTO: TIntegerField;
    qryDevItensCompraQTD_COMPRADA: TFMTBCDField;
    qryDevItensCompraQTD_DEVOLVIDA: TFMTBCDField;
    qryDevItensCompraPRECO: TFMTBCDField;
    qryDevItensCompraTOTAL: TFMTBCDField;
    qryDevItensCompraFK_COMPRA_ITEM: TIntegerField;
    btnOS: TSpeedButton;
    qryOS: TFDQuery;
    qryItemOS: TFDQuery;
    qryOSCODIGO: TIntegerField;
    qryOSDATA_INICIO: TDateField;
    qryOSHORA_INICIO: TTimeField;
    qryOSPREVISAO_ENTREGA: TDateField;
    qryOSDATA_TERMINO: TDateField;
    qryOSHORA_TERMINO: TTimeField;
    qryOSDATA_ENTREGA: TDateField;
    qryOSHORA_ENTREGA: TTimeField;
    qryOSFK_ATENDENDE: TIntegerField;
    qryOSPROBLEMA: TMemoField;
    qryOSOBSERVACOES: TMemoField;
    qryOSFK_EMPRESA: TIntegerField;
    qryOSFK_USUARIO: TIntegerField;
    qryOSDOCUMENTO: TStringField;
    qryOSNOME: TStringField;
    qryOSFONE1: TStringField;
    qryOSFONE2: TStringField;
    qryOSSITUACAO: TStringField;
    qryOSNUMERO_SERIE: TStringField;
    qryOSDESCRICAO: TStringField;
    qryOSMODELO: TStringField;
    qryOSMARCA: TStringField;
    qryOSANO: TIntegerField;
    qryOSPLACA: TStringField;
    qryOSKM: TFMTBCDField;
    qryOSENDERECO: TStringField;
    qryOSBAIRRO: TStringField;
    qryOSCIDADE: TStringField;
    qryOSUF: TStringField;
    qryOSDATA_EMISSAO: TDateField;
    qryOSNUMERO: TStringField;
    qryOSFK_CLIENTE: TIntegerField;
    qryOSNOME_TIME: TStringField;
    qryOSTIPO_SERVICO: TStringField;
    qryOSFK_TIPO_TECIDO: TIntegerField;
    qryOSFK_PRODUTO: TIntegerField;
    qryOSFOTO: TBlobField;
    qryOSDESCRICAO2: TStringField;
    qryOSAVISAR_REVISAO: TStringField;
    qryOSLAUDO: TMemoField;
    qryOSMODELO_VEICULO: TStringField;
    qryOSCATEGORIA_VEICULO: TStringField;
    qryOSMARCA_VEICULO: TStringField;
    qryOSANO_VEICULO: TIntegerField;
    qryOSCOR_VEICULO: TStringField;
    qryOSPLACA_VEICULO: TStringField;
    qryOSTIPO_COMBUSTIVEL_VEICULO: TStringField;
    qryOSCHASSI_VEICULO: TStringField;
    qryOSPROXIMA_REVISAO: TDateField;
    qryItemOSCODIGO: TIntegerField;
    qryItemOSFK_OS_MASTER: TIntegerField;
    qryItemOSFK_FUNCIONARIO: TIntegerField;
    qryItemOSFK_PRODUTO: TIntegerField;
    qryItemOSDATA_INICIO: TDateField;
    qryItemOSHORA_INICIO: TTimeField;
    qryItemOSDATA_TERMINO: TDateField;
    qryItemOSHORA_TERMINO: TTimeField;
    qryItemOSDISCRIMINACAO: TStringField;
    qryItemOSFK_USUARIO: TIntegerField;
    qryItemOSFK_EMPRESA: TIntegerField;
    qryItemOSTIPO: TStringField;
    qryItemOSSITUACAO: TStringField;
    qryItemOSCOR: TStringField;
    qryItemOSTAMANHO: TStringField;
    qryItemOSDETALHE: TStringField;
    qryItemOSNOME: TStringField;
    qryItemOSNUMERO: TStringField;
    btnPedidoWeb: TSpeedButton;
    qryPedidoWeb: TFDQuery;
    qryItensPedidoWeb: TFDQuery;
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
    qryItensPedidoWebCODIGO: TIntegerField;
    qryItensPedidoWebFK_PEDIDO: TIntegerField;
    qryItensPedidoWebFK_PRODUTO: TIntegerField;
    qryItensPedidoWebQTD: TFMTBCDField;
    qryItensPedidoWebPRECO: TFMTBCDField;
    qryItensPedidoWebTOTAL: TFMTBCDField;
    qryItensPedidoWebCODIGOWEB: TIntegerField;
    qryItensPedidoWebITEM: TIntegerField;
    qryItensPedidoWebFK_GRADE: TIntegerField;
    btnImportaNFCe: TSpeedButton;
    qryNFCe: TFDQuery;
    qryNFCe_Itens: TFDQuery;
    qryNFCeCODIGO: TIntegerField;
    qryNFCeNUMERO: TIntegerField;
    qryNFCeCHAVE: TStringField;
    qryNFCeMODELO: TStringField;
    qryNFCeSERIE: TStringField;
    qryNFCeDATA_EMISSAO: TDateField;
    qryNFCeDATA_SAIDA: TDateField;
    qryNFCeHORA_EMISSAO: TTimeField;
    qryNFCeHORA_SAIDA: TTimeField;
    qryNFCeID_EMITENTE: TIntegerField;
    qryNFCeID_CLIENTE: TIntegerField;
    qryNFCeFK_USUARIO: TIntegerField;
    qryNFCeFK_CAIXA: TIntegerField;
    qryNFCeFK_VENDEDOR: TIntegerField;
    qryNFCeCPF_NOTA: TStringField;
    qryNFCeSUBTOTAL: TFMTBCDField;
    qryNFCeTIPO_DESCONTO: TStringField;
    qryNFCeDESCONTO: TFMTBCDField;
    qryNFCeTROCO: TFMTBCDField;
    qryNFCeDINHEIRO: TFMTBCDField;
    qryNFCeTOTAL: TFMTBCDField;
    qryNFCeBASEICMS: TFMTBCDField;
    qryNFCeTOTALICMS: TFMTBCDField;
    qryNFCeBASEICMSPIS: TFMTBCDField;
    qryNFCeTOTALICMSPIS: TFMTBCDField;
    qryNFCeBASEICMSCOF: TFMTBCDField;
    qryNFCeTOTALICMSCOFINS: TFMTBCDField;
    qryNFCeBASEISS: TFMTBCDField;
    qryNFCeTOTALISS: TFMTBCDField;
    qryNFCeOBSERVACOES: TMemoField;
    qryNFCeSITUACAO: TStringField;
    qryNFCeEMAIL: TStringField;
    qryNFCeXML: TMemoField;
    qryNFCePROTOCOLO: TStringField;
    qryNFCeMOTIVOCANCELAMENTO: TStringField;
    qryNFCeTRIB_MUN: TFMTBCDField;
    qryNFCeTRIB_EST: TFMTBCDField;
    qryNFCeTRIB_FED: TFMTBCDField;
    qryNFCeTRIB_IMP: TFMTBCDField;
    qryNFCeFLAG: TStringField;
    qryNFCeABERTO: TStringField;
    qryNFCeFKEMPRESA: TIntegerField;
    qryNFCeFK_VENDA: TIntegerField;
    qryNFCeOUTROS: TFMTBCDField;
    qryNFCeXML_CANCELAMENTO: TMemoField;
    qryNFCeCNF: TStringField;
    qryNFCeSAT_NUMERO_CFE: TIntegerField;
    qryNFCeSAT_NUMERO_SERIE: TStringField;
    qryNFCeEX: TIntegerField;
    qryNFCeALTERADO: TStringField;
    qryNFCe_ItensCODIGO: TIntegerField;
    qryNFCe_ItensFKVENDA: TIntegerField;
    qryNFCe_ItensID_PRODUTO: TIntegerField;
    qryNFCe_ItensITEM: TSmallintField;
    qryNFCe_ItensCOD_BARRA: TStringField;
    qryNFCe_ItensNCM: TStringField;
    qryNFCe_ItensCFOP: TStringField;
    qryNFCe_ItensCST: TStringField;
    qryNFCe_ItensCSOSN: TStringField;
    qryNFCe_ItensTIPO: TStringField;
    qryNFCe_ItensQTD: TFMTBCDField;
    qryNFCe_ItensE_MEDIO: TFMTBCDField;
    qryNFCe_ItensPRECO: TFMTBCDField;
    qryNFCe_ItensVALOR_ITEM: TFMTBCDField;
    qryNFCe_ItensVDESCONTO: TFMTBCDField;
    qryNFCe_ItensBASE_ICMS: TFMTBCDField;
    qryNFCe_ItensALIQ_ICMS: TFMTBCDField;
    qryNFCe_ItensVALOR_ICMS: TFMTBCDField;
    qryNFCe_ItensP_REDUCAO_ICMS: TFMTBCDField;
    qryNFCe_ItensCST_COFINS: TStringField;
    qryNFCe_ItensBASE_COFINS_ICMS: TFMTBCDField;
    qryNFCe_ItensALIQ_COFINS_ICMS: TFMTBCDField;
    qryNFCe_ItensVALOR_COFINS_ICMS: TFMTBCDField;
    qryNFCe_ItensCST_PIS: TStringField;
    qryNFCe_ItensBASE_PIS_ICMS: TFMTBCDField;
    qryNFCe_ItensALIQ_PIS_ICMS: TFMTBCDField;
    qryNFCe_ItensVALOR_PIS_ICMS: TFMTBCDField;
    qryNFCe_ItensBASE_ISS: TFMTBCDField;
    qryNFCe_ItensALIQ_ISS: TFMTBCDField;
    qryNFCe_ItensVALOR_ISS: TFMTBCDField;
    qryNFCe_ItensCMUNFG: TIntegerField;
    qryNFCe_ItensCLISTASERV: TIntegerField;
    qryNFCe_ItensTRIB_MUN: TFMTBCDField;
    qryNFCe_ItensTRIB_EST: TFMTBCDField;
    qryNFCe_ItensTRIB_FED: TFMTBCDField;
    qryNFCe_ItensTRIB_IMP: TFMTBCDField;
    qryNFCe_ItensSITUACAO: TStringField;
    qryNFCe_ItensFLAG: TStringField;
    qryNFCe_ItensUNIDADE: TStringField;
    qryNFCe_ItensTOTAL: TFMTBCDField;
    qryNFCe_ItensOUTROS: TFMTBCDField;
    qryNFCe_ItensCEST: TStringField;
    qryNFCe_ItensFK_GRADE: TIntegerField;
    qryOSDESC_PERC_PECAS: TFMTBCDField;
    qryOSDESC_PERC_SERVICOS: TFMTBCDField;
    qryOSQUANTIDADE: TIntegerField;
    qryOSENVIO_WHATS_STATUS: TIntegerField;
    qryOSPATH_PDF_WHATS: TStringField;
    qryOSNUMERO_WHATSAPP: TStringField;
    qryItemOSQTD: TFMTBCDField;
    qryItemOSPRECO: TBCDField;
    qryItemOSTOTAL: TBCDField;
    qryItemOSFK_GRADE: TIntegerField;
    qryOSSUBTOTAL: TFMTBCDField;
    qryOSSUBTOTAL_PECAS: TFMTBCDField;
    qryOSSUBTOTAL_SERVICOS: TFMTBCDField;
    qryOSVL_DESC_PECAS: TFMTBCDField;
    qryOSVL_DESC_SERVICOS: TFMTBCDField;
    qryOSTOTAL_SERVICOS: TBCDField;
    qryOSTOTAL_PRODUTOS: TBCDField;
    qryOSTOTAL_GERAL: TBCDField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure btnNFCeClick(Sender: TObject);
    procedure btnDevCompraClick(Sender: TObject);
    procedure btnDevVendaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnOSClick(Sender: TObject);
    procedure btnPedidoWebClick(Sender: TObject);
    procedure btnImportaNFCeClick(Sender: TObject);
  private
    { Private declarations }
    procedure ListarParaImportacao;
  public
    { Public declarations }
  end;

var
  frmImportarNFe: TfrmImportarNFe;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses uPDV, Udados, uNFe, uListaImport, uListaPedidoImpNFe;

procedure TfrmImportarNFe.btnDevCompraClick(Sender: TObject);
var
  vitem  : Integer;
  AnumeroNFE, AChaveNFE, AICFOP : string;
begin
  try
    btnDevCompra.Enabled := False;

    {--- Validação simples ---}
    if Trim(edtNumero.Text) = '' then
    begin
      ShowMessage('Digite o número da Devolução de Compra');
      Exit;
    end;

    {--- Devolução / Itens da devolução ---}
    qryDevCompra.Close;
    qryDevCompra.Params[0].AsString := edtNumero.Text;
    qryDevCompra.Open;

    qryDevItensCompra.Close;
    qryDevItensCompra.Params[0].AsInteger := qryDevCompraCODIGO.AsInteger;
    qryDevItensCompra.Open;

    if qryDevCompra.IsEmpty then
    begin
      ShowMessage('Devolução de Compra não está Fechada ou não existe!');
      Exit;
    end;

    {--- Cabeçalho da NFe ---}
    if not (frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;

    frmCadNFe.qryVendaFK_VENDEDOR.AsInteger   := 1;                // fixo
    frmCadNFe.qryVendaID_CLIENTE.AsInteger    := qryDevCompraFK_FORNECEDOR.AsInteger;
    frmCadNFe.qryVendaDESCONTO.AsFloat        := 0;
    frmcadnfe.qryVendaFINALIDADE.AsString     := '3';
    frmcadnfe.DBComboBoxEh2.ItemIndex         := 3;  //nem um pagamento
    frmcadnfe.DBComboBoxEh3.ItemIndex         := 15; //sem pagemento
    frmcadnfe.qryVendaMOVIMENTO.AsString      := 'S';
    frmcadnfe.qryVendaCFOP.AsString           := '5202';

    {--- Estado do fornecedor para CFOP 6××× ---}
    with Dados.qryConsulta do
    begin
      Close;
      SQL.Text := 'SELECT UF FROM PESSOA WHERE CODIGO = :CODIGO';
      ParamByName('CODIGO').AsInteger := frmCadNFe.qryVendaID_CLIENTE.AsInteger;
      Open;
    end;



    if Dados.qryConsulta.FieldByName('UF').AsString <>
       Dados.qryEmpresaUF.AsString then
      frmcadnfe.qryVendaCFOP.AsString := '6202';

    frmCadNFe.qryVenda.Post;
    dados.Conexao.CommitRetaining;

    {--- Limpa itens anteriores da NFe ---}
    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;
    dados.Conexao.CommitRetaining;

    {--- Insere itens da devolução ---}
    qryDevItensCompra.First;
    while not qryDevItensCompra.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        'SELECT PR.CODIGO, PR.CODBARRA, PR.UNIDADE, PR.CFOP, PR.NCM, PR.QTD_ATUAL ' +
        'FROM PRODUTO PR WHERE PR.CODIGO = :ID';
      dados.qryConsulta.Params[0].AsInteger := qryDevItensCompraID_PRODUTO.AsInteger;
      dados.qryConsulta.Open;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;

      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat      := dados.Numerador('NFE_DETALHE','CODIGO','N','','');
      frmCadNFe.qryItemID_PRODUTO.AsInteger:= qryDevItensCompraID_PRODUTO.AsInteger;
      frmCadNFe.qryItemFKNFE.AsInteger     := frmCadNFe.qryVendaCODIGO.AsInteger;
      frmCadNFe.qryItemITEM.AsInteger      := vitem;
      frmCadNFe.qryItemQTD.AsFloat         := qryDevItensCompraQTD_DEVOLVIDA.AsFloat;
      frmCadNFe.qryItemUNIDADE.AsString    := dados.qryConsulta.FieldByName('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.AsFloat       := qryDevItensCompraPRECO.AsFloat;
      frmCadNFe.qryItemTOTAL.AsFloat       := frmCadNFe.qryItemQTD.AsFloat *
                                              frmCadNFe.qryItemPRECO.AsFloat;
      frmCadNFe.qryItemEVENDA.AsString     := 'S';
      frmCadNFe.qryItemCOD_BARRA.AsString  := dados.qryConsulta.FieldByName('CODBARRA').AsString;
      frmCadNFe.qryItem.Post;

      dados.Conexao.CommitRetaining;
      qryDevItensCompra.Next;
    end;

    {--- Busca dados fiscais do item original da compra ---}
    with dados.qryConsulta do
    begin
      Close;
      SQL.Text :=
        'SELECT C.ID AS CODIGO, C.CHAVE, C.EMPRESA,  C.NR_NOTA, C.STATUS, C.DTEMISSAO, ' +
        'CI.FK_PRODUTO, CI.CFOP, CI.CST_ICM, CI.BASE_ICMS, CI.ALIQ_ICMS, CI.VL_ICMS, '+
        ' CI.FK_PRODUTO_FORN FROM COMPRA C ' +
        ' LEFT JOIN COMPRA_ITENS CI ON CI.FK_COMPRA = C.ID ' +
        ' WHERE C.ID = :COMPRA ' +
        '  AND C.EMPRESA   = :EMP ' +
        '  AND C.FORNECEDOR = :FOR';
      ParamByName('COMPRA').AsInteger := qryDevCompraNUMERO_COMPRA.AsInteger;
      ParamByName('EMP').AsInteger    := Dados.idEmpresa;
      ParamByName('FOR').AsInteger    := frmCadNFe.qryVendaID_CLIENTE.AsInteger;

      Open;
    end;

    {--- Ajusta CFOP / ICMS nos itens já inseridos ---}
    if not dados.qryConsulta.IsEmpty then
    begin
      dados.qryConsulta.First;
      frmCadNFe.qryItem.First;

      AChaveNFE   :=  Dados.qryConsulta.FieldByName('CHAVE').AsString;
      ANumeroNFE  :=  Dados.qryConsulta.FieldByName('NR_NOTA').AsString;

      while (not dados.qryConsulta.Eof) and (not frmCadNFe.qryItem.Eof) do
      begin
      dados.qryConsulta.Locate('FK_PRODUTO', frmCadNFe.qryItemID_PRODUTO.AsInteger,[]);
      AICFOP := Dados.qryConsulta.FieldByName('CFOP').AsString;

       if MatchStr(AICFOP, ['1403', '1401'] ) then
       AICFOP := '5411' else AICFOP := '5202';

       if not MatchStr(AICFOP, ['5202', '5411']) then
       begin
       if (AICFOP = '2403') or (AICFOP = '2401')  then
           AICFOP := '6411' else AICFOP := '6202';
       end;


        frmCadNFe.qryItem.Edit;
         frmCadNFe.qryItemCFOP.AsString := AICFOP;
        if (AICFOP = '6202') or (AICFOP = '5202') then
         begin

         if Dados.qryEmpresaCRT.AsInteger <> 3 then
         frmCadNFe.qryItemCSOSN.AsString := '900';
         frmCadNFe.qryItemBASE_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('BASE_ICMS').AsFloat;
         frmCadNFe.qryItemALIQ_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('ALIQ_ICMS').AsFloat;
         frmCadNFe.qryItemVALOR_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('VL_ICMS').AsFloat;
         end
         else
         begin
          if Dados.qryEmpresaCRT.AsInteger <> 3 then
          frmCadNFe.qryItemCSOSN.AsString := '500';
          frmCadNFe.qryItemBASE_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('BASE_ICMS').AsFloat;
          frmCadNFe.qryItemALIQ_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('ALIQ_ICMS').AsFloat;
          frmCadNFe.qryItemVALOR_ICMS.AsFloat :=  Dados.qryConsulta.FieldByName('VL_ICMS').AsFloat;
         end;

        frmCadNFe.qryItemINFO_ADICIONAIS.AsString := 'COD FORNECEDOR : '
                                                    + Dados.qryConsulta.FieldByName('FK_PRODUTO_FORN').AsString;

        frmCadNFe.qryItem.Post;
        dados.qryConsulta.Next;
        frmCadNFe.qryItem.Next;
      end;
    end;
    Dados.qryExecute.Close;
    Dados.qryExecute.SQL.Clear;
    Dados.qryExecute.SQL.Text := 'DELETE FROM NFE_REFERENCIA WHERE FK_NFE = ' +  ANumeroNFE;
    Dados.qryExecute.ExecSQL;

    if not (frmCadNFe.dsReferencia.DataSet.State in dsEditModes) then
    frmCadNFe.dsReferencia.DataSet.Edit;
    frmCadNFe.dsReferencia.DataSet.FieldByName('FK_NFE').AsInteger := StrToInt(ANumeroNFE);
    frmCadNFe.dsReferencia.DataSet.FieldByName('REFERENCIA').AsString := AChaveNFE;
    frmCadNFe.dsReferencia.DataSet.Post;
    Dados.Conexao.Commit;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnDevCompra.Enabled := True;
  end;
end;

procedure TfrmImportarNFe.btnDevVendaClick(Sender: TObject);
var
  vitem: integer;
  qtd: real;
begin
  try
    btnDevVenda.Enabled := false;
    if Trim(edtNumero.Text) = '' then
    begin
      ShowMessage('Digite o número da Devolução de Venda');
      exit;
    end;

    qryDevVenda.Close;
    qryDevVenda.Params[0].Value := edtNumero.Text;;
    qryDevVenda.Open;

    qryItensDevVenda.Close;
    qryItensDevVenda.Params[0].Value := qryDevVendaCODIGO.Value;
    qryItensDevVenda.Open;

    if qryDevVenda.IsEmpty then
    begin
      ShowMessage('Devolução de Venda não está Fechada ou não existe!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmcadnfe.qryVendaFINALIDADE.Value :='3';
    frmCadNFe.qryVendaFK_VENDEDOR.Value := 1;
    frmCadNFe.qryVendaID_CLIENTE.Value := qryDevVendaFK_CLIENTE.Value;
    frmCadNFe.qryVendaDESCONTO.Value := 0;
    frmcadnfe.qryVendaMOVIMENTO.Value :='E';
    frmCadNFe.qryVenda.Post;
    dados.Conexao.Commit;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryItensDevVenda.First;
    while not qryItensDevVenda.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value :=
        qryItensDevVendaFK_PRODUTO.AsInteger;
      dados.qryConsulta.Open;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryItensDevVendaFK_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.AsFloat := qryItensDevVendaQTD.AsFloat;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.AsFloat := qryItensDevVendaPRECO.AsFloat;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;

      frmCadNFe.qryItemEVENDA.AsString := 'S';

      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryItensDevVenda.Next;
    end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnDevCompra.Enabled := true;
  end;


end;

procedure TfrmImportarNFe.btnImportaNFCeClick(Sender: TObject);
var
  vitem: integer;
  qtd: real;
  vTotDesconto: real;
  sSerie: string;
  function EhNumero(N: string): Boolean;
  var
    I: Integer;
  begin
    Result  :=  True;
    for I := 1 to Length(N) do
      begin
        if not (N[I] in ['0'..'9']) then
          begin
            Result  :=  False;
            Break;
          end;
      end;
  end;
  function GetUFCliente(codCliente: Integer): string;
  var
    qry: TFDQuery;
  begin
    try
      qry :=  TFDQuery.Create(nil);
      qry.Connection  :=  dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select uf from pessoa '+
        'where codigo='+IntToStr(codCliente);
      qry.Open;
      Result  :=  qry.Fields[0].AsString;
    finally
      qry.Free;
    end;
  end;
begin
  try
    btnImportaNFCe.Enabled := false;

    if Trim(edtNumero.Text) = '' then
      exit;

    sSerie  :=  InputBox('Serie NFCe', 'Digite a Serie da NFCe.', '');

    if not EhNumero(sSerie) then
      begin
        ShowMessage('Serie invalida, digite uma Serie valida.');
        Exit;
      end;


    qryNFCe.Close;
    qryNFCe.Params[0].Value := edtNumero.Text;
    qryNFCe.Params[1].Value := sSerie;
    qryNFCe.Open;

    qryNFCe_Itens.Close;
    qryNFCe_Itens.Params[0].Value := qryNFCeCODIGO.Value;
    qryNFCe_Itens.Open;

    if qryNFCe.IsEmpty then
    begin
      ShowMessage('NFCe não está Transmitida ou não existe!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryNFCeFK_VENDEDOR.Value;
    if frmCadNFe.qryVendaID_CLIENTE.IsNull then
      frmCadNFe.qryVendaID_CLIENTE.Value := qryNFCeID_CLIENTE.Value;
    frmCadNFe.qryVendaDESCONTO.Value := qryNFCeDESCONTO.Value;
    frmCadNFe.qryVendaFINALIDADE.Value  :=  '1';
    if dados.qryEmpresaUF.AsString = GetUFCliente(frmCadNFe.qryVendaID_CLIENTE.Value) then
      frmCadNFe.qryVendaCFOP.Value := 5929
    else
      frmCadNFe.qryVendaCFOP.Value := 6929;
    frmCadNFe.qryVenda.Post;
    dados.Conexao.Commit;

    if not frmCadNFe.qryReferencia.Locate('REFERENCIA', qryNFCeCHAVE.AsString, []) then
      begin
        frmCadNFe.qryReferencia.Insert;
        frmCadNFe.qryReferenciaREFERENCIA.AsString  :=
          qryNFCeCHAVE.AsString;
        frmCadNFe.qryReferencia.Post;
      end;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryNFCe_Itens.First;
    while not qryNFCe_Itens.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value := qryNFCe_ItensID_PRODUTO.AsInteger;
      dados.qryConsulta.Open;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryNFCe_ItensID_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryNFCe_ItensQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryNFCe_ItensPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;
      frmCadNFe.qryItemEVENDA.AsString := 'S';
      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryNFCe_Itens.Next;
    end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnImportaNFCe.Enabled := true;
  end;
end;

procedure TfrmImportarNFe.btnNFCeClick(Sender: TObject);
var
  vitem: integer;
  qtd: real;
  vTotDesconto: real;
begin
  try
    btnNFCe.Enabled := false;
    if Trim(edtNumero.Text) = '' then
    begin
      try
        frmListaPedidoImpNFe := TfrmListaPedidoImpNFe.Create(Application);
        frmListaPedidoImpNFe.ShowModal;
        //Verificar Importação
        if frmListaPedidoImpNFe.bImporta then
          begin
            frmListaPedidoImpNFe.qryPV.Filtered :=  False;
            frmListaPedidoImpNFe.qryPV.Filter :=  'chk=''S'' ';
            frmListaPedidoImpNFe.qryPV.Filtered :=  True;
            if frmListaPedidoImpNFe.qryPV.RecordCount > 0 then
              begin
                vTotDesconto  :=  0;
                frmListaPedidoImpNFe.qryPV.First;
                if not(frmCadNFe.qryVenda.State in dsEditModes) then
                  frmCadNFe.qryVenda.Edit;
                frmCadNFe.qryVendaFK_VENDEDOR.Value := frmListaPedidoImpNFe.qryPVFK_VENDEDOR.Value;
                frmCadNFe.qryVendaID_CLIENTE.Value := frmListaPedidoImpNFe.qryPVID_CLIENTE.Value;
                frmCadNFe.qryVenda.Post;
                dados.Conexao.Commit;

                frmCadNFe.qryItem.First;
                while not frmCadNFe.qryItem.IsEmpty do
                  frmCadNFe.qryItem.Delete;
                dados.Conexao.Commit;

                while not frmListaPedidoImpNFe.qryPV.Eof do
                  begin
                    vTotDesconto  :=  vTotDesconto +
                      frmListaPedidoImpNFe.cdsPVDESCONTO.AsFloat;
                    //Passar Produtos
                    frmListaPedidoImpNFe.qryPV_Itens.First;
                    while not frmListaPedidoImpNFe.qryPV_Itens.Eof do
                    begin
                      dados.qryConsulta.Close;
                      dados.qryConsulta.SQL.Text :=
                        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
                        + ' where ' + ' pr.codigo=:id ';
                      dados.qryConsulta.Params[0].Value := frmListaPedidoImpNFe.qryPV_ItensID_PRODUTO.AsInteger;
                      dados.qryConsulta.Open;

                      frmCadNFe.qryItem.Last;
                      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
                      frmCadNFe.qryItem.Append;
                      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
                        'CODIGO', 'N', '', '');
                      frmCadNFe.qryItemID_PRODUTO.Value := frmListaPedidoImpNFe.qryPV_ItensID_PRODUTO.Value;
                      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
                      frmCadNFe.qryItemITEM.Value := vitem;
                      frmCadNFe.qryItemQTD.Value := frmListaPedidoImpNFe.qryPV_ItensQTD.Value;
                      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
                        ('UNIDADE').AsString;
                      frmCadNFe.qryItemPRECO.Value := frmListaPedidoImpNFe.qryPV_ItensPRECO.Value;;
                      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
                        frmCadNFe.qryItemPRECO.AsFloat;
                      frmCadNFe.qryItemEVENDA.AsString := 'S';
                      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
                        ('CODBARRA').AsString;

                      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat;
                      frmCadNFe.qryItem.Post;
                      dados.Conexao.Commit;
                      frmListaPedidoImpNFe.qryPV_Itens.Next;
                    end;
                    frmListaPedidoImpNFe.qryPV.Next;
                  end;
                if not(frmCadNFe.qryVenda.State in dsEditModes) then
                  frmCadNFe.qryVenda.Edit;
                frmCadNFe.qryVendaDESCONTO.Value := vTotDesconto;
                frmCadNFe.qryVenda.Post;
                dados.Conexao.Commit;

                Application.ProcessMessages;
                ShowMessage('Importação realizada com sucesso!');
                Close;
              end;
          end
        else
          ShowMessage('Nenhuma Venda Selecionada!');
      finally
        frmListaPedidoImpNFe.Release;
      end;
      //ShowMessage('Digite o número do Pedido');
      exit;
    end;

    qryPV.Close;
    qryPV.Params[0].Value := edtNumero.Text;;
    qryPV.Open;

    qryPV_Itens.Close;
    qryPV_Itens.Params[0].Value := qryPVCODIGO.Value;
    qryPV_Itens.Open;

    if qryPV.IsEmpty then
    begin
      ShowMessage('Venda não está Fechada ou não existe!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryPVFK_VENDEDOR.Value;
    frmCadNFe.qryVendaID_CLIENTE.Value := qryPVID_CLIENTE.Value;
    frmCadNFe.qryVendaDESCONTO.Value := qryPVDESCONTO.Value;
    frmCadNFe.qryVenda.Post;
    dados.Conexao.Commit;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryPV_Itens.First;
    while not qryPV_Itens.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value := qryPV_ItensID_PRODUTO.AsInteger;
      dados.qryConsulta.Open;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryPV_ItensID_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryPV_ItensQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryPV_ItensPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;
      frmCadNFe.qryItemEVENDA.AsString := 'S';
      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryPV_Itens.Next;
    end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnNFCe.Enabled := true;
  end;
end;

procedure TfrmImportarNFe.btnOrcamentoClick(Sender: TObject);
var
  vitem: integer;
  qtd: real;
begin
  try
    btnOrcamento.Enabled := false;

    if Trim(edtNumero.Text) = '' then
    begin
      //Se não tiver digitado nenhum numero mostrar a lista
      try
        frmListaImport := TfrmListaImport.Create(Application);
        frmListaImport.Tag  :=  2;
        frmListaImport.ShowModal;
      finally
        frmListaImport.Release;
        Close;
      end;
      //ShowMessage('Digite o número do Orçamento');
      exit;
    end;

    qryOrcamento.Close;
    qryOrcamento.Params[0].Value := edtNumero.Text;;
    qryOrcamento.Open;

    qryItemO.Close;
    qryItemO.Params[0].Value := qryOrcamentoCODIGO.Value;
    qryItemO.Open;

    if qryOrcamento.IsEmpty then
    begin
      ShowMessage('Orçamento não encontrado!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryOrcamentoFKVENDEDOR.Value;
    frmCadNFe.qryVendaID_CLIENTE.Value := qryOrcamentoFK_CLIENTE.Value;
    frmCadNFe.qryVenda.Post;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryItemO.First;
    while not qryItemO.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value := qryItemOFK_PRODUTO.AsInteger;
      dados.qryConsulta.Open;
      qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryItemOFK_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryItemOQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryItemOPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;

      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemEVENDA.AsString := 'S';

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat -
        frmCadNFe.qryItemDESCONTO.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryItemO.Next;
    end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnOrcamento.Enabled := true;
  end;
end;

procedure TfrmImportarNFe.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;
end;

procedure TfrmImportarNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    btnOrcamento.Click;
  if Key = vk_f3 then
    btnNFCe.Click;
  if Key = vk_f4 then
    btnDevCompra.Click;
  if Key = vk_f5 then
    btnDevVenda.Click;
  if Key = vk_f6 then
    btnOS.Click;
  if Key = VK_F7 then
    btnPedidoWeb.Click;
  if Key = VK_F8 then
    btnImportaNFCe.Click;
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmImportarNFe.ListarParaImportacao;
begin
  try
    frmListaImport := TfrmListaImport.Create(Application);
    frmListaImport.ShowModal;
  finally
    frmListaImport.Release;
  end;
end;

procedure TfrmImportarNFe.btnOSClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
begin
  try
    btnOS.Enabled := false;

    if Trim(edtNumero.Text) = '' then
    begin
      //Se não tiver digitado nenhum numero mostrar a lista
      try
        frmListaImport := TfrmListaImport.Create(Application);
        frmListaImport.Tag  :=  6;
        frmListaImport.ShowModal;
      finally
        frmListaImport.Release;
        Close;
      end;
      //ShowMessage('Digite o número da O. S.');
      exit;
    end;

    qryOS.Close;
    qryOS.Params[0].Value :=  StrToInt(edtNumero.Text);
    qryOS.Open;

    qryItemOS.Close;
    qryItemOS.Params[0].Value := qryOSCODIGO.Value;
    qryItemOS.Open;

    if qryOS.IsEmpty then
    begin
      ShowMessage('O. S. não encontrada!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryOSFK_ATENDENDE.Value;
    frmCadNFe.qryVendaID_CLIENTE.Value := qryOSFK_CLIENTE.Value;
    numero := qryOSCODIGO.AsString;
    frmCadNFe.qryVenda.Post;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryItemOS.First;
    while not qryItemOS.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value := qryItemOSFK_PRODUTO.AsInteger;
      dados.qryConsulta.Open;
      qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryItemOSFK_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryItemOSQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryItemOSPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;

      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemEVENDA.AsString := 'S';

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat -
        frmCadNFe.qryItemDESCONTO.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryItemOS.Next;
    end;
   

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnOS.Enabled := true;
  end;
end;

procedure TfrmImportarNFe.btnPedidoWebClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
begin
  try
    btnPedidoWeb.Enabled := false;

    if Trim(edtNumero.Text) = '' then
    begin
      {$REGION ''}
      //Se não tiver digitado nenhum numero mostrar a lista
//      try
//        frmListaImport := TfrmListaImport.Create(Application);
//        frmListaImport.Tag  :=  6;
//        frmListaImport.ShowModal;
//      finally
//        frmListaImport.Release;
//        Close;
//      end;
      {$ENDREGION}
      ShowMessage('Digite o número do Pedido Web');
      exit;
    end;

    qryPedidoWeb.Close;
    qryPedidoWeb.Params[0].Value :=  StrToInt(edtNumero.Text);
    qryPedidoWeb.Open;

    qryItensPedidoWeb.Close;
    qryItensPedidoWeb.Params[0].Value := qryPedidoWebCODIGO.Value;
    qryItensPedidoWeb.Open;

    if qryPedidoWeb.IsEmpty then
    begin
      ShowMessage('Pedido Web não encontrada!');
      exit;
    end;

    if not(frmCadNFe.qryVenda.State in dsEditModes) then
      frmCadNFe.qryVenda.Edit;
    frmCadNFe.qryVendaFK_VENDEDOR.Value := qryPedidoWebFK_VENDEDOR.Value;
    frmCadNFe.qryVendaID_CLIENTE.Value := qryPedidoWebFK_CLIENTE.Value;
    numero := qryPedidoWebCODIGO.AsString;
    frmCadNFe.qryVenda.Post;

    frmCadNFe.qryItem.First;
    while not frmCadNFe.qryItem.IsEmpty do
      frmCadNFe.qryItem.Delete;

    dados.Conexao.Commit;

    qryItensPedidoWeb.First;
    while not qryItensPedidoWeb.Eof do
    begin
      dados.qryConsulta.Close;
      dados.qryConsulta.SQL.Text :=
        ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
        + ' where ' + ' pr.codigo=:id ';
      dados.qryConsulta.Params[0].Value := qryItensPedidoWebFK_PRODUTO.AsInteger;
      dados.qryConsulta.Open;
      qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

      frmCadNFe.qryItem.Last;
      vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
      frmCadNFe.qryItem.Append;
      frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
        'CODIGO', 'N', '', '');
      frmCadNFe.qryItemID_PRODUTO.Value := qryItensPedidoWebFK_PRODUTO.Value;
      frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
      frmCadNFe.qryItemITEM.Value := vitem;
      frmCadNFe.qryItemQTD.Value := qryItensPedidoWebQTD.Value;
      frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
        ('UNIDADE').AsString;
      frmCadNFe.qryItemPRECO.Value := qryItensPedidoWebPRECO.Value;;
      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
        frmCadNFe.qryItemPRECO.AsFloat;

      frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
        ('CODBARRA').AsString;

      frmCadNFe.qryItemEVENDA.AsString := 'S';

      frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat -
        frmCadNFe.qryItemDESCONTO.AsFloat;
      frmCadNFe.qryItem.Post;
      dados.Conexao.Commit;
      qryItensPedidoWeb.Next;
    end;

    Application.ProcessMessages;
    ShowMessage('Importação realizada com sucesso!');
    Close;
  finally
    btnPedidoWeb.Enabled := true;
  end;
end;

end.
