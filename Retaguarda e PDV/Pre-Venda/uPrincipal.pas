unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, IniFiles, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, dxSkinsCore, dxSkinDevExpressDarkStyle,
  dxSkinOffice2019Colorful, dxSkinOffice2019White, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Imaging.jpeg, dxSkinWXI;

type
  TMessageIMG = (tmAviso, tmErro, tmConfirmado);
type
  TFrmPrincipalPreVenda = class(TForm)
    PnBarraCabecalho: TPanel;
    Panel1: TPanel;
    LbIpLocal: TLabel;
    IpServidor: TLabel;
    Panel4: TPanel;
    lblDtHr: TLabel;
    tmrDataHora: TTimer;
    Label2: TLabel;
    cxFinalizar: TcxButton;
    cxConsulta: TcxButton;
    cxConfig: TcxButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxConfigClick(Sender: TObject);
    procedure cxFinalizarClick(Sender: TObject);
    procedure cxConsultaClick(Sender: TObject);
  private
    { Private declarations }
    procedure Padroes;
    procedure IniciaPreVenda;
    procedure ConsultaPreVenda;
    procedure LerIni;

    function ChamaLogin: Boolean;
  public
    { Public declarations }
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

uses Udados, uCadPreVenda, uSplash, UUsuarios, uAcesso,
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

procedure TFrmPrincipalPreVenda.cxConfigClick(Sender: TObject);
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

procedure TFrmPrincipalPreVenda.cxConsultaClick(Sender: TObject);
begin
ConsultaPreVenda;
end;

procedure TFrmPrincipalPreVenda.cxFinalizarClick(Sender: TObject);
begin
IniciaPreVenda;
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
end;

procedure TFrmPrincipalPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
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
begin
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
      TIniFile.Create(ExtractFilePath(Application.ExeName)+'ConfigPreVenda.ini');
    sImpressora := ArquivoINI.ReadString('Impressao', 'Impressora', '');
    bPreview    := ArquivoINI.ReadBool('Impressao', 'Preview', False);
    bImprimir   := ArquivoINI.ReadBool('Impressao', 'Pergunta', False);
    iTipoImp    := ArquivoINI.ReadInteger('Impressao', 'Tipo', 0);
    bPerguntaTipoImp := ArquivoINI.ReadBool('Impressao', 'Pergunta Tipo de Impressao', False);
  finally
    ArquivoINI.Free;
  end;
end;

procedure TFrmPrincipalPreVenda.Padroes;
begin
  tmrDataHora.Enabled :=  True;
  LbIpLocal.Caption :=  'IP Local: ' + Dados.GetLocalIP;
  IpServidor.Caption  :=  'Servidor: ' + Dados.Conexao.Params.Values['Server'];
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
