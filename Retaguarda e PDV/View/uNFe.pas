unit uNFe;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, pcnConversao, pcnConversaoNFe, acbrUtil,
  blcksock, ACBrNFeNotasFiscais, System.math, acbrDFEUtil, ACBrDFeSSL,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask,
  Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrEnterTab, ACBrMail, ACBrBase,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrPosPrinter, ACBrDFeReport,
  ACBrDFeDANFeReport, ACBrNFeDANFeRLClass, ACBrDFe, ACBrNFe, Vcl.Grids,
  Vcl.DBGrids, uDMForte, Vcl.Menus, ACBrBoleto, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ACBrNFe.Classes;

type
  TfrmCadNFe = class(TForm)
    Panel3: TPanel;
    Label2: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    Label28: TLabel;
    DBComboBoxEh4: TDBComboBoxEh;
    DBEdit10: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    DBComboBoxEh5: TDBComboBoxEh;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    Label21: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBMemoEh1: TDBMemoEh;
    DBMemoEh2: TDBMemoEh;
    qryVenda: TFDQuery;
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
    qryVendaTTOTAL: TAggregateField;
    dsVenda: TDataSource;
    dsItem: TDataSource;
    qryItem: TFDQuery;
    qryVendaVIRTUAL_CFOP: TStringField;
    qryVendaVIRTUAL_CLIENTE: TStringField;
    qryVendaVIRTUAL_UF_CLIENTE: TStringField;
    qryVendaVIRTUAL_CNPF_CLIENTE: TStringField;
    qryVendaVIRTUAL_TRANSP: TStringField;
    qryVendaVIRTUAL_PLACA: TStringField;
    qryVendaVIRTUAL_RNTC: TStringField;
    qryVendaVIRTUAL_UFPLACA: TStringField;
    qrySoma: TFDQuery;
    QryFatura: TFDQuery;
    dsFatura: TDataSource;
    QryFaturaTTOTAL: TAggregateField;
    qryProduto: TFDQuery;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    qryVendaVIRTUAL_EMPRESA: TStringField;
    Label36: TLabel;
    qryClientes: TFDQuery;
    qryTransp: TFDQuery;
    Label37: TLabel;
    qryCFOP: TFDQuery;
    dsCFOP: TDataSource;
    ACBrMail1: TACBrMail;
    qryVendaVIRTUAL_EMAIL: TStringField;
    qryVendaCHAVE_NFE_REFERENCIADA: TStringField;
    DBEdit2: TDBEdit;
    Label38: TLabel;
    qryVendaNPEDIDO: TStringField;
    qryPesquisaNFe: TFDQuery;
    DBCheckBox1: TDBCheckBox;
    qryVendaCONSUMIDOR_FINAL: TStringField;
    qryVendaVIRTUAL_ISENTO: TStringField;
    TabSheet8: TTabSheet;
    TabSheet6: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    DBGridEh2: TDBGridEh;
    BtnGerar: TBitBtn;
    edtParcela: TEdit;
    DBEdit25: TDBEdit;
    DBGridEh3: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Label39: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label40: TLabel;
    qryVendaMOTIVO_CONTIGENCIA: TStringField;
    qryIBPT: TFDQuery;
    DBEdit36: TDBEdit;
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
    qryVendaBASE_ICMS_ST: TFMTBCDField;
    qryVendaVALOR_ICMS_ST: TFMTBCDField;
    qryVendaVFCPUFDEST: TFMTBCDField;
    qryVendaVICMSUFDEST: TFMTBCDField;
    qryVendaVICMSUFREMET: TFMTBCDField;
    qryVendaOUTROS: TFMTBCDField;
    qryVendaPESOB: TFMTBCDField;
    qryVendaPESOL: TFMTBCDField;
    qryVendaTRIB_MUN: TFMTBCDField;
    qryVendaTRIB_EST: TFMTBCDField;
    qryVendaTRIB_FED: TFMTBCDField;
    qryVendaTRIB_IMP: TFMTBCDField;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    qryItemCODIGO: TIntegerField;
    qryItemFKNFE: TIntegerField;
    qryItemID_PRODUTO: TIntegerField;
    qryItemITEM: TSmallintField;
    qryItemCOD_BARRA: TStringField;
    qryItemNCM: TStringField;
    qryItemCFOP: TStringField;
    qryItemCST: TStringField;
    qryItemCSOSN: TStringField;
    qryItemTIPO: TStringField;
    qryItemQTD: TFMTBCDField;
    qryItemE_MEDIO: TFMTBCDField;
    qryItemPRECO: TFMTBCDField;
    qryItemTOTAL: TFMTBCDField;
    qryItemBASE_ICMS: TFMTBCDField;
    qryItemALIQ_ICMS: TFMTBCDField;
    qryItemVALOR_ICMS: TFMTBCDField;
    qryItemCST_COFINS: TStringField;
    qryItemBASE_COFINS_ICMS: TFMTBCDField;
    qryItemALIQ_COFINS_ICMS: TFMTBCDField;
    qryItemVALOR_COFINS_ICMS: TFMTBCDField;
    qryItemCST_PIS: TStringField;
    qryItemBASE_PIS_ICMS: TFMTBCDField;
    qryItemALIQ_PIS_ICMS: TFMTBCDField;
    qryItemVALOR_PIS_ICMS: TFMTBCDField;
    qryItemTRIB_MUN: TFMTBCDField;
    qryItemTRIB_EST: TFMTBCDField;
    qryItemTRIB_FED: TFMTBCDField;
    qryItemTRIB_IMP: TFMTBCDField;
    qryItemSITUACAO: TStringField;
    qryItemFLAG: TStringField;
    qryItemUNIDADE: TStringField;
    qryItemFRETE: TFMTBCDField;
    qryItemDESPESAS: TFMTBCDField;
    qryItemSEGURO: TFMTBCDField;
    qryItemDESCONTO: TFMTBCDField;
    qryItemBASE_IPI: TFMTBCDField;
    qryItemALIQ_IPI: TFMTBCDField;
    qryItemVALOR_IPI: TFMTBCDField;
    qryItemBASE_ICMS_ST: TFMTBCDField;
    qryItemVALOR_ICMS_ST: TFMTBCDField;
    qryItemVBCUFDEST: TFMTBCDField;
    qryItemVFCP: TFMTBCDField;
    qryItemPICMSUFDEST: TFMTBCDField;
    qryItemPICMSINTER: TFMTBCDField;
    qryItemPICMSINTERPART: TFMTBCDField;
    qryItemVFCPUFDEST: TFMTBCDField;
    qryItemVICMSUFDEST: TFMTBCDField;
    qryItemVICMSUFREMET: TFMTBCDField;
    qryItemCST_IPI: TStringField;
    qryItemOUTROS: TFMTBCDField;
    qryItemALIQ_ICMS_ST: TFMTBCDField;
    qryProdutoCODIGO: TIntegerField;
    qryProdutoDESCRICAO: TStringField;
    qryProdutoUNIDADE: TStringField;
    qryProdutoPR_VENDA: TFMTBCDField;
    qryProdutoTIPO: TStringField;
    qryProdutoCSTICMS: TStringField;
    qryProdutoCFOP: TStringField;
    qryProdutoCSOSN: TStringField;
    qryProdutoCEST: TStringField;
    qryProdutoALIQ_ICM: TCurrencyField;
    qryProdutoALIQ_IPI: TFMTBCDField;
    qryProdutoCSTIPI: TStringField;
    qryProdutoCSTE: TStringField;
    qryProdutoCSTS: TStringField;
    qryProdutoALIQ_PIS: TCurrencyField;
    qryProdutoALIQ_COF: TCurrencyField;
    qryProdutoFCP: TFMTBCDField;
    qryProdutoNCM: TStringField;
    qryProdutoNACIONALFEDERAL: TStringField;
    qryProdutoIMPORTADOSFEDERAL: TStringField;
    qryProdutoESTADUAL: TStringField;
    qryProdutoMUNICIPAL: TStringField;
    qryProdutoCODBARRA: TStringField;
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
    qryClientesEMAIL1: TStringField;
    qryClientesISENTO: TStringField;
    qryCFOPCODIGO: TIntegerField;
    qryCFOPDESCRICAO: TStringField;
    qryCFOPTIPO: TStringField;
    qryCFOPMOV_ES: TStringField;
    qryCFOPOPERACAO: TStringField;
    qryCFOPATIVO: TStringField;
    qryPesquisaNFeCODIGO: TIntegerField;
    qryIBPTCODIGO: TStringField;
    qryIBPTNACIONALFEDERAL: TStringField;
    qryIBPTIMPORTADOSFEDERAL: TStringField;
    qryIBPTESTADUAL: TStringField;
    qryIBPTMUNICIPAL: TStringField;
    qryTranspCODIGO: TIntegerField;
    qryTranspPESSOA: TStringField;
    qryTranspCNPJ: TStringField;
    qryTranspIE: TStringField;
    qryTranspNOME: TStringField;
    qryTranspAPELIDO: TStringField;
    qryTranspENDERECO: TStringField;
    qryTranspNUMERO: TStringField;
    qryTranspBAIRRO: TStringField;
    qryTranspCOD_CIDADE: TIntegerField;
    qryTranspCIDADE: TStringField;
    qryTranspUF: TStringField;
    qryTranspCEP: TStringField;
    qryTranspPLACA: TStringField;
    qryTranspUFPLACA: TStringField;
    qryTranspRNTC: TStringField;
    qryTranspATIVO: TStringField;
    qryTranspEMPRESA: TIntegerField;
    qryTranspRENAVAM: TStringField;
    qryTranspMOTORISTA: TStringField;
    qryTranspCPF_MOTORISTA: TStringField;
    QryFaturaCODIGO: TIntegerField;
    QryFaturaNUMERO: TStringField;
    QryFaturaDATA_VENCIMENTO: TDateField;
    QryFaturaVALOR: TFMTBCDField;
    QryFaturaFKNFE: TIntegerField;
    QryFaturaFKEMPRESA: TIntegerField;
    qrySomaSUBTOTAL: TFMTBCDField;
    qrySomaBIPI: TFMTBCDField;
    qrySomaBICMS: TFMTBCDField;
    qrySomaBPIS: TFMTBCDField;
    qrySomaBCOFINS: TFMTBCDField;
    qrySomaVLIPI: TFMTBCDField;
    qrySomaVLICMS: TFMTBCDField;
    qrySomaVLPIS: TFMTBCDField;
    qrySomaVLCOF: TFMTBCDField;
    qrySomaDESCONTO: TFMTBCDField;
    qrySomaDESPESAS: TFMTBCDField;
    qrySomaFRETE: TFMTBCDField;
    qrySomaSEGURO: TFMTBCDField;
    qrySomaTMUN: TFMTBCDField;
    qrySomaTEST: TFMTBCDField;
    qrySomaTFED: TFMTBCDField;
    qrySomaTIMP: TFMTBCDField;
    qrySomaVFCPUFDEST: TFMTBCDField;
    qrySomaVICMSUFDEST: TFMTBCDField;
    qrySomaVICMSUFREMET: TFMTBCDField;
    qrySomaBASE_ICMS_ST: TFMTBCDField;
    qrySomaVALOR_ICMS_ST: TFMTBCDField;
    qryItemVITUAL_CODBARRA: TStringField;
    qryItemVIRTUAL_ALIQ_COF: TExtendedField;
    qryItemVIRTUAL_ALIQ_PIS: TExtendedField;
    qryItemVIRTUAL_CST_S: TStringField;
    qryItemVIRTUAL_ALIQ_ICMS: TExtendedField;
    qryItemVIRTUAL_CSOSN: TStringField;
    qryItemVIRTUAL_CST: TStringField;
    qryItemVIRTUAL_UN: TStringField;
    qryItemVIRTUAL_PRECO: TExtendedField;
    qryItemVIRTUAL_PRODUTO: TStringField;
    qryItemVIRTUAL_FCP: TExtendedField;
    qryItemVIRTUAL_MVA: TExtendedField;
    qryItemVIRTUAL_REDUCAO: TExtendedField;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdTIPO: TStringField;
    qryProdCODBARRA: TStringField;
    qryProdREFERENCIA: TStringField;
    qryProdGRUPO: TIntegerField;
    qryProdUNIDADE: TStringField;
    qryProdULTFORN: TIntegerField;
    qryProdLOCALIZACAO: TStringField;
    qryProdALIQ_ICM: TCurrencyField;
    qryProdALIQ_PIS: TCurrencyField;
    qryProdALIQ_COF: TCurrencyField;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdMARGEM: TCurrencyField;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdQTD_ATUAL: TFMTBCDField;
    qryProdQTD_MIN: TFMTBCDField;
    qryProdE_MEDIO: TFMTBCDField;
    qryProdCSTICMS: TStringField;
    qryProdCSTE: TStringField;
    qryProdCSTS: TStringField;
    qryProdCSTIPI: TStringField;
    qryProdCSOSN: TStringField;
    qryProdNCM: TStringField;
    qryProdCOMISSAO: TCurrencyField;
    qryProdDESCONTO: TCurrencyField;
    qryProdFOTO: TBlobField;
    qryProdATIVO: TStringField;
    qryProdCFOP: TStringField;
    qryProdPR_CUSTO_ANTERIOR: TFMTBCDField;
    qryProdPR_VENDA_ANTERIOR: TFMTBCDField;
    qryProdULT_COMPRA: TIntegerField;
    qryProdULT_COMPRA_ANTERIOR: TIntegerField;
    qryProdPRECO_ATACADO: TFMTBCDField;
    qryProdQTD_ATACADO: TFMTBCDField;
    qryProdCOD_BARRA_ATACADO: TStringField;
    qryProdALIQ_IPI: TFMTBCDField;
    qryProdEMPRESA: TSmallintField;
    qryProdCEST: TStringField;
    qryProdGRADE: TStringField;
    qryProdEFISCAL: TStringField;
    qryProdPAGA_COMISSAO: TStringField;
    qryProdPESO: TFMTBCDField;
    qryProdCOMPOSICAO: TStringField;
    qryProdPRECO_PROMO_ATACADO: TFMTBCDField;
    qryProdPRECO_PROMO_VAREJO: TFMTBCDField;
    qryProdINICIO_PROMOCAO: TDateField;
    qryProdFIM_PROMOCAO: TDateField;
    qryProdESTOQUE_INICIAL: TFMTBCDField;
    qryProdPR_VENDA_PRAZO: TFMTBCDField;
    qryProdPRECO_VARIAVEL: TStringField;
    qryProdAPLICACAO: TStringField;
    qryProdREDUCAO_BASE: TFMTBCDField;
    qryProdMVA: TFMTBCDField;
    qryProdFCP: TFMTBCDField;
    qryProdPRODUTO_PESADO: TStringField;
    qryProdSERVICO: TStringField;
    qryProdDESCRICAO: TStringField;
    qryProdDT_CADASTRO: TDateField;
    qryProdPR_CUSTO2: TFMTBCDField;
    qryProdPERC_CUSTO: TFMTBCDField;
    qryProdTOTAL_COMPRA: TFMTBCDField;
    qryProdTOTAL_VENDA: TFMTBCDField;
    qryProdGRUPO_SL: TStringField;
    qryProdFORNECEDOR_SL: TStringField;
    DBComboBoxEh2: TDBComboBoxEh;
    Label8: TLabel;
    DBComboBoxEh3: TDBComboBoxEh;
    Label43: TLabel;
    GroupBox1: TGroupBox;
    Label44: TLabel;
    DBComboBoxEh6: TDBComboBoxEh;
    Label45: TLabel;
    DBEdit8: TDBEdit;
    Label46: TLabel;
    DBComboBoxEh7: TDBComboBoxEh;
    Label47: TLabel;
    DBEdit37: TDBEdit;
    qryVendaVFCP: TFMTBCDField;
    qryVendaINDPAG: TSmallintField;
    qryVendaTPINTEGRA: TSmallintField;
    qryVendaCNPJ_CARTAO: TStringField;
    qryVendaNUMERO_AUTORIZACAO: TStringField;
    qryVendaTPBANDEIRA: TSmallintField;
    qryVendaTPPAG: TSmallintField;
    qryItemGERA_ES: TStringField;
    qryProdutoCFOP_EXTERNO: TIntegerField;
    qryProdCFOP_EXTERNO: TIntegerField;
    qryItemVIRTUAL_CFOPI: TStringField;
    qryItemVIRTUAL_CFOPE: TStringField;
    qryItemINFO_ADICIONAIS: TStringField;
    qryItemVICMSDESON: TFMTBCDField;
    qryItemMOTDESICMS: TSmallintField;
    DBText2: TDBText;
    qryItemVIRTUAL_MOTIVO: TStringField;
    qryItemALIQ_DESONERACAO: TFMTBCDField;
    qryVendaTOTAL_DESONERACAO: TFMTBCDField;
    DBEdit26: TDBEdit;
    Label10: TLabel;
    qrySomaDESONERACAO: TFMTBCDField;
    qryNatureza: TFDQuery;
    Label48: TLabel;
    TabSheet9: TTabSheet;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label9: TLabel;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBEdit38: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qryItemNPEDIDO: TIntegerField;
    TabSheet10: TTabSheet;
    TabSheet7: TTabSheet;
    Label42: TLabel;
    DBEdit35: TDBEdit;
    qryReferencia: TFDQuery;
    dsReferencia: TDataSource;
    qryReferenciaCODIGO: TIntegerField;
    qryReferenciaFK_NFE: TIntegerField;
    qryReferenciaREFERENCIA: TStringField;
    qryVendaCNF: TStringField;
    qryItemEVENDA: TStringField;
    DBEdit9: TDBEdit;
    qryProdCSOSN_EXTERNO: TStringField;
    qryProdCST_EXTERNO: TStringField;
    qryProdALIQ_ICMS_EXTERNO: TFMTBCDField;
    qryProdutoCST_EXTERNO: TStringField;
    qryProdutoCSOSN_EXTERNO: TStringField;
    qryProdutoALIQ_ICMS_EXTERNO: TFMTBCDField;
    Label41: TLabel;
    DBEdit39: TDBEdit;
    qryItemCOD_PROD_ANP_COMB: TStringField;
    qryItemDESC_ANP_COMB: TStringField;
    qryItemUF_CON_COMB: TStringField;
    pnlCFOPComb: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit40: TDBEdit;
    Label51: TLabel;
    DBEdit41: TDBEdit;
    DBComboBoxEh8: TDBComboBoxEh;
    Label52: TLabel;
    btnSairComb: TButton;
    btnConsCliFor: TSpeedButton;
    QryFaturaPATH_PDF_BOLETO: TStringField;
    btnGerarBoleto: TBitBtn;
    PopupMenu: TPopupMenu;
    miGerarBoleto: TMenuItem;
    miImprimirBoleto: TMenuItem;
    QryFaturaBOLETO_GERADO: TStringField;
    qryItemBASE_DESONERACAO: TBCDField;
    Panel2: TPanel;
    cxTransmitir: TcxButton;
    cxImportar: TcxButton;
    cxSair: TcxButton;
    cxGravar: TcxButton;
    cxImprimir: TcxButton;
    cxProdutos: TcxButton;
    cxPessoas: TcxButton;
    cxTransp: TcxButton;
    DBEdit42: TDBEdit;
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure qryVendaAfterOpen(DataSet: TDataSet);
    procedure qryItemBeforeInsert(DataSet: TDataSet);
    procedure qryVendaAfterPost(DataSet: TDataSet);
    procedure qryVendaAfterDelete(DataSet: TDataSet);
    procedure qryItemAfterDelete(DataSet: TDataSet);
    procedure qryItemAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure qryItemNewRecord(DataSet: TDataSet);
    procedure qryItemID_PRODUTOChange(Sender: TField);
    procedure qryItemALIQ_ICMSValidate(Sender: TField);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryVendaDESCONTOChange(Sender: TField);
    procedure qryVendaCalcFields(DataSet: TDataSet);
    procedure QryFaturaAfterPost(DataSet: TDataSet);
    procedure QryFaturaAfterDelete(DataSet: TDataSet);
    procedure BtnGerarClick(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2Enter(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure dsVendaDataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbEmpresaEnter(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure qryItemCFOPValidate(Sender: TField);
    procedure DBLookupComboboxEh3Exit(Sender: TObject);
    procedure qryVendaBeforePost(DataSet: TDataSet);
    procedure DBLookupComboboxEh4Enter(Sender: TObject);
    procedure DBLookupComboboxEh4Exit(Sender: TObject);
    procedure DBLookupComboboxEh3Enter(Sender: TObject);
    procedure qryItemBeforePost(DataSet: TDataSet);
    procedure qryVendaNUMEROValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure qryVendaAfterEdit(DataSet: TDataSet);
    procedure qryItemAfterEdit(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure qryVendaAfterInsert(DataSet: TDataSet);
    procedure qryItemAfterInsert(DataSet: TDataSet);
    procedure DBComboBoxEh4Exit(Sender: TObject);
    procedure DBComboBoxEh4Enter(Sender: TObject);
    procedure DBComboBoxEh5Exit(Sender: TObject);
    procedure DBComboBoxEh5Enter(Sender: TObject);
    procedure DBComboBoxEh4KeyPress(Sender: TObject; var Key: Char);
    procedure qryVendaNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure qryItemBeforeEdit(DataSet: TDataSet);
    procedure qryItemBeforeDelete(DataSet: TDataSet);
    procedure QryFaturaNewRecord(DataSet: TDataSet);
    procedure QryFaturaBeforeEdit(DataSet: TDataSet);
    procedure QryFaturaAfterInsert(DataSet: TDataSet);
    procedure PageControl2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryReferenciaNewRecord(DataSet: TDataSet);
    procedure qryReferenciaAfterPost(DataSet: TDataSet);
    procedure qryItemCFOPChange(Sender: TField);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure btnSairCombClick(Sender: TObject);
    procedure btnSairCombEnter(Sender: TObject);
    procedure btnSairCombExit(Sender: TObject);
    procedure btnConsCliForClick(Sender: TObject);
    procedure btnGerarBoletoClick(Sender: TObject);
    procedure miGerarBoletoClick(Sender: TObject);
    procedure miImprimirBoletoClick(Sender: TObject);
    procedure QryFaturaCalcFields(DataSet: TDataSet);
    procedure cxGravarClick(Sender: TObject);
    procedure cxTransmitirClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxImportarClick(Sender: TObject);
    procedure cxProdutosClick(Sender: TObject);
    procedure cxPessoasClick(Sender: TObject);
    procedure cxTranspClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxPreviewClick(Sender: TObject);
    procedure DBEdit42Change(Sender: TObject);
    procedure qryItemPRECOValidate(Sender: TField);
  private
    vSql: string;
    QuantidadeAnterior: extended;
    procedure CalculaTotais;
    procedure GerarNFCe(NumNFe: String);
    procedure estado;
    function ValidaNegocios: boolean;
    procedure EnviarEmal(email: string);
    procedure RatearItens;
    procedure CalculaLeiTransparecia;
    procedure ConfiguraNFe;
    procedure CalculaCombatePobreza;
    procedure CalculaST;
    procedure NaturezaOperacao;
    procedure sTransmitida;
    procedure sCancelada;
    procedure sDenegada;
    procedure sDuplicidade;
    procedure sInutilizada;
    procedure sDenegado;
    procedure Renumerar;
    function RetornaMaiorItem(Id: Integer): Integer;
    function Eh_CFOP_Combustivel(CFOP: string): Boolean;
    function PessoaFisica(CodCliente: integer): Boolean;
    procedure GerarBoleto;
    procedure DadosCombustivel(Codigo: Integer; out pGLP: Extended; out pGnn: Extended;
      out pGNi: Extended; out vPart: Extended);
    { Private declarations }
  public
    { Public declarations }
  end;

{$REGION 'FIELD RETIRADO DO qryItem'}
{
object qryItemVIRTUAL_NCM: TIntegerField
  FieldKind = fkLookup
  FieldName = 'VIRTUAL_NCM'
  LookupDataSet = qryProd
  LookupKeyFields = 'CODIGO'
  LookupResultField = 'NCM'
  KeyFields = 'ID_PRODUTO'
  Lookup = True
end
}
{$ENDREGION}

var
  frmCadNFe: TfrmCadNFe;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, ufrmStatus, uImportarNFe, uDadosWeb, uCadProduto, uCadPessoa,
  uCadTransp, uConsCliForNFe, uAPITelegramMensagem, uDmNFe;

procedure TfrmCadNFe.Renumerar;
var
  i: Integer;
begin
  if not qryItem.IsEmpty then
  begin
    i := 1;
    qryItem.First;
    while not qryItem.Eof do
    begin
      Dados.qryExecute.Close;
      Dados.qryExecute.SQL.Text :=
        'update nfe_detalhe set item=:item where codigo=:cod';
      Dados.qryExecute.Params[0].Value := i;
      Dados.qryExecute.Params[1].Value := qryItemCODIGO.Value;
      Dados.qryExecute.ExecSQL;
      Dados.Conexao.Commit;
      qryItem.Next;
      i := i + 1;
    end;
  end;
  qryItem.Refresh;
end;

procedure TfrmCadNFe.ConfiguraNFe;
var
  Ok: boolean;
begin
  Dados.qryConfig.Close;
  Dados.qryConfig.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
  Dados.qryConfig.Open;

  Dados.qryconsulta.Close;
  Dados.qryconsulta.SQL.Text :=
    'select CONTINGENCIA,PORTA,MODELO,NVIAS,IMPRIME,USAGAVETA from VENDAS_TERMINAIS where NOME='
    + QuotedStr(Dados.Getcomputer);
  Dados.qryconsulta.Open;

  if (Dados.qryConfig.IsEmpty) then
  begin
    ShowMessage('Configure os parametros para emissão do NFCe!');
    exit;
  end;

  with ACBrNFe.Configuracoes.Geral do // configurações gerais
  begin
    ExibirErroSchema := false;
    if Dados.qryConfigVISUALIZAERROSCHEMA.Value = 'S' then
      ExibirErroSchema := true;
    FormatoAlerta := Dados.qryConfigFORMATOALERTA.Value;
    FormaEmissao := TpcnTipoEmissao(teNormal);
    ModeloDF := TpcnModeloDF(moNFe);
    VersaoDF := TpcnVersaoDF(Dados.qryConfigVERSAONFE.Value);

    CamposFatObrigatorios := false;
    if Dados.qryConfigAMBIENTE.Value = 1 then // homollogação
      CamposFatObrigatorios := true;

    Salvar := false;
    SSLLib := TSSLLib(Dados.qryConfigTIPO_EMISSAO.Value);
    SSLCryptLib := TSSLCryptLib(Dados.qryConfigCRYPTLIB.AsInteger);
    SSLHttpLib := TSSLHttpLib(Dados.qryConfigHTTPLIB.AsInteger);
    SSLXmlSignLib := TSSLXmlSignLib(Dados.qryConfigXMLSIGN.AsInteger);
    Salvar := true;
  end;

  // certificado
  ACBrNFe.Configuracoes.Certificados.Senha :=
    Dados.qryConfigSENHACERTIFICADO.Value;
  ACBrNFe.Configuracoes.Certificados.ArquivoPFX :=
    Dados.qryConfigCAMINHO_CERTIFICADO.Value;
  ACBrNFe.Configuracoes.Certificados.NumeroSerie :=
    Dados.qryConfigNUMEROSERIECERTFICADO.Value;

  // ACBrNFe.SSL.CarregarCertificado;

  with ACBrNFe.Configuracoes.WebServices do // configura webservice
  begin
    UF := Dados.qryConfigUF.AsString;
    Ambiente := StrToTpAmb(Ok, IntToStr(Dados.qryConfigAMBIENTE.Value + 1));

    Visualizar := false;
    if Dados.qryConfigVISUALIZAR.Value = 'S' then
      Visualizar := true;

    Salvar := false;
    if Dados.qryConfigSALVARSOAP.Value = 'S' then
      Salvar := true;

    AjustaAguardaConsultaRet := false;
    if Dados.qryConfigAJUSTARAUTO.Value = 'S' then
      AjustaAguardaConsultaRet := true;

    if NaoEstaVazio(Dados.qryConfigAGUARDAR.AsString) then
      AguardarConsultaRet := ifThen(StrToInt(Dados.qryConfigAGUARDAR.AsString) <
        1000, StrToInt(Dados.qryConfigAGUARDAR.AsString) * 1000,
        StrToInt(Dados.qryConfigAGUARDAR.AsString))
    else
      Dados.qryConfigAGUARDAR.AsString := IntToStr(AguardarConsultaRet);

    if NaoEstaVazio(Dados.qryConfigTENTATIVAS.AsString) then
      Tentativas := StrToInt(Dados.qryConfigTENTATIVAS.AsString)
    else
      Dados.qryConfigTENTATIVAS.AsString := IntToStr(Tentativas);

    if NaoEstaVazio(Dados.qryConfigINTERVALO.AsString) then
      IntervaloTentativas := ifThen(StrToInt(Dados.qryConfigINTERVALO.AsString)
        < 1000, StrToInt(Dados.qryConfigINTERVALO.AsString) * 1000,
        StrToInt(Dados.qryConfigINTERVALO.AsString))
    else
      Dados.qryConfigINTERVALO.AsString :=
        IntToStr(ACBrNFe.Configuracoes.WebServices.IntervaloTentativas);

    ProxyHost := '';
    ProxyPort := '';
    ProxyUser := '';
    ProxyPass := '';
    ACBrNFe.SSL.SSLType := TSSLType(Dados.qryconfigSSL_TIPO.AsInteger);
  end;

  with ACBrNFe.Configuracoes.Arquivos do
  // configura caminho dos arqivos
  begin
    Salvar := false;
    SepararPorMes := true;
    AdicionarLiteral := false;
    if Dados.qryConfigLITERAL.Value = 'S' then
      AdicionarLiteral := true;

    EmissaoPathNFe := true;
    SalvarEvento := true;
    SepararPorCNPJ := true;
    SepararPorModelo := false;

    PathSalvar := Dados.qryConfigPATHSALVARNFE.Value;
    PathSchemas := Dados.qryConfigPATHSCHEMAS_NFE.Value;
    PathNFe := Dados.qryConfigPATHENVIADA_NFE.Value;
    PathInu := Dados.qryConfigPATHINUTI_NFE.Value;
    PathEvento := Dados.qryConfigPATHEVENTO_NFE.Value;
  end;

  if ACBrNFe.DANFE <> nil then
    if not Dados.qryConfigLOGOMARCA.IsNull then
      ACBrNFe.DANFE.logo := Dados.qryConfigLOGOMARCA.Value;

  ACBrNFeDANFeRL1.Sistema := Dados.qryParametroEMPRESA.Value + ' | ' +
    Dados.qryParametroFONE1.Value + ' ' + Dados.qryParametroFONE2.Value;
  ACBrNFeDANFeRL1.Site := Dados.qryParametroSITE.Value;
  ACBrNFeDANFeRL1.ImprimeNomeFantasia :=  True;
end;

procedure TfrmCadNFe.cxGravarClick(Sender: TObject);
begin
  PageControl2.ActivePageIndex := 0;

  if qryItem.IsEmpty then
  begin
    ShowMessage('Informe os itens da NF-e');
    exit;
  end;

  if (qryVendaFINALIDADE.Value <> '0') then
  begin
    if (trim(qryReferenciaREFERENCIA.Value) = '') or
      (qryReferenciaREFERENCIA.IsNull) then
    begin
      ShowMessage('Informe a chave referenciada');
      exit;
    end;
  end;

  try
    if (QryFatura.State IN dsEditmodes) then
      QryFatura.Post;

    if (qryItem.State IN dsEditmodes) then
      qryItem.Post;

    if (qryVenda.State IN dsEditmodes) then
      qryVenda.Post;

    RatearItens;
    CalculaTotais;

    cxGravar.Enabled := false;
  finally
    // btnGravar.Enabled := true;
  end;
  cxTransmitir.Enabled := true;
  Application.ProcessMessages;
end;

procedure TfrmCadNFe.cxImportarClick(Sender: TObject);
begin
   if Dados.qryEmpresaPUXA_CFOP_PRODUTO.Value <> 'S' then
  begin
    if qryVendaCFOP.IsNull then
    begin
      ShowMessage('Informe Natureza de Operação');
      exit;
    end;
  end;

  try
    frmImportarNFe := TfrmImportarNFe.Create(Application);
    frmImportarNFe.ShowModal;
  except
    frmImportarNFe.Release;
  end;
end;

procedure TfrmCadNFe.cxImprimirClick(Sender: TObject);
begin
  if (qryVendaSITUACAO.Value = '2') or (qryVendaSITUACAO.Value = '7') then
  begin
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);
    ACBrNFe.NotasFiscais.Imprimir;
    ACBrNFe.DANFE.PathPDF := Dados.qryConfigPATHPDF.Value;
    if (qryVendaSITUACAO.Value = '2') then
    begin
      ACBrNFe.NotasFiscais.ImprimirPDF;
      ACBrNFe.NotasFiscais.GravarXML();
    end;

  end;
end;

procedure TfrmCadNFe.cxPessoasClick(Sender: TObject);
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
    qryClientes.Close;
    qryClientes.Open;
    cxPessoas.Enabled := true;
    Dados.qryFornecedor.Close;
    Dados.qryFornecedor.Open;
  end;
end;

procedure TfrmCadNFe.cxPreviewClick(Sender: TObject);
begin
  qryItem.Refresh;
  DmNFe.ConfiguraNFe('NFe');
  DmNFe.ImpressoraA4NFe('NFe');
  PageControl2.ActivePageIndex := 0;
  DmNFe.ACBrNFe.NotasFiscais.Clear;
  GerarNFCe(qryVendaNUMERO.AsString);
  DmNFe.ACBrNFe.NotasFiscais.Imprimir;
  cxTransmitir.Enabled := true;
end;

procedure TfrmCadNFe.cxProdutosClick(Sender: TObject);
var
  idProduto: Integer;
begin
  try
    FrmCadProduto := TFrmCadProduto.Create(Application);
    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;
    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.ShowModal;
  finally
    FrmCadProduto.Release;
    qryProd.Close;
    qryProd.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
    qryProd.Open;
  end;
end;

procedure TfrmCadNFe.cxSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCadNFe.cxTransmitirClick(Sender: TObject);
var
  TotTrib: real;
begin
  qryItem.Close;
  qryItem.Open;

  PageControl2.ActivePageIndex := 0;
  Dados.qryEmpresa.Locate('CODIGO', qryVendaFKEMPRESA.Value, []);
  try
    try
      cxTransmitir.Enabled := false;
      Application.ProcessMessages;

      TotTrib := qryVendaTRIB_MUN.AsFloat + qryVendaTRIB_EST.AsFloat +
        qryVendaTRIB_FED.AsFloat + qryVendaTRIB_IMP.AsFloat;

      Dados.qryConfig.Close;
      Dados.qryConfig.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
      Dados.qryConfig.Open;

      if (Dados.qryConfig.IsEmpty) then
      begin
        ShowMessage('Configure os parametros para emissão da NF-e!');
        exit;
      end;

      if (Dados.qryConfigFORMAEMISSAO.Value <> 0) and
        (qryVendaSITUACAO.Value = '7') then
      begin
        ShowMessage('Nota já foi transmitida em modo de CONTINGÊNCIA!!!');
        exit;
      end;

      QryFatura.Close;
      QryFatura.Params[0].Value := qryVendaCODIGO.Value;
      QryFatura.Open;

      ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
      ACBrNFe.Configuracoes.Geral.VersaoDF :=
        TpcnVersaoDF(Dados.qryConfigVERSAONFE.Value);

      ACBrNFe.NotasFiscais.Clear;

      GerarNFCe(qryVendaNUMERO.AsString);

      // if not ValidaNegocios then
      // exit;

      if (qryVendaCHAVE.IsNull) or (trim(qryVendaCHAVE.AsString) = '') then
      begin
        qryVenda.Edit;
        qryVendaCHAVE.Value :=
          copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, 4, 100);
        qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
        qryVenda.Post;
        Dados.Conexao.Commit;
      end;

      if Dados.qryConfigFORMAEMISSAO.Value = 0 then
      begin
        //Pedir para Pre-Visualizar
        if
          Application.MessageBox('Deseja Visualizar a NFe?',
          'NFe', MB_YESNO+MB_ICONQUESTION)=IDYES
        then
          ACBrNFe.NotasFiscais.Imprimir;
        //Perguntar se Deseja Enviar
        if
          Application.MessageBox('Deseja Enviar a NFe?',
          'NFe', MB_YESNO+MB_ICONQUESTION)=IDNO
        then
          Exit;
        try
          //Teste
          //ACBrNFe.NotasFiscais.Items[0].GravarXML(ExtractFilePath(Application.ExeName) + 'TesteNFe.xml');
          if ACBrNFe.Enviar(qryVendaCODIGO.Value, false) then
          begin
            sTransmitida;
          end;
        except
          on e: exception do
          begin
            case ACBrNFe.WebServices.Enviar.cStat of
              101: // cancelada
                begin
                  ACBrNFe.Consultar;
                  sCancelada;
                end;
              110, 302, 303: // denegada
                begin
                  sDenegada;
                end;
              204, 539: // duplicidade
                begin
                  ACBrNFe.Consultar;
                  if ACBrNFe.WebServices.Consulta.cStat = 100 then
                    sTransmitida
                  else
                    sDuplicidade;
                end;
              563: // inutilizada
                begin
                  sInutilizada;
                end
            else
              begin
                case ACBrNFe.WebServices.Retorno.cStat of
                  101: // cancelada
                    begin
                      sCancelada;
                    end;
                  302, 303: // denegada
                    begin
                      sDenegado;
                    end;
                  204, 539: // duplicidade
                    begin
                      ACBrNFe.Consultar;
                      if ACBrNFe.WebServices.Consulta.cStat = 100 then
                        sTransmitida
                      else
                        sDuplicidade;
                    end;
                  563: // inutilizada
                    begin
                      sInutilizada;
                    end
                else
                  begin
                    ShowMessage('Retorno:' + ACBrNFe.WebServices.Retorno.cStat.
                      ToString + ' - ' + ACBrNFe.WebServices.Retorno.xMotivo +
                      sLineBreak + 'Erro:' + e.Message);
                    LogTelegramBot('TfrmCadNFe.btnTransmitir', e.Message, 'ERP Fiscal');
                    exit
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        ACBrNFe.NotasFiscais.Assinar;

        if not(qryVenda.State in dsEditmodes) then
          qryVenda.Edit;
        qryVendaCHAVE.Value :=
          copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, 4, 100);
        qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
        qryVendaSITUACAO.Value := '7';
        qryVenda.Post;

      end;
    except
      on e: exception do
        raise exception.Create(e.Message);
    end;
  finally
    if qryVendaSITUACAO.Value = '1' then
      cxTransmitir.Enabled := true;
    Application.ProcessMessages;
  end;

end;

procedure TfrmCadNFe.cxTranspClick(Sender: TObject);
begin
  try
    cxTransp.Enabled := false;
    FrmCadTransp := TFrmCadTransp.Create(Application);
    Dados.qryTransp.Close;
    Dados.qryTransp.Open;
    Dados.qryTransp.Insert;
    Dados.qryTranspCODIGO.Value := Dados.Numerador('TRANSPORTADORA', 'CODIGO',
      'N', '', '');
    Dados.qryTranspATIVO.Value := 'S';
    Dados.qryTranspEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
    Dados.qryTranspUF.Value := Dados.qryEmpresaUF.Value;
    Dados.qryTranspCOD_CIDADE.Value := Dados.qryEmpresaID_CIDADE.Value;
    Dados.qryTranspCIDADE.Value := Dados.qryEmpresaCIDADE.Value;
    FrmCadTransp.ShowModal;
  finally
    cxTransp.Enabled := false;
    FrmCadTransp.Release;
    qryTransp.Close;
    qryTransp.Open;
  end;
end;

function TfrmCadNFe.Eh_CFOP_Combustivel(CFOP: string): Boolean;
var
  Lista: TStringList;
  I: Integer;
begin
  try
    Result  :=  False;
    Lista :=  TStringList.Create;
    {$REGION 'LISTA DE CFOP'}
    Lista.Add('5652');
    Lista.Add('5653');
    Lista.Add('5654');
    Lista.Add('5655');
    Lista.Add('5656');
    Lista.Add('5657');
    Lista.Add('5658');
    Lista.Add('5659');
    Lista.Add('5660');
    Lista.Add('5661');
    Lista.Add('5662');
    Lista.Add('5663');
    Lista.Add('5664');
    Lista.Add('5665');
    Lista.Add('5666');
    Lista.Add('5667');
    Lista.Add('6651');
    Lista.Add('6652');
    Lista.Add('6653');
    Lista.Add('6654');
    Lista.Add('6655');
    Lista.Add('6656');
    Lista.Add('6657');
    Lista.Add('6658');
    Lista.Add('6659');
    Lista.Add('6660');
    Lista.Add('6661');
    Lista.Add('6662');
    Lista.Add('6663');
    Lista.Add('6664');
    Lista.Add('6665');
    Lista.Add('6666');
    Lista.Add('6667');
    Lista.Add('7651');
    Lista.Add('7654');
    Lista.Add('7667');
    {$ENDREGION}
    for I := 0 to Lista.Count -1 do
      begin
        if Lista[I] = CFOP then
          begin
            Result  :=  True;
            Break;
          end;
      end;
  finally
    Lista.Free;
  end;
end;

procedure TfrmCadNFe.EnviarEmal(email: string);
var
  mensagem: Tstrings;
  para: string;
begin
  if trim(Dados.qryEmpresaEMAIL.AsString) = '' then
    exit;

  try
    mensagem := TstringList.Create;
    mensagem.Add('SEGUE EM ANEXO XML e DANFE NFE nº ' +
      qryVendaNUMERO.AsString);
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromString(qryVendaXML.Value);

    ACBrMail1.FromName := qryVendaVIRTUAL_CLIENTE.AsString;
    ACBrMail1.Host := Dados.qryConfigEMAILHOST.AsString;
    ACBrMail1.Port := Dados.qryConfigEMAILPORTA.AsString;
    ACBrMail1.AddAddress(LowerCase(Dados.qryConfigEMAILUSER.AsString), '');
    ACBrMail1.Username := LowerCase(Dados.qryConfigEMAILUSER.AsString);
    ACBrMail1.From := LowerCase(Dados.qryConfigEMAILUSER.AsString);
    ACBrMail1.Password := Dados.Crypt('D', Dados.qryConfigEMAILSENHA.AsString);
    ACBrMail1.IsHTML := false;

    ACBrMail1.SetSSL := false;
    ACBrMail1.SetTLS := false;

    if Dados.qryConfigEMAILSSL.Value = 'S' then
    begin
      ACBrMail1.SetSSL := true;
      ACBrMail1.SetTLS := true;
    end;

    ACBrMail1.ReadingConfirmation := true;
    ACBrMail1.UseThread := false;

    if (qryVendaVIRTUAL_EMAIL.IsNull) or
      (trim(qryVendaVIRTUAL_EMAIL.AsString) = '') then
      para := LowerCase(Dados.qryEmpresaEMAIL.Value)
    else
      para := LowerCase(qryVendaVIRTUAL_EMAIL.Value);

    ACBrNFe.NotasFiscais.Items[0].EnviarEmail(para,
      'NFE-' + qryVendaVIRTUAL_CLIENTE.AsString, mensagem, true
      // Enviar PDF junto
      , nil // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
      , nil); // Lista de anexos - TStrings}

  finally
    mensagem.Free;
  end;
end;

procedure TfrmCadNFe.CalculaLeiTransparecia;
var
  vTributos, vImportado, vNacional, vEstadual, vMunicipal: extended;
begin
  vImportado := 0;
  vNacional := 0;
  vEstadual := 0;
  vMunicipal := 0;
  if qryVendaFINALIDADE.Value <> '3' then
  begin // dif devolucao

    if not(qryProdutoNCM.IsNull) or (qryProdutoNCM.Value <> '') then
    begin
      if qryProdutoIMPORTADOSFEDERAL.Value <> '' then
        vImportado :=
          strtofloat(StringReplace(qryProdutoIMPORTADOSFEDERAL.Value, '.',
          ',', []));
      if qryProdutoNACIONALFEDERAL.Value <> '' then
        vNacional := strtofloat(StringReplace(qryProdutoNACIONALFEDERAL.Value,
          '.', ',', []));
      if qryProdutoESTADUAL.Value <> '' then
        vEstadual := strtofloat(StringReplace(qryProdutoESTADUAL.Value, '.',
          ',', []));
      if qryProdutoMUNICIPAL.Value <> '' then
        vMunicipal := strtofloat(StringReplace(qryProdutoMUNICIPAL.Value, '.',
          ',', []));
    end;
  end;

  qryItemTRIB_IMP.Value := 0;
  qryItemTRIB_EST.Value := 0;
  qryItemTRIB_FED.Value := 0;
  qryItemTRIB_MUN.Value := 0;

  if vImportado > 0 then
    qryItemTRIB_IMP.AsString := FormatFloat('0.00',
      (qryItemTOTAL.AsFloat * vImportado) / 100);
  if vNacional > 0 then
    qryItemTRIB_FED.AsString := FormatFloat('0.00',
      (qryItemTOTAL.AsFloat * vNacional) / 100);
  if vEstadual > 0 then
    qryItemTRIB_EST.AsString := FormatFloat('0.00',
      (qryItemTOTAL.AsFloat * vEstadual) / 100);
  if vMunicipal > 0 then
    qryItemTRIB_MUN.AsString := FormatFloat('0.00',
      (qryItemTOTAL.AsFloat * vMunicipal) / 100);

end;

procedure TfrmCadNFe.CalculaCombatePobreza;
var
  vDifal: extended;
begin
  // Calulca fundo de combate a probreza

  qryItemVBCUFDEST.Value := 0;
  qryItemVFCP.Value := 0;
  qryItemPICMSUFDEST.Value := 0;
  qryItemPICMSINTER.Value := 0;
  qryItemPICMSINTERPART.Value := 0;
  qryItemVFCPUFDEST.Value := 0;
  qryItemVICMSUFDEST.Value := 0;
  qryItemVICMSUFREMET.Value := 0;

  if Dados.qryEmpresaRECOLHE_FCP.Value = 'S' then

    if Dados.qryEmpresaUF.Value <> qryVendaVIRTUAL_UF_CLIENTE.Value then
      if qryVendaCONSUMIDOR_FINAL.Value = 'S' then
        if qryVendaVIRTUAL_ISENTO.Value = '2' then
        begin

          vDifal := 0;
          if qryItemVIRTUAL_FCP.AsFloat > 0 then
          begin

            if (copy(qryItemCST.Value, 2, 2) = '00') or
              (copy(qryItemCST.Value, 2, 2) = '10') or
              (copy(qryItemCST.Value, 2, 2) = '20') or
              (copy(qryItemCST.Value, 2, 2) = '70') or
              (copy(qryItemCST.Value, 2, 2) = '51') or
              (copy(qryItemCST.Value, 2, 2) = '90') or
              (qryItemCSOSN.Value = '201') or (qryItemCSOSN.Value = '202') or
              (qryItemCSOSN.Value = '203') or (qryItemCSOSN.Value = '900') then

            begin

              qryItemVBCUFDEST.Value := qryItemBASE_ICMS.AsFloat;
              qryItemVFCP.Value := qryItemVIRTUAL_FCP.AsFloat;
              qryItemPICMSUFDEST.Value :=
                Dados.BuscaIcms('', qryVendaVIRTUAL_UF_CLIENTE.AsString,
                qryVendaVIRTUAL_UF_CLIENTE.AsString);
              qryItemPICMSINTER.Value :=
                Dados.BuscaIcms('', Dados.qryEmpresaUF.AsString,
                qryVendaVIRTUAL_UF_CLIENTE.AsString);
              qryItemPICMSINTERPART.Value :=
                Dados.qryEmpresaDIFAL_DESTINO.AsFloat;
              qryItemVFCPUFDEST.AsFloat :=
                SimpleRoundTo(qryItemVBCUFDEST.AsFloat *
                (qryItemVFCP.AsFloat / 100), -2);

              vDifal := SimpleRoundTo(qryItemVBCUFDEST.AsFloat *
                ((qryItemPICMSUFDEST.AsFloat - qryItemPICMSINTER.AsFloat) /
                100), -2);

              qryItemVICMSUFDEST.Value :=
                SimpleRoundTo(vDifal * (Dados.qryEmpresaDIFAL_DESTINO.AsFloat /
                100), -2);
              qryItemVICMSUFREMET.Value :=
                SimpleRoundTo(vDifal * (Dados.qryEmpresaDIFAL_ORIGEM.AsFloat /
                100), -2);
            end;

            if (copy(qryItemCST.Value, 2, 2) = '60') or
              (qryItemCSOSN.Value = '500') then
            begin

              qryItemVBCUFDEST.AsFloat := qryItemTOTAL.AsFloat;
              qryItemVFCP.Value := qryItemVIRTUAL_FCP.AsFloat;
              qryItemPICMSUFDEST.Value :=
                Dados.BuscaIcms('', Dados.qryEmpresaUF.AsString,
                qryVendaVIRTUAL_UF_CLIENTE.AsString);
              qryItemPICMSINTER.Value :=
                Dados.BuscaIcms('', Dados.qryEmpresaUF.AsString,
                qryVendaVIRTUAL_UF_CLIENTE.AsString);
              qryItemPICMSINTERPART.Value :=
                Dados.qryEmpresaDIFAL_DESTINO.AsFloat;
              qryItemVFCPUFDEST.AsFloat :=
                SimpleRoundTo(qryItemVBCUFDEST.AsFloat *
                (qryItemVFCP.AsFloat / 100), -2);

              vDifal := SimpleRoundTo(qryItemVBCUFDEST.AsFloat *
                ((qryItemPICMSUFDEST.AsFloat - qryItemPICMSINTER.AsFloat) /
                100), -2);

              qryItemVICMSUFDEST.Value :=
                SimpleRoundTo(vDifal * (Dados.qryEmpresaDIFAL_DESTINO.AsFloat /
                100), -2);
              qryItemVICMSUFREMET.Value :=
                SimpleRoundTo(vDifal * (Dados.qryEmpresaDIFAL_ORIGEM.AsFloat /
                100), -2);
            end;
          end;

        end;

end;

procedure TfrmCadNFe.CalculaST;
begin
  // calculo substuição tributária
  qryItemBASE_ICMS_ST.Value := 0;
  qryItemVALOR_ICMS_ST.Value := 0;

  if (copy(qryItemCST.Value, 2, 2) = '10') or
    (copy(qryItemCST.Value, 2, 2) = '30') or
    (qryItemCSOSN.Value = '202') then
  begin
    qryItemBASE_ICMS_ST.AsFloat :=
      SimpleRoundTo((qryItemTOTAL.AsFloat + qryItemVALOR_IPI.AsFloat +
      qryItemSEGURO.AsFloat + qryItemFRETE.AsFloat + qryItemOUTROS.AsFloat -
      qryItemDESCONTO.AsFloat) * (1 + (qryItemVIRTUAL_MVA.AsFloat / 100)), -2);

    qryItemVALOR_ICMS_ST.AsFloat :=
      SimpleRoundTo((qryItemBASE_ICMS_ST.AsFloat * (Dados.BuscaIcms('',
      Dados.qryEmpresaUF.AsString, qryVendaVIRTUAL_UF_CLIENTE.AsString) / 100))
      - qryItemVALOR_ICMS.AsFloat, -2);
  end;
end;

function TfrmCadNFe.RetornaMaiorItem(Id: Integer): Integer;
begin
  result := 1;

  Dados.qryconsulta.Close;
  Dados.qryconsulta.SQL.Clear;
  Dados.qryconsulta.SQL.Add
    ('select first 1 codigo, coalesce(max(total),0) total from NFE_DETALHE');
  Dados.qryconsulta.SQL.Add('where FKNFE=:cod');
  Dados.qryconsulta.SQL.Add('group by 1');
  Dados.qryconsulta.SQL.Add('order by 2 desc');
  Dados.qryconsulta.Params[0].Value := Id;
  Dados.qryconsulta.Open;

  result := Dados.qryconsulta.Fields[0].AsInteger;

end;

procedure TfrmCadNFe.RatearItens;
var
  pPercentual, vDiferenca, vSaldo, vTributos, vImportado, vNacional, vEstadual,
    vMunicipal: extended;
  vBase, vSomaFrete, vSomaSeguro, vSomaDespesa, vSomaDesconto: extended;
  vFrete, vSeguro, vDespesa, vDesconto: extended;
begin
  vSomaDesconto := 0;
  vSomaFrete := 0;
  vSomaSeguro := 0;
  vSomaDespesa := 0;

  vDesconto := 0;
  vFrete := 0;
  vSeguro := 0;
  vDespesa := 0;

  qryItem.First;
  while not qryItem.Eof do
  begin
    qryProduto.Close;
    qryProduto.Params[0].AsInteger := qryItemID_PRODUTO.AsInteger;
    qryProduto.Open;

    if not(qryItem.State in dsEditmodes) then
      qryItem.Edit;

    qryItemBASE_PIS_ICMS.Value := 0;
    qryItemALIQ_PIS_ICMS.Value := 0;
    qryItemVALOR_PIS_ICMS.Value := 0;
    qryItemVFCP.Value := 0;
    qryItemVFCPUFDEST.Value := 0;
    qryItemVICMSUFDEST.Value := 0;
    qryItemVICMSUFREMET.Value := 0;

    // calcula desconto

    pPercentual := qryVendaDESCONTO.AsFloat / qryVendaSUBTOTAL.AsFloat;
    vDesconto := pPercentual * qryItemTOTAL.AsFloat;
    qryItemDESCONTO.AsFloat := SimpleRoundTo(vDesconto, -2);

    vSomaDesconto := vSomaDesconto + qryItemDESCONTO.AsFloat;

    // calcula seguro

    pPercentual := qryVendaSEGURO.AsFloat / qryVendaSUBTOTAL.AsFloat;
    vSeguro := pPercentual * qryItemTOTAL.AsFloat;
    qryItemSEGURO.AsFloat := SimpleRoundTo(vSeguro, -2);

    vSomaSeguro := vSomaSeguro + qryItemSEGURO.AsFloat;

    // calcula outros

    pPercentual := qryVendaOUTROS.AsFloat / qryVendaSUBTOTAL.AsFloat;
    vDespesa := pPercentual * qryItemTOTAL.AsFloat;
    qryItemOUTROS.AsFloat := SimpleRoundTo(vDespesa, -2);
    vSomaDespesa := vSomaDespesa + qryItemOUTROS.AsFloat;

    // calcula frete

    pPercentual := qryVendaFRETE.AsFloat / qryVendaSUBTOTAL.AsFloat;
    vFrete := pPercentual * qryItemTOTAL.AsFloat;
    qryItemFRETE.AsFloat := SimpleRoundTo(vFrete, -2);
    vSomaFrete := vSomaFrete + qryItemFRETE.AsFloat;

    CalculaLeiTransparecia;
    CalculaCombatePobreza;
    CalculaST;

    qryItem.Post;
    Dados.Conexao.Commit;

    qryItem.Next;
    Application.ProcessMessages;
  end;

  // verifica se exite diferença entre itens e total
  qryItem.Locate('CODIGO', RetornaMaiorItem(qryVendaCODIGO.Value));

  qryItem.Edit;
  vDiferenca := qryVendaFRETE.AsFloat - vSomaFrete;

  if vDiferenca <> 0 then
    qryItemFRETE.Value := qryItemFRETE.AsFloat + vDiferenca;

  vDiferenca := qryVendaDESCONTO.AsFloat - vSomaDesconto;
  if vDiferenca <> 0 then
    qryItemDESCONTO.Value := qryItemDESCONTO.AsFloat + vDiferenca;

  vDiferenca := qryVendaOUTROS.AsFloat - vSomaDespesa;
  if vDiferenca <> 0 then
    qryItemOUTROS.Value := qryItemOUTROS.AsFloat + vDiferenca;

  vDiferenca := qryVendaSEGURO.AsFloat - vSomaSeguro;
  if vDiferenca <> 0 then
    qryItemSEGURO.Value := qryItemSEGURO.AsFloat + vDiferenca;

  qryItem.Post;
  Dados.Conexao.Commit;

end;

procedure TfrmCadNFe.ACBrNFeStatusChange(Sender: TObject);
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

procedure TfrmCadNFe.CalculaTotais;
begin
  try
    qryVenda.DisableControls;

    qrySoma.Close;
    qrySoma.Params[0].Value := qryVendaCODIGO.Value;
    qrySoma.Open;

    if not(qryVenda.State in dsEditmodes) then
      qryVenda.Edit;

    qryVendaSUBTOTAL.AsFloat := qrySomaSUBTOTAL.AsFloat;

    qryVendaBASE_IPI.AsFloat := qrySomaBIPI.AsFloat;
    qryVendaBASEICMS.AsFloat := qrySomaBICMS.AsFloat;
    qryVendaBASE_ICMS_ST.AsFloat := qrySomaBASE_ICMS_ST.AsFloat;
    qryVendaBASEICMSPIS.AsFloat := qrySomaBPIS.AsFloat;
    qryVendaBASEICMSCOF.AsFloat := qrySomaBCOFINS.AsFloat;
    qryVendaTOTAL_IPI.AsFloat := qrySomaVLIPI.AsFloat;
    qryVendaTOTALICMS.AsFloat := qrySomaVLICMS.AsFloat;
    qryVendaVALOR_ICMS_ST.AsFloat := qrySomaVALOR_ICMS_ST.AsFloat;
    qryVendaTOTALICMSPIS.AsFloat := qrySomaVLPIS.AsFloat;
    qryVendaTOTALICMSCOFINS.AsFloat := qrySomaVLCOF.AsFloat;
    qryVendaTOTAL_DESONERACAO.AsFloat := qrySomaDESONERACAO.AsFloat;

    qryVendaTOTAL.Value := (qryVendaSUBTOTAL.Value + qryVendaTOTAL_IPI.Value +
      qryVendaFRETE.Value + qryVendaOUTROS.Value + qryVendaSEGURO.Value +
      qryVendaVALOR_ICMS_ST.AsFloat) - qryVendaDESCONTO.Value -
      qryVendaTOTAL_DESONERACAO.AsFloat;

    qryVendaVFCPUFDEST.Value := qrySomaVFCPUFDEST.Value;
    qryVendaVICMSUFDEST.Value := qrySomaVICMSUFDEST.Value;
    qryVendaVICMSUFREMET.Value := qrySomaVICMSUFREMET.Value;

    qryVendaTRIB_MUN.Value := qrySomaTMUN.AsFloat;
    qryVendaTRIB_IMP.Value := qrySomaTIMP.AsFloat;
    qryVendaTRIB_EST.Value := qrySomaTEST.AsFloat;
    qryVendaTRIB_FED.Value := qrySomaTFED.AsFloat;

    qryVenda.Post;
  finally
    qryVenda.EnableControls;
  end;
end;

procedure TfrmCadNFe.cbEmpresaEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.cbEmpresaExit(Sender: TObject);
begin

  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;

  // qryClientes.Locate('codigo', qryVendaID_CLIENTE.Value, []);

  if qryVendaMOVIMENTO.Value = 'S' then
  begin
    if (qryVendaVIRTUAL_UF_CLIENTE.Value = Dados.qryEmpresaUF.Value) then
      if (copy(qryVendaCFOP.AsString, 1, 1) <> '5') then
        qryVendaCFOP.Value := 5102

  end
  else
  begin
    if (copy(qryVendaCFOP.AsString, 1, 1) <> '6') then
      qryVendaCFOP.Value := 6102;
    qryVendaMOVIMENTO.Value := 'S';
  end;

  if length(TiraPontos(qryVendaVIRTUAL_CNPF_CLIENTE.Value)) = 11 then
    qryVendaCONSUMIDOR_FINAL.Value := 'S';
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadNFe.cbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(self.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCadNFe.GerarBoleto;
var
  dm: TdmForte;
  sPath, sErro: string;
  sCodBarras: string;
begin
  dm := dmForte;
  sErro :=  '';
  Dados.ZerarListaBoleto(dm);
  Dados.IncluiBoleto(dm, qryVendaID_CLIENTE.AsInteger,
    QryFaturaDATA_VENCIMENTO.AsDateTime,
    FormatFloat('#000000000', QryFaturaCODIGO.AsInteger),
    QryFaturaVALOR.AsFloat, 0, 0, 0, 0, '', '',
    '', '', '', '', qryVendaDATA_EMISSAO.AsDateTime, sCodBarras);
  if not dados.RegistraBoleto(dm) then
    begin
      ShowMessage('Falha ao registrar Boleto da '+sLineBreak+
            'Fatura: '+IntToStr(QryFaturaCODIGO.AsInteger));
      Exit;
    end;
  dados.GerarBoleto(dm, sPath, sErro, False);
  if Trim(sErro) = EmptyStr then
    begin
      if not (QryFatura.State in dsEditModes) then
        QryFatura.Edit;
      QryFaturaPATH_PDF_BOLETO.AsString :=  sPath;
      QryFatura.Post;
      dados.GravarNoGerenciadorBoleto(dm, 'NFeFatura', sPath, 0, QryFaturaCODIGO.AsInteger, sCodBarras);
    end
  else
    ShowMessage(sErro);
end;

procedure TfrmCadNFe.GerarNFCe(NumNFe: String);
Var
  idParcela: Integer;
  NotaF: NotaFiscal;
  Produto: TDetCollectionItem;
  Servico: TDetCollectionItem;
  Volume: TVolCollectionItem;
  Duplicata: TDupCollectionItem;
  Pagamento: TpagCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
  Referenciada: TNFrefCollectionItem;
  DI: TDICollectionItem;
  Adicao: TAdiCollectionItem;
  ProcReferenciado: TprocRefCollectionItem;
  Placa, vMsg: string;
  vICMSIntra, vICMSInter, vDifal: extended;
  //WS
  vTotProd: Double;
  vSobra: Double;
  vProdTemp: Double;
  vSubTotal: Double;
  iCodItem: Integer;
  vItemUn: Double;
  vQtdUn: Double;
  I:  Integer;
  bUsaCSOSN202: Boolean;
  pGLP,
  pGNn,
  pGNi,
  vPart: Extended;
begin
  vMsg := '';
  Placa := '';
  vTotProd  :=  0;
  vSobra    :=  0;
  vProdTemp :=  0;
  vSubTotal :=  0;
  iCodItem  :=  0;
  vItemUn   :=  0;
  vQtdUn    :=  0;
  pGLP      :=  0;
  pGNn      :=  0;
  pGNi      :=  0;
  vPart     :=  0;
  bUsaCSOSN202  :=  False;

  if length(qryVendaPLACA.Value) >= 7 then
    Placa := ' Placa Veículo:' + qryVendaPLACA.Value + '-' +
      qryVendaUFPLACA.Value;

  NotaF := ACBrNFe.NotasFiscais.Add;
  // Caso não seja preenchido será gerado um número aleatório pelo componente
  NotaF.NFe.Ide.natOp := copy(qryVendaVIRTUAL_CFOP.Value, 1, 30);
  NotaF.NFe.Ide.indFinal := cfNao;
  if qryVendaCONSUMIDOR_FINAL.AsString = 'S' then
    NotaF.NFe.Ide.indFinal := cfConsumidorFinal;

  NotaF.NFe.Ide.indPres := pcPresencial;
  NotaF.NFe.Ide.modelo := 55;
  NotaF.NFe.Ide.serie := qryVendaSERIE.AsInteger;
  NotaF.NFe.Ide.nNF := StrToInt(NumNFe);
  NotaF.NFe.Ide.cNF := qryVendaCNF.AsInteger;
  NotaF.NFe.Ide.dEmi := qryVendaDATA_EMISSAO.Value;
  NotaF.NFe.Ide.dSaiEnt := qryVendaDATA_SAIDA.Value;;
  NotaF.NFe.Ide.hSaiEnt := Now;
  NotaF.NFe.Ide.tpNF := tnEntrada;
  if qryVendaMOVIMENTO.Value = 'S' then
    NotaF.NFe.Ide.tpNF := tnSaida;
  NotaF.NFe.Ide.tpEmis := TpcnTipoEmissao(Dados.qryConfigFORMAEMISSAO.Value);
  NotaF.NFe.Ide.tpAmb := taHomologacao;
  if Dados.qryConfigAMBIENTE.Value = 0 then
    NotaF.NFe.Ide.tpAmb := taProducao;
  NotaF.NFe.Ide.verProc := '1.0'; // Versão do seu sistema
  NotaF.NFe.Ide.cUF := Dados.qryEmpresaID_UF.Value;
  NotaF.NFe.Ide.cMunFG := Dados.qryEmpresaID_CIDADE.Value;
  NotaF.NFe.Ide.idDest := doInterna;

  qryClientes.Locate('codigo', qryVendaID_CLIENTE.Value, []);
  if (qryClientesUF.Value <> Dados.qryEmpresaUF.Value) then
    NotaF.NFe.Ide.idDest := doInterestadual;
  NotaF.NFe.Ide.finNFe := TpcnFinalidadeNFe(qryVendaFINALIDADE.AsInteger);

  if Dados.qryConfigFORMAEMISSAO.Value <> 0 then
  begin
    NotaF.NFe.Ide.dhCont := date;
    NotaF.NFe.Ide.xJust := qryVendaMOTIVO_CONTIGENCIA.Value;
  end;

  if (qryVendaCFOP.Value = 5929) or (qryVendaCFOP.Value = 6929) then
  begin
    qryReferencia.First;
    while not qryReferencia.Eof do
    begin
      with NotaF.NFe.Ide.NFref.Add do
        refNFe := qryReferenciaREFERENCIA.Value;
      qryReferencia.Next;
    end;
  end
  else
  begin
    if (qryVendaFINALIDADE.Value = '1') then
    begin
      // nota complementar

      qryReferencia.First;
      while not qryReferencia.Eof do
      begin
        Referenciada := NotaF.NFe.Ide.NFref.Add;
        Referenciada.refNFe := qryReferenciaREFERENCIA.Value;
        qryReferencia.Next;
      end;

    end;

    if (qryVendaFINALIDADE.Value = '3') then // devolução
    begin
      qryReferencia.First;
      while not qryReferencia.Eof do
      begin
        with NotaF.NFe.Ide.NFref.Add do
        begin
          refNFe := qryReferenciaREFERENCIA.Value;
        end;
        qryReferencia.Next;
      end;

    end;
  end;

  if Assigned(ACBrNFe.DANFE) then
    NotaF.NFe.Ide.tpImp := ACBrNFe.DANFE.TipoDANFE;

  if TiraPontos(Dados.qryEmpresaCNPJ.AsString) = '00000000000000' then
    NotaF.NFe.Emit.CNPJCPF := '00000000000'
  else
    NotaF.NFe.Emit.CNPJCPF := TiraPontos(Dados.qryEmpresaCNPJ.AsString);

  NotaF.NFe.Emit.IE := TiraPontos(Dados.qryEmpresaIE.AsString);
  NotaF.NFe.Emit.xNome := Dados.qryEmpresaRAZAO.AsString;
  NotaF.NFe.Emit.xFant := Dados.qryEmpresaFANTASIA.AsString;

  NotaF.NFe.Emit.EnderEmit.fone := Dados.qryEmpresaFONE.AsString;
  NotaF.NFe.Emit.EnderEmit.CEP :=
    StrToInt(TiraPontos(Dados.qryEmpresaCEP.AsString));
  NotaF.NFe.Emit.EnderEmit.xLgr := Dados.qryEmpresaENDERECO.AsString;
  NotaF.NFe.Emit.EnderEmit.nro := Dados.qryEmpresaNUMERO.AsString;
  NotaF.NFe.Emit.EnderEmit.xCpl := Dados.qryEmpresaCOMPLEMENTO.AsString;
  NotaF.NFe.Emit.EnderEmit.xBairro := Dados.qryEmpresaBAIRRO.AsString;
  NotaF.NFe.Emit.EnderEmit.cMun := Dados.qryEmpresaID_CIDADE.AsInteger;;
  NotaF.NFe.Emit.EnderEmit.xMun := Dados.qryEmpresaCIDADE.AsString;
  NotaF.NFe.Emit.EnderEmit.UF := Dados.qryEmpresaUF.AsString;
  NotaF.NFe.Emit.EnderEmit.cPais := 1058;
  NotaF.NFe.Emit.EnderEmit.xPais := 'BRASIL';

  NotaF.NFe.Emit.IEST := '';
  NotaF.NFe.Emit.IM := Dados.qryEmpresaIM.AsString;;
  NotaF.NFe.Emit.CNAE := TiraPontos(Dados.qryEmpresaCNAE.AsString);
  case Dados.qryEmpresaCRT.Value of
    1:
      NotaF.NFe.Emit.CRT := crtSimplesNacional;
    2:
      NotaF.NFe.Emit.CRT := crtSimplesExcessoReceita;
    3:
      NotaF.NFe.Emit.CRT := crtRegimeNormal;
    4:
      NotaF.NFe.Emit.CRT := crtMEI;
  end;

  Dados.qryconsulta.Close;
  Dados.qryconsulta.SQL.Text := 'select * from pessoa where codigo=:cod';
  Dados.qryconsulta.Params[0].Value := qryVendaID_CLIENTE.Value;
  Dados.qryconsulta.Open;

  NotaF.NFe.Dest.CNPJCPF :=
    TiraPontos(Dados.qryconsulta.FieldByName('CNPJ').Value);
  NotaF.NFe.Dest.ISUF := '';
  NotaF.NFe.Dest.xNome := Dados.qryconsulta.FieldByName('RAZAO').Value;
  case Dados.qryconsulta.FieldByName('ISENTO').AsInteger of
    0:
      begin
        NotaF.NFe.Dest.indIEDest := inContribuinte;
        NotaF.NFe.Dest.IE :=
          TiraPontos(Dados.qryconsulta.FieldByName('IE').Value);
      end;
    1:
      begin
        NotaF.NFe.Dest.indIEDest := inIsento;
        NotaF.NFe.Dest.IE :=
          TiraPontos(Dados.qryconsulta.FieldByName('IE').Value);
      end;
    2:
      begin
        NotaF.NFe.Dest.indIEDest := inNaoContribuinte;
        NotaF.NFe.Dest.IE := '';
      end;
  end;
  NotaF.NFe.Dest.EnderDest.fone :=
    TiraPontos(Dados.qryconsulta.FieldByName('FONE1').AsString);
  NotaF.NFe.Dest.EnderDest.CEP :=
    StrToInt(TiraPontos(Dados.qryconsulta.FieldByName('CEP').AsString));
  NotaF.NFe.Dest.EnderDest.xLgr := Dados.qryconsulta.FieldByName
    ('ENDERECO').Value;
  NotaF.NFe.Dest.EnderDest.nro := Dados.qryconsulta.FieldByName('NUMERO').Value;
  NotaF.NFe.Dest.EnderDest.xCpl := '';
  NotaF.NFe.Dest.EnderDest.xBairro := Dados.qryconsulta.FieldByName
    ('BAIRRO').Value;
  NotaF.NFe.Dest.EnderDest.cMun := Dados.qryconsulta.FieldByName
    ('CODMUN').Value;
  NotaF.NFe.Dest.EnderDest.xMun := Dados.qryconsulta.FieldByName
    ('MUNICIPIO').Value;
  NotaF.NFe.Dest.EnderDest.UF := Dados.qryconsulta.FieldByName('UF').Value;
  NotaF.NFe.Dest.EnderDest.cPais := 1058;
  NotaF.NFe.Dest.EnderDest.xPais := 'BRASIL';
  if true then

    qryItem.First;

  while not qryItem.Eof do
  begin
    Produto := NotaF.NFe.Det.Add;
    // Número sequencial, para cada item deve ser incrementado
    Produto.Prod.nItem := qryItemITEM.Value;
    Produto.Prod.xPed := qryVendaNPEDIDO.AsString;
    Produto.Prod.cProd := qryItemID_PRODUTO.AsString;
    Produto.Prod.cEAN := 'SEM GTIN';
    if Dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
    begin
      if (qryItemCOD_BARRA.Value <> 'SEM GTIN') and
        (qryItemCOD_BARRA.Value <> '777') and
        (trim(qryItemCOD_BARRA.Value) <> '')
      then
        if Dados.ValidaGTIN(qryItemCOD_BARRA.Value) then
          Produto.Prod.cEAN := qryItemCOD_BARRA.Value
        else
          Produto.Prod.cEAN :=  'SEM GTIN';
    end;

    Produto.Prod.xProd := qryItemVIRTUAL_PRODUTO.Value;
    Produto.Prod.NCM := qryItemNCM.Value;
    // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
    Produto.Prod.EXTIPI := '';
    Produto.Prod.CFOP := qryItemCFOP.Value;
    Produto.Prod.uCom := qryItemUNIDADE.Value;
    Produto.Prod.qCom := qryItemQTD.AsFloat;
    Produto.Prod.vUnCom := qryItemPRECO.AsFloat;
    //Produto.Prod.vProd := qryItemTOTAL.AsFloat;
    Produto.Prod.vProd := Produto.Prod.qCom * Produto.Prod.vUnCom;
    Produto.Prod.nItemPed := qryItemNPEDIDO.AsString;
    //Valor do item (vProd) compoem o valor total da NF-e
    Produto.Prod.IndTot :=  TpcnIndicadorTotal.itSomaTotalNFe;

    //Passar valor total dos produtos para testar as Somatoria Total
    vTotProd  :=  vTotProd + Produto.Prod.vProd;

    //Testar se o Item é o com maior valor
    if SimpleRoundTo(vItemUn, -10) = 0 then
      begin
        iCodItem  :=  Produto.Prod.nItem;
        vItemUn :=  Produto.Prod.vProd;
        vQtdUn  :=  Produto.Prod.qCom;
      end
    else
      begin
        if SimpleRoundTo(Produto.Prod.vProd, -10) > SimpleRoundTo(vItemUn, -10) then
          begin
            iCodItem  :=  Produto.Prod.nItem;
            vItemUn :=  Produto.Prod.vProd;
            vQtdUn  :=  Produto.Prod.qCom;
          end;
      end;

    Produto.Prod.cEANTrib := 'SEM GTIN';
    if Dados.qryEmpresaINFORMAR_GTIN.Value = 'S' then
    begin
      if (qryItemCOD_BARRA.Value <> 'SEM GTIN') and
        (qryItemCOD_BARRA.Value <> '777') and
        (trim(qryItemCOD_BARRA.Value) <> '')
      then
        if Dados.ValidaGTIN(qryItemCOD_BARRA.Value) then
          Produto.Prod.cEANTrib := qryItemCOD_BARRA.Value
        else
          Produto.Prod.cEANTrib :=  'SEM GTIN';
        //Produto.Prod.cEANTrib := qryItemCOD_BARRA.Value;
    end;
    Produto.Prod.uTrib := qryItemUNIDADE.Value;
    Produto.Prod.qTrib := qryItemQTD.AsFloat;
    Produto.Prod.vUnTrib := qryItemPRECO.AsFloat;

    Produto.Prod.vOutro := qryItemOUTROS.AsFloat;
    Produto.Prod.vFrete := qryItemFRETE.AsFloat;
    Produto.Prod.vSeg := qryItemSEGURO.AsFloat;
    Produto.Prod.vDesc := qryItemDESCONTO.AsFloat;

    // - Tag para combustiveis 18/01/2021
    Produto.Prod.comb.cProdANP  :=  StrToIntDef(qryItemCOD_PROD_ANP_COMB.AsString, 0);
    Produto.Prod.comb.descANP   :=  qryItemDESC_ANP_COMB.AsString;
    Produto.Prod.comb.UFcons    :=  qryItemUF_CON_COMB.AsString;
    DadosCombustivel(qryItemID_PRODUTO.AsInteger, pGLP, pGNn, pGNi, vPart);
    Produto.Prod.comb.pGLP      :=  pGLP;
    Produto.Prod.comb.pGNn      :=  pGNn;
    Produto.Prod.comb.pGNi      :=  pGNi;
    Produto.Prod.comb.vPart     :=  vPart;

    qryProduto.Close;
    qryProduto.Params[0].Value := qryItemID_PRODUTO.Value;
    qryProduto.Open;

    Produto.Prod.CEST := qryProdutoCEST.Value;

    Produto.infAdProd := '';

    Produto.Imposto.vTotTrib := qryItemTRIB_IMP.AsFloat +
      qryItemTRIB_MUN.AsFloat + qryItemTRIB_EST.AsFloat +
      qryItemTRIB_FED.AsFloat;

    Produto.Imposto.ICMS.modBC := dbiValorOperacao;
    Produto.Imposto.ICMS.vBC := 0;
    Produto.Imposto.ICMS.pICMS := 0;
    Produto.Imposto.ICMS.vICMS := 0;

    Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
    Produto.Imposto.ICMS.pMVAST := 0;
    Produto.Imposto.ICMS.pRedBCST := 0;
    Produto.Imposto.ICMS.vBCST := 0;
    Produto.Imposto.ICMS.pICMSST := 0;
    Produto.Imposto.ICMS.vICMSST := 0;
    Produto.Imposto.ICMS.pRedBC := 0;

    Produto.Imposto.ICMS.vBCSTRet := 0;
    Produto.Imposto.ICMS.vICMSSTRet := 0;
    Produto.Imposto.ICMS.pST := 0;
    Produto.Imposto.ICMS.vICMSSubstituto := 0;

    if qryItemVICMSDESON.AsFloat > 0 then
    begin
      Produto.Imposto.ICMS.vICMSDeson := qryItemVICMSDESON.AsFloat;
      // deseoneração
      Produto.Imposto.ICMS.motDesICMS := TpcnMotivoDesoneracaoICMS
        (qryItemMOTDESICMS.Value);
    end;

    if (dados.qryEmpresaCRT.Value <> 1) and (dados.qryEmpresaCRT.Value <> 4) then          //Wagner - Upt 6

    begin
      // empresas que não são do simples nacional
      if copy(qryItemCST.Value, 2, 2) = '00' then
        Produto.Imposto.ICMS.CST := cst00;
      if copy(qryItemCST.Value, 2, 2) = '10' then
        Produto.Imposto.ICMS.CST := cst10;
      if copy(qryItemCST.Value, 2, 2) = '20' then
        Produto.Imposto.ICMS.CST := cst20;
      if copy(qryItemCST.Value, 2, 2) = '30' then
        Produto.Imposto.ICMS.CST := cst30;
      if copy(qryItemCST.Value, 2, 2) = '40' then
        Produto.Imposto.ICMS.CST := cst40;
      if copy(qryItemCST.Value, 2, 2) = '41' then
        Produto.Imposto.ICMS.CST := cst41;
      if copy(qryItemCST.Value, 2, 2) = '45' then
        Produto.Imposto.ICMS.CST := cst45;
      if copy(qryItemCST.Value, 2, 2) = '50' then
        Produto.Imposto.ICMS.CST := cst50;
      if copy(qryItemCST.Value, 2, 2) = '51' then
        Produto.Imposto.ICMS.CST := cst51;
      if copy(qryItemCST.Value, 2, 2) = '60' then
        Produto.Imposto.ICMS.CST := cst60;
      if copy(qryItemCST.Value, 2, 2) = '70' then
        Produto.Imposto.ICMS.CST := cst70;
      if copy(qryItemCST.Value, 2, 2) = '80' then
        Produto.Imposto.ICMS.CST := cst80;
      if copy(qryItemCST.Value, 2, 2) = '81' then
        Produto.Imposto.ICMS.CST := cst81;
      if copy(qryItemCST.Value, 2, 2) = '90' then
        Produto.Imposto.ICMS.CST := cst90;
    end;

    Dados.qryconsulta.Close;
    Dados.qryconsulta.SQL.Text := 'SELECT COD_BENEFICIO, ORIGEM, MOTIVO_DESONERACAO, COMBUSTIVEL, ANP, GLP, GNN, GNI, PESO_LIQ, DESCRICAO FROM PRODUTO WHERE CODIGO=:ID';
    Dados.qryconsulta.Params[0].Value := qryItemID_PRODUTO.Value;
    Dados.qryconsulta.Open;
    Produto.Prod.cBenef := Dados.qryconsulta.FieldByName('COD_BENEFICIO').AsString;
    if Dados.qryconsulta.FieldByName('COMBUSTIVEL').AsString = 'S' then
    begin
      Produto.Prod.comb.cProdANP := Dados.qryconsulta.FieldByName('ANP').AsInteger;
      Produto.Prod.comb.descANP := Dados.qryconsulta.FieldByName('DESCRICAO').AsString;
      Produto.Prod.comb.UFcons := NotaF.NFe.Dest.EnderDest.UF;
      Produto.Prod.comb.pGLP := Dados.qryconsulta.FieldByName('GLP').AsFloat;
      Produto.Prod.comb.pGNn := Dados.qryconsulta.FieldByName('GNN').AsFloat;
      Produto.Prod.comb.pGNi := Dados.qryconsulta.FieldByName('GNI').AsFloat;
      Produto.Prod.comb.vPart := Dados.qryconsulta.FieldByName('PESO_LIQ').AsFloat;
    end;

    case Dados.qryconsulta.FieldByName('ORIGEM').AsInteger of
      0:
        Produto.Imposto.ICMS.orig := oeNacional;
      1:
        Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
      2:
        Produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
      3:
        Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
      4:
        Produto.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
      5:
        Produto.Imposto.ICMS.orig :=
          oeNacionalConteudoImportacaoInferiorIgual40;
      6:
        Produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
      7:
        Produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70
    else
      Produto.Imposto.ICMS.orig := oeNacional;
    end;

    if (Dados.qryEmpresaCRT.Value = 1) or (Dados.qryEmpresaCRT.Value = 4) then         //wagner - upt6
    begin
      // empresas do simples nacional
      if qryItemCSOSN.Value = '101' then
        Produto.Imposto.ICMS.CSOSN := csosn101;
      if qryItemCSOSN.Value = '102' then
        Produto.Imposto.ICMS.CSOSN := csosn102;
      if qryItemCSOSN.Value = '103' then
        Produto.Imposto.ICMS.CSOSN := csosn103;
      if qryItemCSOSN.Value = '201' then
        Produto.Imposto.ICMS.CSOSN := csosn201;
      if qryItemCSOSN.Value = '202' then
        Produto.Imposto.ICMS.CSOSN := csosn202;
      if qryItemCSOSN.Value = '203' then
        Produto.Imposto.ICMS.CSOSN := csosn203;
      if qryItemCSOSN.Value = '300' then
        Produto.Imposto.ICMS.CSOSN := csosn300;
      if qryItemCSOSN.Value = '400' then
        Produto.Imposto.ICMS.CSOSN := csosn400;
      if qryItemCSOSN.Value = '500' then
        Produto.Imposto.ICMS.CSOSN := csosn500;
      if qryItemCSOSN.Value = '900' then
        Produto.Imposto.ICMS.CSOSN := csosn900;
    end;

    if qryItemALIQ_ICMS.Value > 0 then
    begin
      Produto.Imposto.ICMS.modBC := dbiValorOperacao;
      Produto.Imposto.ICMS.vBC := qryItemBASE_ICMS.AsFloat;
      Produto.Imposto.ICMS.pICMS := qryItemALIQ_ICMS.AsFloat;
      Produto.Imposto.ICMS.vICMS := qryItemVALOR_ICMS.AsFloat;
    end;

    if qryItemBASE_ICMS_ST.Value > 0 then
    begin
      Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
      Produto.Imposto.ICMS.pMVAST := qryItemVIRTUAL_MVA.AsFloat;
      Produto.Imposto.ICMS.pRedBCST := 0;
      Produto.Imposto.ICMS.vBCST := qryItemBASE_ICMS_ST.AsFloat;

      Produto.Imposto.ICMS.pICMSST :=
        Dados.BuscaIcms('', qryVendaVIRTUAL_UF_CLIENTE.AsString,
        qryVendaVIRTUAL_UF_CLIENTE.AsString);

      Produto.Imposto.ICMS.vICMSST := qryItemVALOR_ICMS_ST.AsFloat;

      Produto.Imposto.ICMS.vBCSTRet := qryItemBASE_ICMS_ST.AsFloat;
      Produto.Imposto.ICMS.vICMSSTRet := qryItemVALOR_ICMS_ST.AsFloat;
      Produto.Imposto.ICMS.pST := qryItemVIRTUAL_FCP.AsFloat +
        qryItemALIQ_ICMS.AsFloat;
      Produto.Imposto.ICMS.vICMSSubstituto := 0;

      Produto.Imposto.ICMS.pRedBC := 0;
    end;

    if qryItemVBCUFDEST.AsFloat > 0 then
    begin
      Produto.Imposto.ICMSUFDest.vBCUFDest := qryItemVBCUFDEST.AsFloat;
      Produto.Imposto.ICMSUFDest.vBCFCPUFDest := qryItemVBCUFDEST.AsFloat;
      Produto.Imposto.ICMSUFDest.pFCPUFDest := qryItemVFCP.AsFloat;
      Produto.Imposto.ICMSUFDest.pICMSUFDest := qryItemPICMSUFDEST.AsFloat;
      Produto.Imposto.ICMSUFDest.pICMSInter := qryItemPICMSINTER.AsFloat;
      Produto.Imposto.ICMSUFDest.pICMSInterPart :=
        qryItemPICMSINTERPART.AsFloat;
      Produto.Imposto.ICMSUFDest.vFCPUFDest := qryItemVFCPUFDEST.AsFloat;
      Produto.Imposto.ICMSUFDest.vICMSUFDest := qryItemVICMSUFDEST.AsFloat;
      Produto.Imposto.ICMSUFDest.vICMSUFRemet := qryItemVICMSUFREMET.AsFloat;
    end;

    with Produto.Imposto.IPI do
    begin
      if qryItemCST_IPI.Value = '00' then
        CST := ipi00;
      if qryItemCST_IPI.Value = '01' then
        CST := ipi01;
      if qryItemCST_IPI.Value = '02' then
        CST := ipi02;
      if qryItemCST_IPI.Value = '03' then
        CST := ipi03;
      if qryItemCST_IPI.Value = '04' then
        CST := ipi04;
      if qryItemCST_IPI.Value = '05' then
        CST := ipi05;
      if qryItemCST_IPI.Value = '49' then
        CST := ipi49;
      if qryItemCST_IPI.Value = '50' then
        CST := ipi50;
      if qryItemCST_IPI.Value = '51' then
        CST := ipi51;
      if qryItemCST_IPI.Value = '52' then
        CST := ipi52;
      if qryItemCST_IPI.Value = '53' then
        CST := ipi53;
      if qryItemCST_IPI.Value = '54' then
        CST := ipi54;
      if qryItemCST_IPI.Value = '55' then
        CST := ipi55;
      if qryItemCST_IPI.Value = '99' then
        CST := ipi99;
      clEnq := '999';
      CNPJProd := '';
      cSelo := '';
      qSelo := 0;
      cEnq := '';

      vBC := 0;
      qUnid := 0;
      vUnid := 0;
      pIPI := 0;
      vIPI := 0;

      if qryItemALIQ_IPI.AsFloat > 0 then
      begin
        vBC := qryItemBASE_IPI.AsFloat;
        qUnid := qryItemQTD.AsFloat;
        vUnid := qryItemPRECO.AsFloat;
        pIPI := qryItemALIQ_IPI.AsFloat;
        vIPI := qryItemVALOR_IPI.AsFloat;
      end;
    end;

    with Produto.Imposto.PIS do
    begin
      if qryItemCST_PIS.Value = '01' then
        CST := pis01;
      if qryItemCST_PIS.Value = '02' then
        CST := pis02;
      if qryItemCST_PIS.Value = '03' then
        CST := pis03;
      if qryItemCST_PIS.Value = '04' then
        CST := pis04;
      if qryItemCST_PIS.Value = '05' then
        CST := pis05;
      if qryItemCST_PIS.Value = '06' then
        CST := pis06;
      if qryItemCST_PIS.Value = '07' then
        CST := pis07;
      if qryItemCST_PIS.Value = '08' then
        CST := pis08;
      if qryItemCST_PIS.Value = '09' then
        CST := pis09;
      if qryItemCST_PIS.Value = '49' then
        CST := pis49;
      if qryItemCST_PIS.Value = '99' then
        CST := pis99;

      vBC := qryItemBASE_PIS_ICMS.AsFloat;
      pPIS := qryItemALIQ_PIS_ICMS.AsFloat;
      vPIS := qryItemVALOR_PIS_ICMS.AsFloat;
    end;

    with Produto.Imposto.COFINS do
    begin
      if qryItemCST_COFINS.Value = '01' then
        CST := cof01;
      if qryItemCST_COFINS.Value = '02' then
        CST := cof02;
      if qryItemCST_COFINS.Value = '03' then
        CST := cof03;
      if qryItemCST_COFINS.Value = '04' then
        CST := cof04;
      if qryItemCST_COFINS.Value = '05' then
        CST := cof05;
      if qryItemCST_COFINS.Value = '06' then
        CST := cof06;
      if qryItemCST_COFINS.Value = '07' then
        CST := cof07;
      if qryItemCST_COFINS.Value = '08' then
        CST := cof08;
      if qryItemCST_COFINS.Value = '09' then
        CST := cof09;
      if qryItemCST_COFINS.Value = '49' then
        CST := cof49;
      if qryItemCST_COFINS.Value = '99' then
        CST := cof99;

      vBC := qryItemBASE_COFINS_ICMS.AsFloat;
      pCOFINS := qryItemALIQ_COFINS_ICMS.AsFloat;
      vCOFINS := qryItemVALOR_COFINS_ICMS.AsFloat;
    end;

    if trim(qryItemINFO_ADICIONAIS.AsString) <> '' then
      Produto.infAdProd := qryItemINFO_ADICIONAIS.Value;


    if Produto.Imposto.ICMS.CSOSN = csosn202 then
      begin
        bUsaCSOSN202  :=  True;
        Produto.Imposto.ICMS.modBC := dbiValorOperacao;
        Produto.Imposto.ICMS.vBC := 0;
        Produto.Imposto.ICMS.pICMS := 0;
        Produto.Imposto.ICMS.vICMS := 0;
      end;
    qryItem.Next;
  end;

  NotaF.NFe.Total.ICMSTot.vBC := qryVendaBASEICMS.AsFloat;
  NotaF.NFe.Total.ICMSTot.vICMS := qryVendaTOTALICMS.AsFloat;
  NotaF.NFe.Total.ICMSTot.vBCST := qryVendaBASE_ICMS_ST.AsFloat;
  NotaF.NFe.Total.ICMSTot.vST := qryVendaVALOR_ICMS_ST.AsFloat;
  NotaF.NFe.Total.ICMSTot.vProd := qryVendaSUBTOTAL.AsFloat;
  NotaF.NFe.Total.ICMSTot.vFrete := qryVendaFRETE.AsFloat;
  NotaF.NFe.Total.ICMSTot.vSeg := qryVendaSEGURO.AsFloat;
  NotaF.NFe.Total.ICMSTot.vDesc := qryVendaDESCONTO.AsFloat;
  NotaF.NFe.Total.ICMSTot.vICMSDeson := qryVendaTOTAL_DESONERACAO.AsFloat;
  NotaF.NFe.Total.ICMSTot.vII := 0;
  NotaF.NFe.Total.ICMSTot.vIPI := qryVendaTOTAL_IPI.AsFloat;
  NotaF.NFe.Total.ICMSTot.vPIS := qryVendaTOTALICMSPIS.AsFloat;
  NotaF.NFe.Total.ICMSTot.vCOFINS := qryVendaTOTALICMSCOFINS.AsFloat;
  NotaF.NFe.Total.ICMSTot.vOutro := qryVendaOUTROS.AsFloat;
  NotaF.NFe.Total.ICMSTot.vNF := qryVendaTOTAL.AsFloat;


  if bUsaCSOSN202 then
    begin
      NotaF.NFe.Total.ICMSTot.vBC := 0;
      NotaF.NFe.Total.ICMSTot.vICMS := 0;
    end;

  // lei da transparencia de impostos
  NotaF.NFe.Total.ICMSTot.vTotTrib := 0;

  if qryVendaFINALIDADE.Value <> '3' then
  begin
    NotaF.NFe.Total.ICMSTot.vTotTrib := qryVendaTRIB_MUN.AsFloat +
      qryVendaTRIB_EST.AsFloat + qryVendaTRIB_FED.AsFloat +
      qryVendaTRIB_IMP.AsFloat;
  end;

  // partilha do icms e fundo de probreza
  if qryVendaVFCPUFDEST.AsFloat > 0 then
  begin
    NotaF.NFe.Total.ICMSTot.vFCPUFDest := qryVendaVFCPUFDEST.AsFloat;
    NotaF.NFe.Total.ICMSTot.vICMSUFDest := qryVendaVICMSUFDEST.AsFloat;
    NotaF.NFe.Total.ICMSTot.vICMSUFRemet := qryVendaVICMSUFREMET.AsFloat;
  end;

  Dados.qryconsulta.Close;
  Dados.qryconsulta.SQL.Text :=
    'select * from TRANSPORTADORA where codigo=:cod';
  Dados.qryconsulta.Params[0].Value := qryVendaID_TRANSPORTADOR.Value;
  Dados.qryconsulta.Open;

  NotaF.NFe.Transp.modFrete := TpcnModalidadeFrete
    (qryVendaTIPO_FRETE.AsInteger);

  if qryVendaID_TRANSPORTADOR.AsFloat <> Dados.qryConfigTRANSPORTADOR_PADRAO.AsFloat
  then
  begin
    NotaF.NFe.Transp.Transporta.CNPJCPF := Dados.qryconsulta.FieldByName
      ('CNPJ').Value;
    NotaF.NFe.Transp.Transporta.xNome := Dados.qryconsulta.FieldByName
      ('NOME').Value;
    if Dados.qryconsulta.FieldByName('PESSOA').AsString <> 'FÍSICA' then
      NotaF.NFe.Transp.Transporta.IE := Dados.qryconsulta.FieldByName
        ('IE').Value;
    NotaF.NFe.Transp.Transporta.xEnder := Dados.qryconsulta.FieldByName
      ('ENDERECO').Value;
    NotaF.NFe.Transp.Transporta.xMun := Dados.qryconsulta.FieldByName
      ('CIDADE').Value;
    NotaF.NFe.Transp.Transporta.UF := Dados.qryconsulta.FieldByName('UF').Value;
  end;

  if Dados.qryConfigUF.Value = 'BA' then
    NotaF.NFe.autXML.Add.CNPJCPF := '13937073000156';

  Volume := NotaF.NFe.Transp.Vol.Add;
  Volume.qVol := qryVendaQVOL.Value;
  Volume.esp := qryVendaESPECIE.Value;
  Volume.marca := qryVendaMARCA.Value;
  Volume.nVol := '';
  Volume.pesoL := qryVendaPESOL.AsFloat;
  Volume.pesoB := qryVendaPESOB.AsFloat;

  if qryVendaFINALIDADE.Value <> '3' then
  begin
    Pagamento := NotaF.NFe.pag.Add;
    Pagamento.indPag := TpcnIndicadorPagamento(qryVendaINDPAG.Value);
    Pagamento.tPag := TpcnFormaPagamento(qryVendaTPPAG.Value);

    case qryVendaTPPAG.Value of
      2 .. 3:
        begin
          Pagamento.tpIntegra := TtpIntegra(qryVendaTPINTEGRA.Value);
          Pagamento.CNPJ := qryVendaCNPJ_CARTAO.Value;
          Pagamento.tBand := TpcnBandeiraCartao(qryVendaTPBANDEIRA.Value);
          Pagamento.cAut := qryVendaNUMERO_AUTORIZACAO.Value;
        end;
    end;
  end
  else
  begin
    Pagamento := NotaF.NFe.pag.Add;
    Pagamento.tPag := fpSemPagamento;
    Pagamento.vPag := 0;
  end;

  if (qryVendaINDPAG.Value = 1) or (qryVendaINDPAG.Value = 2) then
  begin

    QryFatura.First;

    if not QryFatura.IsEmpty then
    begin
      NotaF.NFe.Cobr.Fat.nFat := qryVendaNUMERO.AsString;
      NotaF.NFe.Cobr.Fat.vOrig := qryVendaTOTAL.AsFloat;
      NotaF.NFe.Cobr.Fat.vDesc := 0;
      NotaF.NFe.Cobr.Fat.vLiq := qryVendaTOTAL.AsFloat;

      QryFatura.Last;
      QryFatura.First;

      idParcela := 1;
      while not QryFatura.Eof do
      begin
        Duplicata := NotaF.NFe.Cobr.Dup.Add;
        Duplicata.nDup := QryFaturaNUMERO.Value;
        Duplicata.dVenc := QryFaturaDATA_VENCIMENTO.Value;
        Duplicata.vDup := QryFaturaVALOR.AsFloat;
        QryFatura.Next;
      end;
      QryFatura.Refresh;
    end;

  end;

    //update 18/10/23
  if Dados.qryEmpresaRESPONSAVEL_TECNICO.Value = 'S' then
  begin

    Dados.qryParametro.Close;
    Dados.qryParametro.Open;

    NotaF.NFe.infRespTec.CNPJ := TiraPontos(Dados.qryParametroCNPJ.Value);
    NotaF.NFe.infRespTec.xContato := Dados.qryParametroCONTATO.Value;
    NotaF.NFe.infRespTec.email := Dados.qryParametroEMAIL_SUPORTE.Value;
    NotaF.NFe.infRespTec.fone := TiraPontos(Dados.qryParametroFONE1.Value);
    NotaF.NFe.infRespTec.hashCSRT := '';
  end;

  NotaF.NFe.InfAdic.infCpl := 'Fonte IBPT - Valor Aprox.Tributos R$' +
    FormatFloat(',0.00', qryVendaTRIB_MUN.AsFloat + qryVendaTRIB_EST.AsFloat +
    qryVendaTRIB_FED.AsFloat + qryVendaTRIB_IMP.AsFloat) + sLineBreak +
    qryVendaOBSCONTRIBUINTE.Value + sLineBreak + Placa;

  NotaF.NFe.InfAdic.infAdFisco := qryVendaOBSFISCO.Value;
  NotaF.NFe.exporta.UFembarq := '';;
  NotaF.NFe.exporta.xLocEmbarq := '';

  NotaF.NFe.compra.xNEmp := '';
  NotaF.NFe.compra.xPed := '';
  NotaF.NFe.compra.xCont := '';

  ACBrNFe.NotasFiscais.GerarNFe;
  //ACBrNFe.NotasFiscais.Items[0].GravarXML('C:\Users\Desenvolvimento - SD\Desktop\XMLTeste.xml');
  //Testar se a somatoria de produtos bate com a somatoria total
  vSubTotal :=  qryVendaSUBTOTAL.AsFloat;
  iCodItem  :=  iCodItem -1;
  if SimpleRoundTo(vTotProd, -10) <> SimpleRoundTo(vSubTotal, -10) then
    begin
      while SimpleRoundTo(vTotProd, -10) <> SimpleRoundTo(vSubTotal, -10) do
        begin
          if SimpleRoundTo(vTotProd, -10) > SimpleRoundTo(vSubTotal, -10) then
            begin
              vSobra  :=  vTotProd - vSubTotal;
              vProdTemp :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd := vProdTemp - vSobra;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnCom  :=
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd / vQtdUn;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnTrib  :=
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnCom;

            end
          else if SimpleRoundTo(vTotProd, -10) < SimpleRoundTo(vSubTotal, -10) then
            begin
              vSobra  :=  vSubTotal - vTotProd;
              vProdTemp :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd := vProdTemp + vSobra;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnCom  :=
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vProd / vQtdUn;
              ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnTrib  :=
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[iCodItem].Prod.vUnCom;
            end;
          //Somar os totais dos produtos
          if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'NFe\Xml\')) then
            CreateDir(ExtractFilePath(Application.ExeName)+'NFe\Xml\');
          if FileExists(ExtractFilePath(Application.ExeName)+'NFe\Xml\Temp.xml') then
            DeleteFile(ExtractFilePath(Application.ExeName)+'NFe\Xml\Temp.xml');
          ACBrNFe.NotasFiscais.GerarNFe;
          ACBrNFe.NotasFiscais.Items[0].GravarXML('Temp.xml', ExtractFilePath(Application.ExeName)+'NFe\Xml\');
          ACBrNFe.NotasFiscais.Clear;
          ACBrNFe.NotasFiscais.LoadFromFile(ExtractFilePath(Application.ExeName)+'NFe\Xml\Temp.xml');

          vTotProd  :=  0;
          for I := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Det.Count -1 do
            begin
              vTotProd  := vTotProd + ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd;
              {$REGION 'TESTE ÁRA VER VALORES'}
              {
              Memo1.Lines.Add(
              IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.nItem)+' - '+
              FormatFloat(',0.0000',ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom)+' * '+
              FormatFloat(',0.0000',ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom)+' = '+
              FormatFloat(',0.0000',ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd)+' => '+
              FormatFloat(',0.0000',
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom *
                ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom)
              );
              }
              {$ENDREGION}
            end;
        end;
      ACBrNFe.NotasFiscais.GerarNFe;
    end;
end;

procedure TfrmCadNFe.miGerarBoletoClick(Sender: TObject);
var
  dm: TdmForte;
begin
  if QryFatura.IsEmpty then
    Exit;
  if Trim(QryFaturaPATH_PDF_BOLETO.AsString) = EmptyStr then
    begin
      dm := dmForte;
      Dados.CarregarParametrosBoleto(dm);
      GerarBoleto;
      QryFatura.Refresh;
    end;
end;

procedure TfrmCadNFe.miImprimirBoletoClick(Sender: TObject);
var
  dm: TdmForte;
  Boleto : TACBrBoleto;
  sCodBarras: string;
begin
  if QryFatura.IsEmpty then
    Exit;
  if QryFaturaPATH_PDF_BOLETO.AsString = EmptyStr then
    Exit;
  dm := dmForte;
  Boleto  :=  dm.ACBrBoleto;
  Dados.CarregarParametrosBoleto(dm);
  Dados.ZerarListaBoleto(dm);
  Dados.IncluiBoleto(dm, qryVendaID_CLIENTE.AsInteger,
    QryFaturaDATA_VENCIMENTO.AsDateTime,
    FormatFloat('#000000000', QryFaturaCODIGO.AsInteger),
    QryFaturaVALOR.AsFloat, 0, 0, 0, 0, '', '',
    '', '', '', '', qryVendaDATA_EMISSAO.AsDateTime, sCodBarras);
  Boleto.Imprimir;
end;

procedure TfrmCadNFe.QryFaturaAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TfrmCadNFe.QryFaturaAfterInsert(DataSet: TDataSet);
begin
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.QryFaturaAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TfrmCadNFe.QryFaturaBeforeEdit(DataSet: TDataSet);
begin
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.QryFaturaCalcFields(DataSet: TDataSet);
begin
  if trim(QryFaturaPATH_PDF_BOLETO.AsString) = EmptyStr then
    QryFaturaBOLETO_GERADO.AsString :=  'NÃO'
  else
    QryFaturaBOLETO_GERADO.AsString :=  'SIM';
end;

procedure TfrmCadNFe.QryFaturaNewRecord(DataSet: TDataSet);
begin
  QryFaturaCODIGO.Value := Dados.Numerador('NFE_FATURA', 'CODIGO', 'N', '', '');
  QryFaturaFKEMPRESA.Value := qryVendaFKEMPRESA.Value;
  QryFaturaFKNFE.Value := qryVendaCODIGO.Value;
end;

function TfrmCadNFe.ValidaNegocios: boolean;
var
  Msg: String;
  Inicio: TDateTime;
  Ok: boolean;
  Tempo: String;
begin
  result := true;
  Inicio := Now;
  Ok := ACBrNFe.NotasFiscais.ValidarRegrasdeNegocios(Msg);
  Tempo := FormatDateTime('hh:nn:ss:zzz', Now - Inicio);

  if not Ok then
  begin
    result := false;
    ShowMessage('Erros encontrados' + #13 + Msg + #13 + sLineBreak + #13 +
      'Tempo: ' + Tempo);
  end;
end;

procedure TfrmCadNFe.btnConsCliForClick(Sender: TObject);
begin
  try
    frmConsCliForNFe  :=  TfrmConsCliForNFe.Create(Application);
    frmConsCliForNFe.ShowModal;
  finally
    if frmConsCliForNFe.iCodigo > 0 then
      begin
        if not (qryVenda.State in dsEditModes) then
          qryVenda.Edit;
        qryVendaID_CLIENTE.AsInteger  :=  frmConsCliForNFe.iCodigo;
      end;
    frmConsCliForNFe.Release;
  end;
end;

procedure TfrmCadNFe.btnGerarBoletoClick(Sender: TObject);
var
  dm: TdmForte;
begin
  if QryFatura.IsEmpty then
    Exit;
  dm := dmForte;
  Dados.CarregarParametrosBoleto(dm);
  QryFatura.First;
  while not QryFatura.Eof do
    begin
      if Trim(QryFaturaPATH_PDF_BOLETO.AsString) = EmptyStr then
        begin
          GerarBoleto;
        end;
      QryFatura.Next;
    end;
  QryFatura.Refresh;
end;

procedure TfrmCadNFe.BtnGerarClick(Sender: TObject);
var
  i: Integer;
begin
  if qryVendaINDPAG.Value = 0 then
    exit;

  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text := 'delete from nfe_fatura where fknfe=:id';
  Dados.qryExecute.Params[0].Value := qryVendaCODIGO.Value;
  Dados.qryExecute.ExecSQL;

  Dados.Conexao.Commit;

  if (qryItem.State IN dsEditmodes) then
    qryItem.Post;

  if (qryVenda.State IN dsEditmodes) then
    qryVenda.Post;

  RatearItens;
  CalculaTotais;

  for i := 1 to StrToInt(edtParcela.Text) do
  begin
    QryFatura.Insert;
    QryFaturaDATA_VENCIMENTO.Value := date + (i * 30);
    QryFaturaVALOR.Value := qryVendaTOTAL.Value / StrToInt(edtParcela.Text);
    QryFaturaNUMERO.Value := FormatFloat('000', i);
    QryFatura.Post;
  end;

  QryFatura.Refresh;

end;

procedure TfrmCadNFe.btnSairCombClick(Sender: TObject);
begin
  pnlCFOPComb.Visible :=  False;
  DBGridEh1.SelectedIndex :=  4;
  DBGridEh1.SetFocus;
end;

procedure TfrmCadNFe.btnSairCombEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.btnSairCombExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TfrmCadNFe.DBComboBoxEh4Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBComboBoxEh4Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadNFe.DBComboBoxEh4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(self.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCadNFe.DBComboBoxEh5Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBComboBoxEh5Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadNFe.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9', #08, #13, #27] ) then
    key := #0;
end;

procedure TfrmCadNFe.DBEdit42Change(Sender: TObject);
begin

  if qryItem.State in dsEditModes then
    begin
    qryItemTOTAL.Value := SimpleRoundTo(qryItemPRECO.AsFloat *
    qryItemQTD.AsFloat, -2);
    end;
end;

procedure TfrmCadNFe.DBEdit5Exit(Sender: TObject);
begin
  if (qryVenda.State in dsEditmodes) then
  begin
    qryVendaUFPLACA.Value := qryVendaVIRTUAL_UFPLACA.Value;
    qryVendaPLACA.Value := qryVendaVIRTUAL_PLACA.Value;
    qryVendaRNTC.Value := qryVendaVIRTUAL_RNTC.Value;
  end;
end;

procedure TfrmCadNFe.DBGridEh1DblClick(Sender: TObject);
begin
  if not Dados.vLiberaProduto then
  begin
    ShowMessage
      ('Usuário não tem permissão para alterar os dados cadastrais do produto!');
    exit;
  end;

  if not qryItem.IsEmpty then
  begin

    try
      FrmCadProduto := TFrmCadProduto.Create(Application);
      FrmCadProduto.qryProdutos.Close;
      FrmCadProduto.qryProdutos.Params[0].Value := qryItemID_PRODUTO.Value;
      FrmCadProduto.qryProdutos.Open;
      FrmCadProduto.qryProdutos.Edit;

      FrmCadProduto.ShowModal;

    finally
      FrmCadProduto.Release;
      qryProd.Close;
      qryProd.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
      qryProd.Open;
    end;
  end;
end;

procedure TfrmCadNFe.DBGridEh1Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBGridEh1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadNFe.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_delete then
  begin
    If Application.messagebox('Tem certeza que Excluir Item?', 'Confirmação',
      mb_yesno + mb_iconquestion) = idyes then
    begin
      qryItem.Delete;
    end;
  end;
end;

procedure TfrmCadNFe.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TfrmCadNFe.DBGridEh2Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBGridEh2Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadNFe.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TfrmCadNFe.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  DBEdit5.SetFocus;
end;

procedure TfrmCadNFe.DBLookupComboboxEh3Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBLookupComboboxEh3Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;

end;

procedure TfrmCadNFe.DBLookupComboboxEh4Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.DBLookupComboboxEh4Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadNFe.dsVendaDataChange(Sender: TObject; Field: TField);
begin
  //Verificar se é pessoa fisica ou juridica
  DBCheckBox1.Checked :=  PessoaFisica(qryVendaID_CLIENTE.AsInteger);

  estado;

  if (dados.qryEmpresaCRT.Value <> 1) and (dados.qryEmpresaCRT.Value <> 4) then    //wagner - upt6

  begin
    DBGridEh1.Columns[4].Visible := true;
    DBGridEh1.Columns[5].Visible := false;
  end
  else
  begin
    DBGridEh1.Columns[4].Visible := false;
    DBGridEh1.Columns[5].Visible := true;
  end;
end;

procedure TfrmCadNFe.FormActivate(Sender: TObject);
begin
  qryTransp.Close;
  qryTransp.Open;

  qryClientes.Close;
  qryClientes.Open;

  qryProd.Close;
  qryProd.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
  qryProd.Open;

end;

procedure TfrmCadNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if qryItem.State in dsEditmodes then
    qryVenda.Post;

  if qryItem.State in dsEditmodes then
    qryItem.Post;

  if qryReferencia.State in dsEditmodes then
    qryReferencia.Post;

end;

procedure TfrmCadNFe.FormCreate(Sender: TObject);
begin
  ConfiguraNFe;
end;

procedure TfrmCadNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
    if cxGravar.Enabled then
      cxGravar.Click;

  if Key = vk_f3 then
    if cxTransmitir.Enabled then
      cxTransmitir.Click;

  if Key = vk_f4 then
    if cxImprimir.Enabled then
      cxImprimir.Click;

  if Key = VK_F6 then
    if cxImportar.Enabled then
      cxImportar.Click;

  if Key = VK_F8 then
    if cxProdutos.Enabled then
      cxProdutos.Click;

  if Key = VK_F9 then
    if cxPessoas.Enabled then
      cxPessoas.Click;

  if Key = VK_F10 then
    if cxTransp.Enabled then
      cxTransp.Click;

  if key = VK_ESCAPE then
      begin
        if not(qryItem.State in dsEditModes) then
        begin
          Close;
        end;
      end;

end;

procedure TfrmCadNFe.FormShow(Sender: TObject);
begin

  qryCFOP.Close;
  qryCFOP.Open;

  Dados.qryDesoneracao.Close;
  Dados.qryDesoneracao.Open;

  if Dados.qryConfigFORMAEMISSAO.Value = 0 then
    Caption := 'Emissão de NFe'
  else
    Caption := 'Emissão de NFe - EM CONTINGÊNCIA';

  cxTransmitir.Enabled := false;

  cxProdutos.Visible := Dados.vLiberaProduto;
  cxPessoas.Visible := Dados.vLiberaPessoa;

  PageControl2.ActivePageIndex := 0;

  if Dados.qryEmpresaPUXA_CFOP_PRODUTO.Value = 'S' then
  begin
    DBLookupComboboxEh3.Left := DBEdit38.Left;
    DBLookupComboboxEh3.Width := 552;
    DBEdit38.Visible := false;
  end
  else
  begin
    DBLookupComboboxEh3.Left := 73;
    DBLookupComboboxEh3.Width := 495;
    DBEdit38.Visible := true;
  end;

end;

procedure TfrmCadNFe.qryItemAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
  Renumerar;
  CalculaTotais;
end;

procedure TfrmCadNFe.qryItemAfterEdit(DataSet: TDataSet);
begin
  cxTransmitir.Enabled := false;
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.qryItemAfterInsert(DataSet: TDataSet);
begin
  cxTransmitir.Enabled := false;
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.NaturezaOperacao;
begin

  if Dados.qryEmpresaPUXA_CFOP_PRODUTO.Value = 'N' then
    exit;

  try
    qryVenda.DisableControls;
    qryNatureza.Close;
    qryNatureza.Params[0].Value := qryVendaCODIGO.Value;
    qryNatureza.Open;
    if not(qryVenda.State in dsEditmodes) then
      qryVenda.Edit;
    qryVendaCFOP.Value := qryNatureza.FieldByName('CFOP').Value;
    qryVenda.Post;
  finally
    qryVenda.EnableControls;
  end;
end;

procedure TfrmCadNFe.PageControl2Change(Sender: TObject);
begin
  if PageControl2.ActivePage = TabSheet6 then
  begin
    QryFatura.Close;
    QryFatura.Params[0].Value := qryVendaCODIGO.Value;
    QryFatura.Open;
  end;

end;

function TfrmCadNFe.PessoaFisica(CodCliente: integer): Boolean;
var
  qry: TFDQuery;
  CNPJ: string;
  function LimpaString(str: string): string;
  var
     x: integer;
     st: string;
  begin
    st:='';
    for x:=1 to length(str) do
      begin
        if (str[x] <> '-') and
           (str[x] <> '.') and
           (str[x] <> ',') and
           (str[x] <> '/')
        then
          st:=st + str[x];
      end;
    LimpaString :=  st;
  end;
begin
  Result  :=  False;
  if not (CodCliente > 0) then
    Exit;
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select p.cnpj from pessoa p '+
      'where p.codigo='+IntToStr(CodCliente);
    qry.Open;
    CNPJ  :=  LimpaString(qry.Fields[0].AsString);
    Result := not (Length(CNPJ) > 11);
  finally
    qry.Free;
  end;
end;

procedure TfrmCadNFe.sTransmitida;
begin
  if ACBrNFe.WebServices.Retorno.cStat = 100 then
  begin
    ACBrNFe.NotasFiscais.Items[0].GravarXML;
    ACBrNFe.NotasFiscais.ImprimirPDF;
    if not(qryVenda.State in dsEditmodes) then
      qryVenda.Edit;
    qryVendaCHAVE.Value :=
      copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, 4, 100);
    qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
    qryVendaPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
    qryVendaFLAG.Value := 'N';
    qryVendaSITUACAO.Value := '2';
    if Dados.qryConfigFORMAEMISSAO.Value <> 0 then
      // Nota emitida em contigencia
      qryVendaSITUACAO.Value := '7';
    qryVendaHORA_EMISSAO.Value := Now;
    qryVendaHORA_SAIDA.Value := Now;
    qryVenda.Post;
    Dados.Conexao.Commit;
    if Dados.qryEmpresaENVIAR_EMAIL_NFE.AsString = 'S' then
      EnviarEmal('');
    Application.ProcessMessages;
    ShowMessage('Nota Transmitida com sucesso!!');
  end;
end;

procedure TfrmCadNFe.sCancelada;
begin
  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;
  qryVendaSITUACAO.Value := '3';
  qryVenda.Post;
  Dados.Conexao.Commit;
  ShowMessage(ACBrNFe.WebServices.Retorno.xMotivo);
  Close;
end;

procedure TfrmCadNFe.sDenegada;
begin
  ACBrNFe.NotasFiscais.Items[0].GravarXML;
  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;
  qryVendaCHAVE.Value :=
    copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, 4, 100);
  qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
  qryVendaPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
  qryVendaFLAG.Value := 'N';
  qryVendaSITUACAO.Value := '6';
  qryVendaHORA_EMISSAO.Value := Now;
  qryVendaHORA_SAIDA.Value := Now;
  qryVenda.Post;
  Dados.Conexao.Commit;
  Close;
end;

procedure TfrmCadNFe.sDuplicidade;
begin
  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;
  qryVendaSITUACAO.Value := '4';
  qryVendaHORA_EMISSAO.Value := Now;
  qryVendaHORA_SAIDA.Value := Now;
  qryVenda.Post;
  Dados.Conexao.Commit;
  ShowMessage(ACBrNFe.WebServices.Retorno.xMotivo);
  Close;
end;

procedure TfrmCadNFe.sInutilizada;
begin
  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;
  qryVendaSITUACAO.Value := '5';
  qryVenda.Post;
  Dados.Conexao.Commit;
  ShowMessage(ACBrNFe.WebServices.Retorno.xMotivo);
  Close;
end;

procedure TfrmCadNFe.sDenegado;
begin
  ACBrNFe.NotasFiscais.Items[0].GravarXML;
  if not(qryVenda.State in dsEditmodes) then
    qryVenda.Edit;
  qryVendaCHAVE.Value :=
    copy(ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, 4, 100);
  qryVendaXML.Value := ACBrNFe.NotasFiscais.Items[0].XML;
  qryVendaPROTOCOLO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
  qryVendaFLAG.Value := 'N';
  qryVendaSITUACAO.Value := '6';
  qryVendaHORA_EMISSAO.Value := Now;
  qryVendaHORA_SAIDA.Value := Now;
  qryVenda.Post;
  Dados.Conexao.Commit;
  Close;
end;

procedure TfrmCadNFe.qryItemAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
  CalculaTotais;
  NaturezaOperacao;
end;

procedure TfrmCadNFe.qryItemALIQ_ICMSValidate(Sender: TField);
begin
  if not(qryItem.State in dsEditmodes) then
    qryItemVALOR_ICMS.Value :=
      SimpleRoundTo(qryItemTOTAL.AsFloat * qryItemALIQ_ICMS.AsFloat / 100, -2);
end;

procedure TfrmCadNFe.qryItemBeforeDelete(DataSet: TDataSet);
begin
  if qryVendaSITUACAO.Value <> '1' then
    Abort;

  if Dados.qryConfigGERA_FI_ES.Value = 'S' then
  begin
    if (qryItemEVENDA.IsNull) or (qryItemEVENDA.Value = 'N') then
      begin
        if qryVendaMOVIMENTO.AsString = 'S' then
          Dados.AtualizaEstoque((qryItemQTD.AsFloat), qryItemID_PRODUTO.Value)
        else if qryVendaMOVIMENTO.AsString = 'E' then
          Dados.AtualizaEstoque((-1 * qryItemQTD.AsFloat), qryItemID_PRODUTO.Value);
      end;
  end;
end;

procedure TfrmCadNFe.qryItemBeforeEdit(DataSet: TDataSet);
begin
  QuantidadeAnterior := qryItemQTD.AsFloat;

  if qryVenda.State in dsEditmodes then
    qryVenda.Post;

  if QryFatura.State in dsEditmodes then
    QryFatura.Post;
end;

procedure TfrmCadNFe.qryItemBeforeInsert(DataSet: TDataSet);
begin
  if not qryCFOP.Locate('CODIGO', qryVendaCFOP.Value, []) then
    raise exception.Create('CFOP não encontrado!');

  if (qryVendaID_CLIENTE.IsNull) then
    raise exception.Create('Cliente não encontrado!');

  QuantidadeAnterior := 0;

  if qryVenda.State in dsEditmodes then
    qryVenda.Post;
end;

procedure TfrmCadNFe.qryItemBeforePost(DataSet: TDataSet);
var
  vBase: real;
  vIpi: real;
begin
  qryItemVICMSDESON.AsFloat :=
    (qryItemBASE_DESONERACAO.AsFloat * qryItemALIQ_DESONERACAO.AsFloat) / 100;

  if qryItemALIQ_ICMS.AsFloat = 0 then
    qryItemBASE_ICMS.AsFloat := 0;

  if qryItemALIQ_PIS_ICMS.AsFloat = 0 then
    qryItemBASE_PIS_ICMS.AsFloat := 0;

  if qryItemALIQ_COFINS_ICMS.AsFloat = 0 then
    qryItemBASE_COFINS_ICMS.AsFloat := 0;

  if qryItemALIQ_IPI.AsFloat = 0 then
    qryItemBASE_IPI.AsFloat := 0;

  if (copy(qryItemCST.Value, 2, 2) = '20') then // base reduzida
  begin
    if qryVendaCONSUMIDOR_FINAL.Value = 'S' then
      vBase := SimpleRoundTo((qryItemTOTAL.AsFloat + qryItemSEGURO.AsFloat +
        qryItemFRETE.AsFloat + qryItemOUTROS.AsFloat -
        qryItemDESCONTO.AsFloat), -2)
    else
      vBase := SimpleRoundTo((qryItemTOTAL.AsFloat + qryItemVALOR_IPI.AsFloat +
        qryItemSEGURO.AsFloat + qryItemFRETE.AsFloat + qryItemOUTROS.AsFloat -
        qryItemDESCONTO.AsFloat), -2);

    if qryItemVIRTUAL_REDUCAO.AsFloat > 0 then
      qryItemBASE_ICMS.AsFloat :=
        SimpleRoundTo(vBase - (vBase * (qryItemVIRTUAL_REDUCAO.AsFloat /
        100)), -2);

    qryItemVALOR_ICMS.Value := SimpleRoundTo(qryItemBASE_ICMS.AsFloat *
      qryItemALIQ_ICMS.AsFloat / 100, -2);

  end
  else if (copy(qryItemCST.Value, 2, 2) = '70') then
  // base reduzida com substituição tributária
  begin
    // nada
  end
  else if qryItemALIQ_ICMS.AsFloat > 0 then // outro com icms
  begin
    if qryVendaCONSUMIDOR_FINAL.Value = 'S' then
      qryItemBASE_ICMS.Value := qryItemTOTAL.Value + qryItemVALOR_IPI.AsFloat +
        qryItemSEGURO.AsFloat + qryItemFRETE.AsFloat + qryItemOUTROS.AsFloat -
        qryItemDESCONTO.AsFloat
    else
      qryItemBASE_ICMS.Value := qryItemTOTAL.Value + qryItemSEGURO.AsFloat +
        qryItemFRETE.AsFloat + qryItemOUTROS.AsFloat - qryItemDESCONTO.AsFloat;

    qryItemVALOR_ICMS.Value := SimpleRoundTo(qryItemBASE_ICMS.AsFloat *
      qryItemALIQ_ICMS.AsFloat / 100, -2);
  end
  else
  begin // sem icms
    qryItemBASE_ICMS.Value := 0;
    qryItemVALOR_ICMS.Value := 0;
  end;

  if qryItemALIQ_IPI.AsFloat > 0 then
  begin
    qryItemBASE_IPI.Value := qryItemTOTAL.AsFloat;
    vIpi  :=  (qryItemTOTAL.AsFloat * qryItemALIQ_IPI.AsFloat) / 100;
    vIpi  :=  Dados.TBRound(vIpi, 2);
    qryItemVALOR_IPI.Value := vIpi;
//    qryItemVALOR_IPI.Value :=
//      SimpleRoundTo(qryItemTOTAL.AsFloat * qryItemALIQ_IPI.AsFloat / 100, -2);
  end
  else
  begin
    qryItemBASE_IPI.Value := 0;
    qryItemVALOR_IPI.Value := 0;
  end;

  if qryItemALIQ_PIS_ICMS.AsFloat > 0 then
  begin
    qryItemBASE_PIS_ICMS.Value := qryItemTOTAL.AsFloat;
    qryItemVALOR_PIS_ICMS.Value :=
      SimpleRoundTo(qryItemTOTAL.AsFloat * qryItemALIQ_PIS_ICMS.AsFloat
      / 100, -2);
  end
  else
  begin
    qryItemBASE_PIS_ICMS.Value := 0;
    qryItemVALOR_PIS_ICMS.Value := 0;
  end;

  if qryItemALIQ_COFINS_ICMS.AsFloat > 0 then
  begin
    qryItemBASE_COFINS_ICMS.Value := qryItemTOTAL.AsFloat;
    qryItemVALOR_COFINS_ICMS.Value :=
      SimpleRoundTo(qryItemTOTAL.AsFloat * qryItemALIQ_COFINS_ICMS.AsFloat
      / 100, -2);
  end
  else
  begin
    qryItemBASE_COFINS_ICMS.Value := 0;
    qryItemVALOR_COFINS_ICMS.Value := 0;
  end;
  qryItemGERA_ES.Value := 'N';

  if qryItem.State = dsInsert then
  begin
    if Dados.qryConfigGERA_FI_ES.Value = 'S' then
    begin
      if (qryItemEVENDA.IsNull) or (qryItemEVENDA.Value = 'N') then
      begin
        qryItemGERA_ES.Value := 'S';

        if qryVendaMOVIMENTO.AsString = 'S' then
          begin
            Dados.AtualizaEstoque((-1 * qryItemQTD.AsFloat),
              qryItemID_PRODUTO.Value);
          end
        else if qryVendaMOVIMENTO.AsString = 'E' then
          begin
            Dados.AtualizaEstoque((qryItemQTD.AsFloat),
              qryItemID_PRODUTO.Value);
          end;
      end;
    end;
  end;

  if qryItem.State = dsEdit then
  begin
    if Dados.qryConfigGERA_FI_ES.Value = 'S' then
    begin
      if (qryItemEVENDA.IsNull) or (qryItemEVENDA.Value = 'N') then
      begin
        qryItemGERA_ES.Value := 'S';
        if qryVendaMOVIMENTO.AsString = 'S' then
          begin
            Dados.AtualizaEstoque(-1 * (qryItemQTD.AsFloat - QuantidadeAnterior),
              qryItemID_PRODUTO.Value);
          end
        else if qryVendaMOVIMENTO.AsString = 'E' then
          begin
            Dados.AtualizaEstoque((qryItemQTD.AsFloat - QuantidadeAnterior),
              qryItemID_PRODUTO.Value);
          end;
        QuantidadeAnterior := 0;
      end;
    end;
  end;

  if (Dados.qryEmpresaCRT.Value = 1) or (Dados.qryEmpresaCRT.Value = 4) then // empresa do simples nacional
  begin
    if qryVendaFINALIDADE.Value = '0' then
    begin // finalidade normal
      if qryItemCSOSN.Value <> '202' then
        begin
          qryItemALIQ_ICMS.AsFloat := 0;
          qryItemBASE_ICMS.AsFloat := 0;
          qryItemVALOR_ICMS.AsFloat := 0;
        end;
    end;
  end;

  CalculaST;
end;

procedure TfrmCadNFe.qryItemCFOPChange(Sender: TField);
begin
  //WS - Testar se é CFOP de Combustivel 18/01/2021
  if Eh_CFOP_Combustivel(qryItemCFOP.AsString) then
    begin
      pnlCFOPComb.Visible :=  True;
      DBEdit40.SetFocus;
    end;
end;

procedure TfrmCadNFe.qryItemCFOPValidate(Sender: TField);
begin
  if not qryCFOP.Locate('CODIGO', qryItemCFOP.Value, []) then
    raise exception.Create('CFOP não encontrado!');
end;

procedure TfrmCadNFe.qryItemID_PRODUTOChange(Sender: TField);
begin
  qryProduto.Close;
  qryProduto.Params[0].AsInteger := qryItemID_PRODUTO.AsInteger;
  qryProduto.Open;

  qryItemPRECO.AsFloat := qryProdutoPR_VENDA.AsFloat;
  qryItemUNIDADE.Value := qryProdutoUNIDADE.Value;

  qryItemCFOP.Value := qryVendaCFOP.AsString;

  qryItemALIQ_ICMS.AsFloat := qryProdutoALIQ_ICM.AsFloat;
  qryItemCST.Value := qryProdutoCSTICMS.Value;
  qryItemCSOSN.Value := qryProdutoCSOSN.Value;

  if qryVendaVIRTUAL_UF_CLIENTE.Value <> Dados.qryEmpresaUF.Value then
  begin
    qryItemALIQ_ICMS.AsFloat := qryProdutoALIQ_ICMS_EXTERNO.AsFloat;
    qryItemCST.Value := qryProdutoCST_EXTERNO.Value;
    qryItemCSOSN.Value := qryProdutoCSOSN_EXTERNO.Value;
  end;

  if Dados.qryEmpresaPUXA_CFOP_PRODUTO.Value = 'S' then
  begin
    qryItemCFOP.Value := qryProdCFOP.Value;
    if qryVendaVIRTUAL_UF_CLIENTE.Value <> Dados.qryEmpresaUF.Value then
      qryItemCFOP.Value := qryProdCFOP_EXTERNO.AsString;
  end;

  //Se o produto não tiver CFOP
  if qryItemCFOP.Value = '' then
    begin
      if (qryItemCST.Value = '060') or (qryItemCSOSN.Value = '500') then
        qryItemCFOP.Value := '5405'
      else
        qryItemCFOP.Value := '5102';
    end;

  qryItemCST_COFINS.Value := qryProdutoCSTS.Value;
  qryItemCST_PIS.Value := qryProdutoCSTS.Value;
  qryItemCST_IPI.Value := qryProdutoCSTIPI.Value;

  qryItemCOD_BARRA.Value := qryProdutoCODBARRA.Value;
  qryItemNCM.Value := qryProdutoNCM.Value;
  qryItemALIQ_COFINS_ICMS.AsFloat := qryProdutoALIQ_COF.AsFloat;
  qryItemALIQ_PIS_ICMS.AsFloat := qryProdutoALIQ_PIS.AsFloat;
  qryItemALIQ_IPI.AsFloat := qryProdutoALIQ_IPI.AsFloat;

  qryItemTIPO.AsString := qryProdutoTIPO.Value;

  if (trim(qryProdutoCODBARRA.AsString) = '') or (qryProdutoCODBARRA.IsNull)
  then
    qryItemCOD_BARRA.Value := 'SEM GTIN'
  else
    qryItemCOD_BARRA.Value := qryProdutoCODBARRA.AsString;

  if (copy(qryItemCST.Value, 2, 2) = '00') or
    (copy(qryItemCST.Value, 2, 2) = '10') or
    (copy(qryItemCST.Value, 2, 2) = '20') or
    (copy(qryItemCST.Value, 2, 2) = '70') or
    (copy(qryItemCST.Value, 2, 2) = '51') or
    (copy(qryItemCST.Value, 2, 2) = '90') then
  begin
    if qryVendaVIRTUAL_UF_CLIENTE.Value = Dados.qryEmpresaUF.Value then
      qryItemALIQ_ICMS.Value := qryProdutoALIQ_ICM.Value;

    if qryVendaVIRTUAL_UF_CLIENTE.Value <> Dados.qryEmpresaUF.Value then
      qryItemALIQ_ICMS.Value := Dados.BuscaIcms('', Dados.qryEmpresaUF.Value,
        qryVendaVIRTUAL_UF_CLIENTE.Value);
  end

  else if (copy(qryItemCST.Value, 2, 2) = '40') or
    (copy(qryItemCST.Value, 2, 2) = '41') or
    (copy(qryItemCST.Value, 2, 2) = '50') or
    (copy(qryItemCST.Value, 2, 2) = '90') then
  begin
    qryItemALIQ_ICMS.Value := 0;
  end;

  if qryProdutoALIQ_PIS.Value > 0 then
    qryItemALIQ_PIS_ICMS.Value := qryProdutoALIQ_PIS.Value;

  if qryProdutoALIQ_COF.Value > 0 then
    qryItemALIQ_COFINS_ICMS.Value := qryProdutoALIQ_COF.Value;

  if qryProdutoALIQ_IPI.Value > 0 then
    qryItemALIQ_IPI.Value := qryProdutoALIQ_IPI.Value;

  qryItemNCM.Value := qryProdutoNCM.Value;

end;

procedure TfrmCadNFe.qryItemNewRecord(DataSet: TDataSet);
begin
  qryItemCODIGO.Value := Dados.Numerador('NFE_DETALHE', 'CODIGO', 'N', '', '');
  qryItemITEM.Value := Dados.Numerador('NFE_DETALHE', 'ITEM', 'S', 'FKNFE',
    qryVendaCODIGO.AsString);
  qryItemFKNFE.Value := qryVendaCODIGO.Value;
  qryItemPRECO.Value := 0;
  qryItemQTD.Value := 1;
  qryItemFRETE.Value := 0;
  qryItemDESCONTO.Value := 0;
  qryItemOUTROS.Value := 0;
  qryItemSEGURO.Value := 0;
  qryItemVICMSDESON.Value := 0;
  qryItemVALOR_ICMS.Value := 0;
  qryItemVALOR_COFINS_ICMS.Value := 0;
  qryItemVALOR_PIS_ICMS.Value := 0;
  qryItemVALOR_IPI.Value := 0;
  qryItemBASE_ICMS.Value := 0;
  qryItemBASE_COFINS_ICMS.Value := 0;
  qryItemBASE_PIS_ICMS.Value := 0;
  qryItemBASE_IPI.Value := 0;
  qryItemALIQ_ICMS.Value := 0;
  qryItemALIQ_COFINS_ICMS.Value := 0;
  qryItemALIQ_PIS_ICMS.Value := 0;
  qryItemALIQ_IPI.Value := 0;
end;

procedure TfrmCadNFe.qryItemPRECOValidate(Sender: TField);
begin
    qryItemTOTAL.Value := SimpleRoundTo(qryItemPRECO.AsFloat *
    qryItemQTD.AsFloat, -2);
end;

procedure TfrmCadNFe.qryReferenciaAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TfrmCadNFe.qryReferenciaNewRecord(DataSet: TDataSet);
begin
  qryReferenciaFK_NFE.Value := qryVendaCODIGO.Value;
  qryReferenciaCODIGO.Value := Dados.Numerador('NFE_REFERENCIA', 'CODIGO',
    'N', '', '');;

end;

procedure TfrmCadNFe.qryVendaAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TfrmCadNFe.qryVendaAfterEdit(DataSet: TDataSet);
begin
  cxTransmitir.Enabled := false;
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.qryVendaAfterInsert(DataSet: TDataSet);
begin

  cxTransmitir.Enabled := false;
  cxGravar.Enabled := true;
end;

procedure TfrmCadNFe.qryVendaAfterOpen(DataSet: TDataSet);
begin
  qryItem.Close;
  qryItem.Open;

  qryReferencia.Close;
  qryReferencia.Params[0].Value := qryVendaCODIGO.Value;
  qryReferencia.Open;
end;

procedure TfrmCadNFe.qryVendaAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TfrmCadNFe.qryVendaBeforePost(DataSet: TDataSet);
begin
  if qryVendaCNF.IsNull then
    qryVendaCNF.AsInteger := GerarCodigoDFe(qryVendaNUMERO.Value);

  if (qryVenda.State = dsInsert) then
  begin

    qryPesquisaNFe.Close;
    qryPesquisaNFe.Params[0].Value := qryVendaNUMERO.Value;
    qryPesquisaNFe.Params[1].Value := qryVendaCODIGO.Value;
    qryPesquisaNFe.Params[2].Value := qryVendaFKEMPRESA.Value;
    qryPesquisaNFe.Params[3].Value := qryVendaSERIE.Value;
    qryPesquisaNFe.Open;
    if qryPesquisaNFe.RecordCount > 0 then
    begin
      ShowMessage('Já existe nota com esta numeração!');
      Abort;
      exit;
    end;

  end;

  qryVendaFK_USUARIO.Value := Dados.idUsuario;
  qryVendaID_EMITENTE.Value := qryVendaFKEMPRESA.Value;

end;

procedure TfrmCadNFe.qryVendaCalcFields(DataSet: TDataSet);
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
    qryVendaVIRTUAL_SITUACAO.Value := 'USO DENEGADO';
  if qryVendaSITUACAO.Value = '7' then
    qryVendaVIRTUAL_SITUACAO.Value := 'CONTINGÊNCIA';

end;

procedure TfrmCadNFe.qryVendaDESCONTOChange(Sender: TField);
begin
  if (qryVenda.State in dsEditmodes) then
  begin
    qryVendaTOTAL.Value := (qryVendaSUBTOTAL.Value + qryVendaTOTAL_IPI.Value +
      qryVendaFRETE.Value + qryVendaOUTROS.Value + qryVendaSEGURO.Value) -
      qryVendaDESCONTO.Value;
  end;
end;

procedure TfrmCadNFe.qryVendaNewRecord(DataSet: TDataSet);
begin

  qryVendaFKEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;

  Dados.qryExecute.Close;
  Dados.qryExecute.SQL.Text :=
    'SELECT COALESCE(MAX(NUMERO),0) qtd FROM NFE_MASTER WHERE SERIE=:SERIE AND FKEMPRESA=:EMPRESA';
  Dados.qryExecute.Params[0].Value := dados.qryEmpresaNFE_SERIE.AsString;
  Dados.qryExecute.Params[1].Value := qryVendaFKEMPRESA.Value;
  Dados.qryExecute.Open;

  if Dados.qryExecute.Fields[0].AsFloat = 0 then
    qryVendaNUMERO.Value := Dados.qryEmpresaN_INICIAL_NFE.AsInteger
  else
    qryVendaNUMERO.Value := Dados.qryExecute.Fields[0].AsInteger + 1;

  qryVendaCNF.AsInteger := GerarCodigoDFe(qryVendaNUMERO.Value);

end;

procedure TfrmCadNFe.qryVendaNUMEROValidate(Sender: TField);
var
  numero: string;
begin

  numero := copy(qryVendaCHAVE.AsString, 26, 9);
  if trim(numero) <> '' then
  begin
    { if StrToInt(numero) <> qryVendaNUMERO.Value then
      raise Exception.Create
      ('Chave da nota não corresponde a número informado!'); }
  end;

end;

procedure TfrmCadNFe.estado;
begin
  cxGravar.Enabled := qryVendaSITUACAO.Value = '1';
  cxTransmitir.Enabled := (qryVendaSITUACAO.Value = '7');
  cxImprimir.Enabled := (qryVendaSITUACAO.Value = '2') or
    (qryVendaSITUACAO.Value = '7');
  cxImportar.Enabled := qryVendaSITUACAO.Value = '1';
  Panel3.Enabled := qryVendaSITUACAO.Value = '1';
  DBGridEh1.ReadOnly := qryVendaSITUACAO.Value <> '1';
  DBGridEh2.ReadOnly := qryVendaSITUACAO.Value <> '1';
  BtnGerar.Enabled := qryVendaSITUACAO.Value = '1';
  edtParcela.Enabled := qryVendaSITUACAO.Value = '1';
  TabSheet1.Enabled := qryVendaSITUACAO.Value = '1';
  TabSheet2.Enabled := qryVendaSITUACAO.Value = '1';
  TabSheet3.Enabled := qryVendaSITUACAO.Value = '1';
  TabSheet4.Enabled := qryVendaSITUACAO.Value = '1';
end;

procedure TfrmCadNFe.DadosCombustivel(Codigo: Integer; out pGLP, pGnn, pGNi, vPart: Extended);
var
  qry: TFDQuery;
begin
  try
    pGLP  := 0;
    pGnn  := 0;
    pGNi  := 0;
    vPart := 0;
    try
      qry :=  TFDQuery.Create(nil);
      qry.Connection  :=  dados.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Text  :=
        'select p.glp, p.gnn, p.gni, p.peso_liq from produto p '+
        'where p.codigo='+IntToStr(Codigo);
      qry.Open;
      if not qry.IsEmpty then
        begin
          pGLP  := qry.FieldByName('glp').AsFloat;
          pGnn  := qry.FieldByName('gnn').AsFloat;
          pGNi  := qry.FieldByName('gni').AsFloat;
          vPart := qry.FieldByName('peso_liq').AsFloat;
        end;
    except
    end;
  finally
    qry.Free;
  end;
end;

end.
