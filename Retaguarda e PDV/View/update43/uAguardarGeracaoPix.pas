unit uAguardarGeracaoPix;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrGIF, Vcl.ExtCtrls;

type
  TfrmAguardarGeracaoPix = class(TForm)
    Panel1: TPanel;
    ACBrGIF1: TACBrGIF;
    Label1: TLabel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAguardarGeracaoPix: TfrmAguardarGeracaoPix;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmAguardarGeracaoPix.FormCreate(Sender: TObject);
var
  sPath: string;
begin
  Self.Top  :=  0;
  Self.Left :=  0;
  Self.Width:=  Screen.Width;
  Self.Height :=  Screen.Height;

  panel1.top := (self.Height div 2) - (panel1.height div 2);
  panel1.left := (self.Width div 2) - (panel1.width div 2);

  sPath :=  ExtractFilePath(Application.ExeName)+'img\qr-code-codigo-qr.gif';
  if FileExists(sPath) then
    begin
      ACBrGIF1.top := (panel1.Height div 2) - (ACBrGIF1.height div 2);
      ACBrGIF1.left := (panel1.Width div 2) - (ACBrGIF1.width div 2);
      ACBrGIF1.Filename :=  sPath;
      ACBrGIF1.Active :=  True;
    end
  else
    ShowMessage('Gif não encontrado.'+sLineBreak+
      'Verifique se existe o .gif no seguinte diretorio: '+sLineBreak+
      sPath);
end;

end.
