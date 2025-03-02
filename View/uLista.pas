unit uLista;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  Mask, DB, ComCtrls;

procedure ListaComponentes(vform: TForm);

var
  Lista: TStrings;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

procedure ListaComponentes(vform: TForm);
var
  i: Integer;
begin
  try
    Lista := TStringList.Create;
    for i := 0 to vform.ComponentCount - 1 do
      if vform.Components[i] is TCustomEdit then
      finally

      end;
  end;

  { ------------fim------------- }
  { ---Execução de procedures--- }
end.
