unit unit_esmaecer_fundo;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tform_esmaecer_fundo = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_esmaecer_fundo: Tform_esmaecer_fundo;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses unit_msg_confirma;

procedure Tform_esmaecer_fundo.FormShow(Sender: TObject);
begin
 // form_msg_confirmacao.hide;
end;

end.
