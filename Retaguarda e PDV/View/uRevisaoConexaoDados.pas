unit uRevisaoConexaoDados;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IniFiles;

type
  TfrmRevisaoDadosConexao = class(TForm)
    Panel4: TPanel;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    edtPass: TEdit;
    edtServer: TEdit;
    edtBancoDados: TEdit;
    btnBancoDados: TSpeedButton;
    Label5: TLabel;
    OpenDialog: TOpenDialog;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBancoDadosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    //procedure
    procedure LerIni;
  public
    { Public declarations }
  end;

var
  frmRevisaoDadosConexao: TfrmRevisaoDadosConexao;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmRevisaoDadosConexao.btnBancoDadosClick(Sender: TObject);
begin
  OpenDialog.Title := 'Selecione o Banco de Dados';
  OpenDialog.DefaultExt := '*.FDB';
  OpenDialog.Filter := 'Arquivos FDB (*.FDB)|*.FDB|Todos os Arquivos (*.*)|*.*';

  if OpenDialog.Execute then
    edtBancoDados.Text :=  OpenDialog.FileName;
end;

procedure TfrmRevisaoDadosConexao.btnCancelarClick(Sender: TObject);
begin
  //Cancelar | Sair
  Close;
end;

procedure TfrmRevisaoDadosConexao.btnGravarClick(Sender: TObject);
var
  iArq: TIniFile;
begin
  //Gravar
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');
    iArq.WriteString('BD', 'USER', edtUser.Text);
    iArq.WriteString('BD', 'PASS', edtPass.Text);
    iArq.WriteString('BD', 'IP', edtServer.Text);
    iArq.WriteString('BD', 'Path', edtBancoDados.Text);
  finally
    iArq.Free;
  end;
  ShowMessage('O Sistema será fechado, para aplicar as configurações');
  Close;
end;

procedure TfrmRevisaoDadosConexao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action  :=  caFree;
end;

procedure TfrmRevisaoDadosConexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      btnGravarClick(Self);
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmRevisaoDadosConexao.FormShow(Sender: TObject);
begin
  LerIni;
end;

procedure TfrmRevisaoDadosConexao.LerIni;
var
  iArq: TIniFile;
begin
  //Ler
  try
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Banco.ini');
    edtUser.Text  := iArq.ReadString('BD', 'USER', 'sysdba');
    edtPass.Text := iArq.ReadString('BD', 'PASS', 'masterkey');
    edtServer.Text := iArq.ReadString('BD', 'IP', '');
    edtBancoDados.Text := iArq.ReadString('BD', 'Path', '');
  finally
    iArq.Free;
  end;
end;

end.
