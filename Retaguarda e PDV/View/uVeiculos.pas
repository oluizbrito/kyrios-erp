unit uVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask,
  DBCtrlsEh, ACBrBase, ACBrEnterTab, frxClass, frxDBSet, frxExportPDF, DBGridEh,
  DBLookupEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, frxExportBaseDialog,
  FireDAC.Stan.StorageBin;

type
  TfrmVeiculos = class(TForm)
    dsVeiculo_Cavalo: TDataSource;
    PageControl1: TPageControl;
    Lista: TTabSheet;
    Cadastro: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    DBCheckBox1: TDBCheckBox;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    bbNovo: TSpeedButton;
    bbAlterar: TSpeedButton;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBGrupo: TfrxDBDataset;
    ACBrEnterTab1: TACBrEnterTab;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label8: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    PageControl2: TPageControl;
    Reboque: TTabSheet;
    DBGridEh1: TDBGridEh;
    dsVeiculo_Reboque: TDataSource;
    Label11: TLabel;
    dsCidade: TDataSource;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit24: TDBEdit;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label34: TLabel;
    DBMemo1: TDBMemo;
    DBEdit31: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    dsUsuarios: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Manutencao: TTabSheet;
    SpeedButton1: TSpeedButton;
    PageControlManutencao: TPageControl;
    ListaManutencao: TTabSheet;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButtonAlterarManutencao: TSpeedButton;
    SpeedButtonCancelarManutencao: TSpeedButton;
    GroupBox2: TGroupBox;
    EditLocManutencao: TEdit;
    DadosManutencao: TTabSheet;
    Panel7: TPanel;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    SpeedButtonGravarManutencao: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dsManutencao: TDataSource;
    dsManutencaoItem: TDataSource;
    dsMotorista: TDataSource;
    Label38: TLabel;
    Label40: TLabel;
    dsFornecedor: TDataSource;
    Label41: TLabel;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    Label43: TLabel;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    DBEdit38: TDBEdit;
    Label45: TLabel;
    DBMemo2: TDBMemo;
    Label46: TLabel;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    qryAux: TFDQuery;
    DBlucbServico: TDBLookupComboboxEh;
    Label39: TLabel;
    dsTipoServico: TDataSource;
    EditDescricaoTipoServico: TEdit;
    SpeedButtonAddItem: TSpeedButton;
    SpeedButtonRemoverItem: TSpeedButton;
    PanelAddItem: TPanel;
    Label47: TLabel;
    DBEditDescItem: TDBEdit;
    DBComboBoxEhTipo: TDBComboBoxEh;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit39: TDBEdit;
    Label50: TLabel;
    DBEdit40: TDBEdit;
    Label51: TLabel;
    DBEdit41: TDBEdit;
    SpeedButtonSalvarItem: TSpeedButton;
    SpeedButtonCancelarItem: TSpeedButton;
    panelItens: TPanel;
    PanelListaItens: TPanel;
    panelFotterAddItens: TPanel;
    PageControl3: TPageControl;
    DadosGerais: TTabSheet;
    Financeiro: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbNovoClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnImpClick(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsVeiculo_CavaloStateChange(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dsManutencaoStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButtonAlterarManutencaoClick(Sender: TObject);
    procedure SpeedButtonGravarManutencaoClick(Sender: TObject);
    procedure DBlucbServicoChange(Sender: TObject);
    procedure SpeedButtonAddItemClick(Sender: TObject);
    procedure SpeedButtonCancelarItemClick(Sender: TObject);
    procedure SpeedButtonSalvarItemClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButtonCancelarManutencaoClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButtonRemoverItemClick(Sender: TObject);
  private
    { Private declarations }
    procedure DeleteTRIGGER;
  public
    idx: Integer;
    vOrdem: string;
    procedure localiza;
    { Public declarations }
  end;

var
  frmVeiculos: TfrmVeiculos;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados;

procedure TfrmVeiculos.bbAlterarClick(Sender: TObject);
begin

  if Dados.qryVeiculos_cavalo.IsEmpty then
    exit;


  PageControl1.ActivePage := Cadastro;
  Dados.qryVeiculos_cavalo.edit;
  Panel1.Enabled := true;
  DBEdit2.SetFocus;

end;

procedure TfrmVeiculos.bbNovoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Cadastro;
  Dados.qryVeiculos_cavalo.Insert;
  Dados.qryVeiculos_cavaloATIVO.Value := 'S';
  Panel1.Enabled := true;

end;

procedure TfrmVeiculos.bbSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVeiculos.DBGrid1DblClick(Sender: TObject);
begin
  bbAlterarClick(self);
end;

procedure TfrmVeiculos.DBGrid1TitleClick(Column: TColumn);
var i:integer;
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
    vOrdem := ' ASC';
  idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'Placa';
  DBGrid1.Columns[1].Title.Caption := 'Descrição';
  DBGrid1.Columns[2].Title.Caption := 'RENAVAM';
  DBGrid1.Columns[3].Title.Caption := 'RNTC';
  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  edtLoc.Clear;

  edtLoc.SetFocus;

  localiza;

end;

procedure TfrmVeiculos.DBGrid2DblClick(Sender: TObject);
begin
  SpeedButtonAlterarManutencaoClick(self);
end;

procedure TfrmVeiculos.DBGridEh1Exit(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := true;
end;

procedure TfrmVeiculos.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGridEh1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TfrmVeiculos.DBlucbServicoChange(Sender: TObject);
begin
  EditDescricaoTipoServico.Text := Dados.qryManutencaoTipoDESCRICAO.Value;
end;

procedure TfrmVeiculos.DeleteTRIGGER;
var
  qry: TFDQuery;
begin
  try
    qry :=  TFDQuery.Create(nil);
    qry.Connection  :=  dados.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Text  :=
      'select * '+
      'from rdb$triggers '+
      'where upper(rdb$trigger_name) = upper(''TRG_VEICULOS_CAVALO_CARGA'') ';
    qry.Open;
    if not qry.IsEmpty then
      begin
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Text  :=
          'DROP TRIGGER TRG_VEICULOS_CAVALO_CARGA';
        qry.ExecSQL;
        dados.Conexao.CommitRetaining;
      end;
  finally
    qry.Free;
  end;
end;

procedure TfrmVeiculos.dsManutencaoStateChange(Sender: TObject);
begin
  Dados.qryManutencaoItem.close;
  Dados.qryManutencaoItem.Params[0].Value := Dados.qryManutencaoCODIGO.Value;
  Dados.qryManutencaoItem.Open;
end;

procedure TfrmVeiculos.dsVeiculo_CavaloStateChange(Sender: TObject);
begin
  Dados.qryVeiculos_Reboque.close;
  Dados.qryVeiculos_Reboque.Params[0].Value := Dados.qryVeiculos_cavaloPLACA.Value;
  Dados.qryVeiculos_Reboque.Open;

  Dados.qryManutencao.close;
  Dados.qryManutencao.Params[0].Value := Dados.qryVeiculos_cavaloPLACA.Value;
  Dados.qryManutencao.Open;
end;

procedure TfrmVeiculos.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmVeiculos.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    Dados.qryVeiculos_cavalo.Prior;
  if Key = VK_DOWN then
    Dados.qryVeiculos_cavalo.Next;
end;

procedure TfrmVeiculos.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if idx = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TfrmVeiculos.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;
end;

procedure TfrmVeiculos.FormCreate(Sender: TObject);
begin
  vOrdem := 'asc';
end;

PRocedure TfrmVeiculos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) then
    Key := 0;

  if PageControl1.ActivePageIndex = 0 then
  begin
    if Key = vk_f2 then
    begin
      bbNovoClick(self);
      abort;
    end;
    if Key = vk_f3 then
    begin
      bbAlterarClick(self);
      abort;
    end;
    if Key = vk_f4 then
    begin
      btnImpClick(self);
      abort;
    end;
    if Key = vk_f6 then
    begin
      edtLoc.SetFocus;
      abort;
    end;
    if Key = VK_ESCAPE then
    begin
      bbSairClick(self);
      abort;
    end;
  end
  else
  begin
    if Key = VK_F5 then
      btnGravarClick(self);
    if Key = VK_ESCAPE then
      if Application.messageBox
        ('Tem Certeza de que deseja sair do cadastro de Grupos?', 'Confirmação',
        mb_YesNo) = mrYes then
      begin
        btnCancelarClick(self);
      end;
  end;

end;

procedure TfrmVeiculos.FormShow(Sender: TObject);
begin
  idx := 0;
  PageControl1.ActivePage := Lista;
  PageControl2.ActivePage := Reboque;

  // FORNECEDOR DO COMBO DA TELA DE MANUTENÇÃO
  with qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODIGO FROM PESSOA WHERE FORN = ' + QuotedStr('S'));
    Open;
  end;

  if qryAux.RecordCount > 0 then
  begin
    Dados.qryFornecedor.close;
    Dados.qryFornecedor.Params[0].Value := 1;
    Dados.qryFornecedor.Open;
  end;

  Dados.qryManutencaoTipo.close;
  Dados.qryManutencaoTipo.Open;

  Dados.qryFornecedor.close;
  Dados.qryFornecedor.Open;

  // MOTORISTA DO COMBO DA TELA DE MANUTENÇÃO
  with qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODIGO FROM TRANSPORTADORA_MOTORISTA');
    Open;
  end;

  if qryAux.RecordCount > 0 then
  begin
    Dados.qryMotorista.close;
    Dados.qryMotorista.Params[0].Value := 1;
    Dados.qryMotorista.Open;
  end;

  Dados.qryMotorista.close;
  Dados.qryMotorista.Open;



  Dados.qryManutencaoItem.close;
  Dados.qryManutencaoItem.Open;

  Dados.qryCidade.close;
  Dados.qryCidade.Open;

  Dados.qryVeiculo_Carroceria.close;
  Dados.qryVeiculo_Carroceria.Open;

  Dados.qryVeiculo_tipo.close;
  Dados.qryVeiculo_tipo.Open;

  Dados.qryUsuarios.close;
  Dados.qryUsuarios.Open;

  Dados.qryManutencao.close;
  Dados.qryManutencao.Open;

  localiza;
end;

procedure TfrmVeiculos.localiza;
var
  filtro, ordem: string;
begin
  filtro := '';
  ordem := '';

  Dados.qryVeiculos_cavalo.SQL.Text :=
    'select * from veiculos_cavalo /*where*/';

  if trim(edtLoc.Text) <> '' then
    case idx of
      0:
        filtro := ' where placa=' + edtLoc.Text;
      1:
        filtro := ' where descricao like ' + QuotedStr(edtLoc.Text + '%');
      2:
        filtro := ' where RENAVAM like ' + QuotedStr(edtLoc.Text + '%');
      3:
        filtro := ' where RNTC like ' + QuotedStr(edtLoc.Text + '%');

    end;

  case idx of
    0:
      ordem := ' order by placa ' + vOrdem;
    1:
      ordem := ' order by descricao ' + vOrdem;
    2:
      ordem := ' order by RENAVAM ' + vOrdem;
    3:
      ordem := ' order by RNTC ' + vOrdem;
  end;
  Dados.qryVeiculos_cavalo.close;
  Dados.qryVeiculos_cavalo.SQL.Text :=
    StringReplace(Dados.qryVeiculos_cavalo.SQL.Text, '/*where*/',
    filtro + ordem, [rfReplaceAll]);
  Dados.qryVeiculos_cavalo.Open;
end;

procedure TfrmVeiculos.SpeedButton1Click(Sender: TObject);
begin
  PageControl1.ActivePage          := Manutencao;
  PageControlManutencao.ActivePage := ListaManutencao;
end;

procedure TfrmVeiculos.SpeedButton2Click(Sender: TObject);
begin
  Dados.qryManutencao.Insert;
  PageControlManutencao.ActivePage       := DadosManutencao;
  Dados.qryManutencaoVEICULO_PLACA.Value := Dados.qryVeiculos_cavaloPLACA.Value;
  EditDescricaoTipoServico.Text          := '';
end;

procedure TfrmVeiculos.SpeedButtonAlterarManutencaoClick(Sender: TObject);
begin
  if Dados.qryManutencao.IsEmpty then
    exit;

  PageControlManutencao.ActivePage := DadosManutencao;
  Dados.qryManutencao.edit;
  DBLookupComboboxEh4.SetFocus;
end;

procedure TfrmVeiculos.SpeedButtonGravarManutencaoClick(Sender: TObject);
begin
  DeleteTRIGGER;

  if Dados.qryManutencao.State in [dsInsert, dsEdit] then
  begin

    if Dados.qryManutencaoTIPO_SERVICO_CODIGO.AsString = '' then
    begin
      ShowMessage('Preencha o tipo de serviço.');
      DBlucbServico.SetFocus;
      Exit;
    end;


    Dados.qryManutencaoVEICULO_PLACA.Value := Dados.qryVeiculos_cavaloPLACA.Value;

    Dados.qryManutencao.Post;
    Dados.Conexao.CommitRetaining;
  end;

  PageControlManutencao.ActivePage := ListaManutencao;
end;

procedure TfrmVeiculos.SpeedButtonRemoverItemClick(Sender: TObject);
begin
  if Dados.qryManutencaoItem.IsEmpty then
    exit;

  if MessageDlg('Remover item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Dados.qryManutencaoItem.Delete;
    Dados.Conexao.CommitRetaining;

    Dados.qryManutencaoItem.Close;
    Dados.qryManutencaoItem.Open;
  end;
end;

procedure TfrmVeiculos.SpeedButton8Click(Sender: TObject);
begin
  if Dados.qryManutencao.State in [dsInsert, dsEdit] then
    Dados.qryManutencao.Cancel;

  if Dados.qryManutencaoItem.State in [dsInsert, dsEdit] then
    Dados.qryManutencaoItem.Cancel;

  PageControlManutencao.ActivePage := ListaManutencao;
  SpeedButtonCancelarItemClick(Self);
end;

procedure TfrmVeiculos.SpeedButtonAddItemClick(Sender: TObject);
begin
  ACBrEnterTab1.EnterAsTab := false;

  if (Dados.qryManutencaoCODIGO.Value = 0) then
  begin
    if MessageDlg('É necessário salvar os dados já preenchidos antes de incluir um ítem. Deseja salvar as alterações?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      DeleteTRIGGER;

      if Dados.qryManutencao.State in [dsInsert, dsEdit] then
      begin
        if Dados.qryManutencaoTIPO_SERVICO_CODIGO.AsString = '' then
        begin
          ShowMessage('Preencha o tipo de serviço.');
          DBlucbServico.SetFocus;
          Exit;
        end;

        Dados.qryManutencaoVEICULO_PLACA.Value := Dados.qryVeiculos_cavaloPLACA.Value;

        Dados.qryManutencao.Post;
        Dados.Conexao.CommitRetaining;

        Dados.qryManutencao.Close;
        Dados.qryManutencao.Open;
      end;

      Dados.qryManutencao.Edit;

    end
    else
    begin
      DBlucbServico.SetFocus;
      Exit;
    end;
  end;

  DBlucbServico.SetFocus;
  Dados.qryManutencaoItem.Insert;

  PanelAddItem.Visible                := True;
  panelListaItens.Visible             := False;
  SpeedButtonGravarManutencao.Enabled := False;

  Dados.qryManutencaoItemTIPO.Value   := 'PEÇA';
  DBEditDescItem.SetFocus;
end;

procedure TfrmVeiculos.SpeedButtonCancelarItemClick(Sender: TObject);
begin
  Dados.qryManutencaoItem.Cancel;

  PanelAddItem.Visible                := False;
  panelListaItens.Visible             := True;
  SpeedButtonGravarManutencao.Enabled := True;
end;

procedure TfrmVeiculos.SpeedButtonCancelarManutencaoClick(Sender: TObject);
begin
  PageControl1.ActivePage := Cadastro;
end;

procedure TfrmVeiculos.SpeedButtonSalvarItemClick(Sender: TObject);
begin
  Dados.qryManutencaoItemMANUTENCAO_CODIGO.Value := Dados.qryManutencaoCODIGO.Value;

  if (Dados.qryManutencaoItemTIPO.AsString = '') or
      (Dados.qryManutencaoItemDESCRICAO.AsString = '') or
      (Dados.qryManutencaoItemQUANTIDADE.AsString = '') or
      (Dados.qryManutencaoItemVALOR_UNITARIO.AsString = '') or
      (Dados.qryManutencaoItemDESCONTO.AsString = '') then
  begin
    ShowMessage('Preencha TODOS os campos corretamente.');
    DBEditDescItem.SetFocus;
    Exit;
  end;

  Dados.qryManutencaoItem.Post;
  Dados.Conexao.CommitRetaining;

  Dados.qryManutencaoItem.Close;
  Dados.qryManutencaoItem.Open;

  PanelAddItem.Visible                := False;
  panelListaItens.Visible             := True;
  SpeedButtonGravarManutencao.Enabled := True;
end;

procedure TfrmVeiculos.btnCancelarClick(Sender: TObject);
begin
  if Dados.qryVeiculos_cavalo.State in [dsInsert, dsEdit] then
    Dados.qryVeiculos_cavalo.Cancel;
  PageControl1.ActivePage := Lista;
  edtLoc.SetFocus;
end;

procedure TfrmVeiculos.btnGravarClick(Sender: TObject);
begin
  DeleteTRIGGER;

  if Dados.qryVeiculos_cavalo.State in [dsInsert, dsEdit] then
  begin
    DBCheckBox1.SetFocus;

    if trim(Dados.qryVeiculos_cavaloPLACA.Value) = '' then
    begin
      ShowMessage('Digite a Placa!');
      DBEdit2.SetFocus;
      exit;
    end;

    if trim(Dados.qryVeiculos_cavaloDESCRICAO.Value) = '' then
    begin
      ShowMessage('Digite o Descrição!');
      DBEdit2.SetFocus;
      exit;
    end;

    if Dados.qryVeiculos_cavalo.State in [dsInsert] then
    begin
      Dados.qryVeiculos_cavaloDATA_CADASTRO.Value := now;
    end;

    if Dados.qryVeiculos_cavalo.State in [dsEdit] then
    begin
      Dados.qryVeiculos_cavaloDATA_MODIFICACAO.Value := now;
    end;

    Dados.qryVeiculos_cavaloUSUARIO_MODIFICACAO_ID.Value := Dados.IdUsuario;

    Dados.qryVeiculos_cavalo.Post;
    Dados.Conexao.CommitRetaining;
  end;

  PageControl1.ActivePage := Lista;
  edtLoc.SetFocus;

end;

procedure TfrmVeiculos.btnImpClick(Sender: TObject);
begin
  try
    btnImp.Enabled := false;
    if Dados.qryVeiculos_cavalo.IsEmpty then
    begin
      ShowMessage('Informações não encontradas!');
      exit;
    end;

    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelGrupo.fr3');
    frxReport.ShowReport;
  finally
    btnImp.Enabled := true;
  end;
end;

end.
