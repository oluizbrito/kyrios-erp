unit uCompra;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils, acbrutil, System.zip,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.Tabs, Vcl.ExtDlgs, JPeg, frxClass,
  frxDBSet, frxExportPDF, ACBrBase, ACBrDFe, ACBrNFe, ACBrMail, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
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
  TfrmCompra = class(TForm)
    dsCompra: TDataSource;
    TabSet1: TTabSet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    Panel1: TPanel;
    LblSaldo: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    dsEmpresa: TDataSource;
    GroupBox2: TGroupBox;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    qryItensCompra: TFDQuery;
    qryItensCompraID: TIntegerField;
    qryItensCompraFK_COMPRA: TIntegerField;
    qryItensCompraEMPRESA: TSmallintField;
    qryItensCompraITEM: TSmallintField;
    qryItensCompraFK_PRODUTO: TIntegerField;
    qryItensCompraCFOP: TStringField;
    qryItensCompraCST_ICM: TStringField;
    qryItensCompraGERA_CP: TStringField;
    qryItensCompraGERA_ES: TStringField;
    qryItensCompraSITUACAO: TStringField;
    qryItensCompraFK_PRODUTO_FORN: TStringField;
    edtEmp: TDBEdit;
    qryItensCompraVL_UNITARIO: TFMTBCDField;
    qryItensCompraQTD: TFMTBCDField;
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
    qryItensCompraCST_PIS: TStringField;
    qryItensCompraCST_COF: TStringField;
    qryItensCompraCST_IPI: TStringField;
    qryItensCompraALIQ_ST: TFMTBCDField;
    qryItensCompraFK_USUARIO: TIntegerField;
    PagUtilidade: TPageControl;
    TabGerar: TTabSheet;
    pnGerar: TPanel;
    lblStatus: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    memLista: TListBox;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    edtEmail: TEdit;
    edtArquivo: TEdit;
    Button1: TButton;
    qryXML: TFDQuery;
    ACBrNFe: TACBrNFe;
    ACBrMail1: TACBrMail;
    qryXMLNR_NOTA: TStringField;
    qryXMLDTENTRADA: TDateField;
    qryXMLCHAVE: TStringField;
    qryXMLSTATUS: TStringField;
    qryXMLSERIE: TStringField;
    qryXMLXML: TMemoField;
    qryXMLTOTAL: TFMTBCDField;
    Panel6: TPanel;
    cxAlterar: TcxButton;
    cxAtualizar: TcxButton;
    cxPDF: TcxButton;
    cxNovo: TcxButton;
    cxCancelar: TcxButton;
    cxLerXML: TcxButton;
    cxVisualizar: TcxButton;
    frxReport: TfrxReport;
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
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ACBrMail1MailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure cxImprimirClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure cxCancelarClick(Sender: TObject);
    procedure cxAtualizarClick(Sender: TObject);
    procedure cxLerXMLClick(Sender: TObject);
    procedure cxVisualizarClick(Sender: TObject);
    procedure cxPDFClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Caminho_Completo, caminho, pasta: string;
    procedure localiza;
    procedure tamanho;
    procedure GerarXml;
    procedure ListarArquivos(Diretorio: string; Sub: Boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
    procedure compactanfce(caminho, pasta: string);
    procedure EnviarEmail;
    { Private declarations }
  public
    idx: Integer;
    vOrdem, vSql: String;
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uCadPessoa, uCadCompra, uSupervisor, LeXmlNE, uDmNFe, uPrincipal;

procedure TfrmCompra.ACBrMail1MailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
  ProgressBar1.Position := Integer(aStatus);
  Application.ProcessMessages;
end;

procedure TfrmCompra.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmCompra.EnviarEmail;
var
  Dir, ArqXML, para, Assunto: string;
  MS: TMemoryStream;
  P, n: Integer;
begin
  ProgressBar1.Position := 1;

  Dir := edtArquivo.Text;

  Assunto := 'XML REF.' + FormatDateTime('yyyymm',
    dados.qryCompraDTENTRADA.Value);

  ACBrMail1.Clear;
  ACBrMail1.IsHTML := false;
  ACBrMail1.Subject := Assunto;
  ACBrMail1.FromName := dados.qryEmpresaFANTASIA.AsString;
  ACBrMail1.Host := dados.qryConfigEMAILHOST.AsString;
  ACBrMail1.Port := dados.qryConfigEMAILPORTA.AsString;
  ACBrMail1.AddAddress(LowerCase(edtEmail.Text), '');
  ACBrMail1.Username := LowerCase(dados.qryConfigEMAILUSER.AsString);
  ACBrMail1.From := LowerCase(dados.qryConfigEMAILUSER.AsString);

  ACBrMail1.Password := dados.Crypt('D', dados.qryConfigEMAILSENHA.AsString);
  ACBrMail1.IsHTML := false;

  ACBrMail1.SetSSL := false;
  ACBrMail1.SetTLS := false;

  if dados.qryConfigEMAILSSL.Value = 'S' then
  begin
    ACBrMail1.SetSSL := true;
    ACBrMail1.SetTLS := true;
  end;

  ACBrMail1.ReadingConfirmation := true;
  ACBrMail1.UseThread := false;
  para := LowerCase(edtEmail.Text);
  ACBrMail1.AltBody.Text := 'SEGUE EM ANEXO ARQUIVOS DE NFC-E';
  ACBrMail1.AddAttachment(edtArquivo.Text);
  ACBrMail1.Send(false);
  ShowMessage('E-mail Enviado Com Sucesso!');

end;

procedure TfrmCompra.Button1Click(Sender: TObject);
begin
  try

    Button1.Enabled := false;

    if (Trim(edtEmail.Text) = '') then
    begin
      ShowMessage('Informe E-mail do Contador!');
      exit;
    end;

    if not FilesExists(edtArquivo.Text) then
    begin
      ShowMessage('Arquivo não existe');
      exit;
    end;

    EnviarEmail;

  finally
    Button1.Enabled := true;
  end;
end;

procedure TfrmCompra.GerarXml;
begin

  Caminho_Completo := caminho + '\' + pasta;

  if not DirectoryExists(Caminho_Completo) then
    CreateDir(Caminho_Completo);

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.NotasFiscais.LoadFromString(qryXMLXML.AsString);
  ACBrNFe.NotasFiscais.GravarXML(Caminho_Completo + '\');

end;

function TfrmCompra.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmCompra.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio + '\*.*xml', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = true then
          begin
            TempNome := Diretorio + '\' + F.Name;
            ListarArquivos(TempNome, true);
          end;
      end
      else
      begin
        memLista.Items.Add(Diretorio + '\' + F.Name);
      end;
      Ret := FindNext(F);
    end;
  finally
    begin
      FindClose(F);
    end;
  end;
end;

procedure TfrmCompra.compactanfce(caminho, pasta: string);
var
  ZipFile: TZipFile;
  arquivo: string;
begin
  // Cria uma instância da classe TZipFile
  ZipFile := TZipFile.Create;
  try
    // Indica o diretório e nome do arquivo Zip que será criado
    ZipFile.Open(caminho + '\' + pasta + '.zip', zmWrite);
    for arquivo in memLista.Items do
      ZipFile.Add(arquivo);

    MessageDlg('Compactação concluída!', mtInformation, [mbOK], 0);
  finally
    // Libera o objeto da memória
    ZipFile.Free;
  end;
end;

procedure TfrmCompra.cxAlterarClick(Sender: TObject);
var
  vSituacao: string;
begin
  dados.vAutorizar := true;
  if dados.qryCompraGERA_CP.Value = 'S' then
  begin
    dados.qryExecute.Close;
    dados.qryExecute.SQL.Text :=
      'SELECT SUM(VLPAGO) FROM CPAGAR WHERe FK_COMPRA=:ID';
    dados.qryExecute.Params[0].Value := dados.qryCompraID.Value;;
    dados.qryExecute.Open;

    if dados.qryExecute.Fields[0].Value > 0 then
    begin
      ShowMessage('Compra não pode ser alterada!' + #13 +
        'Existem parcelas baixadas no contas a pagar!');
      exit;
    end;
  end;

  if dados.qryCompra.IsEmpty then
    exit;

  if (dados.qryCompraSTATUS.Value = 'F') or (dados.qryCompraSTATUS.Value = 'C')
  then
  begin
    if not dados.eSupervisor then
    begin

      try
        frmSupervisor := TFrmSupervisor.Create(Application);
        dados.vAutorizar := false;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
      end;
    end;
  end;

  if not dados.vAutorizar then
  begin
    exit;
  end;

  try
    frmCadCompra := TfrmCadCompra.Create(Application);

    with frmCadCompra do
    begin
      qryCompra.Close;
      qryCompra.Params[0].Value := dados.qryCompraID.Value;
      qryCompra.Open;
      vSituacao := frmCadCompra.qryCompraSTATUS.Value;
      if qryCompra.IsEmpty then
        exit;

      qryCompra.edit;
      qryCompraSTATUS.Value := 'A';
      if vSituacao = 'C' then
      begin
        if qryCompraSTATUS.Value = 'A' then
        begin
          try
            qryItensCompra.First;
            qryItensCompra.DisableControls;
            while not qryItensCompra.Eof do
            begin
              qryItensCompra.Next;
            end;
          finally
            qryItensCompra.EnableControls;
          end;
        end;
      end;

      cxCancelar.Enabled := true;
      cxFinalizar.Enabled := true;
      cxSair.Enabled := true;
      DBGridEh1.ReadOnly := false;
      Panel2.Enabled := true;
      Panel3.Enabled := true;

      frmCadCompra.ShowModal;
    end;
  finally
    frmCadCompra.Release;
    cxAtualizar.Click;
    maskFim.SetFocus;
  end;

end;

procedure TfrmCompra.cxAtualizarClick(Sender: TObject);
var
  codigo: Integer;
begin
  try
    cxAtualizar.Enabled := false;
    codigo := dados.qryCompraID.Value;
    localiza;
    dados.qryCompra.Locate('id', codigo, []);
  finally
    cxAtualizar.Enabled := true;
  end;
end;

procedure TfrmCompra.cxCancelarClick(Sender: TObject);
begin

  if dados.qryCompra.IsEmpty then
  begin
    exit;
  end;

  if (dados.qryCompraSTATUS.Value = 'C') then
  begin
    ShowMessage('Compra já está Cancelada!');
    exit;
  end;

  dados.vAutorizar := true;

  if (dados.qryCompraSTATUS.Value = 'F') then
  begin
    if not dados.eSupervisor then
    begin
      try
        frmSupervisor := TFrmSupervisor.Create(Application);
        dados.vAutorizar := false;
        frmSupervisor.ShowModal;
      finally
        frmSupervisor.Release;
      end;
    end;
  end;

  if not dados.vAutorizar then
  begin
    exit;
  end;

  try
    cxCancelar.Enabled := false;

    If Application.messagebox('Tem certeza que CANCELAR COMPRA?', 'Confirmação',
      mb_yesno + mb_iconquestion) = idyes then
    begin
      Try
        dados.qryExecute.Close;
        dados.qryExecute.SQL.Text := 'DELETE FROM CPAGAR WHERE FK_COMPRA=:ID';
        dados.qryExecute.Params[0].Value := dados.qryCompraID.Value;
        dados.qryExecute.ExecSQL;
        dados.Conexao.Commit;

        qryItensCompra.Close;
        qryItensCompra.Params[0].Value := dados.qryCompraID.Value;
        qryItensCompra.Open;
        qryItensCompra.First;

        while not qryItensCompra.Eof do
        begin
          dados.AtualizaEstoque(-1 * qryItensCompraQTD.AsFloat,
            qryItensCompraFK_PRODUTO.Value);
          qryItensCompra.Next;
        end;

        if not(dados.qryCompra.State = dsEdit) then
          dados.qryCompra.edit;
        dados.qryCompraSTATUS.Value := 'C';
        dados.qryCompra.Post;
        dados.Conexao.Commit;
        ShowMessage('Compra Cancelada com Sucesso!');
      Finally
        qryItensCompra.EnableControls;
      End;

    end;
  finally
    cxCancelar.Enabled := true;
  end;

end;

procedure TfrmCompra.cxImprimirClick(Sender: TObject);
begin


 {  if trim(dados.qryCompraXML.AsString) <> '' then begin
    dmNFe.ImprimirNFe(dados.qryCompraXML.Value, 'T', 'NFe', 0, 0, 0)
  end
  else
  begin

    try
      cxImprimir.Enabled := false;
      dados.qryPesqProd.Close;
      dados.qryPesqProd.Open;

      qryItensCompra.Close;
      qryItensCompra.Params[0].Value := dados.qryCompraID.Value;
      qryItensCompra.Open;

      frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\Relatorio\RelCompra.fr3');
      frxReport.ShowReport;
    finally
      cxImprimir.Enabled := true;
      edtLoc.SetFocus;
    end;
  end;}
end;

procedure TfrmCompra.cxLerXMLClick(Sender: TObject);
begin
  try
    frmxml := tfrmxml.Create(Application);
    frmxml.JaLeuXml := false;
    frmxml.ShowModal;
  finally
    frmxml.Release;
    localiza;
  end;

    //Inicio limpeza do xml    Wagner Elias
    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text := 'delete from xml_master where codigo=:cod';
    dados.qryConsulta.Params[0].Value := dados.idUsuario;
    dados.qryConsulta.ExecSQL;
    dados.Conexao.Commit;

    dados.qryConsulta.Close;
    dados.qryConsulta.SQL.Text :=
      'delete from xml_detail where FK_XML_MASTER=:id';
    dados.qryConsulta.Params[0].Value := dados.idUsuario;
    dados.qryConsulta.ExecSQL;
    dados.Conexao.Commit;

    ACBrNFe.NotasFiscais.Clear;
    //fim limpeza xml
end;

procedure TfrmCompra.cxNovoClick(Sender: TObject);
begin
   try
    frmCadCompra := TfrmCadCompra.Create(Application);
    with frmCadCompra do
    begin

      qryCompra.Close;
      qryCompra.Params[0].Value := -1;
      qryCompra.Open;

      qryCompra.Insert;
      cxCancelar.Enabled := true;
      cxSair.Enabled := true;
      cxFinalizar.Enabled := true;
      DBGridEh1.ReadOnly := false;
      Panel2.Enabled := true;
      Panel3.Enabled := true;
      frmCadCompra.ShowModal;
    end;
  finally
    frmCadCompra.Release;
    cxAtualizar.Click;
    maskInicio.SetFocus;
  end;
end;

procedure TfrmCompra.cxPDFClick(Sender: TObject);
var
  dia, mes, ano: Word;
begin
  DecodeDate(now, ano, mes, dia);
  edtEmail.Text := dados.qryEmpresaEMAIL_CONTADOR.AsString;
  PagUtilidade.Visible := true;
  caminho := ExtractFilePath(Application.ExeName) + 'Xml_Compra\';
  pasta := mes.ToString + '_' + ano.ToString;
  edtArquivo.Text := caminho + pasta + '.zip';
end;

procedure TfrmCompra.cxSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmCompra.cxVisualizarClick(Sender: TObject);
begin
   if dados.qryCompra.IsEmpty then
    exit;
  try
    frmCadCompra := TfrmCadCompra.Create(Application);
    frmCadCompra.qryCompra.Close;
    frmCadCompra.qryCompra.Params[0].Value := dados.qryCompraID.Value;
    frmCadCompra.qryCompra.Open;
    frmCadCompra.cxFinalizar.Enabled := false;
    frmCadCompra.cxSair.Enabled := true;
    frmCadCompra.DBGridEh1.ReadOnly := true;
    frmCadCompra.Panel2.Enabled := false;
    frmCadCompra.Panel3.Enabled := false;
    frmCadCompra.ShowModal;
  finally
    frmCadCompra.Release;
    maskInicio.SetFocus;
  end;
end;

procedure TfrmCompra.BitBtn1Click(Sender: TObject);
var
  dia, mes, ano, dia1, mes1, ano1: Word;
begin

  DecodeDate(strtodate(maskInicio.Text), ano, mes, dia);
  DecodeDate(strtodate(maskFim.Text), ano1, mes1, dia1);

  if (mes + ano) <> (mes1 + ano1) then
  begin
    ShowMessage('Período Inválido');
    exit;
  end;

  try
    BitBtn1.Enabled := false;
    qryXML.Close;
    qryXML.Params[0].AsDate := strtodate(maskInicio.EditText);
    qryXML.Params[1].AsDate := strtodate(maskFim.EditText);
    qryXML.Params[2].Value := dados.qryEmpresaCODIGO.Value;
    qryXML.Open;

    if not qryXML.IsEmpty then
    begin
      qryXML.Last;
      ProgressBar1.Position := 1;
      ProgressBar1.Min := 1;
      ProgressBar1.Max := qryXML.RecordCount;
      qryXML.First;
      while not qryXML.Eof do
      begin
        GerarXml;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        qryXML.Next;
      end;
    end;
    // GerarRelatorio;

    Sleep(5000);

    memLista.Items.Clear;
    ListarArquivos(Caminho_Completo, false);
    compactanfce(caminho, pasta);
  finally
    BitBtn1.Enabled := true;
  end;

end;

procedure TfrmCompra.BitBtn2Click(Sender: TObject);
begin
  PagUtilidade.Visible := false;
end;

procedure TfrmCompra.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Screen.Width * 0.06);
  DBGrid1.Columns[1].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[2].Width := round(Screen.Width * 0.08);
  DBGrid1.Columns[3].Width := round(Screen.Width * 0.07);
  DBGrid1.Columns[4].Width := round(Screen.Width * 0.32);
  DBGrid1.Columns[5].Width := round(Screen.Width * 0.28);
  DBGrid1.Columns[6].Width := round(Screen.Width * 0.07);
end;

procedure TfrmCompra.DBGrid1DblClick(Sender: TObject);
begin
  cxAlterarClick(self);
end;

procedure TfrmCompra.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCompra.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
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
  DBGrid1.Columns[0].Title.Caption := 'Número';
  DBGrid1.Columns[1].Title.Caption := 'Dt.Emissão';
  DBGrid1.Columns[2].Title.Caption := 'Dt.Entrada';
  DBGrid1.Columns[3].Title.Caption := 'NºNota';
  DBGrid1.Columns[4].Title.Caption := 'Fornecedor';
  DBGrid1.Columns[5].Title.Caption := 'Chave';
  DBGrid1.Columns[6].Title.Caption := 'Total';

  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  case idx of
    1:
      begin
        GroupBox1.Visible := false;
        GroupBox2.Caption := 'Período | Emissão';
        maskInicio.SetFocus;
      end;
    2:
      begin
        GroupBox1.Visible := false;
        GroupBox2.Caption := 'Período | Entrada';
        maskInicio.SetFocus;
      end
  else
    begin
      GroupBox1.Visible := true;
      edtLoc.SetFocus;
      edtLoc.Width := DBGrid1.Columns[idx].Width + 50;
      GroupBox2.Caption := 'Período | Emissão';
    end;

  end;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  localiza;
end;

procedure TfrmCompra.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TfrmCompra.edtLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_up then
    dados.qryCompra.Prior;
  if Key = VK_DOWN then
    dados.qryCompra.Next;
end;

procedure TfrmCompra.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;

procedure TfrmCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   frmPrincipal.dxStatusBar1.Panels[0].Text := '';
end;

procedure TfrmCompra.FormCreate(Sender: TObject);
begin
  maskInicio.Text := DateToStr(StartOfTheMonth(DATE));
  maskFim.Text := DateToStr(DATE);
  {cxNovo.Caption := 'F2' + sLineBreak + 'Novo';
  cxAlterar.Caption := 'F3' + sLineBreak + 'Alterar';
  cxCancelar.Caption := 'F4' + sLineBreak + 'Cancelar';
  cxAtualizar.Caption := 'F5' + sLineBreak + 'Atualizar';
  cxLerXML.Caption := 'F6' + sLineBreak + 'Ler XML';
  cxVisualizar.Caption := 'F7' + sLineBreak + 'Visualizar';
  cxPDF.Caption := 'F10' + sLineBreak + 'Fechar Mês';}

end;

procedure TfrmCompra.FormKeyDown(Sender: TObject; var Key: Word;
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
    cxCancelarClick(self);
    abort;
  end;
  if Key = vk_f5 then
  begin
    cxAtualizarClick(self);
    abort;
  end;
  if Key = vk_f6 then
  begin
    cxLerXMLClick(self);
    abort;
  end;
  if Key = vk_f7 then
  begin
    cxVisualizarClick(self);
    abort;
  end;
  if Key = vk_f8 then
  begin
    btnFiltrarClick(self);
    abort;
  end;
  if Key = vk_f9 then
  begin
    if not(idx in [1 .. 2]) then
      edtLoc.SetFocus
    else
      maskInicio.SetFocus;
    abort;
  end;
end;

procedure TfrmCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TfrmCompra.FormShow(Sender: TObject);
begin

  vOrdem := ' ASC';

  tamanho;

  localiza;
  edtLoc.SetFocus;
end;

procedure TfrmCompra.localiza;
var
  filtro, filtro1, ordem: string;
begin
  filtro := '';
  filtro1 := '';
  ordem := '';

  vSql := ' select co.*, pes.razao from compra co' +
    ' left join pessoa pes on pes.codigo=co.fornecedor' + ' where' + ' co.id>0'
    + ' /*where*/ ' + ' /*ordem*/ ';

  filtro := ' AND co.empresa=' + dados.qryEmpresaCODIGO.AsString;

  if idx = 2 then
  begin
    filtro := filtro + ' and co.Dtentrada>=' +
      QuotedStr(FormatDateTime('mm-dd-yyyy', strtodate(maskInicio.EditText))) +
      ' and co.Dtentrada<=' + QuotedStr(FormatDateTime('mm-dd-yyyy',
      strtodate(maskFim.EditText)));
  end
  else
  begin
    filtro := filtro + ' and co.Dtemissao>=' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText))) +
      ' and co.Dtemissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
      strtodate(maskFim.EditText)));
  end;

  case idx of
    0:
      begin
        if (Trim(edtLoc.Text) <> '') then
          if Dados.EhNumero(edtLoc.Text) then
          filtro := filtro + ' and co.id=' + edtLoc.Text;
      end;
    3:
      begin
        if (Trim(edtLoc.Text) <> '') then
          if Dados.EhNumero(edtLoc.Text) then
          filtro := filtro + ' and co.nr_nota like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    4:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and pes.razao like  ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    5:
      begin
        if (Trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and co.chave like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    6:
      begin
        if (Trim(edtLoc.Text) <> '') then
          if Dados.EhNumero(edtLoc.Text) then
          filtro := filtro + ' and co.total >= ' + StringReplace(edtLoc.Text,
            ',', '.', []);
      end;

  end;

  case TabSet1.TabIndex of
    1:
      filtro1 := ' and status=''A''';
    2:
      filtro1 := ' and status=''F''';
    3:
      filtro1 := ' and status=''C''';
  end;

  case idx of
    0:
      ordem := ' order by co.id' + vOrdem;
    1:
      ordem := ' order by co.dtemissao' + vOrdem;
    2:
      ordem := ' order by co.dtentrada' + vOrdem;
    3:
      ordem := ' order by co.nr_nota' + vOrdem;
    4:
      ordem := ' order by pes.razao' + vOrdem;
    5:
      ordem := ' order by co.chave' + vOrdem;
    6:
      ordem := ' order by co.total' + vOrdem;

  end;

  dados.qryCompra.Close;

  dados.qryCompra.SQL.Text := vSql;
  dados.qryCompra.SQL.Text := StringReplace(dados.qryCompra.SQL.Text,
    '/*where*/', filtro + filtro1 + ordem, [rfReplaceAll]);
  dados.qryCompra.Open;
end;

procedure TfrmCompra.TabSet1Click(Sender: TObject);
begin
  localiza;
end;

procedure TfrmCompra.TabSet2Click(Sender: TObject);
begin
  localiza;
end;

end.
