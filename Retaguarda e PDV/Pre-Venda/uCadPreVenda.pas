unit uCadPreVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, DBGridEh, DBCtrlsEh,
  DBLookupEh, System.Math, ACBrBase, ACBrEnterTab, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019White,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  dxSkinWXI;

type
  TFrmCadPreVenda = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtBuscaProd: TEdit;
    Label2: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Panel12: TPanel;
    edtEmp: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    DBText2: TDBText;
    Label3: TLabel;
    BtnBuscarProd: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText4: TDBText;
    Label14: TLabel;
    DBText5: TDBText;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBCnpjCpfCli: TDBText;
    Label20: TLabel;
    DBFantasiaCli: TDBText;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dsEmpresa: TDataSource;
    qryPreMaster: TFDQuery;
    qryPreMasterCODIGO: TIntegerField;
    qryPreMasterDATA_EMISSAO: TDateField;
    qryPreMasterID_CLIENTE: TIntegerField;
    qryPreMasterFK_USUARIO: TIntegerField;
    qryPreMasterFK_VENDEDOR: TIntegerField;
    qryPreMasterSUBTOTAL: TFMTBCDField;
    qryPreMasterDESCONTO: TFMTBCDField;
    qryPreMasterTOTAL: TFMTBCDField;
    qryPreMasterOBSERVACOES: TStringField;
    qryPreMasterSITUACAO: TStringField;
    qryPreMasterFKEMPRESA: TIntegerField;
    qryPreMasterPERCENTUAL: TFMTBCDField;
    qryPreDetalhe: TFDQuery;
    qryPreDetalheID_PRODUTO: TIntegerField;
    qryPreDetalheITEM: TSmallintField;
    qryPreDetalheQTD: TFMTBCDField;
    qryPreDetalhePRECO: TFMTBCDField;
    qryPreDetalheVALOR_ITEM: TFMTBCDField;
    qryPreDetalheVDESCONTO: TFMTBCDField;
    qryPreDetalhePVDESCONTO: TFMTBCDField;
    qryPreDetalheSITUACAO: TStringField;
    qryPreDetalheUNIDADE: TStringField;
    dsPreMaster: TDataSource;
    dsPreDetalhe: TDataSource;
    qryProd: TFDQuery;
    qryProdCODIGO: TIntegerField;
    qryProdDESCRICAO: TStringField;
    qryProdEFISCAL: TStringField;
    qryProdE_MEDIO: TFMTBCDField;
    cursor: TFDGUIxWaitCursor;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    dsVendedor: TDataSource;
    qryClientes: TFDQuery;
    qryClientesCODIGO: TIntegerField;
    qryClientesRAZAO: TStringField;
    qryClientesFANTASIA: TStringField;
    qryClientesCNPJ: TStringField;
    qryPreMasterVIRTUAL_CLIENTE: TStringField;
    qryPreMasterVIRTUAL_CNPJ: TStringField;
    qrySoma: TFDQuery;
    qryPreDetalheTTOTAL: TAggregateField;
    qryPreDetalheVIRTUAL_PRODUTO: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dsPesqProd: TDataSource;
    qryPesqProd: TFDQuery;
    qryPesqProdCODIGO: TIntegerField;
    qryPesqProdDESCRICAO: TStringField;
    qryPesqProdCODBARRA: TStringField;
    qryPesqProdPR_VENDA: TFMTBCDField;
    qryPesqProdQTD_ATUAL: TFMTBCDField;
    DBGrid2: TDBGrid;
    qryPesqProdUNIDADE: TStringField;
    qryPreDetalheTOTAL: TFMTBCDField;
    qryPreDetalheSUBTOTAL: TFMTBCDField;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
    qryPreDetalheCODIGO: TIntegerField;
    qryPreDetalheFK_PREVENDA: TIntegerField;
    qrySomaSUBTOTAL: TFMTBCDField;
    qrySomaDESCONTO: TFMTBCDField;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    qryPreDetalhePRODUTO: TStringField;
    cxFinalizar: TcxButton;
    cxImp: TcxButton;
    cxCancelar: TcxButton;
    btn_Gravar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure qryPreMasterAfterPost(DataSet: TDataSet);
    procedure qryPreDetalheAfterDelete(DataSet: TDataSet);
    procedure qryPreDetalheAfterPost(DataSet: TDataSet);
    procedure qryPreDetalheBeforeOpen(DataSet: TDataSet);
    procedure qryPreDetalheBeforePost(DataSet: TDataSet);
    procedure qryPreMasterBeforePost(DataSet: TDataSet);
    procedure qryPreMasterBeforeOpen(DataSet: TDataSet);
    procedure qryPreDetalheNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dsPesqProdStateChange(Sender: TObject);
    procedure edtBuscaProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBuscaProdChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure qryPreDetalheVDESCONTOValidate(Sender: TField);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscaProdEnter(Sender: TObject);
    procedure edtBuscaProdExit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboboxEh1Enter(Sender: TObject);
    procedure DBLookupComboboxEh1Exit(Sender: TObject);
    procedure DBLookupComboboxEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBuscarProdClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure cxFinalizarClick(Sender: TObject);
    procedure cxImpClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure qryPreMasterAfterScroll(DataSet: TDataSet);
  private
    procedure insereprevenda;
    procedure LocalizarProd;
    procedure InsereItem;
    procedure tamanho;
    procedure BuscaCliente;
    procedure CancelarPreVendasDetalhes;
    procedure FinalizarPreVendasDetalhes;
    procedure ImprimirPreVenda;
    procedure DescontoPreVenda;
    procedure RateaDesconto(VDesconto: Extended);
    procedure AtualizarDetalhesPreVenda;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPreVenda: TFrmCadPreVenda;

implementation

{$R *.dfm}

uses Udados, uPrincipal, uImpressaoPreVenda, uDescontoPreVenda;

procedure TFrmCadPreVenda.BtnBuscarProdClick(Sender: TObject);
begin
  edtBuscaProd.SetFocus;
end;

procedure TFrmCadPreVenda.AtualizarDetalhesPreVenda;
begin
  qryPreDetalhe.Close;
  qryPreDetalhe.UpdateOptions.UpdateMode := upWhereKeyOnly;
  qryPreDetalhe.ParamByName('FK_PREVENDA').AsInteger :=
    qryPreMaster.FieldByName('CODIGO').AsInteger;
  qryPreDetalhe.Open;
end;

procedure TFrmCadPreVenda.BuscaCliente;
var
  sRazao, sFantasia: string;
  iCod: Integer;
begin
  try
    Dados.ConsultaCliente(iCod, sRazao, sFantasia);
    if iCod = 0 then
      Exit;
    if not(qryPreMaster.State in [dsEdit, dsInsert]) then
      qryPreMaster.Edit;
    qryPreMasterID_CLIENTE.Value := iCod;
    qryPreMaster.Post;
  except
    qryPreMaster.Cancel;
  end;
end;

procedure TFrmCadPreVenda.CancelarPreVendasDetalhes;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'UPDATE PRE_VENDA_DETALHE SET SITUACAO = ''C'' ' +
      'WHERE FK_PREVENDA = ' + IntToStr(qryPreMasterCODIGO.AsInteger);
    qry.ExecSQL;
    qryPreDetalhe.Refresh;
  finally
    qry.Free;
  end;
end;

procedure TFrmCadPreVenda.cxCancelarClick(Sender: TObject);
var
  bIniciar: Boolean;
begin
  if not(qryPreMaster.State in dsEditModes) then
    qryPreMaster.Edit;
  qryPreMasterSITUACAO.AsString := 'C';
  qryPreMaster.Post;
  CancelarPreVendasDetalhes;
  Dados.Conexao.Commit;
  if FrmCadPreVenda.Tag = 0 then
  begin
    bIniciar := Application.MessageBox('Deseja iniciar uma nova Pré-Venda?',
      'Pré-Venda', MB_YESNO + MB_ICONQUESTION) = IDYES;
    if bIniciar then
      insereprevenda
    else
      Close;
  end
  else
    Close;
end;

procedure TFrmCadPreVenda.cxFinalizarClick(Sender: TObject);
var
  bIniciar: Boolean;
begin
  if not(qryPreMaster.State in dsEditModes) then
    qryPreMaster.Edit;
  qryPreMasterSITUACAO.AsString := 'F';
  qryPreMaster.Post;
  FinalizarPreVendasDetalhes;
  Dados.Conexao.Commit;

  ImprimirPreVenda;
  if FrmCadPreVenda.Tag = 0 then
  begin
    bIniciar := Application.MessageBox('Deseja iniciar uma nova Pré-Venda?',
      'Pré-Venda', MB_YESNO + MB_ICONQUESTION) = IDYES;
    if bIniciar then
      insereprevenda
    else
      Close;
  end
  else
    Close;
end;

procedure TFrmCadPreVenda.cxImpClick(Sender: TObject);
begin
  try
    if qryPreMaster.State in dsEditModes then
      qryPreMaster.Post;
    frmImpressaoPreVenda := TfrmImpressaoPreVenda.Create(Application);
    frmImpressaoPreVenda.iCodPreVenda := qryPreMasterCODIGO.AsInteger;
    frmImpressaoPreVenda.ShowModal;
  finally
    frmImpressaoPreVenda.Release;
  end;
end;

procedure TFrmCadPreVenda.DBEdit1Exit(Sender: TObject);
begin
  if not(qryPreDetalhe.State in dsEditModes) then
    qryPreDetalhe.Edit;
  qryPreDetalheVALOR_ITEM.AsFloat :=
    (qryPreDetalheQTD.AsFloat * qryPreDetalhePRECO.AsFloat);
  qryPreDetalheTOTAL.AsFloat := qryPreDetalheVALOR_ITEM.AsFloat -
    qryPreDetalheVDESCONTO.AsFloat;
end;

procedure TFrmCadPreVenda.DBEdit2Exit(Sender: TObject);
begin
  if not(qryPreDetalhe.State in dsEditModes) then
    qryPreDetalhe.Edit;
  qryPreDetalheVALOR_ITEM.AsFloat :=
    (RoundTo(qryPreDetalheQTD.AsFloat, -3) *
    RoundTo(qryPreDetalhePRECO.AsFloat, -3));
  qryPreDetalheTOTAL.AsFloat := qryPreDetalheVALOR_ITEM.AsFloat -
    RoundTo(qryPreDetalheVDESCONTO.AsFloat, -3);
end;

procedure TFrmCadPreVenda.DBEdit3Exit(Sender: TObject);
begin
  if not(qryPreDetalhe.State in dsEditModes) then
    qryPreDetalhe.Edit;

  qryPreDetalheVDESCONTO.AsFloat :=
    SimpleRoundTo((qryPreDetalheVALOR_ITEM.AsFloat *
    qryPreDetalhePVDESCONTO.AsFloat / 100), -2);
end;

procedure TFrmCadPreVenda.DBEdit4Exit(Sender: TObject);
begin
  if not(qryPreDetalhe.State in dsEditModes) then
    qryPreDetalhe.Edit;
  if qryPreDetalheVALOR_ITEM.Value > 0 then
    qryPreDetalhePVDESCONTO.Value :=
      SimpleRoundTo(100 - ((qryPreDetalheTOTAL.AsFloat * 100) /
      qryPreDetalheVALOR_ITEM.AsFloat), -2);
end;

procedure TFrmCadPreVenda.DBEdit5Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmCadPreVenda.DBEdit5Exit(Sender: TObject);
begin
  // ACBrEnterTab1.EnterAsTab  :=  True;
  btn_GravarClick(self);
end;

procedure TFrmCadPreVenda.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FormKeyDown(Sender, Key, Shift);
end;

procedure TFrmCadPreVenda.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #9) or (Key = #13) then
  begin
    Key := #0;
    edtBuscaProd.SetFocus;
    // limpar edits
    DBEdit1.Clear;
    DBEdit2.Clear;
    DBEdit3.Clear;
    DBEdit4.Clear;
    DBEdit5.Clear;
    DBText3.Caption := '';
  end;
end;

procedure TFrmCadPreVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFrmCadPreVenda.DBGrid1Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmCadPreVenda.DBGrid1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadPreVenda.DBGrid2DblClick(Sender: TObject);
begin
  InsereItem;
  edtBuscaProd.Clear;
  qryPesqProd.Close;
  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFrmCadPreVenda.DBGrid2Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmCadPreVenda.DBGrid2Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadPreVenda.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    edtBuscaProd.Clear;
    edtBuscaProd.SetFocus;
    qryPesqProd.Close;
  end;
end;

procedure TFrmCadPreVenda.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    DBGrid2DblClick(self);
  end;
end;

procedure TFrmCadPreVenda.DBLookupComboboxEh1Enter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmCadPreVenda.DBLookupComboboxEh1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadPreVenda.DBLookupComboboxEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #9) or (Key = #13) then
  begin
    Key := #0;
    edtBuscaProd.SetFocus;
  end;
end;

procedure TFrmCadPreVenda.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFrmCadPreVenda.DescontoPreVenda;
var
  VDesconto: Extended;
  PDesconto: Extended;
begin
  if qryPreMasterSUBTOTAL.AsFloat = 0 then
    Exit;
  try
    frmDescontoPreVenda := TfrmDescontoPreVenda.Create(Application);
    frmDescontoPreVenda.rValorPreVenda := qryPreMasterSUBTOTAL.AsFloat;
    frmDescontoPreVenda.ShowModal;
    // Ratear Desconto na Venda Detalhes
    VDesconto := frmDescontoPreVenda.rValorDesconto;
    if VDesconto > 0 then
    begin
      if not(qryPreMaster.State in dsEditModes) then
        qryPreMaster.Edit;
      qryPreMasterDESCONTO.AsFloat := VDesconto;
      qryPreMasterTOTAL.AsFloat := frmDescontoPreVenda.rResultadoDesconto;
      qryPreMaster.Post;
      RateaDesconto(VDesconto);
      qryPreDetalhe.Refresh;
    end;
  finally
    frmDescontoPreVenda.Release;
  end;
end;

procedure TFrmCadPreVenda.dsPesqProdStateChange(Sender: TObject);
begin
  DBGrid2.Visible := qryPesqProd.RecordCount > 0;
end;

procedure TFrmCadPreVenda.edtBuscaProdChange(Sender: TObject);
begin
  LocalizarProd;
end;

procedure TFrmCadPreVenda.edtBuscaProdEnter(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmCadPreVenda.edtBuscaProdExit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmCadPreVenda.edtBuscaProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
  begin
    if DBGrid2.Visible then
      DBGrid2.SetFocus;
  end
  else if Key = VK_RETURN then
  begin
    if qryPesqProd.RecordCount = 1 then
    begin
      InsereItem;
      edtBuscaProd.Clear;
      qryPesqProd.Close;
      DBEdit1.SetFocus;
      DBEdit1.SelectAll;
    end;
  end
  else
    FormKeyDown(Sender, Key, Shift);
end;

procedure TFrmCadPreVenda.FinalizarPreVendasDetalhes;
var
  qry: TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := Dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'UPDATE PRE_VENDA_DETALHE SET SITUACAO = ''F'' ' +
      'WHERE FK_PREVENDA = ' + IntToStr(qryPreMasterCODIGO.AsInteger);
    qry.ExecSQL;
    qryPreDetalhe.Refresh;
  finally
    qry.Free;
  end;
end;

procedure TFrmCadPreVenda.FormCreate(Sender: TObject);
begin
  DBGrid2.Top := 182;
  DBGrid2.Visible := False;
  qryPreDetalhe.UpdateOptions.UpdateMode := upWhereKeyOnly;
  qryPreDetalhe.FieldByName('CODIGO').ProviderFlags := [pfInWhere];
  qryPreDetalhe.FieldByName('CODIGO').AutoGenerateValue := arAutoInc;
end;

procedure TFrmCadPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 68) then
  begin
    DescontoPreVenda;
    Exit;
  end;
  case Key of
    VK_F2:
      cxFinalizarClick(self);
    VK_F3:
      cxImpClick(self);
    VK_F4:
      cxCancelarClick(self);
    VK_F7:
      edtBuscaProd.SetFocus;
    VK_F8:
      BuscaCliente;
    { VK_F9:
      FrmPrincipalPreVenda.MessageDlg('Em Desenvolvimento',
      'Cadastrar Cliente', tmAviso); }
    VK_F10:
      DBLookupComboboxEh1.SetFocus;
    VK_F12:
      btn_GravarClick(self);
    VK_ESCAPE:
      DBGrid2.Visible := False;
  end;
end;

procedure TFrmCadPreVenda.FormShow(Sender: TObject);
begin
  // Deixar na Tela Cheia
  { Align := AlNone;
    AutoSize := False;
    WindowState := wsNormal;
    Top := 0;
    Left := 0;
    Width := Screen.Width;
    Height := Screen.Height; }
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  PageControl2.ActivePageIndex := 0;
  tamanho;
  if FrmCadPreVenda.Tag = 0 then
    insereprevenda;
  edtBuscaProd.SetFocus;
end;

procedure TFrmCadPreVenda.ImprimirPreVenda;
begin
  try
    frmImpressaoPreVenda := TfrmImpressaoPreVenda.Create(Application);
    frmImpressaoPreVenda.iCodPreVenda := qryPreMasterCODIGO.AsInteger;
    if bPerguntaTipoImp then
      frmImpressaoPreVenda.ShowModal
    else
      frmImpressaoPreVenda.Imprimir(iTipoImp);
  finally
    frmImpressaoPreVenda.Release;
  end;
end;

procedure TFrmCadPreVenda.InsereItem;
var
  vItem: Integer;
begin
  try
    if qryPreMaster.State in [dsInsert, dsEdit] then
      qryPreMaster.Post;
    Dados.Conexao.Commit;

    if not(qryPesqProdCODIGO.Value > 0) then
      Exit;

    if qryPesqProdPR_VENDA.AsFloat <= 0 then
    begin
      ShowMessage('Produto está com o preço inválido');
      edtBuscaProd.SetFocus;
      Exit;
    end;

    if qryPreDetalhe.State in dsEditModes then
      qryPreDetalhe.Cancel;

    qryPreDetalhe.Last;
    vItem := qryPreDetalheITEM.AsInteger + 1;

    qryPreDetalhe.Append;
    qryPreDetalheID_PRODUTO.Value := qryPesqProdCODIGO.Value;
    qryPreDetalheITEM.Value := vItem;
    qryPreDetalhePRECO.AsFloat := qryPesqProdPR_VENDA.AsFloat;
    qryPreDetalheQTD.AsFloat := 1;
    qryPreDetalheVALOR_ITEM.AsFloat := qryPesqProdPR_VENDA.AsFloat;
    qryPreDetalheTOTAL.AsFloat := qryPesqProdPR_VENDA.AsFloat;
    qryPreDetalheUNIDADE.AsString := qryPesqProdUNIDADE.AsString;
    qryPreDetalhePRODUTO.AsString := qryPesqProdDESCRICAO.AsString;
  except
    on E: Exception do
      Application.MessageBox(PChar('Falha: ' + sLineBreak + E.Message),
        'Falha ao Inserir Item', 0 + 16);
  end;
end;

procedure TFrmCadPreVenda.insereprevenda;
var
  codigo, J: Integer;
begin
  codigo := 0;
  edtBuscaProd.Clear;

  qryPreMaster.Close;
  qryPreMaster.Params[0].Value := codigo;
  qryPreMaster.Open;

  qryPreMaster.Insert;

  qryPreMasterFKEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
  qryPreMasterFK_USUARIO.Value := Dados.IdUsuario;
  qryPreMasterID_CLIENTE.Value := Dados.qryConfigCLIENTE_PADRAO.Value;
  qryPreMasterFK_VENDEDOR.Value := Dados.qryConfigVENDEDOR_PADRAO.Value;

  Dados.qryConsulta.Close;
  Dados.qryConsulta.SQL.Text :=
    ' select FK_VENDEDOR from USUARIOS where codigo=:id';
  Dados.qryConsulta.Params[0].Value := Dados.IdUsuario;
  Dados.qryConsulta.Open;

  if not Dados.qryConsulta.FieldByName('FK_VENDEDOR').IsNull then
    qryPreMasterFK_VENDEDOR.Value := Dados.qryConsulta.FieldByName
      ('FK_VENDEDOR').Value;

  qryPreMasterDATA_EMISSAO.Value := date;
  qryPreMasterSUBTOTAL.Value := 0;
  qryPreMasterDESCONTO.Value := 0;
  qryPreMasterPERCENTUAL.Value := 0;
  qryPreMasterDESCONTO.Value := 0;
  qryPreMasterTOTAL.Value := 0;
  qryPreMasterSITUACAO.Value := 'X';
  codigo := Dados.Numerador('PRE_VENDA_MASTER', 'CODIGO', 'N', '', '');
  qryPreMasterCODIGO.AsFloat := codigo;

  for J := 0 to 3 do
  begin
    try
      qryPreMaster.Post;
      Dados.Conexao.Commit;
      Break;
    except
      on E: Exception do
      begin
        if POS('violation of PRIMARY or UNIQUE KEY constraint', E.Message) > 0
        then
        begin
          codigo := Dados.Numerador('PRE_VENDA_MASTER', 'CODIGO', 'N', '', '');
          qryPreMasterCODIGO.AsFloat := codigo;
        end
        else
        begin
          ShowMessage('Falha ao inserir pre-venda.' + sLineBreak + 'Falha:' +
            sLineBreak + E.Message);
          Break;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadPreVenda.LocalizarProd;
begin
  try
    if Length(Trim(edtBuscaProd.Text)) > 0 then
    begin
      qryPesqProd.Close;
      qryPesqProd.Params[0].Value := Dados.qryEmpresaCODIGO.Value;
      qryPesqProd.Params[1].Value := Copy(edtBuscaProd.Text, 1, 6);
      qryPesqProd.Params[2].Value := '%' + Copy(edtBuscaProd.Text, 1, 18) + '%';
      qryPesqProd.Params[3].Value := '%' + Copy(edtBuscaProd.Text, 1, 98) + '%';
      qryPesqProd.Open;
    end
    else
      qryPesqProd.Close;
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Falha: ' + sLineBreak + E.Message),
        'Localizar Produto', 0 + 16);
      qryPesqProd.Close;
    end;
  end;
end;

procedure TFrmCadPreVenda.qryPreDetalheAfterDelete(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;

  qrySoma.Close;
  qrySoma.Params[0].Value := qryPreMasterCODIGO.Value;
  qrySoma.Open;

  qryPreMaster.Edit;
  qryPreMasterSUBTOTAL.AsFloat := qrySomaSUBTOTAL.AsFloat;
  qryPreMasterDESCONTO.AsFloat := qrySomaDESCONTO.AsFloat;
  qryPreMasterTOTAL.AsFloat := qrySomaSUBTOTAL.AsFloat -
    qrySomaDESCONTO.AsFloat;
  qryPreMaster.Post;
end;

procedure TFrmCadPreVenda.qryPreDetalheAfterPost(DataSet: TDataSet);
begin
  if qryPreDetalheCODIGO.IsNull then
  begin
    qryPreDetalhe.Refresh;
  end;

  Dados.Conexao.Commit;

  qrySoma.Close;
  qrySoma.Params[0].Value := qryPreMasterCODIGO.Value;
  qrySoma.Open;

  qryPreMaster.Edit;
  qryPreMasterSUBTOTAL.AsFloat := qrySomaSUBTOTAL.AsFloat;
  qryPreMasterDESCONTO.AsFloat := qrySomaDESCONTO.AsFloat;
  qryPreMasterTOTAL.AsFloat := qrySomaSUBTOTAL.AsFloat -
    qrySomaDESCONTO.AsFloat;
  qryPreMaster.Post;
end;

procedure TFrmCadPreVenda.qryPreDetalheBeforeOpen(DataSet: TDataSet);
begin
  qryProd.Close;
  qryProd.Open;
end;

procedure TFrmCadPreVenda.qryPreDetalheBeforePost(DataSet: TDataSet);
begin
  if qryPreDetalheCODIGO.IsNull then
    raise Exception.Create('Erro: CODIGO não pode ser NULL!');
  qryPreDetalheTOTAL.AsFloat := qryPreDetalheVALOR_ITEM.AsFloat -
    qryPreDetalheVDESCONTO.AsFloat;
end;

procedure TFrmCadPreVenda.qryPreDetalheNewRecord(DataSet: TDataSet);
begin

  qryPreDetalheFK_PREVENDA.Value := qryPreMasterCODIGO.Value;
  qryPreDetalheQTD.AsFloat := 0;
  qryPreDetalhePRECO.AsFloat := 0;
  qryPreDetalheVALOR_ITEM.AsFloat := 0;
  qryPreDetalheVDESCONTO.AsFloat := 0;
  qryPreDetalhePVDESCONTO.AsFloat := 0;
  qryPreDetalheTOTAL.AsFloat := 0;
  qryPreDetalheSUBTOTAL.AsFloat := 0;
  qryPreDetalheSITUACAO.Value := 'X';
end;

procedure TFrmCadPreVenda.qryPreDetalheVDESCONTOValidate(Sender: TField);
begin
  if not(qryPreDetalhe.State in dsEditModes) then
    qryPreDetalhe.Edit;
  qryPreDetalheTOTAL.AsFloat := qryPreDetalheVALOR_ITEM.AsFloat -
    qryPreDetalheVDESCONTO.AsFloat;
end;

procedure TFrmCadPreVenda.qryPreMasterAfterPost(DataSet: TDataSet);
begin
  Dados.Conexao.Commit;
end;

procedure TFrmCadPreVenda.qryPreMasterAfterScroll(DataSet: TDataSet);
begin
  AtualizarDetalhesPreVenda;
end;

procedure TFrmCadPreVenda.qryPreMasterBeforeOpen(DataSet: TDataSet);
begin
  Dados.qryVendedor.Close;
  Dados.qryVendedor.Open;

  qryClientes.Close;
  qryClientes.Open;
end;

procedure TFrmCadPreVenda.qryPreMasterBeforePost(DataSet: TDataSet);
begin
  if not(qryPreMasterID_CLIENTE.AsInteger > 0) then
    qryPreMasterID_CLIENTE.AsInteger := Dados.qryConfigCLIENTE_PADRAO.Value;

  qryPreMasterTOTAL.Value := qryPreMasterSUBTOTAL.Value -
    qryPreMasterDESCONTO.Value;
end;

procedure TFrmCadPreVenda.RateaDesconto(VDesconto: Extended);
var
  qry: TFDQuery;
  PDesconto: Extended;
  VDescontoItem: Extended;
  VDescontoTot: Extended;
  VTemp: Extended;
begin
  try
    PDesconto := SimpleRoundTo(100 - ((qryPreMasterTOTAL.AsFloat * 100) /
      qryPreMasterSUBTOTAL.AsFloat), -2);
    qry := TFDQuery.Create(nil);
    qry.Connection := Dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text := 'SELECT * FROM PRE_VENDA_DETALHE ' + 'WHERE FK_PREVENDA = '
      + IntToStr(qryPreMasterCODIGO.AsInteger) + ' ' + 'ORDER BY CODIGO ';
    qry.Open;
    VDescontoTot := 0;
    VTemp := 0;
    qry.First;
    while not qry.Eof do
    begin
      VDescontoItem := SimpleRoundTo
        ((qry.FieldByName('VALOR_ITEM').AsFloat * PDesconto / 100), -2);
      VDescontoTot := VDescontoTot + VDescontoItem;
      qry.Edit;
      qry.FieldByName('VDESCONTO').AsFloat := VDescontoItem;
      qry.FieldByName('PVDESCONTO').AsFloat := PDesconto;
      qry.FieldByName('TOTAL').AsFloat := qry.FieldByName('VALOR_ITEM').AsFloat
        - VDescontoItem;
      qry.Post;
      qry.Next;
    end;
    if VDescontoTot <> VDesconto then
    begin
      qry.Last;
      qry.Edit;
      if VDesconto > VDescontoTot then
      begin
        VTemp := VDesconto - VDescontoTot;
        VDescontoItem := qry.FieldByName('VDESCONTO').AsFloat + VTemp;
        qry.FieldByName('TOTAL').AsFloat := qry.FieldByName('VALOR_ITEM')
          .AsFloat - VDescontoItem;
      end
      else if VDesconto < VDescontoTot then
      begin
        VTemp := VDescontoTot - VDesconto;
        VDescontoItem := qry.FieldByName('VDESCONTO').AsFloat - VTemp;
        qry.FieldByName('VDESCONTO').AsFloat := VDescontoItem;
        qry.FieldByName('TOTAL').AsFloat := qry.FieldByName('VALOR_ITEM')
          .AsFloat - VDescontoItem;
      end;
      qry.Post;
    end;
  finally
    qry.Free;
  end;
end;

procedure TFrmCadPreVenda.btn_GravarClick(Sender: TObject);
begin
  if qryPreDetalhe.State in dsEditModes then
  begin
    qryPreDetalhe.Post;
  end;
  edtBuscaProd.SetFocus;
end;

procedure TFrmCadPreVenda.tamanho;
begin
  DBGrid1.Columns[0].Width := round(PageControl2.Width * 0.05); // ITEM
  DBGrid1.Columns[1].Width := round(PageControl2.Width * 0.05); // ID_PRODUTO
  DBGrid1.Columns[2].Width := round(PageControl2.Width * 0.37);
  // VIRTUAL_PRODUTO
  DBGrid1.Columns[3].Width := round(PageControl2.Width * 0.10); // UNIDADE
  DBGrid1.Columns[4].Width := round(PageControl2.Width * 0.06); // QTD
  DBGrid1.Columns[5].Width := round(PageControl2.Width * 0.06); // PRECO
  DBGrid1.Columns[6].Width := round(PageControl2.Width * 0.06); // VALOR_ITEM
  DBGrid1.Columns[7].Width := round(PageControl2.Width * 0.06); // VDESCONTO
  DBGrid1.Columns[8].Width := round(PageControl2.Width * 0.06); // PVDESCONTO
  DBGrid1.Columns[9].Width := round(PageControl2.Width * 0.08); // TOTAL
end;

end.
