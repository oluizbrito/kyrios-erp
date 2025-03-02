unit uRotinasComuns;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  System.SysUtils, System.Classes, REST.Types, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, System.RegularExpressions, Vcl.Dialogs;

type
  TPessoa = Record
    razao: String;
    fantasia: String;
    logradouro: String;
    numero: String;
    bairro: string;
    municipio: string;
    uf: string;
    cep: string;
    email: string;
    complemento: string;
    situacao: string;
    tipo: string;
    porte: string;
    cnae: string;
    telefone: string;
    socioAdministrador: string;
  public
    procedure Clear;
  End;

type
  TDMRotinas = class(TDataModule)
    RESTResponseCNPJ: TRESTResponse;
    RESTRequestCNPJ: TRESTRequest;
    RESTClientCNPJ: TRESTClient;
    RESTResponseDataCNPJ: TRESTResponseDataSetAdapter;
  private
    { Private declarations }
  public
    Pessoa: TPessoa;
    { Public declarations }
    procedure BuscaCNPJ(CNPJ: String);
  end;

var
  DMRotinas: TDMRotinas;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMRotinas.BuscaCNPJ(CNPJ: String);
var
  jsonObject: TJsonObject;
  jsonArray: TJsonArray;
  rawCNAE, socios: string;
  i: Integer;
begin
  RESTRequestCNPJ.Resource := CNPJ;
  RESTRequestCNPJ.Execute;
  jsonObject := TJsonObject.ParseJSONValue(RESTResponseCNPJ.Content) as TJsonObject;

  if Assigned(jsonObject) then
  try
    Pessoa.razao := jsonObject.GetValue<string>('nome');
    Pessoa.fantasia := jsonObject.GetValue<string>('fantasia');
    Pessoa.logradouro := jsonObject.GetValue<string>('logradouro');
    Pessoa.numero := jsonObject.GetValue<string>('numero');
    Pessoa.bairro := jsonObject.GetValue<string>('bairro');
    Pessoa.municipio := jsonObject.GetValue<string>('municipio');
    Pessoa.uf := jsonObject.GetValue<string>('uf');
    Pessoa.cep := jsonObject.GetValue<string>('cep');
    Pessoa.email := jsonObject.GetValue<string>('email');
    Pessoa.complemento := jsonObject.GetValue<string>('complemento');
    Pessoa.situacao := jsonObject.GetValue<string>('situacao');
    Pessoa.tipo := jsonObject.GetValue<string>('tipo');
    Pessoa.porte := jsonObject.GetValue<string>('porte');
    Pessoa.telefone := jsonObject.GetValue<string>('telefone');

    // Capturando CNAE principal
    jsonArray := jsonObject.GetValue<TJsonArray>('atividade_principal');
    if (jsonArray <> nil) and (jsonArray.Count > 0) then
    begin
      rawCNAE := jsonArray.Items[0].GetValue<string>('code');
      Pessoa.cnae := TRegEx.Replace(rawCNAE, '\D', ''); // Remove tudo que não for número
    end;

    // Capturando sócios (QSA)
    jsonArray := jsonObject.GetValue<TJsonArray>('qsa');
    socios := '';
    if (jsonArray <> nil) and (jsonArray.Count > 0) then
    begin
      for i := 0 to jsonArray.Count - 1 do
      begin
        if i > 0 then
          socios := socios + ', ';
        socios := socios + jsonArray.Items[i].GetValue<string>('nome');
      end;
    end;
    Pessoa.socioAdministrador := socios; // Armazena os sócios na variável

  finally
    jsonObject.Free;
  end;
end;



procedure TPessoa.Clear;
begin
  razao := '';
  fantasia := '';
  logradouro := '';
  numero := '';
  bairro := '';
  municipio := '';
  uf := '';
  cep := '';
  email := '';
  complemento := '';
  situacao := '';
  tipo := '';
  porte := '';
  cnae := '';
  socioAdministrador := '';
end;

end.
