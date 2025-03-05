unit uEnvioWhatsApp;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmEnvioWhatsApp = class(TForm)
    lblNumero: TLabel;
    Label1: TLabel;
    edtNumero: TMaskEdit;
    btnConfirmar: TButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnvioWhatsApp: TfrmEnvioWhatsApp;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmEnvioWhatsApp.btnConfirmarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEnvioWhatsApp.edtNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnConfirmarClick(Self);
end;

end.
