unit uRecibo;
interface //Suporte e Vendas direto no Whatsapp (48)998463846
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, uextenso,
  Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass, frxDBSet, frxExportPDF, frxOLE,
  DBGridEh, DBCtrlsEh, DBLookupEh, frxExportBaseDialog, Vcl.Imaging.pngimage,
  dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;
type
  TfrmRecibo = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBText2: TDBText;
    Label2: TLabel;
    dsRecibo: TDataSource;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBRecibo: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    dsEmpresa: TDataSource;
    qryRecibo: TFDQuery;
    qryReciboCODIGO: TIntegerField;
    qryReciboFKEMPRESA: TIntegerField;
    qryReciboDATA_EMISSAO: TDateField;
    qryReciboNOMINAL: TStringField;
    qryReciboREFERENTE1: TStringField;
    qryReciboREFERENTE2: TStringField;
    qryReciboEXTENSO: TStringField;
    qryReciboSITUACAO: TStringField;
    qryReciboTTOTAL: TAggregateField;
    qryReciboVALOR: TFMTBCDField;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    LblPeriodo: TLabel;
    lblDescricao: TLabel;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    edtLoc: TEdit;
    pnImpressao: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel5: TPanel;
    cxAlterar: TcxButton;
    cxAtualizar: TcxButton;
    cxNovo: TcxButton;
    cxImp: TcxButton;
    cxButton1: TcxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtLocChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TabSet2Click(Sender: TObject);
    procedure TabSet1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtLocKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure qryReciboAfterPost(DataSet: TDataSet);
    procedure qryReciboCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure cxAtualizarClick(Sender: TObject);
    procedure cxImpClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure localiza;
    procedure Botoes;
    procedure ImpRecido;
    { Private declarations }
  public
    idx: Integer;
    vOrdem, vSql: String;
    { Public declarations }
  end;
var
  frmRecibo: TfrmRecibo;
implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.
{$R *.dfm}
uses Udados, uSupervisor, uCadRecibo, udmImpressao;
procedure TfrmRecibo.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;
procedure TfrmRecibo.ImpRecido;
var
  sTexto, vEndereco: String;
  SL: TStringList;
begin
  try
    SL := TStringList.Create;
    SL.Clear;
    SL.Add('<N>' + copy(dados.qryEmpresaFANTASIA.AsString, 1, 44) + '</n>');
    SL.Add(dados.qryEmpresaENDERECO.AsString + ',' +
      dados.qryEmpresaNUMERO.Value);
    SL.Add(Trim(dados.qryEmpresaBAIRRO.AsString) + ' - ' +
      Trim(dados.qryEmpresaCIDADE.AsString) + '-' +
      Trim(dados.qryEmpresaUF.AsString));
    SL.Add('Fone: ' + Trim(dados.qryEmpresaFONE.AsString));
    SL.Add('</linha_simples>');
    sTexto := '<N><ce>*** RECIBO No. ' + FormatFloat('0000',
      qryReciboCODIGO.AsFloat) + ' ***</CE></n>';
    SL.Add(sTexto);
    SL.Add('');
    sTexto := '<N><ad>VALOR R$' + FormatFloat(',0.00', qryReciboVALOR.AsFloat) +
      ' ***</AD></n>';
    SL.Add(sTexto);
    SL.Add('');
    SL.Add('Recebi de ' + qryReciboNOMINAL.Value);
    SL.Add('A quantia de ' + qryReciboEXTENSO.Value);
    SL.Add('Referente a ' + qryReciboREFERENTE1.Value +
      qryReciboREFERENTE2.Value);
    SL.Add('');
    SL.Add(dados.qryEmpresaCIDADE.AsString + '-' + dados.qryEmpresaUF.AsString +
      ',' + DateToStr(DATE));
    SL.Add('');
    SL.Add('Assinatura:');
    SL.Add('');
    sTexto := '<ce><<Obrigado Pela Preferencia>></CE>';
    SL.Add(sTexto);
    SL.Add('</corte>');
    SL.SaveToFile(ExtractFilePath(Application.ExeName) + 'Recibo.txt');
    dmImpressao.ConfiguraImpressora('');
    dmImpressao.ImprimeLogo;
    dmImpressao.ImprimeTexto(SL.Text);
  finally
    pnImpressao.Visible := true;
    SL.free;
  end;
end;
procedure TfrmRecibo.Button1Click(Sender: TObject);
begin
 try
    cxImp.Enabled := false;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelRecibo.fr3');
    frxReport.ShowReport;
  finally
    cxImp.Enabled := true;
  end;
end;
procedure TfrmRecibo.Button2Click(Sender: TObject);
begin
  ImpRecido;
end;
procedure TfrmRecibo.Button3Click(Sender: TObject);
begin
 pnImpressao.Visible := false;
end;
procedure TfrmRecibo.cxAlterarClick(Sender: TObject);
begin
if not cxAlterar.Visible then
    exit;
  dados.vAutorizar := true;
  if qryRecibo.IsEmpty then
    exit;
  if (qryReciboSITUACAO.Value = 'F') or (qryReciboSITUACAO.Value = 'C') then
  begin
    if not dados.eSupervisor then
    begin
      try
        frmSupervisor := TFrmSupervisor.Create(Application);
        cxAlterar.Enabled := false;
        dados.vAutorizar := false;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
        cxAlterar.Enabled := true;
      end;
    end;
  end;
  if not dados.vAutorizar then
  begin
    exit;
  end;
  try
    FrmCadRecibo := TFrmCadRecibo.Create(Application);
    cxAlterar.Enabled := false;
    if qryRecibo.IsEmpty then
      exit;
    FrmCadRecibo.qryRecibo.Close;
    FrmCadRecibo.qryRecibo.Params[0].Value := qryReciboCODIGO.Value;
    FrmCadRecibo.qryRecibo.Open;
    FrmCadRecibo.qryRecibo.edit;
    FrmCadRecibo.qryReciboSITUACAO.Value := 'A';
    FrmCadRecibo.ShowModal;
    Application.ProcessMessages;
  finally
    FrmCadRecibo.Release;
    btnFiltrar.Click;
    cxAlterar.Enabled := true;
  end;
end;
procedure TfrmRecibo.cxAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxAtualizar.Enabled := false;
    codigo := qryReciboCODIGO.Value;
    localiza;
    qryRecibo.Locate('codigo', codigo, []);
  finally
    cxAtualizar.Enabled := true;
  end;
end;
procedure TfrmRecibo.cxButton1Click(Sender: TObject);
begin
         close;
end;

procedure TfrmRecibo.cxImpClick(Sender: TObject);
begin
  pnImpressao.Visible := true;
end;
procedure TfrmRecibo.cxNovoClick(Sender: TObject);
begin
  if not cxNovo.Visible then
    exit;
  try
    cxNovo.Enabled := false;
    FrmCadRecibo := TFrmCadRecibo.Create(Application);
    with FrmCadRecibo do
    begin
      FrmCadRecibo.qryRecibo.Close;
      FrmCadRecibo.qryRecibo.Params[0].Value := -1;
      FrmCadRecibo.qryRecibo.Open;
      FrmCadRecibo.qryRecibo.Insert;
      FrmCadRecibo.qryReciboCODIGO.Value := dados.Numerador('RECIBO', 'CODIGO',
        'N', '', '');
      FrmCadRecibo.qryReciboSITUACAO.Value := 'A';
      FrmCadRecibo.qryReciboDATA_EMISSAO.Value := DATE;
      FrmCadRecibo.qryReciboFKEMPRESA.Value := dados.qryEmpresaCODIGO.Value;
      FrmCadRecibo.qryReciboVALOR.Value := 0;
    end;
    FrmCadRecibo.ShowModal;
    Application.ProcessMessages;
  finally
    FrmCadRecibo.Release;
    btnFiltrar.Click;
    cxNovo.Enabled := true;
  end;
end;
procedure TfrmRecibo.DBGrid1DblClick(Sender: TObject);
begin
  if cxAlterar.Visible then
    cxAlterarClick(self);
end;
procedure TfrmRecibo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;
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
procedure TfrmRecibo.DBGrid1TitleClick(Column: TColumn);
begin
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
  DBGrid1.Columns[0].Title.Caption := 'Código';
  DBGrid1.Columns[1].Title.Caption := 'Data';
  DBGrid1.Columns[2].Title.Caption := 'Nominal';
  DBGrid1.Columns[3].Title.Caption := 'Valor';
  lblDescricao.Caption := 'Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';
  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;
  localiza;
  if not(idx in [1]) then
    edtLoc.SetFocus
  else
    maskInicio.SetFocus;
end;
procedure TfrmRecibo.edtLocChange(Sender: TObject);
begin
  localiza;
end;
procedure TfrmRecibo.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    qryRecibo.Prior;
  if Key = VK_DOWN then
    qryRecibo.Next;
end;
procedure TfrmRecibo.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if (idx in [0, 1]) then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
  if (idx in [3]) then
  begin
    if not(Key in [',', '0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;
procedure TfrmRecibo.Botoes;
begin
  cxNovo.Visible := dados.qryPermissoesBotaoINCLUIR.Value = 'S';
  cxAlterar.Visible := dados.qryPermissoesBotaoEDITAR.Value = 'S';
end;
procedure TfrmRecibo.FormCreate(Sender: TObject);
begin
  dados.aMenu := 'MnRecibo';
  vOrdem := 'ASC';
  dados.Habilitacoes(dados.aMenu, self.Name);
  Botoes;
end;
procedure TfrmRecibo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
  begin
    cxNovoClick(self);
    abort;
  end;
  if Key = vk_f3 then
  begin
    cxAlterarClick(self);
    abort;
  end;
  if Key = vk_f4 then
  begin
    cxImpClick(self);
    abort;
  end;
  if Key = vk_f5 then
  begin
    cxAtualizarClick(self);
    abort;
  end;
  if Key = vk_f12 then
  begin
    maskInicio.SetFocus;
    abort;
  end;
  if Key = vk_f9 then
  begin
    btnFiltrarClick(self);
    abort;
  end;
end;
procedure TfrmRecibo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;
procedure TfrmRecibo.FormShow(Sender: TObject);
begin
  maskInicio.EditText := DateToStr(StartOfTheMonth(DATE));
  maskFim.EditText := DateToStr(DATE);
  DBGrid1TitleClick(DBGrid1.Columns[0]);
end;
procedure TfrmRecibo.localiza;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';
  vSql := ' select * from recibo where fkempresa=:id /*where*/';
  case idx of
    0:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and codigo=' + edtLoc.Text;
      end;
    1:
      begin
        filtro := filtro + ' and data_emissao>=' +
          QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText))
          ) + ' and data_emissao<=' +
          QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskFim.EditText)));
      end;
    2:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and NOMINAL like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    3:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and VALOR >= ' + StringReplace(edtLoc.Text,
            ',', '.', []);
      end;
  end;
  case idx of
    0:
      ordem := ' order by CODIGO ' + vOrdem;
    1:
      ordem := ' order by DATA_EMISSAO ' + vOrdem;
    2:
      ordem := ' order by NOMINAL ' + vOrdem;
    3:
      ordem := ' order by VALOR ' + vOrdem;
  end;
  qryRecibo.Close;
  qryRecibo.SQL.Text := vSql;
  qryRecibo.SQL.Text := StringReplace(qryRecibo.SQL.Text, '/*where*/',
    filtro + filtro1 + ordem, [rfReplaceAll]);
  qryRecibo.Params[0].Value := dados.qryEmpresaCODIGO.Value;
  qryRecibo.Open;
end;
procedure TfrmRecibo.qryReciboAfterPost(DataSet: TDataSet);
begin
  dados.Conexao.Commit;
end;
procedure TfrmRecibo.qryReciboCalcFields(DataSet: TDataSet);
begin
  qryReciboEXTENSO.Value := UpperCase(valorPorExtenso(qryReciboVALOR.AsFloat));
end;
procedure TfrmRecibo.TabSet1Click(Sender: TObject);
begin
  localiza;
end;
procedure TfrmRecibo.TabSet2Click(Sender: TObject);
begin
  localiza;
end;
end.
