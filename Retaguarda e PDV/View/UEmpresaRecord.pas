unit UEmpresaRecord;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type
  TEmpresaRec = record
    CNPJ                  : string;
    RAZAO_SOCIAL          : string;
    UF                    : string;
    UF_IBGE               : Integer;
    AMBIENTE              : string;
    SSL_LIB               : Integer;
    CERTIFICADO           : string;
    CERTIFICADO_SENHA     : AnsiString;
    NFE_ULTIMO_NSU        : Integer;
    NFE_DTHR_ULT_CONSULTA : TDateTime;
    CTE_ULTIMO_NSU        : Integer;
    CTE_DTHR_ULT_CONSULTA : TDateTime;

    procedure Clear;
    procedure Get(const ACNPJ: string);
  end;

implementation

uses
  Udados, FireDAC.Comp.Client, Data.DB, pcnConversao;

{ TEmpresa }

procedure TEmpresaRec.Clear;
begin
  CNPJ                  := EmptyStr;
  RAZAO_SOCIAL          := EmptyStr;
  UF                    := EmptyStr;
  AMBIENTE              := EmptyStr;
  SSL_LIB               := 0;
  CERTIFICADO           := EmptyStr;
  CERTIFICADO_SENHA     := EmptyAnsiStr;
  NFE_ULTIMO_NSU        := 0;
  NFE_DTHR_ULT_CONSULTA := 0.0;
  CTE_ULTIMO_NSU        := 0;
  CTE_DTHR_ULT_CONSULTA := 0.0;
end;

procedure TEmpresaRec.Get(const ACNPJ: string);
var
  TmpDataset: TFDQuery;
begin
  Self.Clear;

  TmpDataset := TFDQuery.Create(nil);
  try
    TmpDataset.Connection := Dados.Conexao;
    TmpDataset.Open('Select EMP.CNPJ AS CNPJ, EMP.RAZAO AS RAZAO, ' +
    ' EMP. ULTIMONSU AS NFE_ULTIMO_NSU, ' +
    ' EMP.UF from EMPRESA EMP where EMP.CNPJ=?', [ACNPJ], [ftString]);

    if not TmpDataset.IsEmpty then
    begin
      CNPJ                  := TmpDataset.FieldByName('CNPJ').AsString;
      RAZAO_SOCIAL          := TmpDataset.FieldByName('RAZAO').AsString;
      UF                    := TmpDataset.FieldByName('UF').AsString;
      UF_IBGE               := UFtoCUF(UF);

     // AMBIENTE              := TmpDataset.FieldByName('AMBIENTE').AsString;
   //   SSL_LIB               := TmpDataset.FieldByName('SSL_LIB').AsInteger;
     // CERTIFICADO           := TmpDataset.FieldByName('CERTIFICADO').AsString;
     // CERTIFICADO_SENHA     := TmpDataset.FieldByName('CERTIFICADO_SENHA').AsAnsiString;
      NFE_ULTIMO_NSU        := TmpDataset.FieldByName('NFE_ULTIMO_NSU').AsInteger;
    //  NFE_DTHR_ULT_CONSULTA := TmpDataset.FieldByName('NFE_DTHR_ULT_CONSULTA').AsDateTime;
    //  CTE_ULTIMO_NSU        := TmpDataset.FieldByName('CTE_ULTIMO_NSU').AsInteger;
     // CTE_DTHR_ULT_CONSULTA := TmpDataset.FieldByName('CTE_DTHR_ULT_CONSULTA').AsDateTime;
    end
    else
      raise EDatabaseError.CreateFmt('CNPJ "%s" não encontrado!', [ACNPJ]);
  finally
    TmpDataset.Free;
  end;
end;

end.

