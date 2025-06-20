unit uIBPT;
interface
uses
  ACBrIBPTax,System.IOUtils,
  Vcl.StdCtrls, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,
  ACBrBase, ACBrSocket, ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrNCMs,funcoes_diversas, SHDocVw, Vcl.OleCtrls;
type
  TfrmIBPT = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblVersao: TLabel;
    edArquivo: TEdit;
    btAbrir: TBitBtn;
    opdImportar: TOpenDialog;
    dsIBPT: TDataSource;
    SaveDialog1: TSaveDialog;
    ACBrIBPT: TACBrIBPTax;
    lblQtdeItem: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    lblVigencia: TLabel;
    lblChave: TLabel;
    lblFonte: TLabel;
    qryIBPT: TFDQuery;
    qryUpdate: TFDQuery;
    qryIBPTCODIGO: TStringField;
    qryIBPTEX: TStringField;
    qryIBPTTIPO: TStringField;
    qryIBPTDESCRICAO: TStringField;
    qryIBPTNACIONALFEDERAL: TStringField;
    qryIBPTIMPORTADOSFEDERAL: TStringField;
    qryIBPTESTADUAL: TStringField;
    qryIBPTMUNICIPAL: TStringField;
    qryIBPTVIGENCIAINICIO: TStringField;
    qryIBPTVIGENCIAFIM: TStringField;
    qryIBPTCHAVE: TStringField;
    qryIBPTVERSAO: TStringField;
    qryIBPTFONTE: TStringField;
    qryPesquisa: TFDQuery;
    Button1: TButton;
    ACBrNCMs: TACBrNCMs;
    tmpCadastro: TClientDataSet;
    tmpCadastroNCM: TStringField;
    tmpCadastroEx: TIntegerField;
    tmpCadastroTabela: TIntegerField;
    tmpCadastroDescricao: TStringField;
    tmpCadastroAliqFedNacional: TFloatField;
    tmpCadastroAliqFedImportado: TFloatField;
    tmpCadastroAliqEstadual: TFloatField;
    tmpCadastroAliqMunicipal: TFloatField;
    dtsCadastro: TDataSource;
    Panel: TPanel;
    Memo1: TMemo;
    lblInformacaoImportacao: TLabel;
    prgImportacao: TProgressBar;
    lblURL: TLabel;
    btnDownload: TBitBtn;
    btnConfirmar: TSpeedButton;
    tmpCadastrochave: TStringField;
    tmpCadastroversao: TStringField;
    tmpCadastrofonte: TStringField;
    tmpCadastrovigenciainicio: TStringField;
    tmpCadastrovigenciafim: TStringField;
    lblInformacaoDownload: TLabel;
    edURL: TComboBox;
    WebBrowser: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure ACBrIBPTErroImportacao(const ALinha, AErro: string);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
  private
    StrNCM: string;
    StrUF: string;
    StrEX_TIPI: String;
    StrCodInterno: string;
    StrDescricao: string;
    StrUnidade: string;
    StrValor: string;
    StrGTIN: string;
    function GravarRegistros: Boolean;
    procedure ConfigurarTmpCadastro;
  public
  end;
function ImportarTabelaIBPT(const AOnwer : TComponent) : Boolean;
var
  frmIBPT: TfrmIBPT;
  
const
  DOWNLOAD_NMFILE_TABELA_IBPT = '%s%s%s'; //aqui foi a constante tipo TabelaIBPTax%RN%.csv   
implementation
uses
ACBrUtil, Udados ;
{$R *.dfm}
procedure TfrmIBPT.ACBrIBPTErroImportacao(const ALinha, AErro: string);
begin
  Memo1.Lines.Add(ALinha);
  Memo1.Lines.Add(AErro);
  Memo1.Lines.Add('');
end;

function ImportarTabelaIBPT(const AOnwer : TComponent) : Boolean;
var
  AForm : TfrmIBPT;
begin
  AForm :=TfrmIBPT.Create(AOnwer);
  try
    Result := (AForm.ShowModal = mrOk);
  finally
    AForm.Free;
  end;
end;

procedure TfrmIBPT.btnConfirmarClick(Sender: TObject);
begin
   if ShowConfirmation('Confirmação', 'Confirma a importação dos registros do arquivo?') then
    if GravarRegistros then
      ModalResult := mrOk;
end;

procedure TfrmIBPT.btnDownloadClick(Sender: TObject);
var
  pPathTabela, sArquivo : String;
  begin
  if Trim(edURL.Text) = EmptyStr then
  begin
    Showmessage('Favor informar a URL para download do arquivo.');
    Exit;
  end;

  sArquivo := format(DOWNLOAD_NMFILE_TABELA_IBPT, ['TabelaIBPTax', Dados.qryEmpresaUF.AsString, '.csv']);

  Screen.Cursor := crHourGlass;
  try
    lblInformacaoDownload.Font.Color := clNavy;
    lblInformacaoDownload.Caption := 'Download em execução.... Aguarde!';
    lblInformacaoDownload.Visible := True;

    ACBrIBPT.Arquivo.Clear;
	{SE FOR USAR O NAVEGADOR}
//    if Pos('seusite.com', edURL.Text + sArquivo ) > 0 then
//    begin
//      WebBrowser.Height := 1;
//      WebBrowser.Width  := 1;
//      WebBrowser.Navigate(Trim(edURL.Text));
//      WebBrowser.OnFileDownload(Trim(edURL.Text + sArquivo);
//    end
//    else
    begin
      btnDownload.Enabled := False;
      Application.ProcessMessages;
     {AQUI SE FOR USAR UM API DIRETA}
	 ACBrIBPT.CNPJEmpresa := ' ';
	 ACBrIBPT.Token       := ' ';

     pPathTabela := TPath.Combine(ExtractFilePath(Application.ExeName), 'IBPT');
        if not TDirectory.Exists(pPathTabela) then
         TDirectory.CreateDirectory(pPathTabela);


      ACBrIBPT.URLDownload := Trim(edURL.Text  +  sArquivo );
      pPathTabela :=(ExtractFilePath(Application.ExeName)) + 'IBPT\' + sArquivo ;
      edArquivo.Clear;
	  
     if ACBrIBPT.DownloadTabela then
     begin
      ACBrIBPT.Arquivo.SaveToFile(pPathTabela);
      edArquivo.Text := pPathTabela;
      btnImportarClick(Sender);
     end;

    end;
  finally
    Screen.Cursor := crDefault;
    lblInformacaoDownload.Visible := False;
    btnDownload.Enabled := True;
  end;
end;

procedure TfrmIBPT.btnImportarClick(Sender: TObject);
var
  I  : Integer;
  ok : Boolean;
  s  : String;
begin
  ok := (ACBrIBPT.Arquivo.Count > 0);
  s  := Trim(edArquivo.Text);

  if (s = '') or (not FileExists(s)) then
  begin
    opdImportar.InitialDir := (ExtractFilePath(Application.ExeName)) + 'IBPT\';
    ok := opdImportar.Execute;
    if ok then
      s := Trim(opdImportar.FileName);
  end;


  if (s = '') or (not FileExists(s)) then
  begin
    ShowMessage('Nenhum arquivo selecionado ou arquivo não encontrado!');
    Exit;
  end;

  Memo1.Clear;
  Memo1.Lines.BeginUpdate;

  with ACBrIBPT do
  begin
    edArquivo.Text := s;


    if not AbrirTabela(edArquivo.Text) then
    begin
      ShowMessage('Erro ao abrir o arquivo IBPT. Verifique o formato e tente novamente.');
      Exit;
    end;

    if Itens.Count = 0 then
    begin
      ShowMessage('O arquivo IBPT foi carregado, mas não contém registros para importar.');
      Exit;
    end;

    lblInformacaoImportacao.Font.Color := clNavy;
    lblInformacaoImportacao.Caption    := 'Importação em execução.... Aguarde!';
    lblInformacaoImportacao.Visible    := True;

    lblVersao.Visible   := True;
    lblVigencia.Visible := True;
    lblChave.Visible    := True;
    lblFonte.Visible    := True;
    lblQtdeItem.Visible := True;

    lblVersao.Caption   := VersaoArquivo;
    lblVigencia.Caption := Format('%s a %s', [DateToStr(VigenciaInicio), DateToStr(VigenciaFim)]);
    lblChave.Caption    := ChaveArquivo;
    lblFonte.Caption    := Fonte;


    if tmpCadastro.Active then
    begin
      tmpCadastro.DisableControls;
      try
        tmpCadastro.First;
        while not tmpCadastro.Eof do
          tmpCadastro.Delete;
      finally
        tmpCadastro.EnableControls;
      end;
    end;

    tmpCadastro.Close;
    tmpCadastro.CreateDataSet;
    tmpCadastro.DisableControls;
    try
      lblQtdeItem.Caption    := '0';
      prgImportacao.Position := 0;
      prgImportacao.Max      := Itens.Count;
      prgImportacao.Visible  := True;


      ShowMessage('Iniciando a importação de ' + IntToStr(Itens.Count) + ' registros...');

      for I := 0 to Itens.Count - 1 do
      begin
        lblInformacaoImportacao.Caption := 'Importando ' + QuotedStr(Itens[I].NCM) + '.... Aguarde!';

        if length(Itens[I].NCM) = 8 then
        begin
        tmpCadastro.Append;

        tmpCadastroNCM.AsString             := Itens[I].NCM;
        tmpCadastroDescricao.AsString       := Itens[I].Descricao;
        tmpCadastroEx.AsString              := Itens[I].Excecao;
        tmpCadastroTabela.AsInteger         := Integer(Itens[I].Tabela);
        tmpCadastroAliqFedNacional.AsFloat  := Itens[I].FederalNacional;
        tmpCadastroAliqFedImportado.AsFloat := Itens[I].FederalImportado;
        tmpCadastroAliqEstadual.AsFloat     := Itens[I].Estadual;
        tmpCadastroAliqMunicipal.AsFloat    := Itens[I].Municipal;
        tmpCadastrovigenciainicio.AsString  := DateToStr(VigenciaInicio);
        tmpCadastrovigenciafim.AsString     := DateToStr(VigenciaFim);
        tmpCadastrochave.AsString           := ChaveArquivo;
        tmpCadastroversao.AsString          := VersaoArquivo;
        tmpCadastrofonte.AsString           := Fonte;
        tmpCadastro.Post;

        end;

        prgImportacao.Position := I + 1;
        Application.ProcessMessages;
      end;
    finally
      tmpCadastro.First;
      tmpCadastro.EnableControls;
      lblInformacaoImportacao.Visible := False;

      lblQtdeItem.Caption    := FormatFloat(',0', tmpCadastro.RecordCount);
      btnConfirmar.Enabled   := (tmpCadastro.RecordCount > 0);
      prgImportacao.Position := 0;
      prgImportacao.Max      := tmpCadastro.RecordCount;
      prgImportacao.Visible  := True;
      Memo1.Lines.EndUpdate;
    end;
  end;
end;

function TfrmIBPT.GravarRegistros: Boolean;
var
  I, TotalRegistros: Integer;
begin
  if (tmpCadastro.RecordCount = 0) then
    Exit(False);

  Screen.Cursor := crSQLWait;
  try
    ExecuteScriptSQL('DELETE FROM ibpt'); // Remove registros antigos

    TotalRegistros := tmpCadastro.RecordCount;
    lblInformacaoImportacao.Font.Color := clNavy;
    lblInformacaoImportacao.Caption    := 'Inserindo no Banco.... Aguarde!';
    lblInformacaoImportacao.Visible    := True;

    prgImportacao.Position := 0;
    prgImportacao.Max := TotalRegistros;
    prgImportacao.Visible := True;

    qryIBPT.Connection.StartTransaction; //  Inicia a transação

    try
      qryIBPT.SQL.Text :=
        'INSERT INTO IBPT (CODIGO, EX, TIPO, DESCRICAO, NACIONALFEDERAL, IMPORTADOSFEDERAL, ESTADUAL, MUNICIPAL, ' +
        'VIGENCIAINICIO, VIGENCIAFIM, CHAVE, VERSAO, FONTE) ' +
        'VALUES (:CODIGO, :EX, :TIPO, :DESCRICAO, :NACIONALFEDERAL, :IMPORTADOSFEDERAL, :ESTADUAL, :MUNICIPAL, ' +
        ':VIGENCIAINICIO, :VIGENCIAFIM, :CHAVE, :VERSAO, :FONTE)';

      qryIBPT.Params.ArraySize := TotalRegistros;

      tmpCadastro.First;
      I := 0;

      while not tmpCadastro.Eof do
      begin
        lblInformacaoImportacao.Caption := 'Inserindo no Banco ' + QuotedStr(tmpCadastroNCM.AsString) + '.... Aguarde!';

        qryIBPT.Params[0].AsStrings[I] := tmpCadastroNCM.AsString;
        qryIBPT.Params[1].AsIntegers[I] := StrToIntDef(Trim(tmpCadastroEx.AsString), 0);
        qryIBPT.Params[2].AsIntegers[I] := StrToIntDef(Trim(tmpCadastroTabela.AsString), 0);
        qryIBPT.Params[3].AsStrings[I] := tmpCadastroDescricao.AsString;
        qryIBPT.Params[4].AsFloats[I] := tmpCadastroAliqFedNacional.AsFloat;
        qryIBPT.Params[5].AsFloats[I] := tmpCadastroAliqFedImportado.AsFloat;
        qryIBPT.Params[6].AsFloats[I] := tmpCadastroAliqEstadual.AsFloat;
        qryIBPT.Params[7].AsFloats[I] := tmpCadastroAliqMunicipal.AsFloat;
        qryIBPT.Params[8].AsStrings[I] := tmpCadastrovigenciainicio.AsString;
        qryIBPT.Params[9].AsStrings[I] := tmpCadastrovigenciafim.AsString;
        qryIBPT.Params[10].AsStrings[I] := tmpCadastrochave.AsString;
        qryIBPT.Params[11].AsStrings[I] := tmpCadastroversao.AsString;
        qryIBPT.Params[12].AsStrings[I] := tmpCadastrofonte.AsString;

        tmpCadastro.Next;
        Inc(I);
        prgImportacao.Position := I;
        Application.ProcessMessages;
      end;

      // Executa o batch insert de uma vez só!
      qryIBPT.Execute(TotalRegistros, 0);

      qryIBPT.Connection.Commit; //
     ShowMessage('NCMS inseridos com sucesso! ');
      Result := True;
    except
      on E: Exception do
      begin
        qryIBPT.Connection.Rollback; //
        ShowMessage('Erro ao gravar registros: ' + E.Message);
        Result := False;
      end;
    end;
  finally
    btnConfirmar.Enabled := True;
    Screen.Cursor := crDefault;
    prgImportacao.Position := 0;
  end;
end;


procedure TfrmIBPT.btSairClick(Sender: TObject);
begin
  Close;
end;
procedure TfrmIBPT.Button1Click(Sender: TObject);
begin
 opdImportar.Execute;
 if opdImportar.FileName <> '' then
 begin
   edArquivo.Text := opdImportar.FileName;
   btnImportarClick(Sender);
 end
 else
 ShowMessage('Arquivo Inválido!');
end;
procedure TfrmIBPT.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self; dados.GetComponentes;
end;

procedure TfrmIBPT.ConfigurarTmpCadastro;
begin
  if not tmpCadastro.Active then
  begin
    tmpCadastro.FieldDefs.Clear;

    tmpCadastro.FieldDefs.Add('NCM', ftString, 10);
    tmpCadastro.FieldDefs.Add('Descricao', ftString, 255);
    tmpCadastro.FieldDefs.Add('Ex', ftInteger);
    tmpCadastro.FieldDefs.Add('Tabela', ftInteger);
    tmpCadastro.FieldDefs.Add('AliqFedNacional', ftFloat);
    tmpCadastro.FieldDefs.Add('AliqFedImportado', ftFloat);
    tmpCadastro.FieldDefs.Add('AliqEstadual', ftFloat);
    tmpCadastro.FieldDefs.Add('AliqMunicipal', ftFloat);
    tmpCadastro.FieldDefs.Add('VigenciaInicio', ftString, 10);
    tmpCadastro.FieldDefs.Add('VigenciaFim', ftString, 10);
    tmpCadastro.FieldDefs.Add('Chave', ftString, 50);
    tmpCadastro.FieldDefs.Add('Versao', ftString, 20);
    tmpCadastro.FieldDefs.Add('Fonte', ftString, 30);

    tmpCadastro.CreateDataSet;
  end;
end;

procedure TfrmIBPT.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  ConfigurarTmpCadastro;
  tmpCadastro.Open;

  with edURL do
  begin
    Items.Clear;
    Items.Add('INICIO DA URL' +  'CAMINHO DA PASTA NO SITE');
    ItemIndex := Items.Count - 1;
  end;

end;
end.
