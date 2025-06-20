unit uGerarPixNormalQrCode;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type TGerar = (TQRCode, TNormal);

type
  TfrmGerarPixNormalQrCode = class(TForm)
    Label1: TLabel;
    btnGerarQrCode: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vGerar: TGerar;
  end;

var
  frmGerarPixNormalQrCode: TfrmGerarPixNormalQrCode;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmGerarPixNormalQrCode.cxFinalizarClick(Sender: TObject);
begin
  vGerar  :=  TQRCode;
  Close;
end;

procedure TfrmGerarPixNormalQrCode.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        vGerar  :=  TQRCode;
        Close;
      end;
    {VK_F5:
      begin
        vGerar  :=  TNormal;
        Close;
      end;}
  end;
end;

end.
