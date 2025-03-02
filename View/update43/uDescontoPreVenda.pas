unit uDescontoPreVenda;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Math;

type
  TfrmDescontoPreVenda = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnConfirmar: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtDescP: TEdit;
    edtDescV: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDescPKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescVKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtDescPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescPExit(Sender: TObject);
    procedure edtDescVExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    rValorPreVenda: Extended;
    rResultadoDesconto: Extended;
    rValorDesconto: Extended;
    { Public declarations }
  end;

var
  frmDescontoPreVenda: TfrmDescontoPreVenda;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmDescontoPreVenda.btnConfirmarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDescontoPreVenda.edtDescPExit(Sender: TObject);
var
  Valor: Extended;
begin
  if StrToFloatDef(edtDescV.Text, 0) > 0 then
    Exit;
  if rValorPreVenda > 0 then
    begin
      Valor :=
        SimpleRoundTo((rValorPreVenda *
        StrToFloatDef(edtDescP.Text, 0) / 100), -2);
      edtDescV.Text :=  FormatFloat(',0.00', Valor);
      rResultadoDesconto  :=  rValorPreVenda - Valor;
      Label6.Caption := FormatFloat('R$ ,0.00', rResultadoDesconto);
    end;
end;

procedure TfrmDescontoPreVenda.edtDescPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtDescV.SetFocus;
end;

procedure TfrmDescontoPreVenda.edtDescPKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', ',', #13, #8]) then
    key :=#0;
end;

procedure TfrmDescontoPreVenda.edtDescVExit(Sender: TObject);
var
  Valor: Extended;
  PValor: Extended;
begin
  if StrToFloatDef(edtDescP.Text, 0) > 0 then
    Exit;
  if rValorPreVenda > 0 then
    begin
      Valor :=  StrToFloatDef(edtDescV.Text, 0);
      rResultadoDesconto  :=  rValorPreVenda - Valor;
      PValor:=
        SimpleRoundTo(100 - ((rResultadoDesconto * 100) /
        rValorPreVenda), -2);
      edtDescP.Text :=  FormatFloat(',0.00', PValor);
      Label6.Caption  :=  FormatFloat('R$ ,0.00', rResultadoDesconto);
    end;
end;

procedure TfrmDescontoPreVenda.edtDescVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnConfirmar.SetFocus;
end;

procedure TfrmDescontoPreVenda.edtDescVKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', ',', #13, #8]) then
    key :=#0;
end;

procedure TfrmDescontoPreVenda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  rValorDesconto  :=  StrToFloatDef(edtDescV.Text, 0);
end;

procedure TfrmDescontoPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmDescontoPreVenda.FormShow(Sender: TObject);
begin
  Label1.Caption  := FormatFloat( '#,##0.00' , rValorPreVenda);
  Label6.Caption  := FormatFloat( '#,##0.00' , rValorPreVenda);
  rResultadoDesconto  :=  rValorPreVenda;
  rValorDesconto  :=  0;
  edtDescP.SetFocus;
end;

end.
