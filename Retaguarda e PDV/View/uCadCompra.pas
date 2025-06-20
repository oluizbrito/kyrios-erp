unit uCadCompra;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, pcnAuxiliar, math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask,
  Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrEnterTab, Vcl.Grids,
  Vcl.DBGrids, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons;

type
  TfrmCadCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    cbFornecedor: TDBLookupComboboxEh;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Shape1: TShape;
    dsCompra: TDataSource;
    DBText1: TDBText;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label26: TLabel;
    dsItens: TDataSource;
    qryCompra: TFDQuery;
    qryCompraTTOTAL: TAggregateField;
    qryItensCompra: TFDQuery;
    qryCompraID: TIntegerField;
    qryCompraEMPRESA: TSmallintField;
    qryCompraDTENTRADA: TDateField;
    qryCompraDTEMISSAO: TDateField;
    qryCompraFORNECEDOR: TIntegerField;
    qryCompraMODELO: TStringField;
    qryCompraSERIE: TStringField;
    qryCompraCHAVE: TStringField;
    qryCompraGERA_CP: TStringField;
    qryCompraGERA_ES: TStringField;
    qryCompraAJUSTA_PC: TStringField;
    qryCompraAJUSTA_PV: TStringField;
    qryCompraEHFISCAL: TStringField;
    qryCompraLEUXML: TStringField;
    qryCompraSTATUS: TStringField;
    qryItensCompraID: TIntegerField;
    qryItensCompraFK_COMPRA: TIntegerField;
    qryItensCompraEMPRESA: TSmallintField;
    qryItensCompraITEM: TSmallintField;
    qryItensCompraFK_PRODUTO: TIntegerField;
    qryItensCompraCFOP: TStringField;
    qryItensCompraCST_ICM: TStringField;
    qryItensCompraQTD: TFMTBCDField;
    qryCompraVIRTUAL_FORNECEDOR: TStringField;
    qryCompraVIRTUAL_UF: TStringField;
    qryCompraVIRTUAL_CNPJ: TStringField;
    qryCompraVIRTUAL_SITUACAO: TStringField;
    qryCompraNR_NOTA: TStringField;
    qrySoma: TFDQuery;
    ACBrEnterTab1: TACBrEnterTab;
    qryCompraXML: TMemoField;
    qryItensCompraGERA_CP: TStringField;
    qryItensCompraGERA_ES: TStringField;
    qryItensCompraSITUACAO: TStringField;
    qryCompraTIPO: TStringField;
    qryProd: TFDQuery;
    dsProd: TDataSource;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdCODBARRA: TStringField;
    qryProdREFERENCIA: TStringField;
    Label27: TLabel;
    qryCompraVIRTUAL_EMPRESA: TStringField;
    qryItensCompraVIRTUAL_PRODUTO: TStringField;
    qryItensCompraFK_PRODUTO_FORN: TStringField;
    Panel4: TPanel;
    Label28: TLabel;
    qryFornecedor: TFDQuery;
    qryFornecedorCODIGO: TIntegerField;
    qryFornecedorRAZAO: TStringField;
    qryFornecedorUF: TStringField;
    qryFornecedorCNPJ: TStringField;
    qryItensCompraVIRTUAL_PRECO: TExtendedField;
    qryRef: TFDQuery;
    StringField3: TStringField;
    qryRefCODIGO: TIntegerField;
    qryItensCompraVIRTUAL_REFERENCIA: TStringField;
    qryItensCompraCST_PIS: TStringField;
    qryItensCompraCST_COF: TStringField;
    qryItensCompraCST_IPI: TStringField;
    qryItensCompraFK_USUARIO: TIntegerField;
    qryItensCompraVIRTUAL_CSTE: TStringField;
    qryItensCompraVIRTUAL_CTS_IPI: TStringField;
    qryItensCompraVIRTUAL_ALIQ_PIS: TFloatField;
    qryItensCompraVIRTUAL_ALIQ_COF: TFloatField;
    DBEdit2: TDBEdit;
    qryProdPR_VENDA: TFMTBCDField;
    qryProdPR_CUSTO: TFMTBCDField;
    qryProdCSTE: TStringField;
    qryProdCSTIPI: TStringField;
    qryProdALIQ_PIS: TCurrencyField;
    qryProdALIQ_COF: TCurrencyField;
    qrySomaTOTAL: TFMTBCDField;
    qrySomaBIPI: TFMTBCDField;
    qrySomaBICMS: TFMTBCDField;
    qrySomaBST: TFMTBCDField;
    qrySomaBPIS: TFMTBCDField;
    qrySomaBCOFINS: TFMTBCDField;
    qrySomaVLIPI: TFMTBCDField;
    qrySomaVLICMS: TFMTBCDField;
    qrySomaVLST: TFMTBCDField;
    qrySomaVLPIS: TFMTBCDField;
    qrySomaVLCOF: TFMTBCDField;
    qryItensCompraVL_UNITARIO: TFMTBCDField;
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
    qryItensCompraALIQ_ST: TFMTBCDField;
    DBGridEh1: TDBGridEh;
    qryItensCompraPR_VENDA: TFMTBCDField;
    Panel5: TPanel;
    RadioGroup1: TRadioGroup;
    Panel6: TPanel;
    Label29: TLabel;
    edtMargemLucro: TEdit;
    Label30: TLabel;
    btnAplicarMargem: TButton;
    Panel7: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Panel8: TPanel;
    Label33: TLabel;
    lblValorMargem: TLabel;
    Label34: TLabel;
    Panel9: TPanel;
    Label35: TLabel;
    lblValorCompra: TLabel;
    lblValorVenda: TLabel;
    qryItensCompraFK_GRADE_PRODUTO: TIntegerField;
    cxPessoas: TcxButton;
    cxSair: TcxButton;
    cxProdutos: TcxButton;
    cxFinalizar: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryItensCompraVL_UNITARIOValidate(Sender: TField);
    procedure qryItensCompraBeforePost(DataSet: TDataSet);
    procedure qryItensCompraNewRecord(DataSet: TDataSet);
    procedure qryItensCompraALIQ_ICMSValidate(Sender: TField);
    procedure qryCompraAfterPost(DataSet: TDataSet);
    procedure qryCompraCalcFields(DataSet: TDataSet);
    procedure qryCompraAfterOpen(DataSet: TDataSet);
    procedure qryItensCompraAfterPost(DataSet: TDataSet);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure qryCompraFRETEValidate(Sender: TField);
    procedure dsItensDataChange(Sender: TObject; Field: TField);
    procedure qryItensCompraAfterDelete(DataSet: TDataSet);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure dsCompraDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbEmpresaEnter(Sender: TObject);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure qryCompraCHAVEValidate(Sender: TField);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure qryItensCompraFK_PRODUTOChange(Sender: TField);
    procedure qryCompraNewRecord(DataSet: TDataSet);
    procedure qryItensCompraBeforeInsert(DataSet: TDataSet);
    procedure qryItensCompraBeforeDelete(DataSet: TDataSet);
    procedure qryItensCompraBeforeEdit(DataSet: TDataSet);
    procedure qryCompraBeforePost(DataSet: TDataSet);
    procedure DBEdit20Exit(Sender: TObject);
    procedure edtMargemLucroKeyPress(Sender: TObject; var Key: Char);
    procedure btnAplicarMargemClick(Sender: TObject);
    procedure edtMargemLucroChange(Sender: TObject);
    procedure cxPessoasClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxProdutosClick(Sender: TObject);
    procedure cxFinalizarClick(Sender: TObject);

  private
    FProduto: Integer;
    QuantidadeAnterior: Real;
    function ChecaParcela(id: Integer): boolean;
    procedure CalculaTotais;
    function TotalCompra: Extended;
    procedure atualizagrade(tipo: string; qtd_atual: real;
      produto: Integer; grade: integer);

    { Private declarations }
  public
    { Public declarations }
    procedure AjustaPreco_Estoque;
    procedure AjustaCusto;
  end;

var
  frmCadCompra: TfrmCadCompra;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uCompraPagar, uCadProduto, uCadPessoa;

function TfrmCadCompra.ChecaParcela(id: Integer): boolean;
begin
  result := true;
  if DBCheckBox4.Checked then
  begin
    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      'SELECT SUM(VALOR) FROM CPAGAR WHERE FK_COMPRA=:ID';
    dados.qryExecute.Params[0].Value := qryCompraID.Value;;
    dados.qryExecute.Open;
    result := false;
    if dados.qryExecute.Fields[0].AsFloat = qryCompraTOTAL.AsFloat then
      result := true;
  end;
end;

procedure TfrmCadCompra.cxFinalizarClick(Sender: TObject);
begin
   try
    cxFinalizar.Enabled := false;
    if qryItensCompra.IsEmpty then
    begin
      ShowMessage('Informe os Itens da Compra!');
      exit;
    end;

    if (qryCompraFORNECEDOR.IsNull) then
    begin
      ShowMessage('Informe o fornecedor!');
      exit;
    end;

    If application.messagebox('Tem certeza que FINALIZAR COMPRA?',
      'Confirmação', mb_yesno + mb_iconquestion) = idno then
      exit;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := 'DELETE FROM CAIXA WHERE FKCOMPRA=:ID';
    dados.qryExecute.Params[0].Value := dados.qryCompraID.Value;
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;

    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text := 'DELETE FROM CPAGAR WHERE FK_COMPRA=:ID';
    dados.qryExecute.Params[0].Value := dados.qryCompraID.Value;
    dados.qryExecute.ExecSQL;
    dados.Conexao.Commit;

    if DBCheckBox2.Checked then
      AjustaPreco_Estoque;

    if Dados.qryEmpresaNT_COMPRA_IMP_CUSTO.AsString = 'S' then
      AjustaCusto;

    if DBCheckBox4.Checked then
    begin
      if qryCompraTOTAL.AsFloat > 0 then
      begin
        try
          frmCPParcela := tfrmCPParcela.Create(application);
          frmCPParcela.edtParcela.Text := '1';
          frmCPParcela.edtSubtotal.Text :=
            formatfloat('0.00', qryCompraTOTAL.AsFloat);
          frmCPParcela.edtTotal.Text :=
            formatfloat('0.00', qryCompraTOTAL.AsFloat);
          frmCPParcela.vValor := qryCompraTOTAL.AsFloat;
          frmCPParcela.idCompra := qryCompraID.Value;
          dados.vChamaImpressao := false;
          dados.vPodeFecharCompra := false;
          frmCPParcela.ShowModal;
        except
          frmCPParcela.Release;
        end;
      end;
    end
    else
      dados.vPodeFecharCompra := true;
    if dados.vPodeFecharCompra then
    begin
      if not(qryCompra.State in dsEditModes) then
        qryCompra.Edit;
      qryCompraSTATUS.Value := 'F';
      qryCompraEHFISCAL.Value := 'N';
      if trim(DBEdit5.EditText) <> '' then
        qryCompraEHFISCAL.Value := 'S';
      qryCompra.Post;
      Close;
    end;
  finally
    cxFinalizar.Enabled := true;
  end;
end;

procedure TfrmCadCompra.cxPessoasClick(Sender: TObject);
begin
   try
    cxPessoas.Enabled := false;
    frmCadPessoa := TfrmCadPessoa.Create(application);
    if Not dados.qryPessoas.Active then
      dados.qryPessoas.Open;
    dados.qryPessoas.Insert;
    frmCadPessoa.ShowModal;
  finally
    frmCadPessoa.Release;
    cxPessoas.Enabled := true;
    qryFornecedor.Close;
    qryFornecedor.Open;
  end;
end;

procedure TfrmCadCompra.cxProdutosClick(Sender: TObject);
var
  idProduto: Integer;
begin
  try
    FrmCadProduto := TFrmCadProduto.Create(application);

    FrmCadProduto.qryProdutos.Close;
    FrmCadProduto.qryProdutos.Params[0].Value := -1;
    FrmCadProduto.qryProdutos.Open;

    FrmCadProduto.qryProdutos.Insert;
    FrmCadProduto.ShowModal;

  finally
    FrmCadProduto.Release;
    qryProd.Close;
    qryProd.Open;
    qryRef.Close;
    qryRef.Open;
  end;

end;

procedure TfrmCadCompra.cxSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCompra.FormActivate(Sender: TObject);
begin

  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;

  qryFornecedor.Close;
  qryFornecedor.Open;

  dados.qryPesqEmp.Close;
  dados.qryPesqEmp.Open;

end;

procedure TfrmCadCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_f3 then
  begin
    cxFinalizarClick(self);
    abort;
  end;

  if Key = vk_f4 then
  begin
    if cxProdutos.Enabled then
      cxProdutosClick(self);
    abort;
  end;

  if Key = vk_f5 then
  begin
    if cxPessoas.Enabled then
      cxPessoasClick(self);
    abort;
  end;

  if Key = vk_escape then
  begin
    if ActiveControl <> DBGridEh1 then
    begin
      cxSairClick(self);
      abort;
    end;
  end;
end;

procedure TfrmCadCompra.FormShow(Sender: TObject);
begin
  qryProd.Close;
  qryProd.Open;

  qryRef.Close;
  qryRef.Open;

  cxProdutos.Visible := dados.vLiberaProduto;
  cxPessoas.Visible := dados.vLiberaPessoa;

  FProduto := 0;

  if qryCompraLEUXML.Value = 'S' then
  begin

    DBEdit11.ReadOnly := true;
    DBEdit12.ReadOnly := true;
    DBEdit13.ReadOnly := true;
    DBEdit14.ReadOnly := true;
    DBEdit15.ReadOnly := true;
    DBEdit16.ReadOnly := true;

    DBEdit17.ReadOnly := true;
    DBEdit18.ReadOnly := true;
    DBEdit19.ReadOnly := true;
    DBEdit20.ReadOnly := true;
    DBEdit21.ReadOnly := true;
    DBEdit22.ReadOnly := true;

    DBEdit23.ReadOnly := true;
    DBEdit24.ReadOnly := true;
    DBEdit25.ReadOnly := true;
    DBEdit26.ReadOnly := true;

  end
  else
  begin

    DBEdit11.ReadOnly := false;
    DBEdit12.ReadOnly := false;
    DBEdit13.ReadOnly := false;
    DBEdit14.ReadOnly := false;
    DBEdit15.ReadOnly := false;
    DBEdit16.ReadOnly := false;

    DBEdit17.ReadOnly := false;
    DBEdit18.ReadOnly := false;
    DBEdit19.ReadOnly := false;
    DBEdit20.ReadOnly := false;
    DBEdit21.ReadOnly := false;
    DBEdit22.ReadOnly := false;

    DBEdit23.ReadOnly := false;
    DBEdit24.ReadOnly := false;
    DBEdit25.ReadOnly := false;
    DBEdit26.ReadOnly := false;

  end;

end;

procedure TfrmCadCompra.qryCompraAfterOpen(DataSet: TDataSet);
begin
  qryItensCompra.Close;
  qryItensCompra.Open;
  qrySoma.Close;
  qrySoma.Open;
end;

procedure TfrmCadCompra.qryCompraAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;

procedure TfrmCadCompra.qryCompraBeforePost(DataSet: TDataSet);
begin
  if qryCompra.State = dsInsert then
    qryCompraID.Value := dados.Numerador('COMPRA', 'ID', 'N', '', '');
end;

procedure TfrmCadCompra.qryCompraCalcFields(DataSet: TDataSet);
begin
  if qryCompraSTATUS.Value = 'N' then
    qryCompraVIRTUAL_SITUACAO.Value := 'NOVO';
  if qryCompraSTATUS.Value = 'A' then
    qryCompraVIRTUAL_SITUACAO.Value := 'ALTERANDO';
  if qryCompraSTATUS.Value = 'F' then
    qryCompraVIRTUAL_SITUACAO.Value := 'FECHADA';
  if qryCompraSTATUS.Value = 'C' then
    qryCompraVIRTUAL_SITUACAO.Value := 'CANCELADA';
end;

procedure TfrmCadCompra.qryCompraCHAVEValidate(Sender: TField);
begin
  if qryCompraLEUXML.Value = 'S' then
    exit;

  if trim(DBEdit5.EditText) <> '' then
  begin
    if not(ValidarChave(DBEdit5.EditText)) then
    begin
      DBEdit5.SetFocus;
      raise Exception.Create('Chave da NFe é Inválida');
      abort;
    end;
    qryCompraMODELO.Value := copy(DBEdit5.EditText, 21, 2);
    qryCompraSERIE.Value := copy(DBEdit5.EditText, 23, 3);
    qryCompraNR_NOTA.AsInteger := StrToInt(copy(DBEdit5.EditText, 26, 9));

  end;
end;

procedure TfrmCadCompra.qryCompraFRETEValidate(Sender: TField);
begin
  if qryCompraLEUXML.Value = 'S' then
    exit;

  qryCompraTOTAL.Value := (qryCompraSUBTOTAL.Value + qryCompraTOTAL_IPI.Value +
    qryCompraFRETE.Value + qryCompraDESPESAS.Value + qryCompraSEGURO.Value) -
    qryCompraDESCONTO.Value;
end;

procedure TfrmCadCompra.qryCompraNewRecord(DataSet: TDataSet);
begin
  qryCompraSTATUS.Value := 'A';
  qryCompraDTENTRADA.Value := DATE;
  qryCompraDTEMISSAO.Value := DATE;
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
  qryCompraAJUSTA_PV.Value := 'N';
  qryCompraAJUSTA_PC.Value := 'S';
  qryCompraLEUXML.Value := 'N';
  qryCompraEHFISCAL.Value := 'N';
  qryCompraEMPRESA.Value := dados.qryEmpresaCODIGO.Value;

end;

procedure TfrmCadCompra.CalculaTotais;
begin
  if qryCompraLEUXML.Value = 'S' then
    exit;

  qrySoma.Refresh;
  qryCompra.Edit;
  qryCompraSUBTOTAL.AsFloat := qrySomaTOTAL.AsFloat;
  qryCompraBASE_IPI.AsFloat := qrySomaBIPI.AsFloat;
  qryCompraBASE_ICM.AsFloat := qrySomaBICMS.AsFloat;
  qryCompraBASE_ST.AsFloat := qrySomaBST.AsFloat;
  qryCompraBASE_PIS.AsFloat := qrySomaBPIS.AsFloat;
  qryCompraBASE_COF.AsFloat := qrySomaBCOFINS.AsFloat;
  qryCompraTOTAL_IPI.AsFloat := qrySomaVLIPI.AsFloat;
  qryCompraTOTAL_ICM.AsFloat := qrySomaVLICMS.AsFloat;
  qryCompraTOTAL_ST.AsFloat := qrySomaVLST.AsFloat;
  qryCompraTOTAL_PIS.AsFloat := qrySomaVLPIS.AsFloat;
  qryCompraTOTAL_COF.AsFloat := qrySomaVLCOF.AsFloat;
  qryCompraTOTAL.Value := (qryCompraSUBTOTAL.Value + qryCompraTOTAL_IPI.Value +
    qryCompraFRETE.Value + qryCompraDESPESAS.Value + qryCompraSEGURO.Value) -
    qryCompraDESCONTO.Value;
  qryCompra.Post;
end;

procedure TfrmCadCompra.cbEmpresaEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadCompra.cbEmpresaExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadCompra.cbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SendMessage(self.Handle, WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCadCompra.qryItensCompraAfterDelete(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
  CalculaTotais;
end;

procedure TfrmCadCompra.qryItensCompraAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
  CalculaTotais;
end;

procedure TfrmCadCompra.qryItensCompraALIQ_ICMSValidate(Sender: TField);
begin
  qryItensCompraVL_ICMS.Value :=
    (qryItensCompraBASE_ICMS.Value * qryItensCompraALIQ_ICMS.Value) / 100;
end;

procedure TfrmCadCompra.AjustaCusto;
var
  ST,
  IPI,
  Frete,
  Despesa,
  Seguro,
  Desconto,
  Custo,
  Compra,
  Qtade,
  TotCusto: Currency;
begin
  try
    qryItensCompra.DisableControls;
    qryItensCompra.First;
    while not qryItensCompra.Eof do
    begin
      ST        :=  qryItensCompraVL_ST.AsCurrency;
      IPI       :=  qryItensCompraVL_IPI.AsCurrency;
      Frete     :=  qryItensCompraFRETE1.AsCurrency;
      Despesa   :=  qryItensCompraDESPESA.AsCurrency;
      Seguro    :=  qryItensCompraSEGURO.AsCurrency;
      Desconto  :=  qryItensCompraDESCONTO.AsCurrency;
      Qtade     :=  qryItensCompraQTD.AsCurrency;
      Compra    :=  qryItensCompraVL_UNITARIO.AsCurrency;
      if Desconto > 0 then
        begin
          Desconto  :=  Desconto / Qtade;
          Compra    :=  Compra - Desconto;
        end;
      TotCusto  :=  (ST + IPI + Frete + Despesa + Seguro) / Qtade;
      //Custo     :=  TotCusto - Desconto;
      Custo     :=  TotCusto;


      Custo     := Compra + Custo;
      //Custo     := qryItensCompraVL_UNITARIO.AsFloat + Custo;

      dados.AjustaCusto(qryItensCompraFK_PRODUTO.Value,
        Compra, Custo);

      qryItensCompra.Next;
    end;
  finally
    qryItensCompra.EnableControls;
  end;
end;

procedure TfrmCadCompra.AjustaPreco_Estoque;
begin
  try
    qryItensCompra.DisableControls;
    qryItensCompra.First;
    while not qryItensCompra.Eof do
    begin
      dados.AjustaPreco(qryItensCompraFK_PRODUTO.Value,
        qryItensCompraFK_COMPRA.Value, qryItensCompraVL_UNITARIO.AsFloat,
        qryItensCompraPR_VENDA.AsFloat, True);
      qryItensCompra.Next;
    end;
  finally
    qryItensCompra.EnableControls;
  end;
end;

procedure TfrmCadCompra.atualizagrade(tipo: string; qtd_atual: real;
  produto: Integer; grade: integer);
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
      dados.Conexao.Commit;
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
      dados.Conexao.Commit;
    end;
  end;
end;

procedure TfrmCadCompra.qryItensCompraBeforeDelete(DataSet: TDataSet);
begin
  dados.AtualizaEstoque(-1 * qryItensCompraQTD.AsFloat,
    qryItensCompraFK_PRODUTO.Value);
  atualizagrade('-', qryItensCompraQTD.AsFloat,
    qryItensCompraFK_PRODUTO.Value, qryItensCompraFK_GRADE_PRODUTO.Value);
end;

procedure TfrmCadCompra.qryItensCompraBeforeEdit(DataSet: TDataSet);
begin
  QuantidadeAnterior := qryItensCompraQTD.AsFloat;
end;

procedure TfrmCadCompra.qryItensCompraBeforeInsert(DataSet: TDataSet);
begin
  if (qryCompra.State in dsEditModes) then
    qryCompra.Post;
end;

procedure TfrmCadCompra.qryItensCompraBeforePost(DataSet: TDataSet);
begin
  if qryItensCompra.State = dsInsert then
    qryItensCompraID.Value := dados.Numerador('COMPRA_ITENS', 'ID',
      'N', '', '');

  FProduto := qryItensCompraFK_PRODUTO.Value;
  qryItensCompraFK_USUARIO.Value := dados.idUsuario;

  if qryCompraLEUXML.Value <> 'S' then
  begin
    qryItensCompraBASE_PIS.Value := qryItensCompraVL_ITEM.Value;
    qryItensCompraVL_PIS.AsFloat :=
      SimpleRoundTo
      (((qryItensCompraBASE_PIS.AsFloat * qryItensCompraALIQ_PIS.AsFloat)
      / 100), 2);

    qryItensCompraBASE_COF.Value := qryItensCompraVL_ITEM.Value;
    qryItensCompraVL_COF.AsFloat :=
      SimpleRoundTo((qryItensCompraBASE_COF.AsFloat *
      qryItensCompraALIQ_COF.AsFloat) / 100, -2);

    qryItensCompraBASE_IPI.Value := qryItensCompraVL_ITEM.Value;
    qryItensCompraVL_IPI.AsFloat :=
      SimpleRoundTo((qryItensCompraBASE_IPI.AsFloat *
      qryItensCompraALIQ_IPI.AsFloat) / 100, 2);

    qryItensCompraBASE_ST.Value := qryItensCompraVL_ITEM.Value;
    qryItensCompraVL_ST.AsFloat :=
      SimpleRoundTo((qryItensCompraBASE_ST.AsFloat *
      qryItensCompraALIQ_ST.AsFloat) / 100, 2);
  end;

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

procedure TfrmCadCompra.qryItensCompraFK_PRODUTOChange(Sender: TField);
begin
  if qryCompraLEUXML.Value = 'S' then
    exit;

  qryItensCompraVL_UNITARIO.Value := qryItensCompraVIRTUAL_PRECO.Value;
  qryItensCompraCST_PIS.Value := qryItensCompraVIRTUAL_CSTE.Value;
  qryItensCompraCST_COF.Value := qryItensCompraVIRTUAL_CSTE.Value;
  qryItensCompraCST_IPI.Value := qryItensCompraVIRTUAL_CTS_IPI.Value;
  qryItensCompraALIQ_COF.Value := qryItensCompraVIRTUAL_ALIQ_COF.Value;
  qryItensCompraALIQ_PIS.Value := qryItensCompraVIRTUAL_ALIQ_PIS.Value;
end;

procedure TfrmCadCompra.qryItensCompraNewRecord(DataSet: TDataSet);
begin
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

procedure TfrmCadCompra.qryItensCompraVL_UNITARIOValidate(Sender: TField);
begin

  if qryItensCompraQTD.Value < 0 then
    raise Exception.Create('Quantidade Inválida!');

  if qryItensCompraQTD.Value > 9999 then
    raise Exception.Create('Quantidade maior que o permitido!');

  if qryItensCompraVL_ITEM.Value < 0 then
    raise Exception.Create('Valor Inválido!');

  if qryItensCompraVL_ITEM.Value > 999999 then
    raise Exception.Create('Valor maior que o permitido!');

  qryItensCompraVL_ITEM.Value := qryItensCompraVL_UNITARIO.Value *
    qryItensCompraQTD.Value;
  qryItensCompraBASE_ICMS.Value := qryItensCompraVL_ITEM.Value;
end;

procedure TfrmCadCompra.btnAplicarMargemClick(Sender: TObject);
var
  vCompra, vMargem, vPorcentagem, vVenda: Real;
  procedure Calcular;
  begin
    if not (qryItensCompra.IsEmpty) then
      begin
        if Trim(edtMargemLucro.Text) = '' then
          vPorcentagem :=  0
        else
          vPorcentagem :=  StrToFloat(edtMargemLucro.Text);
        vMargem :=  vPorcentagem / 100;
        vCompra :=  0;
        vVenda  :=  0;
        vCompra :=  qryItensCompraVL_UNITARIO.AsFloat;
        vVenda  :=  (vMargem * vCompra) + vCompra;
        if not (qryItensCompra.State in [dsEdit, dsInsert]) then
          qryItensCompra.Edit;
        qryItensCompraPR_VENDA.AsFloat  :=  vVenda;
        qryItensCompra.Post;
      end
  else
    begin
      ShowMessage('Sem itens.');
    end;
  end;
begin
  if (RadioGroup1.ItemIndex = -1) then
    begin
      ShowMessage('Escolha como deseja aplicar a margem.');
      Exit
    end;
  vCompra       := 0;
  vMargem       := 0;
  vPorcentagem  := 0;
  vVenda        := 0;

  case RadioGroup1.ItemIndex of
    0:  //Selecionado
      begin
        Calcular;
      end;
    1: //Todos
      begin
        qryItensCompra.First;
        while not qryItensCompra.Eof do
          begin
            Calcular;
            qryItensCompra.Next;
          end;
      end;
  end;
end;

function TfrmCadCompra.TotalCompra: Extended;
begin
  result := qryCompraSUBTOTAL.AsFloat + qryCompraFRETE.AsFloat +
    qryCompraSEGURO.AsFloat + qryCompraDESPESAS.AsFloat +
    qryCompraTOTAL_IPI.AsFloat - qryCompraDESCONTO.AsFloat;
end;

procedure TfrmCadCompra.DBEdit20Exit(Sender: TObject);
begin
  if qryCompraLEUXML.Value <> 'S' then
  begin
    if not(qryCompra.State in dsEditModes) then
      qryCompra.Edit;
    qryCompraTOTAL.AsFloat := TotalCompra;
  end;
end;

procedure TfrmCadCompra.DBGridEh1DblClick(Sender: TObject);
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
        qryItensCompraFK_PRODUTO.Value;
      FrmCadProduto.qryProdutos.Open;
      FrmCadProduto.qryProdutos.Edit;

      FrmCadProduto.ShowModal;

    finally
      FrmCadProduto.Release;
      qryProd.Close;
      qryProd.Open;
    end;

  end;
end;

procedure TfrmCadCompra.DBGridEh1Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;
end;

procedure TfrmCadCompra.DBGridEh1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmCadCompra.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TfrmCadCompra.dsCompraDataChange(Sender: TObject; Field: TField);
begin
  DBGridEh1.ReadOnly := false;
  GroupBox2.Enabled := true;
  Panel3.Enabled := true;
  if qryCompraLEUXML.Value = 'S' then
  begin
    DBGridEh1.ReadOnly := true;
    GroupBox2.Enabled := false;
    Panel3.Enabled := false;
  end;
end;

procedure TfrmCadCompra.dsItensDataChange(Sender: TObject; Field: TField);
var
  vCompra, vMargem, vPorcentagem, vVenda: Real;
begin
  DBCheckBox3.Enabled := true;
  if not qryItensCompra.IsEmpty then
  begin
    DBCheckBox3.Enabled := false;
  end;
  //Mostrar previsão de Margem
  if not (qryItensCompra.IsEmpty) then
    begin
      if Trim(edtMargemLucro.Text) = '' then
        vPorcentagem :=  0
      else
        vPorcentagem :=  StrToFloat(edtMargemLucro.Text);
      vMargem :=  vPorcentagem / 100;
      vCompra :=  0;
      vVenda  :=  0;
      vCompra :=  qryItensCompraVL_UNITARIO.AsFloat;
      vVenda  :=  (vMargem * vCompra) + vCompra;
      lblValorCompra.Caption  := FormatFloat(',0.0000', vCompra);
      lblValorMargem.Caption  := FormatFloat(',0.0000', (vMargem * vCompra));
      lblValorVenda.Caption   := FormatFloat(',0.0000', vVenda);
      //Atualizar
      lblValorCompra.Refresh;
      lblValorMargem.Refresh;
      lblValorVenda.Refresh;
    end
  else
    begin
      lblValorCompra.Caption  :=  '0,0000';
      lblValorMargem.Caption  :=  '0,0000';
      lblValorVenda.Caption   :=  '0,0000';
    end;
end;

procedure TfrmCadCompra.edtMargemLucroChange(Sender: TObject);
begin
  dsItensDataChange(Self, qryItensCompraVL_UNITARIO);
end;

procedure TfrmCadCompra.edtMargemLucroKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9', '.', ',',#08, #13] ) then
    key:=#0;
end;

end.

