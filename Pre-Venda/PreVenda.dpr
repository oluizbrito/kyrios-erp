program PreVenda;

uses
  Vcl.Forms, Windows, Dialogs, Sysutils,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipalPreVenda},
  uAcesso in '..\View\uAcesso.pas' {frmAcesso},
  uCadPreVenda in 'uCadPreVenda.pas' {FrmCadPreVenda},
  Udados in '..\Model\Udados.pas' {Dados: TDataModule},
  uConsPreVenda in 'uConsPreVenda.pas' {FrmListaPreVenda},
  uSplash in '..\View\uSplash.pas' {frmSplash},
  UUsuarios in '..\View\UUsuarios.pas' {FrmUsuarios},
  uImpressaoPreVenda in '..\View\update43\uImpressaoPreVenda.pas' {frmImpressaoPreVenda},
  uDescontoPreVenda in '..\View\update43\uDescontoPreVenda.pas' {frmDescontoPreVenda},
  uConsClientes in '..\View\update43\uConsClientes.pas' {frmConsCliente},
  uConfigImpPreVenda in '..\View\update43\uConfigImpPreVenda.pas' {frmConfigImpPreVenda},
  uChave in '..\View\uChave.pas' {frmChave},
  Serial in '..\View\Serial.pas',
  uConexaoBD in '..\View\uConexaoBD.pas' {frmConexaoBD},
  uDadosWeb in '..\Model\uDadosWeb.pas' {DadosWeb: TDataModule},
  uDMForte in '..\View\update43\uDMForte.pas' {dmForte: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}
var
  MutexHandle: THandle;
  MutexName: string;
begin
  MutexName := 'Mutex_' + ExtractFileName(ParamStr(0));

  MutexHandle := CreateMutex(nil, False, PChar(MutexName));

  if (MutexHandle = 0) or (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    MessageDlg('O sistema já está em execução.', mtWarning, [mbOK], 0);
    Halt;
  end;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Polar Light');
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFrmPrincipalPreVenda, FrmPrincipalPreVenda);
  Application.CreateForm(TfrmImpressaoPreVenda, frmImpressaoPreVenda);
  Application.CreateForm(TfrmDescontoPreVenda, frmDescontoPreVenda);
  Application.CreateForm(TfrmConsCliente, frmConsCliente);
  Application.CreateForm(TfrmConfigImpPreVenda, frmConfigImpPreVenda);
  Application.CreateForm(TfrmChave, frmChave);
  Application.CreateForm(TfrmConexaoBD, frmConexaoBD);
  Application.CreateForm(TDadosWeb, DadosWeb);
  Application.CreateForm(TdmForte, dmForte);
  Application.Run;
end.
