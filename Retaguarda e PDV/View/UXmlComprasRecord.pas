unit UXmlComprasRecord;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type

  TxmlComprasRec = record

      CHAVEACESSO           : string;
      XMLGERADO             : string;

    procedure Clear;
    procedure Get(const ACHAVE: string);

    end;

implementation

uses
  Udados, FireDAC.Comp.Client, Data.DB, pcnConversao;

{ Txml }
procedure TxmlComprasRec.Clear;
begin
   CHAVEACESSO                := EmptyStr;
   XMLGERADO                  := EmptyStr;

end;


procedure TxmlComprasRec.Get(const ACHAVE: string);
var
  TmpDataset: TFDQuery;
begin
  Self.Clear;

  TmpDataset := TFDQuery.Create(nil);
  try
    TmpDataset.Connection := Dados.Conexao;
    TmpDataset.Open('Select * from nfe_manifesto where CHAVE=?', [ACHAVE], [ftString]);

    if not TmpDataset.IsEmpty then
      begin
        CHAVEACESSO           := TmpDataset.FieldByName('CHAVE').AsString;
        XMLGERADO             := TmpDataset.FieldByName('XML').AsString;
    end
    else
      raise EDatabaseError.CreateFmt('CNPJ "%s" não encontrado!', [ACHAVE]);
  finally
    TmpDataset.Free;
  end;
end;

end.
