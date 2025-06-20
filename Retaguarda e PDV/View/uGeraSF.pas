unit uGeraSF;
interface  //Suporte e Vendas direto no Whatsapp (48)998463846
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, DateUtils, ACBrUtil, ACBrEFDBlocos,
  ACBrTXTClass, ACBrBase, DBGridEh, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrSpedFiscal, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxBarBuiltInMenu,
  cxPC, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, cxButtons, udadosSped;
type
  TFrmSpedSf = class(TForm)
    Panel2: TPanel;
    memoError: TMemo;
    dsContador: TDataSource;
    dsEmpresa: TDataSource;
    ACBrSPEDFiscal: TACBrSPEDFiscal;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbEmpresa: TDBLookupComboboxEh;
    cbContador: TDBLookupComboboxEh;
    dtIni: TDateTimePicker;
    edArq: TEdit;
    dtFim: TDateTimePicker;
    ckSemMovimento: TCheckBox;
    ckInventario: TCheckBox;
    CbTipo: TComboBox;
    dtInventario: TDateTimePicker;
    cbMotivo: TComboBox;
    cxTabSheet2: TcxTabSheet;
    ds1601: TDataSource;
    qry1601: TFDQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    cxApagarDados: TcxButton;
    qry1601CODIGO: TIntegerField;
    qry1601COD_PART_IP: TStringField;
    qry1601COD_PART_IT: TStringField;
    qry1601TOT_VS: TFMTBCDField;
    qry1601TOT_ISS: TFMTBCDField;
    qry1601TOT_OUTROS: TFMTBCDField;
    qry1601FK_SPED: TIntegerField;
    GroupBox1: TGroupBox;
    cxSair: TcxButton;
    cxGerar: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure dtFimExit(Sender: TObject);
    procedure dtIniExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbContadorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Carregar(Processar: TProc; const Mensagem: string);
    procedure qry1601NewRecord(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qry1601BeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cxApagarDadosClick(Sender: TObject);
    procedure cxGerarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure ckInventarioClick(Sender: TObject);

  private
    procedure AbreTabelas;
    procedure Importa;
    function EhGerar1601: Boolean;
    procedure AtivaGrid1601;
    { Private declarations }
  public
    procedure GeraBloco0;
    procedure GeraBlocoC;
    procedure GeraBlocoE;
    procedure GeraBlocoH;
    procedure GeraBlocoB1;
    procedure GeraSped;
    procedure NomeCaminho;
    procedure Gera1601;
    { Public declarations }
  end;
var
  FrmSpedSf: TFrmSpedSf;
implementation
{$R *.dfm}
uses Udados, uEmail;

procedure TFrmSpedSf.NomeCaminho;
var
  dia, mes, ano: Word;
begin
  DecodeDate(dtIni.Date, ano, mes, dia);
  edArq.Text := tirapontos(Dados.qryEmpresacnpj.Value) + '_SPF_' + inttostr(mes)
    + inttostr(ano) + '.txt';
  ACBrSpedFiscal.Path := ExtractFilePath(Application.ExeName) + '\Sped';
  ACBrSpedFiscal.Arquivo := edArq.Text;
end;

procedure TFrmSpedSf.qry1601BeforePost(DataSet: TDataSet);
var
  SelectedValue, FormattedCode: string;
begin
  if not DataSet.FieldByName('COD_PART_IP').IsNull then
  begin
    SelectedValue := DataSet.FieldByName('COD_PART_IP').AsString;
    if Pos(' - ', SelectedValue) > 0 then
      FormattedCode := Copy(SelectedValue, 1, Pos(' - ', SelectedValue) - 1)
    else
      FormattedCode := SelectedValue;
    DataSet.FieldByName('COD_PART_IP').AsString := FormattedCode;
  end;
end;

procedure TFrmSpedSf.qry1601NewRecord(DataSet: TDataSet);
begin
  qry1601CODIGO.AsInteger   := Dados.Numerador('SPED_1601', 'CODIGO', 'N', '', '');
  qry1601TOT_VS.AsFloat     := 0;
  qry1601TOT_ISS.AsFloat    := 0;
  qry1601TOT_OUTROS.AsFloat := 0;
end;

procedure TFrmSpedSf.Carregar(Processar: TProc; const Mensagem: string);
var
  F: TForm;
  MSG: Tlabel;
begin
  F := TForm.Create(Application);

  try

    F.BorderStyle := bsNone;
    F.Position := poScreenCenter;
    F.Color := ClBlack;
    F.Width := 500;
    F.Height := 100;

    MSG := Tlabel.Create(Application);
    MSG.Parent := F;
    MSG.Transparent := true;
    MSG.AutoSize := false;
    MSG.Font.Size := 28;
    MSG.Font.Color := ClWhite;
    MSG.Width := 500;
    MSG.Height := 100;
    MSG.Caption := Mensagem;
    MSG.Alignment := taCenter;

    F.Show;
    F.Update;

    Processar();

  finally
    F.Free;
  end;
end;

procedure TFrmSpedSf.Importa;
var
  vTipo1601: string;
begin
  // importa dados dos participantes
  DadosSped.ImportaParticipante(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa unidades dos produtos
  DadosSped.ImportaUNidade(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa produtos
  DadosSped.ImportaProduto(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue,'F');
  Application.ProcessMessages;

  // importa registros c100 - compra
  DadosSped.ImportaEntradaCompra(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros c100 - nfe
  DadosSped.ImportaEntradaNFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros saida nfce
  DadosSped.ImportaSaidaNCFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros saida nfe
  DadosSped.ImportaSaidaNFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros c190
  DadosSped.REGC190(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros inventario
  if ckInventario.Checked then
    DadosSped.ImportaInventario(dtInventario.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros de cartão 1601
  if EhGerar1601 then
  begin

    vTipo1601 := DadosSped.qryConfig_SpedCONFIG_1601.AsString;

    DadosSped.Importa1601(dtIni.Date, dtFim.Date, vTipo1601);
    Application.ProcessMessages;
  end;


end;

procedure TFrmSpedSf.AbreTabelas;
begin
  ACBrSpedFiscal.DT_INI := dtIni.Date;
  ACBrSpedFiscal.DT_FIN := dtFim.Date;

  // Abre tabela Sped - cabeçalho do Sped
  Dados.qrySped.Close;
  Dados.qrySped.Params[0].Value := cbEmpresa.KeyValue;
  Dados.qrySped.Params[1].AsDate := dtIni.Date;
  Dados.qrySped.Params[2].AsDate := dtFim.Date;
  Dados.qrySped.Open;

  // Abre Tabela C100 - Notas Ficais de Compra e Venda
  Dados.qrySped_C100.Close;
  Dados.qrySped_C100.Params[0].Value := Dados.qrySpedCODIGO.Value;
  Dados.qrySped_C100.Open;

  // Abre Tabela C170
  Dados.qrySped_C170.Close;
  Dados.qrySped_C170.Open;

  // Abre Tabela C190
  Dados.qrySped_C190.Close;
  Dados.qrySped_C190.Open;

  // Abre Tabela Participantes
  Dados.qrySped_Participante.Close;
  Dados.qrySped_Participante.Open;

   // Abre Tabela Produtos
  Dados.qrySped_Produto.Close;
  Dados.qrySped_Produto.Open;

  // Abre Tabela Unidadades
  Dados.qrySped_Unidade.Close;
  Dados.qrySped_Unidade.Open;

  // Abre Tabela Sped Config
  DadosSped.qryConfig_Sped.Close;
  DadosSped.qryConfig_Sped.Params[0].Value := cbEmpresa.KeyValue;
  DadosSped.qryConfig_Sped.Open;

end;

procedure TFrmSpedSf.GeraSped;
var
ImportacaoConcluida: Boolean;
begin
  // *** verifica se sped já existe na base de dados
  FormatSettings.DecimalSeparator := '.';

    Carregar(
    procedure
    begin
      AbreTabelas;
    end,
    'Consultando dados...');

    Carregar(
    procedure
    begin
      DadosSped.ApagaRegistro;
    end,
    'Renovando registros...');

Carregar(
procedure
  begin

    if Dados.qrySped.IsEmpty then
    begin
      Dados.qrySped.Insert;
      Dados.qrySpeddata_ini.Value := dtIni.Date;
      Dados.qrySpeddata_fim.Value := dtFim.Date;
      Dados.qrySpedFK_EMPRESA.Value := cbEmpresa.KeyValue;
      Dados.qrySpedFK_CONTADOR.Value := cbContador.KeyValue;
      Dados.qrySpedFK_USUARIO.Value := Dados.idUsuario;

      if CbTipo.ItemIndex = 0 then
      Dados.qrySpedremessa.Value := 'O'
      else
      Dados.qrySpedremessa.Value := 'S';

      if ckSemMovimento.Checked then
      Dados.qrySpedsemmovimento.Value := 'F'
      else
      Dados.qrySpedsemmovimento.Value := 'T';

      Dados.qrySpeddtemissao.Value := Date;
      Dados.qrySpedCODIGO.AsFloat := Dados.Numerador('SPED', 'CODIGO', 'N', '', '');
      DadosSped.CodSped := Dados.qrySpedCODIGO.Value;
      Dados.qrySped.Post;
      Dados.Conexao.Commit;
    end
    else
    begin
      if MessageBox(0, 'O SPED Fiscal deste mês já foi gerado!' + #13 +
        'Deseja gerar o SPED Fiscal novamante?', 'Sped Fiscal', +mb_YesNo) = 6
      then
      begin
        Dados.qrySped.Edit;
        Dados.qrySpedFK_CONTADOR.Value := cbContador.KeyValue;
        Dados.qrySpeddtemissao.Value := Date;

         if CbTipo.ItemIndex = 0 then
        Dados.qrySpedremessa.Value := 'O'
        else
        Dados.qrySpedremessa.Value := 'S';

         if ckSemMovimento.Checked then
        Dados.qrySpedsemmovimento.Value := 'F'
        else
        Dados.qrySpedsemmovimento.Value := 'T';

        Dados.qrySped.Post;
        DadosSped.CodSped := Dados.qrySpedCODIGO.Value;
        Dados.Conexao.Commit;
      end
      else
        exit;
    end;
   end,
    'Inserindo Sped...');

  // **** fim sped já existe
  // Inicio da importação do sped da base de dados
  if ckSemMovimento.Checked = false then
  begin
   Carregar(
    procedure
    begin
       Importa;
    end,
    'Gerando dados...');
  end;

  Carregar(
    procedure
    begin
      GeraBloco0;
      GeraBlocoC;
      GeraBlocoE;
      GeraBlocoB1;

      if EhGerar1601 then
        Gera1601;
    end,
    'Gerando Sped...');

     Carregar(
    procedure
    begin
      GeraBlocoH;
    end,
    'Gerando inventário...');


  ACBrSpedFiscal.SaveFileTXT;
end;

procedure TFrmSpedSf.Gera1601;
begin

  DadosSped.qrySped_1601.Close;
  DadosSped.qrySped_1601.Open;

  DadosSped.qrySped_1601.First;

    while not DadosSped.qrySped_1601.Eof do
    begin

    with ACBrSPEDFiscal.Bloco_1.Registro1601New do
    begin

      COD_PART_IP := IntToStr(DadosSped.qrySped_1601COD_PART_IP.AsInteger);
      COD_PART_IT := '';
      TOT_VS      := DadosSped.qrySped_1601TOT_VS.AsFloat;
      TOT_ISS     := DadosSped.qrySped_1601TOT_ISS.AsFloat;
      TOT_OUTROS  := DadosSped.qrySped_1601TOT_OUTROS.AsFloat;

      DadosSped.qrySped_1601.Next;
    end;

  end;

end;

procedure TFrmSpedSf.GeraBloco0;
begin
  with ACBrSpedFiscal.Bloco_0 do
  begin

    // Versao do SPED
    with Registro0000New do
    begin
      if (dtIni.Date >= StrToDate('01/01/2008')) and
        (dtIni.Date <= StrToDate('31/12/2008')) then
        COD_VER := vlVersao100
      else if (dtIni.Date >= StrToDate('01/01/2009')) and
        (dtIni.Date <= StrToDate('31/12/2009')) then
        COD_VER := vlVersao101
      else if (dtIni.Date >= StrToDate('01/01/2010')) and
        (dtIni.Date <= StrToDate('31/12/2010')) then
        COD_VER := vlVersao102
      else if (dtIni.Date >= StrToDate('01/01/2011')) and
        (dtIni.Date <= StrToDate('31/12/2011')) then
        COD_VER := vlVersao103
      else if (dtIni.Date >= StrToDate('01/01/2012')) and
        (dtIni.Date <= StrToDate('30/06/2012')) then
        COD_VER := vlVersao104
      else if (dtIni.Date >= StrToDate('01/07/2012')) and
        (dtIni.Date <= StrToDate('31/12/2012')) then
        COD_VER := vlVersao105
      else if (dtIni.Date >= StrToDate('01/01/2013')) and
        (dtIni.Date <= StrToDate('31/12/2013')) then
        COD_VER := vlVersao106
      else if (dtIni.Date >= StrToDate('01/01/2014')) and
        (dtIni.Date <= StrToDate('31/12/2014')) then
        COD_VER := vlVersao107
      else if (dtIni.Date >= StrToDate('01/01/2015')) and
        (dtIni.Date <= StrToDate('31/12/2015')) then
        COD_VER := vlVersao108
      else if (dtIni.Date >= StrToDate('01/01/2016')) and
        (dtIni.Date <= StrToDate('31/12/2016')) then
        COD_VER := vlVersao109
      else if (dtIni.Date >= StrToDate('01/01/2017')) and
        (dtIni.Date <= StrToDate('31/12/2017')) then
        COD_VER := vlVersao110
      else if (dtIni.Date >= StrToDate('01/01/2018')) and
        (dtIni.Date <= StrToDate('31/12/2018')) then
        COD_VER := vlVersao111
      else if (dtIni.Date >= StrToDate('01/01/2019')) and
        (dtIni.Date <= StrToDate('31/12/2019')) then
        COD_VER := vlVersao112
      else if (dtIni.Date >= StrToDate('01/01/2020')) and
        (dtIni.Date <= StrToDate('31/12/2020')) then
        COD_VER := vlVersao113
      else if (dtIni.Date >= StrToDate('01/01/2021')) and
        (dtIni.Date <= StrToDate('31/12/2021')) then
        COD_VER := vlVersao114
      else if (dtIni.Date >= StrToDate('01/01/2022')) and
        (dtIni.Date <= StrToDate('31/12/2022')) then
        COD_VER := vlVersao115
      else if (dtIni.Date >= StrToDate('01/01/2023')) and
        (dtIni.Date <= StrToDate('31/12/2023')) then
        COD_VER := vlVersao116
      else if (dtIni.Date >= StrToDate('01/01/2024')) and
        (dtIni.Date <= StrToDate('31/12/2024')) then
        COD_VER := vlVersao117
      else if (dtIni.Date >= StrToDate('01/01/2025')) and
        (dtIni.Date <= StrToDate('31/12/2025')) then
        COD_VER := vlVersao118;

      // verifica se o SPED é original ou substituto
      if CbTipo.ItemIndex = 0 then
        COD_FIN := raOriginal
      else
        COD_FIN := raSubstituto;

      // dados da empresa
      NOME := Dados.qryEmpresaRAZAO.Value;
      CNPJ := tirapontos(Dados.qryEmpresacnpj.Value);
      UF := Dados.qryEmpresauf.Value;
      IE := tirapontos(Dados.qryEmpresaie.Value);
      COD_MUN := Dados.qryEmpresaID_CIDADE.Value;
      IM := Dados.qryEmpresaim.Value;
      SUFRAMA := '';

      // perfil do sped
      if DadosSped.qryConfig_SpedIND_PERFIL.Value = 'A' then
        IND_PERFIL := pfPerfilA;
      if DadosSped.qryConfig_SpedIND_PERFIL.Value = 'B' then
        IND_PERFIL := pfPerfilB;
      if DadosSped.qryConfig_SpedIND_PERFIL.Value = 'C' then
        IND_PERFIL := pfPerfilC;

      // ramo de atividade -- Industria ou Outros
      if DadosSped.qryConfig_SpedIND_ATIV.Value <> 'I' then
        IND_ATIV := atOutros;
      if DadosSped.qryConfig_SpedIND_ATIV.Value = 'I' then
        IND_ATIV := atIndustrial;
    end;

    // dados sped
    with Registro0001New do
    begin
      IND_MOV := imComDados;
      with Registro0005New do
      begin
        IND_MOV := imComDados;
        FANTASIA := Dados.qryEmpresafantasia.Value;
        CEP := Dados.qryEmpresacep.Value;
        ENDERECO := Dados.qryEmpresaendereco.Value;
        NUM := Dados.qryEmpresanumero.Value;
        COMPL := Dados.qryEmpresacomplemento.Value;
        BAIRRO := Dados.qryEmpresabairro.Value;
        FONE := tirapontos(Dados.qryEmpresafone.Value);
        FAX := tirapontos(Dados.qryEmpresafax.Value);
        EMAIL := Dados.qryEmpresaemail.Value;
      end;

      // Dados do contador
      with Registro0100New do
      begin
        IND_MOV := imComDados;
        NOME := DadosSped.qryContadorNOME.Value;
        CPF := DadosSped.qryContadorcpf.Value;
        CRC := DadosSped.qryContadorcrc.Value;
        if length(tirapontos(DadosSped.qryContadorcnpj.Value)) = 11 then
          CPF := tirapontos(DadosSped.qryContadorcnpj.Value);
        if length(tirapontos(DadosSped.qryContadorcnpj.Value)) = 14 then
          CNPJ := tirapontos(DadosSped.qryContadorcnpj.Value);
        CEP := DadosSped.qryContadorcep.Value;
        ENDERECO := DadosSped.qryContadorendereco.Value;
        NUM := DadosSped.qryContadornumero.Value;
        COMPL := DadosSped.qryContadorcomplemento.Value;
        BAIRRO := DadosSped.qryContadorbairro.Value;
        FONE := tirapontos(DadosSped.qryContadorfone.Value);
        FAX := tirapontos(DadosSped.qryContadorfax.Value);
        EMAIL := DadosSped.qryContadoremail.Value;
        COD_MUN := DadosSped.qryContadorcod_mun.Value;
      end;

      // dados dos participantes
      Dados.qrySped_Participante.First;
      while not Dados.qrySped_Participante.Eof do
      begin
        with Registro0150New do
        begin

          if ckSemMovimento.Checked = false then
            IND_MOV := imComDados
          else
            IND_MOV := imSemDados;

          COD_PART := Dados.qrySped_Participantecod_part.AsString;
          NOME := TiraAcentos(Dados.qrySped_Participantenome.AsString);
          CNPJ := tirapontos(Dados.qrySped_Participantecnpj.Value);
          CPF := tirapontos(Dados.qrySped_Participantecpf.Value);
          COD_PAIS := '1058';
          IE := tirapontos(Dados.qrySped_Participanteie.Value);
          COD_MUN := Dados.qrySped_Participantecod_mun.Value;
          SUFRAMA := '';
          ENDERECO := trim(Dados.qrySped_Participanteendereco.Value);
          NUM := Dados.qrySped_Participantenumero.Value;
          COMPL := Dados.qrySped_Participantecomplemento.Value;
          BAIRRO := Dados.qrySped_Participantebairro.Value;
        end;
        Dados.qrySped_Participante.Next;
      end; // fim participantes

      // unidades de medidas
      Dados.qrySped_Unidade.First;
      while not Dados.qrySped_Unidade.Eof do
      begin
        with Registro0190New do
        begin
          if ckSemMovimento.Checked = false then
            IND_MOV := imComDados
          else
            IND_MOV := imSemDados;

          UNID := Dados.qrySped_UnidadeUNIDADE.AsString;
          DESCR := Dados.qrySped_UnidadeDESCRICAO.Value;
        end;
        Dados.qrySped_Unidade.Next;
      end;

      // Produtos
      Dados.qrySped_Produto.First;
      while not Dados.qrySped_Produto.Eof do
      begin
        with Registro0200New do
        begin
          if ckSemMovimento.Checked = false then
            IND_MOV := imComDados
          else
            IND_MOV := imSemDados;

          COD_ITEM := Dados.qrySped_ProdutoFK_PRODUTO.AsString;
          DESCR_ITEM := TiraAcentos(Dados.qrySped_Produtodescricao.AsString);
          COD_BARRA := trim(Dados.qrySped_Produtocod_barra.AsString);

          if Dados.qrySped_Unidade.Locate('codigo',
            Dados.qrySped_ProdutoFK_UNIDADE.Value, []) then
            UNID_INV := Dados.qrySped_UnidadeUNIDADE.Value;
          if Dados.qrySped_Produtotipo_item.Value = '00' then
            TIPO_ITEM := tiMercadoriaRevenda;
          if Dados.qrySped_Produtotipo_item.Value = '01' then
            TIPO_ITEM := tiMateriaPrima;
          if Dados.qrySped_Produtotipo_item.Value = '02' then
            TIPO_ITEM := tiEmbalagem;
          if Dados.qrySped_Produtotipo_item.Value = '03' then
            TIPO_ITEM := tiProdutoProcesso;
          if Dados.qrySped_Produtotipo_item.Value = '04' then
            TIPO_ITEM := tiProdutoAcabado;
          if Dados.qrySped_Produtotipo_item.Value = '05' then
            TIPO_ITEM := tiSubproduto;
          if Dados.qrySped_Produtotipo_item.Value = '06' then
            TIPO_ITEM := tiProdutoIntermediario;
          if Dados.qrySped_Produtotipo_item.Value = '07' then
            TIPO_ITEM := tiMaterialConsumo;
          if Dados.qrySped_Produtotipo_item.Value = '08' then
            TIPO_ITEM := tiAtivoImobilizado;
          if Dados.qrySped_Produtotipo_item.Value = '09' then
            TIPO_ITEM := tiServicos;
          if Dados.qrySped_Produtotipo_item.Value = '10' then
            TIPO_ITEM := tiOutrosInsumos;
          if Dados.qrySped_Produtotipo_item.Value = '11' then
            TIPO_ITEM := tiOutras;
          COD_NCM := Dados.qrySped_Produtocod_ncm.Value;

          with Registro0220New do
          begin
            Dados.qrySped_Unidade.Locate('CODIGO',
              Dados.qrySped_C170fk_unidade.Value, []);
            UNID_CONV := Dados.qrySped_UnidadeUNIDADE.Value;
            FAT_CONV := 1;
          end;
        end;
        Dados.qrySped_Produto.Next;
      end; // fim produtos
    end;
  end;
end;


procedure TFrmSpedSf.GeraBlocoC;
var
  codigo: Integer;
begin

  // Notas de compra e vendas
  with ACBrSpedFiscal.Bloco_C do
  begin
    with RegistroC001New do
    begin
      if not ckSemMovimento.Checked then
      begin
        IND_MOV := imComDados;
      end
      else
      begin
        IND_MOV := imSemDados;
        exit;
      end;

      Dados.qrySped_C100.Close;
      Dados.qrySped_C100.Params[0].Value := Dados.qrySpedCODIGO.Value;
      Dados.qrySped_C100.Open;

      Dados.qrySped_C100.RecordCount;

      Dados.qrySped_C100.First;
      //
      while not Dados.qrySped_C100.Eof do
      begin
        if (Dados.qrySped_C100COD_MOD.Value = '55') or
          (Dados.qrySped_C100COD_MOD.Value = '65') then
        begin
          with RegistroC100New do
          begin
            IND_OPER := tpEntradaAquisicao;

            if Dados.qrySped_C100ind_oper.Value = '1' then
              IND_OPER := tpSaidaPrestacao;
            IND_EMIT := edEmissaoPropria;
            if Dados.qrySped_C100ind_emit.Value = '1' then
              IND_EMIT := edTerceiros;
            if (Dados.qrySped_C100COD_MOD.Value = '55') then
              // só para nota fiscal eletronica
              COD_PART := Dados.qrySped_C100FK_PARTICIPANTES.AsString;
            if (Dados.qrySped_C100cod_sit.Value = '02') or
              (Dados.qrySped_C100cod_sit.Value = '04') then
              COD_PART := '';
            // Baseado no registro 0150
            COD_MOD := Dados.qrySped_C100COD_MOD.AsString;
            if Dados.qrySped_C100cod_sit.Value = '00' then
              COD_SIT := sdRegular;
            if Dados.qrySped_C100cod_sit.Value = '01' then
              COD_SIT := sdExtempRegular;
            if Dados.qrySped_C100cod_sit.Value = '02' then
              COD_SIT := sdCancelado;
            if Dados.qrySped_C100cod_sit.Value = '03' then
              COD_SIT := sdCanceladoExtemp;
            if Dados.qrySped_C100cod_sit.Value = '04' then
              COD_SIT := sdDoctoDenegado;
            if Dados.qrySped_C100cod_sit.Value = '05' then
              COD_SIT := sdDoctoNumInutilizada;
            if Dados.qrySped_C100cod_sit.Value = '06' then
              COD_SIT := sdFiscalCompl;
            if Dados.qrySped_C100cod_sit.Value = '07' then
              COD_SIT := sdExtempCompl;
            if Dados.qrySped_C100cod_sit.Value = '08' then
              COD_SIT := sdRegimeEspecNEsp;

            SER := Dados.qrySped_C100ser.Value;
            NUM_DOC := FormatFloat('00000000', Dados.qrySped_C100num_doc.Value);
            CHV_NFE := Dados.qrySped_C100chv_nfe.Value;
            DT_DOC := Dados.qrySped_C100dt_doc.Value;
            DT_E_S := Dados.qrySped_C100dt_e_s.Value;

            if (Dados.qrySped_C100cod_sit.Value <> '02') and
              (Dados.qrySped_C100cod_sit.Value <> '04') then
            begin
              VL_DOC := Dados.qrySped_C100vl_doc.AsFloat;
              IND_PGTO := tpOutros;
              VL_DESC := Dados.qrySped_C100vl_desc.AsFloat;
              VL_ABAT_NT := Dados.qrySped_C100vl_abat_nt.AsFloat;
              VL_MERC := Dados.qrySped_C100vl_merc.AsFloat +
                Dados.qrySped_C100vl_desc.AsFloat;
              if Dados.qrySped_C100ind_frt.Value = 0 then
                IND_FRT := tfPorContaEmitente;
              if Dados.qrySped_C100ind_frt.Value = 1 then
                IND_FRT := tfPorContaDestinatario;
              if Dados.qrySped_C100ind_frt.Value = 2 then
                IND_FRT := tfPorContaTerceiros;
              if Dados.qrySped_C100ind_frt.Value = 3 then
                IND_FRT := tfSemCobrancaFrete;
              if Dados.qrySped_C100ind_frt.Value = 4 then
                IND_FRT := tfNenhum;

              VL_SEG        := Dados.qrySped_C100vl_seguro.AsFloat;
              VL_FRT        := Dados.qrySped_C100vl_frete.AsFloat;
              VL_OUT_DA     := Dados.qrySped_C100vl_out_da.AsFloat;
              VL_BC_ICMS    := Dados.qrySped_C100vl_bc_icms.AsFloat;
              VL_ICMS       := Dados.qrySped_C100vl_icms.AsFloat;
              VL_BC_ICMS_ST := Dados.qrySped_C100VL_BC_ICMS_ST.AsFloat;
              VL_ICMS_ST    := Dados.qrySped_C100vl_icms_st.asFloat;
              VL_IPI        := Dados.qrySped_C100vl_ipi.AsFloat;
              VL_PIS        := Dados.qrySped_C100vl_pis.AsFloat;
              VL_COFINS     := Dados.qrySped_C100vl_cofins.AsFloat;
              VL_PIS_ST     := Dados.qrySped_C100vl_pis_st.AsFloat;
              VL_COFINS_ST  := Dados.qrySped_C100VL_COFINS_ST.AsFloat;
            end;

            // regitros c170 é filho de c100. A cada c100 no minimo um c170
            FormatSettings.DecimalSeparator := '.';
            Dados.qrySped_C170.Close;
            Dados.qrySped_C170.Params[0].Value := Dados.qrySped_C100CODIGO.Value;
            Dados.qrySped_C170.Open;
            FormatSettings.DecimalSeparator := ',';
            codigo := 1;

            if Dados.qrySped_C100ind_oper.Value = '0' then
            begin // só gera c170 de NFe Emitida por Terceiros
              while not Dados.qrySped_C170.Eof do
              begin
                with RegistroC170New do // Inicio Adicionar os Itens:
                begin
                  NUM_ITEM := inttostr(codigo);
                  COD_ITEM := Dados.qrySped_C170fk_produto.AsString;
                  DESCR_COMPL := Dados.qrySped_C170DESCRICAO.AsString;
                  QTD := Dados.qrySped_C170qtd.AsFloat;
                  Dados.qrySped_Unidade.Locate('CODIGO', Dados.qrySped_C170fk_unidade.Value, []);
                  UNID := Dados.qrySped_UnidadeUNIDADE.Value;
                  VL_ITEM := Dados.qrySped_C170vl_item.AsFloat;
                  VL_DESC := Dados.qrySped_C170vl_desc.AsFloat;
                  IND_MOV := mfNao;
                  CST_ICMS := Dados.qrySped_C170cst_icms.Value;
                  CFOP := Dados.qrySped_C170cfop.AsString;
                  VL_BC_ICMS := Dados.qrySped_C170vl_bc_icms.AsFloat;
                  ALIQ_ICMS := Dados.qrySped_C170aliq_icm.AsFloat;
                  VL_ICMS := Dados.qrySped_C170vl_icms.AsFloat;
                  VL_BC_ICMS_ST := Dados.qrySped_C170vl_bc_icms_st.AsFloat;
                  ALIQ_ST := Dados.qrySped_C170aliq_st.AsFloat;
                  VL_ICMS_ST := Dados.qrySped_C170vl_icms_st.AsFloat;
                  IND_APUR := iaNenhum;

                  if (Dados.qrySped_C170CST_IPI.Value = '01') or
                    (Dados.qrySped_C170CST_IPI.Value = '02') or
                    (Dados.qrySped_C170CST_IPI.Value = '03') or
                    (Dados.qrySped_C170CST_IPI.Value = '04') or
                    (Dados.qrySped_C170CST_IPI.Value = '05') or
                    (Dados.qrySped_C170CST_IPI.Value = '49') then
                    CST_IPI := Dados.qrySped_C170CST_IPI.AsString
                  else
                    CST_IPI := '49';

                  VL_BC_IPI := Dados.qrySped_C170vl_bc_ipi.AsFloat;
                  ALIQ_IPI := Dados.qrySped_C170aliq_ipi.AsFloat;
                  VL_IPI := Dados.qrySped_C170vl_ipi.AsFloat;
                  CST_PIS := Dados.qrySped_C170CST_PIS.AsString;
                  VL_BC_PIS := Dados.qrySped_C170VL_BC_PIS.AsFloat;
                  ALIQ_PIS_PERC := Dados.qrySped_C170ALIQ_PIS_PERC.AsFloat;
                  VL_PIS := Dados.qrySped_C170vl_pis.AsFloat;
                  VL_ABAT_NT := 0;
                  COD_CTA := '';

                  if Dados.qrySped_C170ALIQ_PIS_PERC.AsFloat <= 0 then
                  begin
                    ALIQ_PIS_PERC := 0.00;
                    VL_BC_PIS := 0.00;
                    VL_PIS := 0.00;
                  end;

                  CST_COFINS := Dados.qrySped_C170CST_COFINS.AsString;
                  VL_BC_COFINS := Dados.qrySped_C170vl_bc_cofins.AsFloat;
                  ALIQ_COFINS_PERC := Dados.qrySped_C170aliq_cofins_perc.AsFloat;
                  VL_COFINS := Dados.qrySped_C170VL_COFINS.AsFloat;

                  if Dados.qrySped_C170aliq_cofins_perc.AsFloat <= 0 then
                  begin
                    ALIQ_COFINS_PERC := 0.00;
                    VL_BC_COFINS := 0.00;
                    VL_COFINS := 0.00;
                  end;

                end; // fim bloco c170
                Dados.qrySped_C170.Next;
                codigo := codigo + 1;
              end;
              // fim do while c170
            end;

            // registro c190 REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04, 55 e 65)
            FormatSettings.DecimalSeparator := '.';
            Dados.qrySped_C190.Close;
            Dados.qrySped_C190.Params[0].Value := Dados.qrySped_C100CODIGO.Value;
            Dados.qrySped_C190.Open;
            FormatSettings.DecimalSeparator := ',';

            while not Dados.qrySped_C190.Eof do
            begin
              with RegistroC190New do
              begin
                CST_ICMS := Dados.qrySped_C190cst_icms.AsString;
                CFOP := Dados.qrySped_C190cfop.AsString;
                ALIQ_ICMS := Dados.qrySped_C190aliq_icms.AsFloat;
                VL_OPR := Dados.qrySped_C190vl_opr.AsFloat;
                VL_BC_ICMS := Dados.qrySped_C190vl_bc_icms.AsFloat;
                VL_ICMS := Dados.qrySped_C190vl_icms.AsFloat;
                VL_BC_ICMS_ST := Dados.qrySped_C190vl_bc_icms_st.AsFloat;
                VL_ICMS_ST := Dados.qrySped_C190vl_icms_st.AsFloat;
                VL_RED_BC := Dados.qrySped_C190vl_opr.AsFloat;
                VL_IPI := Dados.qrySped_C190vl_ipi.AsFloat;
              end;
              // Fim do bloco c190
              Dados.qrySped_C190.Next;
            end; // fim do while c190
          end; // fim do boco c100
        end; // fim modelo 57
        Dados.qrySped_C100.Next;
      end; // fim do while c100
    end;
  end;
end;

procedure TFrmSpedSf.GeraBlocoE;
begin

  // bloco de apuração... Apuração fica por conta do Validador

  // Alimenta gerar todos os registros do Bloco E.
  with ACBrSpedFiscal.Bloco_E do
  begin
    with RegistroE001New do
    begin
      with RegistroE100New do
      begin

        IND_MOV := imComDados;
        DT_INI := dtIni.Date;
        DT_FIN := dtFim.Date;

        with RegistroE110New do
        begin
          IND_MOV := imComDados;
          VL_TOT_DEBITOS := 0;
          VL_AJ_DEBITOS := 0;
          VL_TOT_AJ_DEBITOS := 0;
          VL_ESTORNOS_CRED := 0;
          VL_TOT_CREDITOS := 0;
          VL_AJ_CREDITOS := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB := 0;
          VL_SLD_CREDOR_ANT := 0;
          VL_SLD_APURADO := 0;
          VL_TOT_DED := 0;
          VL_ICMS_RECOLHER := 0;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          DEB_ESP := 0;
        end;
      end;

      if Dados.qrySped_ConfigIND_ATIV.Value = 'I' then
      begin
        with RegistroE500New do
        begin
          if ckSemMovimento.Checked = false then
            IND_MOV := imComDados
          else
            IND_MOV := imSemDados;

          DT_INI := dtIni.Date;
          DT_FIN := dtFim.Date;
          IND_APUR := iaMensal;

          with RegistroE520New do
          begin
            if ckSemMovimento.Checked = false then
              IND_MOV := imComDados
            else
              IND_MOV := imSemDados;

            VL_SD_ANT_IPI := 00;
            VL_DEB_IPI := 0.00;
            VL_CRED_IPI := 0.00;
            VL_OD_IPI := 0;
            VL_OC_IPI := 0;
            VL_SC_IPI := 0;
            VL_SD_IPI := 0;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmSpedSf.GeraBlocoH;
var
  strMotInv: string;
begin
  Dados.qrySped_H005.Close;
  Dados.qrySped_H005.Open;

  if ckInventario.Checked = false then
    exit;

  if Dados.qrySped_H005.IsEmpty then
    exit;

  // inventário
  with ACBrSpedFiscal.Bloco_H do
  begin
    with RegistroH001New do
    begin
      if ckSemMovimento.Checked = false then
        IND_MOV := imComDados
      else
      begin
        IND_MOV := imSemDados;
        exit;
      end;

      with RegistroH005New do
      begin
        if ckSemMovimento.Checked = false then
          IND_MOV := imComDados
        else
        begin
          IND_MOV := imSemDados;
        end;

        DT_INV := dtInventario.Date;
        // o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
        VL_INV := Dados.qrySped_H005vl_inv.AsFloat;

        // insere motivo do inventario
        if cbMotivo.ItemIndex = 0 then
        MOT_INV := miFinalPeriodo;
        if cbMotivo.ItemIndex = 1 then
        MOT_INV := miMudancaTributacao;
        if cbMotivo.ItemIndex = 2 then
        MOT_INV := miBaixaCadastral;
        if cbMotivo.ItemIndex = 3 then
        MOT_INV := miRegimePagamento;
        if cbMotivo.ItemIndex = 4 then
        MOT_INV := miDeterminacaoFiscos;

        // inicio bloco h010
        Dados.qrySped_H010.Close;
        Dados.qrySped_H010.Params[0].Value := Dados.qrySped_H005CODIGO.Value;
        Dados.qrySped_H010.Open;

        Dados.qrySped_H010.First;

        while not Dados.qrySped_H010.Eof do
        begin
          with RegistroH010New do
          begin

            if ckSemMovimento.Checked = false then
              IND_MOV := imComDados
            else
            begin
              IND_MOV := imSemDados;
            end;

            COD_ITEM := IntToStr(Dados.qrySped_H010FK_PRODUTO.Value);
            UNID := Dados.qrySped_H010FK_UNIDADE.AsString;
            QTD := Dados.qrySped_H010qtd.AsFloat;
            VL_UNIT := Dados.qrySped_H010vl_unit.AsFloat;
            VL_ITEM := Dados.qrySped_H010vl_item.AsFloat;
            IND_PROP := piInformante;
            COD_CTA := Dados.qrySped_H010cod_cta.Value;

            // gera o registro h020 se o motivo do inventario for diferente de '01'
              if cbMotivo.ItemIndex <> 0 then
                with RegistroH020New do
                begin
                  CST_ICMS := Dados.qrySped_H010CST_ICMS.AsString;
                  BC_ICMS  := Dados.qrySped_H010BC_ICMS.AsCurrency;
                  VL_ICMS  := Dados.qrySped_H010VL_ICMS.AsCurrency;
                end;

          end;
          Dados.qrySped_H010.Next;
        end;
      end;
    end;
  end;
end;


procedure TFrmSpedSf.GeraBlocoB1;
begin
  with ACBrSpedFiscal.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imComDados;
      with Registro1010New do
      begin

        IND_MOV := imComDados;

        if DadosSped.qryConfig_SpedIND_EXP.IsNull then
          IND_EXP := 'N'
        else
          IND_EXP := DadosSped.qryConfig_SpedIND_EXP.Value;
        // Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período:

        if DadosSped.qryconfig_Spedind_ccrf.IsNull then
          IND_CCRF := 'N'
        else
          IND_CCRF := DadosSped.qryconfig_Spedind_ccrf.Value;
        // Reg. 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz:

        if DadosSped.qryconfig_Spedind_comb.IsNull then
          IND_COMB := 'N'
        else
          IND_COMB := DadosSped.qryconfig_Spedind_comb.Value;

        IND_REST_RESSARC_COMPL_ICMS := 'N';
        // Reg. 1300 – É comercio varejista de combustíveis:
        if DadosSped.qryconfig_Spedind_usina.IsNull then
          IND_USINA := 'N'
        else
          IND_USINA := DadosSped.qryconfig_Spedind_usina.Value;
        // Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante:
        if DadosSped.qryconfig_Spedind_va.IsNull then
          IND_VA := 'N'
        else
          IND_VA := DadosSped.qryconfig_Spedind_va.Value;
        // Reg. 1400 – Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação:
        if DadosSped.qryconfig_Spedind_ee.IsNull then
          IND_EE := 'N'
        else
          IND_EE := DadosSped.qryconfig_Spedind_ee.Value;
        // Reg. 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF:


        if DadosSped.qryconfig_Spedind_cart.IsNull then
          IND_CART := 'N'
        else
          IND_CART := DadosSped.qryconfig_Spedind_cart.Value;
        // Reg. 1601 - Realizou vendas com Cartão de Crédito ou de débito:


        if DadosSped.qryconfig_Spedind_form.IsNull then
          IND_FORM := 'N'
        else
          IND_FORM := DadosSped.qryconfig_Spedind_form.Value;
        // Reg. 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos  fiscais em papel:
        if DadosSped.qryconfig_Spedind_aer.IsNull then
          IND_AER := 'N'
        else
          IND_AER := DadosSped.qryconfig_Spedind_aer.Value;
        // Reg. 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros:
        IND_GIAF1 := 'N';
        IND_GIAF3 := 'N';
        IND_GIAF4 := 'N';
      end;
    end;
  end;
end;

procedure TFrmSpedSf.AtivaGrid1601;
begin

  Dados.qryConsulta.Close;
  Dados.qryConsulta.SQL.Clear;
  Dados.qryConsulta.SQL.Text := 'SELECT IND_CART, CONFIG_1601 FROM SPED_CONFIG';
  Dados.qryConsulta.Open;

  if (Dados.qryConsulta.FieldByName('IND_CART').AsString = 'S') and
     (Dados.qryConsulta.FieldByName('CONFIG_1601').AsString = 'M') then
     begin
      qry1601.Close;
      qry1601.Open;

      DBGrid1.Enabled := True;
      cxApagarDados.Enabled := True;
     end;

end;

procedure TFrmSpedSf.cbContadorExit(Sender: TObject);
begin
  NomeCaminho;
end;
procedure TFrmSpedSf.cbEmpresaExit(Sender: TObject);
begin
  NomeCaminho;
end;

procedure TFrmSpedSf.ckInventarioClick(Sender: TObject);
begin
  if ckInventario.Checked then
  begin
    dtInventario.Enabled := True;
    cbMotivo.Enabled := True;
  end
  else
  begin
    dtInventario.Enabled := False;
    cbMotivo.Enabled := False;
  end;
end;

procedure TFrmSpedSf.cxApagarDadosClick(Sender: TObject);
begin
   if MessageDlg('Tem certeza de que deseja apagar todos os dados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Dados.qryExecute.SQL.Text := 'DELETE FROM SPED_1601';
      Dados.qryExecute.ExecSQL;
      Dados.qryExecute.Connection.Commit;
      qry1601.Close;
      qry1601.Open;
    except
      on E: Exception do
        ShowMessage('Erro ao apagar os dados: ' + E.Message);
    end;
  end;
end;

procedure TFrmSpedSf.cxGerarClick(Sender: TObject);
begin
    try
    cxGerar.Enabled := false;
    memoError.Lines.Clear;
    GeraSped;

    if trim(memoError.Text) <> '' then
    begin
      if MessageBox(0, 'Sped está com erro!' + #13 + 'Deseja visualizar erro?',
        'Sped Fiscal', +mb_YesNo) = 6 then
      begin
        ShowMessage(memoError.Text);
      end;
    end
    else
      ShowMessage('Sped Fiscal Gerado com sucesso');
  finally
    cxGerar.Enabled := true;
  end;
end;

procedure TFrmSpedSf.cxSairClick(Sender: TObject);
begin
Close;
end;

procedure TFrmSpedSf.DBGrid1Enter(Sender: TObject);
begin
  try
    Dados.qryExecute.SQL.Text := 'SELECT CODIGO, RAZAO FROM PESSOA WHERE ADM = ''S''';
    Dados.qryExecute.Open;

    DBGrid1.Columns[0].PickList.Clear;

    while not Dados.qryExecute.Eof do
    begin

      DBGrid1.Columns[0].PickList.Add(
        '3' + Dados.qryExecute.FieldByName('CODIGO').AsString +
        ' - ' + Dados.qryExecute.FieldByName('RAZAO').AsString);

      Dados.qryExecute.Next;
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao carregar dados: ' + E.Message);
  end;
end;


procedure TFrmSpedSf.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGrid1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TFrmSpedSf.dtFimExit(Sender: TObject);
begin
  dtIni.Date := StartOfTheMonth(dtFim.Date);
  NomeCaminho;
end;
procedure TFrmSpedSf.dtIniExit(Sender: TObject);
begin
  dtFim.Date := EndOfTheMonth(dtIni.Date);
  NomeCaminho;
end;
function TFrmSpedSf.EhGerar1601: Boolean;
begin
  Result := False;

  if (DadosSped.qryconfig_Spedind_cart.AsString = 'S') then
    Result := True;
end;

procedure TFrmSpedSf.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;
procedure TFrmSpedSf.FormCreate(Sender: TObject);
begin

  dtIni.Date := StartOfTheMonth(now);
  dtFim.Date := EndOfTheMonth(now);

  DadosSped.qryContador.Close;
  DadosSped.qryContador.Open;

  DadosSped.qryEmpresa.Close;
  DadosSped.qryEmpresa.Open;

  cbEmpresa.KeyValue := Dados.qryEmpresaCODIGO.Value;
  cbContador.KeyValue := 1;
  NomeCaminho;
end;

procedure TFrmSpedSf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F10 then
    cxGerar.Click;
  if Key = VK_ESCAPE then
    cxSair.Click;
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
end;
procedure TFrmSpedSf.FormShow(Sender: TObject);
begin
  Dados.CriaPastas;
  AtivaGrid1601;
  dtInventario.Enabled := False;
  cbMotivo.Enabled := False;
end;

end.
