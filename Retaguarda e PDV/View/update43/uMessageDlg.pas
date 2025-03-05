unit uMessageDlg;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, System.ImageList,
  Vcl.ImgList, dxSkinsCore, dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful,
  dxSkinOffice2019White;

type
  TfrmMessageDlg = class(TForm)
    Image: TImage;
    Panel1: TPanel;
    btnClose: TSpeedButton;
    lblTitulo: TLabel;
    Panel2: TPanel;
    lblTexto: TcxLabel;
    tmrPrincipal: TTimer;
    ImageList: TImageList;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrPrincipalTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    bClicou: Boolean;
    { Private declarations }
  public
    iTimer: Integer;
    iCodImg: Integer;
    iWidth: Integer;
    iHeight: Integer;
    { Public declarations }
  end;

var
  frmMessageDlg: TfrmMessageDlg;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmMessageDlg.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMessageDlg.FormClick(Sender: TObject);
begin
  bClicou := True;
end;

procedure TfrmMessageDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Release;
end;

procedure TfrmMessageDlg.FormCreate(Sender: TObject);
begin
  bClicou :=  False;
  iWidth  :=  0;
end;

procedure TfrmMessageDlg.FormShow(Sender: TObject);
var
  iAlt: Integer;
begin
  iAlt  :=  lblTexto.Height + 10;
  if iAlt > Self.Height then
    Self.Height :=  lblTexto.Height + 10;
  tmrPrincipal.Interval :=  iTimer;
  Self.Left :=  iWidth - Self.Width;
  Self.Top  :=  iHeight - Self.Height;
  ImageList.GetBitmap(iCodImg, Image.Picture.Bitmap);
  tmrPrincipal.Enabled  :=  True;
end;

procedure TfrmMessageDlg.tmrPrincipalTimer(Sender: TObject);
begin
  tmrPrincipal.Enabled  :=  False;
  if bClicou then
    Exit
  else
    Close;
end;

end.
