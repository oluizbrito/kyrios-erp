unit Serial;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Windows, SysUtils;

Function SerialNum(FDrive: String): String;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

Function SerialNum(FDrive: String): String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  Try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;

end.
