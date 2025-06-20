unit funcoes_diversas;
interface
uses
  System.Classes,
  System.SysUtils,
  System.DateUtils,
  Winapi.Windows,
{protocolos}
 IdHTTP,
 IdSSLOpenSSL,
{GRAFICOS}
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.Controls,
  Vcl.Forms,
  {FIM DOS GRAFICO}
  Udados,
  {acbr}
  ACBrUtil,
  pcnRetDistDFeInt,
  pcnConversao,
  pcnConversaoNFe,
  pcnAuxiliar,
  ACBrGIF,
  {fim acbr}

  {FAST}
  frxClass,
  frxDBSet,
  frxExportPDF, frxExportBaseDialog,
{Firedac}
Data.DB, FireDAC.Comp.DataSet,
 FireDAC.Comp.Client,




  uDmNFe, UXmlComprasRecord, UEmpresaRecord, unit_msg_confirma;

  type
  TFormType = (ftPessoas, ftProdutos, ftCompra, ftOrcamento, ftPedidoVenda,
               ftConsPagar, ftConsReceber, ftCaixa, ftConsNFe, ftConsOSRoupa);

  function ChecaValidade: Boolean;
  function FormTypeFromString(const FormName: string): TFormType;
  function BuscarEANT(const Value: string): string;
  procedure GeracaoPiximg(AOwner: TForm; ACBrGIF: TComponent);
  function UsuarioTemPermissao(NomeTela: string): Boolean;
  function BaixarXMLNFe(const ACNPJ, AChaveAcesso: string): Boolean;
  procedure MSGAutoClose(const AMensagem, ADetalhe: string; ADuration: Integer = 1000);
  function HexToColor(Hex: string): TColor;
  function ColorToHex(AColor: TColor): string;
  procedure ExecuteScriptSQL(sScriptSQL : String);
  procedure ConfirmaTransacao;
  function ShowConfirmation(sTitle, sMsg : String) : Boolean;
  function UsaTEF( VendaCODIGO,CFormaPagamento: Integer; TTef:string): Boolean;
  function GET_COR_SISTEMA(const ColorStr: string): TColor;
  function fncRemoveAcento(texto: string): string; stdcall;
  function RemoveNaoNumericos(const AStr: string): string;
  function FormataCPF(const CPF: string): string;
  function FormataCNPJ(const CNPJ: string): string;
  procedure prcArredondarPainel(Panel : TPanel );
  function FFechamentoCaixa(Modelo: Integer; vLote, vUsuario: Integer;
             rResumoCaixa: TFDQuery; out Erro: string): Boolean;
  function GravaLog(const ATela, AErro: string): Boolean;




implementation

procedure prcArredondarPainel(Panel : TPanel );
var
  rgn: HRGN;
  dc: HDC;

begin
  //funcao que faz o arredondamento dos paineis do formulario
  rgn := CreateRoundRectRgn(0, 0, Panel.Width, Panel.Height, 12, 12);
  dc := GetDC(Panel.Handle);
  SetWindowRgn(Panel.Handle, rgn, true);
  ReleaseDC(Panel.Handle, dc);
  DeleteObject(rgn);
end;

function BaixarXMLNFe(const ACNPJ, AChaveAcesso: string): Boolean;
var
  cStat: Integer;
  xMotivo: String;
  RetornoDist: TretDistDFeInt;
  DocumentoZip: TdocZipCollectionItem;
  Situacao, Chave, DocXML, sArquivoXML: String;
  Empresa: TEmpresaRec;
  XmlCompras: TXmlComprasRec;
  sCaminhoSalvar, MesAno, sCaminhoCompleto: string;
const
  MENSAGEM_XML_NAO_LOCALIZADO: String =
    'Nenhum documento XML foi localizado para a nota eletrÙnica selecionada. ' +
    'A SEFAZ pode demorar algumas horas para disponibilizar o documento apÛs a manifestaÁ„o.' +
    sLineBreak + 'Verifique se o documento j· foi manifestado ou tente novamente mais tarde!';
begin
  Result := False;
  Chave := AChaveAcesso;

  sCaminhoSalvar := dados.qryConfigPATHXMLENTRADA.Value;
  MesAno := FormatDateTime('mmyyyy', Now);
  sCaminhoCompleto := IncludeTrailingPathDelimiter(sCaminhoSalvar) + MesAno;

  if not DirectoryExists(sCaminhoCompleto) then
    ForceDirectories(sCaminhoCompleto);

  if Dados.Conexao.ExecSQLScalar(
       'SELECT COUNT(*) FROM nfe_manifesto WHERE CHAVE = :CHAVE AND XML IS NOT NULL',
       [Chave]) > 0 then
  begin
    dmNFe.ACBrNFe.NotasFiscais.Clear;
    XmlCompras.Clear;
    XmlCompras.Get(Chave);
    dmNFe.ACBrNFe.NotasFiscais.LoadFromString(XmlCompras.XMLGERADO);

    sArquivoXML := IncludeTrailingPathDelimiter(sCaminhoCompleto) + Chave + '-entNFe.xml';

    if dmNFe.ACBrNFe.NotasFiscais.Count > 0 then
    begin
      dmNFe.ACBrNFe.NotasFiscais.Items[0].GravarXML(sArquivoXML);
      Exit(True);
    end;
  end;

  try
    dmNFe.ConfiguraNFe('NFe');
    dmNFe.ACBrNFe.NotasFiscais.Clear;
    Empresa.Get(ACNPJ);

    if dmNFe.ACBrNFe.DistribuicaoDFePorChaveNFe(Empresa.UF_IBGE, Empresa.CNPJ, Chave) then
    begin
      RetornoDist := dmNFe.ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt;
      cStat := RetornoDist.cStat;
      xMotivo := RetornoDist.xMotivo;

      if (RetornoDist.docZip.Count > 0) and (cStat = 138) then
      begin
        DocumentoZip := RetornoDist.docZip.Items[0];
        Chave := DocumentoZip.resDFe.chDFe;

        if Chave <> '' then
        begin
          if Pos('nfeProc', DocumentoZip.XML) > 0 then
            DocXML := DocumentoZip.XML
          else
            DocXML := '';

          if DocXML.Trim.IsEmpty then
            raise Exception.Create(MENSAGEM_XML_NAO_LOCALIZADO);

          case DocumentoZip.resDFe.cSitDFe of
            snAutorizado: Situacao := 'A';
            snDenegado:   Situacao := 'D';
            snCancelado:  Situacao := 'C';
            snEncerrado:  Situacao := 'E';
          end;

          if Situacao <> 'A' then
            raise Exception.Create(MENSAGEM_XML_NAO_LOCALIZADO);

          try
            Dados.Conexao.ExecSQL('UPDATE nfe_manifesto SET XML = :XML WHERE CHAVE = :CHAVE',
                                  [DocXML, Chave]);
            Dados.Conexao.CommitRetaining;
          except
            on E: Exception do
              raise Exception.Create('Erro ao atualizar NFE no banco: ' + E.Message);
          end;

          XmlCompras.Clear;
          XmlCompras.Get(Chave);
          dmNFe.ACBrNFe.NotasFiscais.LoadFromString(XmlCompras.XMLGERADO);

          sArquivoXML := IncludeTrailingPathDelimiter(sCaminhoCompleto) + Chave + '-entNFe.xml';

          if dmNFe.ACBrNFe.NotasFiscais.Count > 0 then
          begin
            dmNFe.ACBrNFe.NotasFiscais.Items[0].GravarXML(sArquivoXML);
            Result := True;
          end
          else
            raise Exception.Create('Erro ao salvar XML: Nenhum documento carregado.');
        end;
      end
      else
      begin
        if cStat = 137 then
          raise Exception.Create(MENSAGEM_XML_NAO_LOCALIZADO)
        else
          raise Exception.CreateFmt(
            'Erro ao consultar SEFAZ: %d - %s',
            [cStat, xMotivo]
          );
      end;
    end;
  except
    on E: Exception do
      raise Exception.Create('Erro ao baixar XML da SEFAZ: ' + E.Message);
  end;
end;

function ChecaValidade: Boolean;
var
  DataValidade: TDate;
begin
  Result := false;
  if (Trim(Dados.qryEmpresaDATA_CADASTRO.AsString) = '') or
    (Dados.qryEmpresaDATA_CADASTRO.IsNull) then
  begin
    Result := true;
    Dados.ChamaContato('AtenÁ„o!' + sLineBreak + 'Chave de registro inv·lida!');
    Dados.qryEmpresa.Edit;
    Dados.qryEmpresaNSERIE.Value := '...';
    Dados.qryEmpresa.Post;
    Dados.Conexao.CommitRetaining;
    Dados.ApagaNumeroSerie;
    exit;
  end;
end;

function MascaraCNPJ(const CNPJ: String): String;
begin
  if Length(CNPJ) = 14 then
    Result := Copy(CNPJ, 1, 2) + '.' +
              Copy(CNPJ, 3, 3) + '.' +
              Copy(CNPJ, 6, 3) + '/' +
              Copy(CNPJ, 9, 4) + '-' +
              Copy(CNPJ, 13, 2)
  else
    Result := CNPJ;
end;


function FormTypeFromString(const FormName: string): TFormType;
begin
  if FormName = 'frmPessoas' then
    Result := ftPessoas
  else if FormName = 'frmProdutos' then
    Result := ftProdutos
  else if FormName = 'frmCompra' then
    Result := ftCompra
  else if FormName = 'frmOrcamento' then
    Result := ftOrcamento
  else if FormName = 'frmPedidoVenda' then
    Result := ftPedidoVenda
  else if FormName = 'frmConsPagar' then
    Result := ftConsPagar
  else if FormName = 'frmConsReceber' then
    Result := ftConsReceber
  else if FormName = 'frmCaixa' then
    Result := ftCaixa
  else if FormName = 'frmConsNFe' then
    Result := ftConsNFe
  else if FormName = 'frmConsOSRoupa' then
    Result := ftConsOSRoupa
  else
    raise Exception.Create('Formul·rio n„o reconhecido: ' + FormName);
end;

function BuscarEANT(const Value: string): string;
var
  I: Integer;
begin
  Result := '';

  // Remove espaÁos em branco antes e depois
  for I := 1 to Length(Value.Trim) do
  begin
    if CharInSet(Value[I], ['0'..'9']) then
      Result := Result + Value[I];
  end;

  // Remove zeros iniciais, mantendo pelo menos um zero caso o resultado seja vazio
  while (Length(Result) > 1) and (Result[1] = '0') do
    Delete(Result, 1, 1);

  if Result.IsEmpty then
    Result := '0';
end;

procedure GeracaoPiximg(AOwner: TForm; ACBrGIF: TComponent);
var
  sPath: string;
begin

    AOwner.Width := Round(Screen.Width * 0.4);
    AOwner.Height := Round(Screen.Height * 0.4);
    AOwner.Left := (Screen.Width - AOwner.Width) div 2;
    AOwner.Top := (Screen.Height - AOwner.Height) div 2;

  sPath := ExtractFilePath(Application.ExeName) + 'img\qr-code-codigo-qr.gif';


  if FileExists(sPath) then
  begin
    if ACBrGIF is TGraphicControl then
    begin
      // Centraliza o componente gr·fico no formul·rio
      TGraphicControl(ACBrGIF).Top := (AOwner.Height div 2) - (TGraphicControl(ACBrGIF).Height div 2);
      TGraphicControl(ACBrGIF).Left := (AOwner.Width div 2) - (TGraphicControl(ACBrGIF).Width div 2);
    end;

    if ACBrGIF is TACBrGIF then
    begin
      with TACBrGIF(ACBrGIF) do
      begin
        Filename := sPath;
        Active := True;
      end;
    end;
  end
  else
  begin
    ShowMessage('Gif n„o encontrado.' + sLineBreak +
                'Verifique se existe o .gif no seguinte diretÛrio: ' + sLineBreak +
                sPath);
  end;
end;



function UsuarioTemPermissao(NomeTela: string): Boolean;
begin

  Result := false;
  dados.qryPermissoes.Close;
  dados.qryPermissoes.Params[0].Value := Dados.idUsuario;
  dados.qryPermissoes.Open;
  if not dados.qryPermissoes.IsEmpty then
  begin

  Result := (dados.qryPermissoes.Locate('tela', NomeTela, []) and
            (dados.qryPermissoesVISUALIZAR.AsString = 'S') and
            (dados.qryEmpresaUSA_PDV.AsString = 'S'));
  end
  else
  Result := False;

end;

procedure MSGAutoClose(const AMensagem, ADetalhe: string; ADuration: Integer = 1000);
var
  MsgForm: TForm;
  LabelMsg: TLabel;
  PanelFundo: TPanel;
  LabelTitulo: TLabel;
  ImgLogo: TImage;
  ImgIcone: TImage;
  cCaminhoLOGO, cCaminhoICONE: string;
begin
  MsgForm := TForm.Create(nil);
  try


    cCaminhoLOGO := ExtractFilePath(Application.ExeName) +  'img\logoZeus.png';
    cCaminhoICONE := ExtractFilePath(Application.ExeName) + 'img\icon_sys.png';

    {TAMANHO DA TELA}
    MsgForm.BorderStyle := bsNone;
    MsgForm.Position := poScreenCenter;
    MsgForm.Width := 650;
    MsgForm.Height := 120;
    MsgForm.Color := clWhite;

    PanelFundo := TPanel.Create(MsgForm);
    PanelFundo.Parent := MsgForm;
    PanelFundo.Align := alTop;
    PanelFundo.Height := 40;
    PanelFundo.Color := clBlue; // Cor do cabeÁalho
    PanelFundo.BevelInner := bvNone;
    PanelFundo.BevelKind := bkNone;
    PanelFundo.BevelOuter := bvNone;

    ImgLogo := TImage.Create(MsgForm);
    ImgLogo.Parent := PanelFundo;
    ImgLogo.Picture.LoadFromFile(cCaminhoLOGO);
    ImgLogo.Left := 5;
    ImgLogo.Top := 5;
    ImgLogo.Width := 100;
    ImgLogo.Height := 30;
    ImgLogo.Stretch := True;

    // Õcone de espera
    ImgIcone := TImage.Create(MsgForm);
    ImgIcone.Parent := PanelFundo;
    ImgIcone.Picture.LoadFromFile(cCaminhoICONE);
    ImgIcone.Align := alRight;
    ImgIcone.Width := 40;
    ImgIcone.Stretch := True;

    LabelTitulo := TLabel.Create(MsgForm);
    LabelTitulo.Parent := MsgForm;
    LabelTitulo.Caption := AMensagem;
    LabelTitulo.Font.Size := 12;
    LabelTitulo.Font.Style := [fsBold];
    LabelTitulo.Left := 20;
    LabelTitulo.Top := 50;
    LabelTitulo.Width := MsgForm.Width - 40;
    LabelTitulo.Alignment := taCenter;
    LabelTitulo.AutoSize := False;

    {INFOMRA«’ES NA TELA}

    LabelMsg := TLabel.Create(MsgForm);
    LabelMsg.Parent := MsgForm;
    LabelMsg.Caption := ADetalhe;
    LabelMsg.Font.Size := 10;
    LabelMsg.Font.Color := clGray;
    LabelMsg.Left := 20;
    LabelMsg.Top := 80;
    LabelMsg.Width := MsgForm.Width - 40;
    LabelMsg.Alignment := taCenter;
    LabelMsg.AutoSize := False;

    MsgForm.Show;
    Application.ProcessMessages;

    Sleep(ADuration);

  finally
    MsgForm.Free;
  end;
end;

function HexToColor(Hex: string): TColor;
var
  R, G, B: Byte;
begin
  Hex := StringReplace(Hex, '#', '', [rfReplaceAll]);
  if Length(Hex) = 6 then
  begin
    R := StrToInt('$' + Copy(Hex, 1, 2));
    G := StrToInt('$' + Copy(Hex, 3, 2));
    B := StrToInt('$' + Copy(Hex, 5, 2));
    Result := RGB(R, G, B);
  end
  else
    raise Exception.Create('Formato de cor hexadecimal inv·lido');
end;


function GET_COR_SISTEMA(const ColorStr: string): TColor;
begin
    if Pos('cl', ColorStr) = 1 then
      Result := StringToColor(ColorStr)
    else
      Result := HexToColor(ColorStr);
end;

function ColorToHex(AColor: TColor): string;
var
  R, G, B: Byte;
begin
  AColor := ColorToRGB(AColor); // Converte para RGB puro
  R := GetRValue(AColor);
  G := GetGValue(AColor);
  B := GetBValue(AColor);
  Result := Format('%.2X%.2X%.2X', [R, G, B]); // Sem o #
end;

procedure ConfirmaTransacao;
begin
  with Dados do
  begin
    if Conexao.InTransaction then
      Conexao.CommitRetaining;
  end;
end;

procedure ExecuteScriptSQL(sScriptSQL : String);
begin
  with Dados do
  begin
    Conexao.ExecSQL(sScriptSQL);
    ConfirmaTransacao;
  end;
end;

function IfThenStr(AValue: Boolean; const ATrue: string;
  AFalse: string = ''): string;
begin
  if AValue then
    Result := ATrue
  else
    Result := AFalse;
end;

function ShowConfirmation(sTitle, sMsg : String) : Boolean;
var
  fMsg  : Tform_msg_confirmacao;
  aForm : TForm;
//begin
//  if (gSistema.Codigo = SISTEMA_PDV) then
//    try
//      fMsg := Tform_msg_confirmacao.GetInstance(Application);
//      fMsg.Confirmar(sTitle, sMsg);
//
//      Result := (fMsg.ShowModal = mrYes);
//    finally
//      fMsg.Free;
//    end
//  else
  begin
    aForm := CreateMessageDialog(PChar(sMsg), mtConfirmation, [mbYes, mbNo], TMsgDlgBtn.mbNo);
    try

      aForm.Caption := IfThenStr(sTitle.Trim.IsEmpty, 'Confirmar', sTitle);

      (aForm.FindComponent('Yes') as TButton).Caption  := '&Sim';
      (aForm.FindComponent('No')  as TButton).Caption  := '&N„o';

      Result := ( aForm.ShowModal = ID_YES );
    finally
      FreeAndNil(aForm);
    end;
  end;

function FFechamentoCaixa(Modelo: Integer; vLote, vUsuario: Integer;
  rResumoCaixa: TFDQuery; out Erro: string): Boolean;
begin
  Result := False;
  Erro := '';

  with rResumoCaixa do
  begin
    Connection := Dados.Conexao;
    Close;
    SQL.Clear;
    Params.Clear;

    case Modelo of
      0:
        begin
          SQL.Add('SELECT * FROM resumo_caixa');
          SQL.Add('WHERE lote = :LOTE AND usuario = :USUARIO');
          SQL.Add('ORDER BY flag, historico');
        end;
      1:
        begin
          SQL.Add('SELECT P.CODIGO, P.DESCRICAO,');
          SQL.Add('       P.UNIDADE,');
          SQL.Add('       SUM(VD.QTD) AS QTD,');
          SQL.Add('       SUM(VD.TOTAL) AS TOTAL');
          SQL.Add('FROM VENDAS_MASTER VM');
          SQL.Add('JOIN VENDAS_DETALHE VD ON VD.FKVENDA = VM.CODIGO');
          SQL.Add('LEFT JOIN PRODUTO P ON P.CODIGO = VD.ID_PRODUTO');
          SQL.Add('WHERE VM.LOTE = :LOTE');
          SQL.Add('  AND VM.FK_USUARIO = :USUARIO');
          SQL.Add('GROUP BY P.CODIGO, P.DESCRICAO, P.UNIDADE');
          SQL.Add('ORDER BY P.DESCRICAO');
        end;
    end;

    ParamByName('LOTE').AsInteger := vLote;
    ParamByName('USUARIO').AsInteger := vUsuario;

      try
        Open;
        if IsEmpty then
        begin
          Result := False;
          Erro := 'N„o exite dados Para Exibir!!'; // n„o È erro abrir vazio
        end
        else
          Result := True;
      except
        on E: Exception do
        begin
          Erro := 'Erro ao executar consulta: ' + E.Message;
          Result := False;
        end;
      end;
  end;
end;




function UsaTEF( VendaCODIGO,CFormaPagamento: Integer; TTef:string): Boolean;
var
  FTef: string;
begin
  Result := False;
  dados.qryConsulta.Close;
  dados.qryConsulta.SQL.Clear;
  dados.qryConsulta.SQL.Add(
    'SELECT vfpg.id_forma AS CODIGO, COALESCE(SUM(VFPG.valor),0) AS TOTAL, fpg.USA_TEF ' +
    'FROM vendas_fpg vfpg ' +
    'LEFT JOIN forma_pagamento fpg ON fpg.codigo = vfpg.id_forma ' +
    'WHERE vfpg.vendas_master = :VENDA and VFPG.valor > 0 AND vfpg.tipo IN (''C'', ''E'') ' +
    'GROUP BY vfpg.id_forma, fpg.USA_TEF'); // Agrupa por forma de pagamento e traz o campo USA_TEF
  dados.qryConsulta.Params[0].Value := VendaCODIGO;
  dados.qryConsulta.Open;
  dados.qryConsulta.First;
  while not dados.qryConsulta.Eof do
  begin
    CFormaPagamento := dados.qryConsulta.FieldByName('CODIGO').AsInteger;
    if not dados.qryConsulta.FieldByName('USA_TEF').IsNull then
      FTef := dados.qryConsulta.FieldByName('USA_TEF').AsString
    else
      FTef := 'N';
    // Se alguma forma de pagamento exigir TEF, retorna True
    if (TTef = 'S') and (FTef = 'S') then
    begin
      Result := True;
      Break;
    end;
    dados.qryConsulta.Next;
  end;
end;

function fncRemoveAcento(texto: string): string; stdcall;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸Ò¿¬ƒ ‘€√’¡…Õ”⁄«‹';
  SemAcento = 'aaeouaoaeioucuNAAAEOUAOAEIOUCU';
var
  x: Integer;
begin
  //retorna acentos de uma string
  for x := 1 to Length(texto) do
    if Pos( texto[x], ComAcento ) <> 0 then
      texto[x] := SemAcento[Pos(texto[x], ComAcento)];
  Result := texto;
end;

// FunÁ„o auxiliar para remover qualquer caracter que n„o seja dÌgito
function RemoveNaoNumericos(const AStr: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(AStr) do
    if AStr[I] in ['0'..'9'] then
      Result := Result + AStr[I];
end;

function FormataCPF(const CPF: string): string;
var
  Digitos: string;
begin
  // Remove caracteres indesejados
  Digitos := RemoveNaoNumericos(CPF);
  // Valida se possui 11 dÌgitos, caso contr·rio, retorna o original
  if Length(Digitos) <> 11 then
    Result := CPF
  else
    Result := Copy(Digitos, 1, 3) + '.' +
              Copy(Digitos, 4, 3) + '.' +
              Copy(Digitos, 7, 3) + '-' +
              Copy(Digitos, 10, 2);
end;


function FormataCNPJ(const CNPJ: string): string;
var
  Digitos: string;
begin
  // Remove caracteres que n„o sejam n˙meros
  Digitos := RemoveNaoNumericos(CNPJ);
  // Valida se possui 14 dÌgitos, caso contr·rio, retorna o original
  if Length(Digitos) <> 14 then
    Result := CNPJ
  else
    Result := Copy(Digitos, 1, 2) + '.' +
              Copy(Digitos, 3, 3) + '.' +
              Copy(Digitos, 6, 3) + '/' +
              Copy(Digitos, 9, 4) + '-' +
              Copy(Digitos, 13, 2);
end;


function GravaLog(const ATela, AErro: string): Boolean;
var
  LDir, LFileName: string;
  LLogFile: TextFile;
begin
  Result := False;
  try
    LDir := IncludeTrailingPathDelimiter(
              ExtractFilePath(Application.ExeName) + 'logs');

    if not DirectoryExists(LDir) then
      ForceDirectories(LDir);

    LFileName := Format('%s%s_%s.log',
                        [LDir,
                         StringReplace(ATela, ' ', '_', [rfReplaceAll]),
                         FormatDateTime('yyyymmdd', Date)]);

    { 3) Abre (ou cria) o arquivo para anexar }
    AssignFile(LLogFile, LFileName);
    if FileExists(LFileName) then
      Append(LLogFile)
    else
      Rewrite(LLogFile);

    Writeln(LLogFile,
            FormatDateTime('hh:nn:ss', Now) +
            ' - Tela: ' + ATela +
            ' - Erro: ' + AErro);

    CloseFile(LLogFile);
    Result := True;
  except
    { Silencia exceÁıes ou, se preferir, faÁa um raise para depurar }
  end;
end;



end.
