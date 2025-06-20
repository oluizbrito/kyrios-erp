unit uDadosWeb;
interface
uses
  System.SysUtils, Forms, dialogs, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider, Winapi.Windows;
type
  TDadosWeb = class(TDataModule)
    ConexaoAPP: TFDConnection;
    TransacaoAPP: TFDTransaction;
    Cursor: TFDGUIxWaitCursor;
    MysqlAPP: TFDPhysMySQLDriverLink;
    cdsProdutos: TFDQuery;
    cdsPessoas: TFDQuery;
    cdsOrcamento: TFDQuery;
    cdsItens: TFDQuery;
    CdsCidade: TFDQuery;
    cdsVendedor: TFDQuery;
    cdsProdutoscodigo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutostipo: TStringField;
    cdsProdutoscodbarra: TStringField;
    cdsProdutosreferencia: TStringField;
    cdsProdutosunidade: TStringField;
    cdsProdutospr_custo: TBCDField;
    cdsProdutospr_venda: TBCDField;
    cdsProdutosqtd_atual: TBCDField;
    cdsPessoascodigo: TFDAutoIncField;
    cdsPessoastipo: TStringField;
    cdsPessoascnpj: TStringField;
    cdsPessoasie: TStringField;
    cdsPessoasfantasia: TStringField;
    cdsPessoasrazao: TStringField;
    cdsPessoasendereco: TStringField;
    cdsPessoasnumero: TStringField;
    cdsPessoascomplemento: TStringField;
    cdsPessoascodmun: TIntegerField;
    cdsPessoasmunicipio: TStringField;
    cdsPessoasbairro: TStringField;
    cdsPessoasuf: TStringField;
    cdsPessoascep: TStringField;
    cdsPessoascelular1: TStringField;
    cdsPessoascelular2: TStringField;
    cdsPessoasisento: TStringField;
    cdsPessoascodigolocal: TIntegerField;
    cdsOrcamentocodigo: TFDAutoIncField;
    cdsOrcamentodata: TDateField;
    cdsOrcamentofk_cliente: TIntegerField;
    cdsOrcamentoforma_pagamento: TStringField;
    cdsOrcamentovalidade: TSmallintField;
    cdsOrcamentosituacao: TStringField;
    cdsOrcamentototal: TBCDField;
    cdsOrcamentosubtotal: TBCDField;
    cdsOrcamentopercentual: TBCDField;
    cdsOrcamentodesconto: TBCDField;
    cdsOrcamentocodigolocal: TIntegerField;
    cdsOrcamentofk_vendedor: TIntegerField;
    cdsOrcamentorazao: TStringField;
    cdsOrcamentocnpj: TStringField;
    cdsOrcamentotipo: TStringField;
    cdsItenscodigo: TFDAutoIncField;
    cdsItensfk_orcamento: TIntegerField;
    cdsItensfk_produto: TIntegerField;
    cdsItensqtd: TBCDField;
    cdsItenspreco: TBCDField;
    cdsItenstotal: TBCDField;
    cdsItenscodigolocal: TIntegerField;
    cdsItensdescricao: TStringField;
    CdsCidadecodigo: TIntegerField;
    CdsCidadedescricao: TStringField;
    CdsCidadecoduf: TIntegerField;
    CdsCidadeuf: TStringField;
    cdsVendedorcodigo: TIntegerField;
    cdsVendedornome: TStringField;
    updOrcamento: TFDQuery;
    TransacaoChave: TFDTransaction;
    ConexaoChave: TFDConnection;
    MysqlChave: TFDPhysMySQLDriverLink;
    qryEmpresa: TFDQuery;
    qryTerminais: TFDQuery;
    updWeb: TFDQuery;
    qryTeste: TFDQuery;
    procedure qryEmpresaAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure LeDados;
    procedure LimpaDados;
    { Private declarations }
  public
    { Public declarations }
    procedure CadastraEmpresa;
    procedure RetornaSerial;
  end;
var
  DadosWeb: TDadosWeb;
implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Udados;
{$R *.dfm}

procedure TDadosWeb.RetornaSerial;
var
  iCodWeb: Integer;
  MacAddress: String;
begin
  try
    if not DadosWeb.ConexaoChave.Connected then
    begin
      DadosWeb.ConexaoChave.Close;
      DadosWeb.ConexaoChave.Open;
    end;

    DadosWeb.qryEmpresa.Close;
    DadosWeb.qryEmpresa.Params[0].Value := dados.qryEmpresacnpj.Value;
    DadosWeb.qryEmpresa.Open;

    if not DadosWeb.qryEmpresa.IsEmpty then
    begin

      if not DadosWeb.qryEmpresa.FieldByName('codigo').IsNull then
      begin
        if TryStrToInt(DadosWeb.qryEmpresa.FieldByName('codigo').AsString, iCodWeb) then
        begin
          // Código válido, continua
        end
        else
        begin
          ShowMessage('Erro: O campo "codigo" contém um valor inválido: ' + DadosWeb.qryEmpresa.FieldByName('codigo').AsString);
          Exit;
        end;
      end
      else
      begin
        ShowMessage('Erro: O campo "codigo" está nulo.');
        Exit;
      end;

      dados.qryEmpresa.Edit;

      if not DadosWeb.qryEmpresa.FieldByName('validade_licenca').IsNull then
        dados.qryEmpresaDATA_VALIDADE.AsString := dados.crypt('C', DadosWeb.qryEmpresa.FieldByName('validade_licenca').AsString);
      if not DadosWeb.qryEmpresa.FieldByName('nterminais').IsNull then
        dados.qryEmpresaNTERM.AsString := dados.crypt('C', DadosWeb.qryEmpresa.FieldByName('nterminais').AsString);
      if not DadosWeb.qryEmpresa.FieldByName('bloqueado').IsNull then
        dados.qryEmpresaCSENHA.AsString := dados.crypt('C', DadosWeb.qryEmpresa.FieldByName('bloqueado').AsString);

      dados.qryEmpresaNSERIE.AsString := dados.crypt('C', '...');
      dados.qryEmpresaCHECA.Value := dados.crypt('C', 'PRODUCAO');

      (* VALIDAR TERMINAL *)
      MacAddress := Dados.GetMacAddress;

      qryTerminais.Close;
      qryTerminais.SQL.Text := 'SELECT CODIGO, FK_EMPRESA, MAC, NOME_COMPUTADOR FROM terminais WHERE FK_EMPRESA = :emp';
      qryTerminais.Params[0].Value := iCodWeb;
      qryTerminais.Open;

      if qryTerminais.Locate('MAC', MacAddress, []) then
      begin
        if qryTerminais.FieldByName('NOME_COMPUTADOR').AsString <> Dados.Getcomputer then
          dados.qryEmpresaCHECA.Value := dados.crypt('C', 'TERMINAL_INVALIDO');
      end
      else
        dados.qryEmpresaCHECA.Value := dados.crypt('C', 'TERMINAL_INVALIDO');

      dados.qryEmpresa.Post;
      dados.Conexao.Commit;
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao retornar serial: ' + E.Message);
  end;
end;

procedure TDadosWeb.CadastraEmpresa;
var
  MacAddress, NomeComputador: String;
begin
  if DadosWeb.ConexaoChave.Connected then
    try
      DadosWeb.qryEmpresa.Close;
      DadosWeb.qryEmpresa.Params[0].Value := dados.qryEmpresacnpj.Value;
      DadosWeb.qryEmpresa.Open;

      if DadosWeb.qryEmpresa.IsEmpty then
      begin
        DadosWeb.qryEmpresa.Insert;
        DadosWeb.qryEmpresa.FieldByName('cnpj').Value := dados.qryEmpresacnpj.Value;
        DadosWeb.qryEmpresa.FieldByName('data').Value := Date;
        DadosWeb.qryEmpresa.FieldByName('nterminais').Value := 1;
      end
      else
      begin
        DadosWeb.qryEmpresa.Edit;
      end;

      if Trim(dados.qryEmpresarazao.Value) <> '' then
        DadosWeb.qryEmpresa.FieldByName('razao').Value := dados.qryEmpresarazao.Value
      else
      begin
        ShowMessage('Erro: O campo Razão Social é obrigatório.');
        Exit;
      end;

      DadosWeb.qryEmpresa.FieldByName('endereco').Value := dados.qryEmpresaendereco.Value;
      DadosWeb.qryEmpresa.FieldByName('cidade').Value := dados.qryEmpresacidade.Value;
      DadosWeb.qryEmpresa.FieldByName('bairro').Value := dados.qryEmpresabairro.Value;
      DadosWeb.qryEmpresa.FieldByName('cep').Value := dados.qryEmpresacep.Value;
      DadosWeb.qryEmpresa.FieldByName('uf').Value := dados.qryEmpresauf.Value;
      DadosWeb.qryEmpresa.FieldByName('fone').Value := dados.qryEmpresafone.Value;
      DadosWeb.qryEmpresa.FieldByName('email').Value := dados.qryEmpresaemail.Value;
      DadosWeb.qryEmpresa.FieldByName('cnpj_representante').Value := dados.qryEmpresaCNPJ_REPRESENTANTE.Value;
      DadosWeb.qryEmpresa.Post;

      MacAddress := Dados.GetMacAddress;
      NomeComputador := Dados.Getcomputer;

      qryTerminais.Close;
      qryTerminais.Params[0].Value := DadosWeb.qryEmpresa.FieldByName('codigo').Value;
      qryTerminais.Open;

      if not qryTerminais.Locate('MAC', MacAddress, []) then
      begin
        if not qryTerminais.Locate('NOME_COMPUTADOR', NomeComputador, []) then
        begin
          qryTerminais.Insert;
          qryTerminais.FieldByName('FK_EMPRESA').Value := DadosWeb.qryEmpresa.FieldByName('codigo').Value;
          qryTerminais.FieldByName('MAC').Value := MacAddress;
          qryTerminais.FieldByName('NOME_COMPUTADOR').Value := NomeComputador;
          qryTerminais.Post;
        end;
      end;
    except
      on E: Exception do
        ShowMessage('Erro ao cadastrar terminal: ' + E.Message);
    end;
end;


procedure TDadosWeb.DataModuleCreate(Sender: TObject);
begin
  try
    if dados.qryParametro.Active then
      dados.qryParametro.Open;
    LeDados;
  except
    LimpaDados;
  end;
end;

procedure TDadosWeb.LeDados;
var
  ServidorAPP, DatabaseAPP, UsuarioAPP, SenhaAPP: string;
  ServidorLI, DatabaseLI, UsuarioLI, SenhaLI: string;
begin
  try
    MysqlAPP.VendorLib := ExtractFilePath(Application.ExeName) + 'libmysql.dll';
    MysqlChave.VendorLib := ExtractFilePath(Application.ExeName) +
      'libmysql.dll';

    ServidorAPP := Trim(dados.qryParametroSERVIDOR_APP.AsString);
    DatabaseAPP := Trim(dados.qryParametroDATABASE_APP.AsString);
    UsuarioAPP := Trim(dados.qryParametroUSUARIO_APP.AsString);
    SenhaAPP := Trim(dados.qryParametroSENHA_APP.AsString);

    ServidorLI := Trim(dados.qryParametroSERVIDOR_APP.AsString);
    DatabaseLI := Trim(dados.qryParametroDATABASE_LI.AsString);
    UsuarioLI := Trim(dados.qryParametroUSUARIO_LI.AsString);
    SenhaLI := Trim(dados.qryParametroSENHA_LI.AsString);

    if ServidorAPP <> '' then
      ConexaoAPP.Params.Values['Server'] := ServidorAPP;
    if DatabaseAPP <> '' then
      ConexaoAPP.Params.Values['Database'] := dados.crypt('D', DatabaseAPP);
    if UsuarioAPP <> '' then
      ConexaoAPP.Params.Values['User_Name'] := dados.crypt('D', UsuarioAPP);
    if SenhaAPP <> '' then
      ConexaoAPP.Params.Values['Password'] := dados.crypt('D', SenhaAPP);
    if ServidorLI <> '' then
      ConexaoChave.Params.Values['Server'] := ServidorLI;
    if DatabaseLI <> '' then
      ConexaoChave.Params.Values['Database'] := dados.crypt('D', DatabaseLI);
    if UsuarioLI <> '' then
      ConexaoChave.Params.Values['User_Name'] := dados.crypt('D', UsuarioLI)
    else
      ConexaoChave.Params.Values['User_Name'] := dados.crypt('D', UsuarioAPP);
    if SenhaLI <> '' then
      ConexaoChave.Params.Values['Password'] := dados.crypt('D', SenhaLI)
    else
      ConexaoChave.Params.Values['Password'] := dados.crypt('D', SenhaAPP);
  except
    on E: Exception do
      ShowMessage('Erro ao carregar os dados de conexão: ' + E.Message);
  end;
end;

procedure TDadosWeb.LimpaDados;
begin
  dados.qryParametro.Edit;
  dados.qryParametroSERVIDOR_APP.Value := '';
  dados.qryParametroDATABASE_APP.Value := '';
  dados.qryParametroUSUARIO_APP.Value := '';
  dados.qryParametroSENHA_APP.Value := '';
  dados.qryParametroSERVIDOR_APP.Value := '';
  dados.qryParametroDATABASE_LI.Value := '';
  dados.qryParametroUSUARIO_LI.Value := '';
  dados.qryParametroSENHA_LI.Value := '';
  dados.qryParametro.Post;
  dados.Conexao.Commit;
end;
procedure TDadosWeb.qryEmpresaAfterPost(DataSet: TDataSet);
begin
  if dados.qryEmpresa.Active then
  begin
    dados.qryEmpresa.Edit;
    dados.qryEmpresaFLAG.Value := dados.crypt('C', 'ENVIADO');
    dados.qryEmpresa.Post;
  end;
end;
end.
