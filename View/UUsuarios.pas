unit UUsuarios;

interface // Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, shellapi,
  Grids, DBGrids, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.pngimage, dxSkinDevExpressDarkStyle, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, DBCtrlsEh, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TFrmUsuarios = class(TForm)
    dsUser: TDataSource;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    dsPermissoes: TDataSource;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label2: TLabel;
    edtConfirma: TEdit;
    btnExibe: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    qryVendedor: TFDQuery;
    dsVendedor: TDataSource;
    qryVendedorCODIGO: TIntegerField;
    qryVendedorNOME: TStringField;
    qryVendedorCMA: TFMTBCDField;
    qryVendedorCMP: TFMTBCDField;
    qryVendedorATIVO: TStringField;
    qryVendedorEMPRESA: TIntegerField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    cxSair: TcxButton;
    cxSalvar: TcxButton;
    Panel4: TPanel;
    Panel6: TPanel;
    cxEditar: TcxButton;
    cxNovo: TcxButton;
    qry_usuarios: TFDQuery;
    ds_usuarios: TDataSource;
    CheckBox1: TCheckBox;
    qry_usuariosCODIGO: TSmallintField;
    qry_usuariosSENHA: TStringField;
    qry_usuariosHIERARQUIA: TSmallintField;
    qry_usuariosECAIXA: TStringField;
    qry_usuariosSUPERVISOR: TStringField;
    qry_usuariosATIVO: TStringField;
    qry_usuariosULTIMO_PEDIDO: TIntegerField;
    qry_usuariosULTIMA_VENDA: TIntegerField;
    qry_usuariosSENHA_APP: TStringField;
    qry_usuariosAPP_SENHA: TStringField;
    qry_usuariosFK_VENDEDOR: TIntegerField;
    qry_usuariosFLAG: TStringField;
    qry_usuariosLOGIN: TStringField;
    qry_usuariosUSU_MASTER: TStringField;
    Button1: TButton;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bbexcluirClick(Sender: TObject);
    Procedure CMDialogChar(var msg: tcmdialogchar); message cm_dialogchar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnExibeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxButton_fecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);

  private
    procedure Botoes;
    procedure AtualizarPermissoes;
    procedure AlterarFuncao(Estado: Boolean);
    { Private declarations }
  public
    { Public declarations }
    operacao: string;
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation
// Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

uses Udados;

{$R *.DFM}

procedure TFrmUsuarios.AlterarFuncao(Estado: Boolean);
begin
  if Estado then
  begin
    // Realizar alguma ação quando o CheckBox está checado
    DBGrid2.Enabled := True;
  end
  else
  begin
    // Realizar alguma ação quando o CheckBox está deschecado
    DBGrid2.Enabled := False;
  end;
end;

procedure TFrmUsuarios.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    // Função a ser chamada quando o CheckBox estiver checado
    AlterarFuncao(True);
    // Passa True para a função, indicando que o CheckBox está checado
  end
  else
  begin
    // Função a ser chamada quando o CheckBox estiver deschecado
    AlterarFuncao(False);
    // Passa False para a função, indicando que o CheckBox está deschecado
  end;
end;

Procedure TFrmUsuarios.CMDialogChar(var msg: tcmdialogchar);
var
  i: Integer;
begin
  with PageControl1 do
    for i := 0 to PageCount - 1 do
      if IsAccel(msg.CharCode, Pages[i].Caption) and (Pages[i].TabVisible) then
      begin
        msg.Result := 1;
        ActivePage := Pages[i];
        break;
      end;
end;

procedure TFrmUsuarios.cxButton_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmUsuarios.cxEditarClick(Sender: TObject);
var
  senha: string;
begin

  if not cxEditar.Visible then
    exit;

  operacao := 'Alterar';
  PageControl1.ActivePageIndex := 1;
  dados.qryUsuarios.Edit;
  senha := dados.Crypt('D', dados.qryUsuariosSENHA.Value);
  dados.qryUsuariosSENHA.Value := senha;
  edtConfirma.Text := dados.qryUsuariosSENHA.Value;
  DBEdit1.SetFocus;
  AlterarFuncao(False);
end;

procedure TFrmUsuarios.cxNovoClick(Sender: TObject);
var
  eSupervisor: Boolean;
begin

  if dados.aUsuario <> 'Novo' then
  begin
    if not cxNovo.Visible then
      exit;
  end;

  operacao := 'Novo';

  qryVendedor.First;
  eSupervisor := dados.qryUsuarios.IsEmpty;
  PageControl1.ActivePageIndex := 1;
  dados.qryUsuarios.Insert;
  dados.qryUsuariosCODIGO.Value := dados.Numerador('USUARIOS', 'CODIGO',
    'N', '', '');
  dados.qryUsuariosATIVO.Value := 'S';
  dados.qryUsuariosSUPERVISOR.Value := 'N';
  dados.qryUsuariosFK_VENDEDOR.Value := qryVendedorCODIGO.AsInteger;
  DBCheckBox1.Enabled := True;
  DBCheckBox2.Enabled := True;
  if eSupervisor then
  begin
    dados.qryUsuariosSUPERVISOR.Value := 'S';
    DBCheckBox2.Enabled := False;
    DBCheckBox1.Enabled := False;
  end;
  DBEdit1.SetFocus;
  AlterarFuncao(False);
end;

procedure TFrmUsuarios.cxSairClick(Sender: TObject);
begin

  dados.qryUsuarios.Cancel;
  if dados.aUsuario <> 'Novo' then
    PageControl1.ActivePageIndex := 0;
  if dados.aUsuario = 'Novo' then
  begin
    dados.AtualizaTerminal;
    dados.vFechaPrograma := True;
    Application.Terminate
  end;

end;

procedure TFrmUsuarios.cxSalvarClick(Sender: TObject);
begin
  if trim(dados.qryUsuariosLOGIN.Text) = '' then
  begin
    ShowMessage('Digite o usuário!');
    exit;
  end;

  if trim(dados.qryUsuariosSENHA.Text) = '' then
  begin
    ShowMessage('Digite a senha!');
    exit;
  end;

  if trim(edtConfirma.Text) = '' then
  begin
    ShowMessage('Digite a senha!');
    exit;
  end;

  if edtConfirma.Text <> dados.qryUsuariosSENHA.Text then
  begin
    ShowMessage('Senhas são diferentes!' + sLineBreak +
      'Senhas devem ser iguais!');
    DBEdit3.SetFocus;
    exit;
  end;

  dados.qryUsuariosSENHA.Value :=
    dados.Crypt('C', dados.qryUsuariosSENHA.Value);
  dados.qryUsuariosECAIXA.Value := 'C';
  dados.qryUsuarios.Post;

  if (dados.aUsuario = 'Principal') or (dados.aUsuario = 'Novo') then
    PageControl1.ActivePageIndex := 0;

  if operacao = 'Novo' then // upt6
  begin
    if CheckBox1.Checked then
      AtualizarPermissoes
    else
      dados.AjustaPermissoes;
    ShowMessage
      ('Feche o sistema, abra novamente e faça login com o novo usuário!');
  end;

  if CheckBox1.Checked then
    AtualizarPermissoes;

end;

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dados.aUsuario = 'Novo' then
  begin
    dados.AtualizaTerminal;
    dados.vFechaPrograma := True;
    Application.Terminate;
  end;
end;

procedure TFrmUsuarios.Botoes;
begin
  cxNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  cxEditar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
  dados.Habilitacoes(dados.aMenu, self.Name);
  Botoes;
end;

procedure TFrmUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if PageControl1.ActivePageIndex = 0 then
  begin
    if Key = vk_f2 then
      cxNovoClick(self);
    if Key = vk_f3 then
      cxEditarClick(self);
    abort;
  end;

  if PageControl1.ActivePageIndex = 1 then
  begin
    if Key = vk_f10 then
      cxSalvarClick(self);
    if Key = VK_ESCAPE then
      cxSairClick(self);
    abort;
  end;

end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
begin
  qryVendedor.close;
  qryVendedor.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  qryVendedor.open;

  dados.qryUsuarios.close;
  dados.qryUsuarios.open;
  if dados.aUsuario = 'Principal' then
    PageControl1.ActivePageIndex := 0;

  if dados.aUsuario = 'Novo' then
    cxNovo.Click;

  btnExibe.Visible := False;
  if dados.eSupervisor then
    btnExibe.Visible := True;
  qry_usuarios.close;
  qry_usuarios.open;
end;

procedure TFrmUsuarios.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    selectnext(Sender as twincontrol, True, True);
end;

procedure TFrmUsuarios.DBGrid1DblClick(Sender: TObject);
begin
  if cxEditar.Visible then
    cxEditar.Click;
end;

procedure TFrmUsuarios.btnExibeClick(Sender: TObject);
begin
  if btnExibe.Caption = 'Exibir' then
  begin
    DBEdit3.PasswordChar := #0;
    edtConfirma.PasswordChar := #0;
    btnExibe.Caption := 'Ocultar';
    exit;
  end
  else
  begin
    DBEdit3.PasswordChar := '*';
    edtConfirma.PasswordChar := '*';
    btnExibe.Caption := 'Exibir';

  end;
end;

procedure TFrmUsuarios.Button1Click(Sender: TObject);
begin
  AtualizarPermissoes;
end;

procedure TFrmUsuarios.bbexcluirClick(Sender: TObject);
begin
  if dados.qryUsuariosLOGIN.Value <> 'SUPERVISOR' then
  begin
    If Application.messageBox('Deseja Excluir o Usuário?', 'Confirmação',
      mb_YesNo + mb_iconquestion) = idyes then
    begin
      dados.qryUsuarios.delete;
      PageControl1.ActivePageIndex := 0;
    end;
  end;
end;

procedure TFrmUsuarios.AtualizarPermissoes; // upt6
var
  FDQuery: TFDQuery;
  UsuarioOriginal, NovoUsuario: Integer;
begin
  // Pegando os parâmetros diretamente das consultas
  UsuarioOriginal := qry_usuariosCODIGO.Value; // Código do usuário original
  NovoUsuario := dados.qryUsuariosCODIGO.Value; // Código do novo usuário

  FDQuery := TFDQuery.Create(nil);
  try
    // Associar à conexão existente
    FDQuery.Connection := dados.Conexao;

    // Atualizar permissões existentes
    FDQuery.SQL.Text := 'UPDATE PEMISSOES P2 ' + 'SET ' +
      '  P2.VISUALIZAR = (SELECT P1.VISUALIZAR FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA), '
      + '  P2.EXCLUIR = (SELECT P1.EXCLUIR FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA), '
      + '  P2.EDITAR = (SELECT P1.EDITAR FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA), '
      + '  P2.INCLUIR = (SELECT P1.INCLUIR FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA), '
      + '  P2.VISIVEL = (SELECT P1.VISIVEL FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA) '
      + 'WHERE P2.FKUSUARIO = :NOVO_USUARIO ' + '  AND EXISTS ( ' +
      '    SELECT 1 FROM PEMISSOES P1 WHERE P1.FKUSUARIO = :USUARIO_ORIGINAL AND P1.FKTELA = P2.FKTELA '
      + '  );';
    FDQuery.ParamByName('USUARIO_ORIGINAL').AsInteger := UsuarioOriginal;
    FDQuery.ParamByName('NOVO_USUARIO').AsInteger := NovoUsuario;
    FDQuery.ExecSQL;

    // Inserir permissões faltantes
    FDQuery.SQL.Text :=
      'INSERT INTO PEMISSOES (FKUSUARIO, FKTELA, VISUALIZAR, EXCLUIR, EDITAR, INCLUIR, VISIVEL) '
      + 'SELECT :NOVO_USUARIO, FKTELA, VISUALIZAR, EXCLUIR, EDITAR, INCLUIR, VISIVEL '
      + 'FROM PEMISSOES ' + 'WHERE FKUSUARIO = :USUARIO_ORIGINAL ' +
      '  AND FKTELA NOT IN (SELECT FKTELA FROM PEMISSOES WHERE FKUSUARIO = :NOVO_USUARIO);';
    FDQuery.ParamByName('USUARIO_ORIGINAL').AsInteger := UsuarioOriginal;
    FDQuery.ParamByName('NOVO_USUARIO').AsInteger := NovoUsuario;
    FDQuery.ExecSQL;

  finally
    FDQuery.Free;
  end;

end;

end.
