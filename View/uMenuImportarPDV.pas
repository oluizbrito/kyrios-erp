unit uMenuImportarPDV;
interface //Suporte e Vendas direto no Whatsapp (48)998463846
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;
type
  TfrmImportarPDV = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnPreVenda: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPreVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmImportarPDV: TfrmImportarPDV;
implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.
{$R *.dfm}
uses uImportar, Udados;
procedure TfrmImportarPDV.btnPreVendaClick(Sender: TObject);
begin
    try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 4;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;

procedure TfrmImportarPDV.Button1Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 0;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;
procedure TfrmImportarPDV.Button2Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 1;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;
procedure TfrmImportarPDV.Button3Click(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(application);
    frmImportar.PageControl1.ActivePageIndex := 2;
    frmImportar.ShowModal;
  finally
    frmImportar.Release;
    close;
  end;
end;
procedure TfrmImportarPDV.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;
procedure TfrmImportarPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2:
      Button1Click(self);
    VK_F3:
      Button2Click(self);
    VK_F4:
      Button3Click(self);
    VK_F5:
      btnPreVendaClick(self);
  end;
end;
end.
