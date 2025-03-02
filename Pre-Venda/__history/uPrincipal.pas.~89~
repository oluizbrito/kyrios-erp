unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, IniFiles, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TMessageIMG = (tmAviso, tmErro, tmConfirmado);
type
  TFrmPrincipalPreVenda = class(TForm)
    PnBarraCabecalho: TPanel;
    Label42: TLabel;
    Panel1: TPanel;
    LbIpLocal: TLabel;
    IpServidor: TLabel;
    Lblicenca: TLabel;
    Panel4: TPanel;
    Image1: TImage;
    Label12: TLabel;
    Label13: TLabel;
    lblDtHr: TLabel;
    Label1: TLabel;
    tmrDataHora: TTimer;
    StatusBar: TStatusBar;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure Padroes;
    procedure IniciaPreVenda;
    procedure ConsultaPreVenda;
    procedure LerIni;

    function ChamaLogin: Boolean;
  public
    { Public declarations }
    procedure MessageDlg(Mensagem: string;
      Titulo: string = ''; Icon: TMessageIMG = tmConfirmado);
  end;

var
  FrmPrincipalPreVenda: TFrmPrincipalPreVenda;
  sImpressora: string;
  bPreview: Boolean;
  bImprimir: Boolean;
  iTipoImp: Integer;
  bPerguntaTipoImp: Boolean;

implementation

{$R *.dfm}

uses Udados, uCadPreVenda, uSplash, UUsuarios, uAcesso, uMessageDlg,
  uConfigImpPreVenda, uConsPreVenda;

function TFrmPrincipalPreVenda.ChamaLogin: Boolean;
var
  CriaUsuario: Boolean;
begin
  CriaUsuario := false;

  dados.qryConsulta.close;
  dados.qryConsulta.SQL.Text := 'select * from usuarios';
  dados.qryConsulta.open;
  if dados.qryConsulta.IsEmpty then
    CriaUsuario := true;
  Result := CriaUsuario;
  if not CriaUsuario then
  begin
    try
      frmAcesso := TfrmAcesso.Create(Application);
      frmAcesso.ShowModal;
    finally
      frmAcesso.Release;
    end;
  end
  else
  begin
    try
      frmUsuarios := TfrmUsuarios.Create(Application);
      //frmUsuarios.Tela := 'Novo';
      frmUsuarios.ShowModal;
    finally
      frmUsuarios.Release;
    end;
  end;
end;

procedure TFrmPrincipalPreVenda.ConsultaPreVenda;
begin
  try
    FrmListaPreVenda := TFrmListaPreVenda.Create(Application);
    FrmListaPreVenda.ShowModal;
  finally
    FrmListaPreVenda.Release;
  end;
end;

procedure TFrmPrincipalPreVenda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose  :=
    Application.MessageBox('Deseja Fechar a Pré Venda?',
    'Atenção', MB_YESNO+MB_ICONQUESTION) = IDYES;
end;

procedure TFrmPrincipalPreVenda.FormCreate(Sender: TObject);
begin

  {dados.qryTerminal.close;
  dados.qryTerminal.open;
  Dados.qryTerminal.Locate('IP', Dados.GetLocalIP, []);}

  dados.qryConfig.Close;
  dados.qryConfig.Params[0].Value :=
    dados.qryEmpresaCODIGO.Value;
  dados.qryConfig.Open;

  try
    frmSplash := TfrmSplash.Create(Application);
    frmSplash.ShowModal;
  finally
    frmSplash.Release;
  end;
end;

procedure TFrmPrincipalPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 77) then
    begin
      try
        frmConfigImpPreVenda  :=  TfrmConfigImpPreVenda.Create(Application);
        frmConfigImpPreVenda.ShowModal;
      finally
        frmConfigImpPreVenda.Release;
        LerIni;
      end;
      Exit;
    end;
  if Key = VK_F2 then
    IniciaPreVenda;
  if Key = VK_F3 then
    ConsultaPreVenda;
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFrmPrincipalPreVenda.FormShow(Sender: TObject);
begin
  Padroes;

  //if ChamaLogin then
  //  Exit;
end;

procedure TFrmPrincipalPreVenda.IniciaPreVenda;
var
  bIniciar: Boolean;
begin
  bIniciar  :=  Application.MessageBox('Deseja iniciar uma nova Pré-Venda?',
    'Pré-Venda', MB_YESNO+MB_ICONQUESTION)=IDYES;
  if not bIniciar then
    Exit;
  try
    FrmCadPreVenda  :=  TFrmCadPreVenda.Create(Application);
    FrmCadPreVenda.Tag  :=  0;
    FrmCadPreVenda.ShowModal;
  finally
    FrmCadPreVenda.Release;
  end;
end;

procedure TFrmPrincipalPreVenda.LerIni;
var
  ArquivoINI: TIniFile;
begin
  try
    ArquivoINI :=
      TIniFile.Create(ExtractFilePath(Application.ExeName)+'ConfigPreVenda.sd');
    sImpressora := ArquivoINI.ReadString('Impressao', 'Impressora', '');
    bPreview    := ArquivoINI.ReadBool('Impressao', 'Preview', False);
    bImprimir   := ArquivoINI.ReadBool('Impressao', 'Pergunta', False);
    iTipoImp    := ArquivoINI.ReadInteger('Impressao', 'Tipo', 0);
    bPerguntaTipoImp := ArquivoINI.ReadBool('Impressao', 'Pergunta Tipo de Impressao', False);
  finally
    ArquivoINI.Free;
  end;
end;

procedure TFrmPrincipalPreVenda.MessageDlg(Mensagem, Titulo: string;
  Icon: TMessageIMG);
var
  iIMG: Integer;
begin
  case Icon of
    tmAviso: iIMG := 0;
    tmErro: iIMG := 1;
    tmConfirmado: iIMG := 2;
  end;
  if Trim(Titulo) = '' then
    Titulo  :=  'Aviso';
  frmMessageDlg :=  TfrmMessageDlg.Create(Application);
  frmMessageDlg.lblTitulo.Caption :=  Titulo;
  frmMessageDlg.lblTexto.Caption  :=  Mensagem;
  frmMessageDlg.iCodImg :=  iIMG;
  frmMessageDlg.iTimer  :=  4000;
  frmMessageDlg.iWidth  :=  Self.Width;
  frmMessageDlg.iHeight :=  Self.Height;
  frmMessageDlg.Show;
  frmMessageDlg.BringToFront;
end;

procedure TFrmPrincipalPreVenda.Padroes;
begin
  tmrDataHora.Enabled :=  True;
  LbIpLocal.Caption :=  'IP Local: ' + Dados.GetLocalIP;
  IpServidor.Caption  :=  'Servidor: ' + Dados.Conexao.Params.Values['Server'];
  //Lblicenca.Caption :=  'Licença até: ' + Dados.qryEmpresaDATA_VALIDADE.Value;   crypt
  LerIni;
end;

procedure TFrmPrincipalPreVenda.tmrDataHoraTimer(Sender: TObject);
begin
  try
    tmrDataHora.Enabled :=  False;
    lblDtHr.Caption :=  FormatDateTime('dd/mm/yyyy - hh:mm', Now);
    tmrDataHora.Enabled :=  True;
  except
  end;
end;

end.
