unit uTerminais;
interface

uses
  ACBrBAL,
  ACBrBase,
  ACBrECF,
  ACBrPosPrinter,
  ACBrSATClass,
  ACBrTEFD,
  ACBrTEFDClass,
  ACBrTEFPayGoWebComum,
  DBCtrlsEh,
  JvComponentBase,
  JvEnterTab,
  Printers,
  TypInfo,
  acbrUtil,
  cxButtons,
  cxGraphics,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  filectrl,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Mask,
  Vcl.Menus,
  Vcl.Samples.Spin,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows, JvExStdCtrls, JvHtControls, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, JvCheckBox;type
  TfrmTerminais = class(TForm)
    DBGrid1: TDBGrid;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    Label24: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    cbModeloImpressora: TDBComboBox;
    DBCheckBox4: TDBCheckBox;
    cbPortaImpressora: TDBComboBox;
    Panel2: TPanel;
    dsTerminais: TDataSource;
    TabSheet12: TTabSheet;
    Label28: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    DBComboBoxEh28: TDBComboBoxEh;
    DBComboBoxEh27: TDBComboBoxEh;
    DBComboBoxEh26: TDBComboBoxEh;
    DBComboBoxEh25: TDBComboBoxEh;
    DBComboBox5: TDBComboBox;
    cbBalanca: TDBComboBoxEh;
    DBComboBox4: TDBComboBox;
    ACBrECF1: TACBrECF;
    TabSheet1: TTabSheet;
    cbSatTipoDLL: TDBComboBox;
    Label2: TLabel;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    btnSat: TSpeedButton;
    OpenDialog1: TOpenDialog;
    DBCheckBox8: TDBCheckBox;
    qryTerminal: TFDQuery;
    qryTerminalIP: TStringField;
    qryTerminalNOME: TStringField;
    qryTerminalIMPRIME: TStringField;
    qryTerminalUSAGAVETA: TStringField;
    qryTerminalFABIMPRESSORA: TStringField;
    qryTerminalMODELO: TStringField;
    qryTerminalPORTA: TStringField;
    qryTerminalCONTINGENCIA: TStringField;
    qryTerminalNVIAS: TSmallintField;
    qryTerminalSERIE: TStringField;
    qryTerminalNUMERACAO_INICIAL: TIntegerField;
    qryTerminalEMPRESA: TIntegerField;
    qryTerminalVELOCIDADE: TIntegerField;
    qryTerminalIMPRIME_FECHAMENTO: TStringField;
    qryTerminalLOGADO: TStringField;
    qryTerminalEH_CAIXA: TStringField;
    qryTerminalVERSAO: TSmallintField;
    qryTerminalTIPO_BROWSER: TStringField;
    qryTerminalBALANCA_PORTA: TStringField;
    qryTerminalBALANCA_VELOCIDADE: TStringField;
    qryTerminalBALANCA_MARCA: TStringField;
    qryTerminalBALANCA_PARIDADE: TStringField;
    qryTerminalBALANCA_DATABITS: TStringField;
    qryTerminalBALANCA_STOPBITS: TStringField;
    qryTerminalBALANCA_HANDSHAKING: TStringField;
    qryTerminalDATA_VERSAO: TSQLTimeStampField;
    qryTerminalDESTINO_IMPRESSAO: TStringField;
    qryTerminalDT_VERSAO: TStringField;
    qryTerminalESC_POS_DIRETO: TStringField;
    qryTerminalPAGINA_CODIGO: TStringField;
    qryTerminalDATA_SISTEMA: TDateField;
    qryTerminalIMPRIME_DUAS_LINHAS: TStringField;
    qryTerminalMARGEM_DIREITA: TFMTBCDField;
    qryTerminalMARGEM_ESQUERDA: TFMTBCDField;
    qryTerminalMARGEM_INFERIOR: TFMTBCDField;
    qryTerminalMARGEM_SUPERIOR: TFMTBCDField;
    qryTerminalLARGURA_BOBINA: TIntegerField;
    qryTerminalESPACO_ENTRE_LINHAS: TStringField;
    qryTerminalLINHAS_ENTRE_CUPOM: TStringField;
    qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField;
    qryTerminalTAMANHO_FONTE: TIntegerField;
    qryTerminalFLAG: TStringField;
    qryTerminalEXIBE_F3: TStringField;
    qryTerminalEXIBE_F4: TStringField;
    qryTerminalEXIBE_F5: TStringField;
    qryTerminalEXIBE_F6: TStringField;
    qryTerminalFRENTE: TStringField;
    qryTerminalRETAGUARDA: TStringField;
    qryTerminalCAMINHO_SAT_DLL: TStringField;
    qryTerminalMODELO_SAT_DLL: TStringField;
    qryTerminalTIPO_SAT_DLL: TStringField;
    qryTerminalQRCODE_LATERAL: TStringField;
    TabSheet2: TTabSheet;
    qryTerminalDATA_SCRIPT: TSQLTimeStampField;
    qryTerminalPARAMETROS_ADICIONAIS: TStringField;
    Label39: TLabel;
    cbxGP: TDBComboBoxEh;
    qryTerminalCOLUNAS: TIntegerField;
    qryTerminalL1: TIntegerField;
    qryTerminalL2: TIntegerField;
    qryTerminalL3: TIntegerField;
    qryTerminalL4: TIntegerField;
    DBRadioGroup2: TDBRadioGroup;
    Label12: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    SbArqLog: TSpeedButton;
    edLog: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    cbIMprimirViaReduzida: TDBCheckBox;
    cbMultiplosCartoes: TDBCheckBox;
    qryTerminalTIPOIMPRESSORA: TStringField;
    qryTerminalEMPRESA_ATIVA: TIntegerField;
    qryTerminalTEF_LOG: TStringField;
    qryTerminalTEF_GERENCIADOR: TIntegerField;
    qryTerminalTEF_MAX_CARTOES: TIntegerField;
    qryTerminalTEF_TROCO_MAXIMO: TSingleField;
    qryTerminalTEF_SOFT_HOUSE: TStringField;
    qryTerminalTEF_REGISTRO: TStringField;
    qryTerminalTEF_APLICACAO: TStringField;
    qryTerminalTEF_VERSAO: TStringField;
    qryTerminalTEF_VIA_REDUZIDA: TStringField;
    qryTerminalTEF_SUPORTA_DESCONTO: TStringField;
    qryTerminalTEF_SUPORTA_SAQUE: TStringField;
    qryTerminalTEF_REAJUSTA_VALOR: TStringField;
    qryTerminalTEF_MULTIPLO_CARTOES: TStringField;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    qryTerminalRESTAURANTE: TStringField;
    qryTerminalDELIVERY: TStringField;
    qryTerminalPDV: TStringField;
    Label17: TLabel;
    cbCozinha: TDBComboBox;
    Label21: TLabel;
    cbBar: TDBComboBox;
    qryTerminalCAMINHO_BAR: TStringField;
    qryTerminalCAMINHO_COZINHA: TStringField;
    JvEnterAsTab1: TJvEnterAsTab;
    Button1: TButton;
    qryTerminalUSA_POS: TStringField;
    qryTerminalUSA_TEF: TStringField;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    qryTerminalNUMERO_LOJA: TIntegerField;
    DBCheckBox15: TDBCheckBox;
    qryTerminalUSAR_NUMERO_INICIAL: TStringField;
    GroupBox_pdv: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    cxGravar: TcxButton;
    cxSair: TcxButton;
    cxExcluir: TcxButton;
    DBCheckPREVIEW: TDBCheckBox;
    qryTerminalMODELO_TEF: TIntegerField;
    qryTerminalIP_SERVIDOR_TEF: TStringField;
    qryTerminalNUMERO_LOGICO_TERMINAL: TIntegerField;
    qryTerminalPORTA_PIN_PAD: TIntegerField;
    qryTerminalMENSAGEM_PIN_PAD: TStringField;
    qryTerminalIMPRESSORA_FASTREPORT: TStringField;
    qryTerminalMOSTRA_PREVIEW: TStringField;
    qryTerminalMOSTRAR_TELA_CAIXA_LIVRE: TStringField;
    qryTerminalTIME_TELA_CAIXA_LIVRE: TIntegerField;
    qryTerminalPESQUISA_RAPIDA: TStringField;
    qryTerminalBUSCA_BALANCA_BARRAS: TStringField;
    qryTerminalIMPRESSORA_FORTESREPORT: TStringField;
    qryTerminalMENSAGEM_PDV: TStringField;
    qryTerminalMOSTRAR_MENSAGEM_PDV: TStringField;
    qryTerminalQTD_TENTATIVA_CONECT_BAL: TIntegerField;
    qryTerminalIMPRIMIR_TEF_ESCPOS: TStringField;
    qryTerminalIMPRIME_PREVIEW: TStringField;
    prtImpressora: TPrintDialog;
    lbvsSat: TLabel;
    CBXvssat: TJvHTComboBox;
    qryTerminalTIPOFECHAMENTO: TStringField;
    qryTerminalMEIAFOLHA: TStringField;
    TabSheet_ECF: TTabSheet;
    GroupBox_ecf: TGroupBox;
    Label1: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbPaginaCodigo: TDBComboBox;
    cbVelocidade: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    grptipoCaixa: TDBRadioGroup;
    lblImpressora: TLabel;
    DBEdit_impressora: TDBEdit;
    ckMeiaFolha: TDBCheckBox;
    btnImpressora: TSpeedButton;
    DBCheckBox16: TDBCheckBox;
    qryTerminalLER_PESO: TStringField;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBComboBoxEh3: TDBComboBoxEh;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBoxEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSatClick(Sender: TObject);
    procedure qryTerminalNewRecord(DataSet: TDataSet);
    procedure SbArqLogClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxExcluirClick(Sender: TObject);
    procedure cxGravarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure btnImpressoraClick(Sender: TObject);
    procedure grptipoCaixaChange(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
  private
    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;
    FTestePayGo: Integer;
    FIndicePagto: String;
    procedure ListaImpressora;
    procedure PathClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmTerminais: TfrmTerminais;
implementation
{$R *.dfm}
uses Udados, frExibeMensagem, uDMSat;
const
  SELDIRHELP = 1000;
procedure TfrmTerminais.FormCreate(Sender: TObject);
var
  PagCodigo: TACBrPosPaginaCodigo;
  TipoTEF: TACBrTEFDTipo;
begin
  qryTerminal.Close;
  qryTerminal.Open;
  qryTerminal.Locate('NOME', Dados.Getcomputer);

  cbPaginaCodigo.Items.Clear;
  for PagCodigo := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
    cbPaginaCodigo.Items.Add(GetEnumName(TypeInfo(TACBrPosPaginaCodigo),
      Integer(PagCodigo)));
end;
procedure TfrmTerminais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4:
      cxExcluirClick(Self);
    VK_F10:
      cxGravarClick(Self);
    VK_escape:
      cxSairClick(Self);
  end;
end;
procedure TfrmTerminais.FormShow(Sender: TObject);
var
  I: TACBrSATModelo;
begin
  PageControl3.ActivePageIndex := 0;
  ListaImpressora;
  cbSatTipoDLL.Items.Clear;
  For I := Low(TACBrSATModelo) to High(TACBrSATModelo) do
    cbSatTipoDLL.Items.Add(GetEnumName(TypeInfo(TACBrSATModelo), Integer(I)));
  if not(qryTerminal.State in dsEditModes) then
    qryTerminal.Edit;
  if dados.qryEmpresaAUTOPECAS.Value = 'Restaurante/Lanchonete' then
  begin
   DBCheckBox10.Visible := true;
   DBCheckBox11.Visible := true;
  end;


   if qryTerminalTIPOFECHAMENTO.AsString <> inttostr(0) then
      ckMeiaFolha.Visible:= False;

end;
procedure TfrmTerminais.grptipoCaixaChange(Sender: TObject);
begin

  ckMeiaFolha.Visible := (grptipoCaixa.ItemIndex = 0);


end;


procedure TfrmTerminais.ListaImpressora;
var
  I: Integer;
begin
  cbPortaImpressora.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbPortaImpressora.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbPortaImpressora.Items.Add('RAW:' + Printer.Printers[I]);
  cbPortaImpressora.Items.Add('/Dev/ttyS0');
  cbPortaImpressora.Items.Add('/Dev/ttyS1');
  cbPortaImpressora.Items.Add('/Dev/USB0');
  cbPortaImpressora.Items.Add('/Dev/USB1');
  cbCozinha.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbCozinha.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbCozinha.Items.Add('RAW:' + Printer.Printers[I]);
  cbCozinha.Items.Add('/Dev/ttyS0');
  cbCozinha.Items.Add('/Dev/ttyS1');
  cbCozinha.Items.Add('/Dev/USB0');
  cbCozinha.Items.Add('/Dev/USB1');
  cbBar.Items.Clear;
  ACBrECF1.Device.AcharPortasSeriais(cbBar.Items);
  for I := 0 to Printer.Printers.Count - 1 do
    cbBar.Items.Add('RAW:' + Printer.Printers[I]);
  cbBar.Items.Add('/Dev/ttyS0');
  cbBar.Items.Add('/Dev/ttyS1');
  cbBar.Items.Add('/Dev/USB0');
  cbBar.Items.Add('/Dev/USB1');
end;
procedure TfrmTerminais.qryTerminalNewRecord(DataSet: TDataSet);
begin
  qryTerminalTIPOIMPRESSORA.Value := '1';
end;
procedure TfrmTerminais.SbArqLogClick(Sender: TObject);
var
  AFileLog: String;
begin
  if pos(PathDelim, edLog.Text) = 0 then
    AFileLog := ExtractFilePath(Application.ExeName) + edLog.Text
  else
    AFileLog := edLog.Text;
  OpenURL(AFileLog);
end;
procedure TfrmTerminais.PageControl3Change(Sender: TObject);
begin
  if (PageControl3.TabIndex = 1) and (grptipoCaixa.Value = '0') then
    ckMeiaFolha.Visible := true;

end;

procedure TfrmTerminais.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
    Dir := ExtractFileDir(Application.ExeName)
  else
    Dir := TDBEdit(Sender).Text;
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], SELDIRHELP)
  then
    TDBEdit(Sender).Text := Dir;
end;
procedure TfrmTerminais.btnImpressoraClick(Sender: TObject);
begin

 if prtImpressora.Execute then
 begin
  DBEdit_impressora.Text := Printer.Printers[Printer.PrinterIndex];
 end
  else
  begin
    ShowMessage('Nenhuma impressora foi selecionada.');
  end;
 end;

procedure TfrmTerminais.btnSatClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione DLL';
  OpenDialog1.DefaultExt := '*.*';
  OpenDialog1.Filter := 'DLL|*.DLL';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  OpenDialog1.Execute;
  if OpenDialog1.FileName <> '' then
  begin
    if not(qryTerminal.State in dsEditModes) then
      qryTerminal.Edit;
    qryTerminalCAMINHO_SAT_DLL.Value := OpenDialog1.FileName;
  end;
end;

procedure TfrmTerminais.Button1Click(Sender: TObject);
var
  MotivoFalha: string;
begin
  try
    // Configura o SAT
    dmsat.ConfiguraSAT;
    dmsat.ACBrSAT1.Inicializar;

    // Verifica se o SAT foi inicializado
    if dmsat.ACBrSAT1.Inicializado then
    begin
      ShowMessage('SAT/MFE Inicializado');
    end
    else
    begin
      // Obtém o motivo da falha
      dmsat.ACBrSAT1.ArqLOG := 'SatMFE_log.TXT';
    //  dmsat.ACBrSAT1.ExtrairLogs():= lnDetalhado;
      MotivoFalha := dmsat.ACBrSAT1.RespostaComando;
      ShowMessage('SAT/MFE não Inicializado. Motivo: ' + sLineBreak + MotivoFalha);
    end;
  except
    on E: Exception do
    begin
      // Captura e exibe qualquer erro que ocorrer durante o processo
      ShowMessage('Erro ao tentar inicializar o SAT/MFE: ' + sLineBreak + E.Message);
    end;
  end;
end;


procedure TfrmTerminais.cxExcluirClick(Sender: TObject);
begin
    If Application.messagebox('Deseja realmente excluir terminal?', 'Confirmação',
    mb_yesno + mb_iconquestion) = idyes then
    qryTerminal.Delete;
    Dados.Conexao.CommitRetaining;
end;

procedure TfrmTerminais.cxGravarClick(Sender: TObject);    //ajustar depois
begin
  // Verifica se o campo "VELOCIDADE" está preenchido
  if qryTerminalVELOCIDADE.IsNull then
  begin
    ShowMessage('Selecione o campo velocidade de impressão!');
    Exit;
  end;

  if qryTerminal.State in [dsInsert, dsEdit] then
  if not (grptipoCaixa.ItemIndex = 0) then
       qryTerminalMEIAFOLHA.AsString := 'N';
   qryTerminal.Post;

  if dados.qryConfig.State in [dsInsert, dsEdit] then
  begin
   if CBXvssat.Items.Count > 0 then
      begin
        dados.qryConfigCFE_VERSAO.AsString := CBXvssat.Items[0];
        dados.qryConfig.Post; // Salva as alterações
      end
    else
    begin
      ShowMessage('Selecione uma Versão ! ');
      Exit;
    end;




    dados.qryConfig.Post; // Salva as alterações

  end;

  Dados.Conexao.CommitRetaining;

  ShowMessage('Dados gravados com sucesso! Reinicie o sistema para aplicar as configurações.');

  // Fecha a tela
  Close;
end;

procedure TfrmTerminais.cxSairClick(Sender: TObject);
begin
  if qryTerminal.State in [dsinsert, dsedit] then
    qryTerminal.Post;
  Dados.Conexao.CommitRetaining;
  Close;
end;

procedure TfrmTerminais.DBComboBoxEh3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F4:
      cxExcluirClick(Self);
    vk_F5:
      cxGravarClick(Self);
    VK_escape:
      cxSairClick(Self);
  end;
end;
end.
