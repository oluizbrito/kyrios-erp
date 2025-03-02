unit uConsultaIPI;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TfrmConsultaIPI = class(TForm)
    pnl_fundo: TPanel;
    DBGrid1: TDBGrid;
    qryIPI: TFDQuery;
    qryIPICODIGO: TStringField;
    qryIPIDESCRICAO: TStringField;
    qryIPITIPO: TStringField;
    dsIpi: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var tipo :string;
  end;

var
  frmConsultaIPI: TfrmConsultaIPI;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses uDados;

procedure TfrmConsultaIPI.DBGrid1DblClick(Sender: TObject);
begin
  if qryIPICODIGO.Value = '0' then
  begin
    frmConsultaIPI.Close;
  end
  else
  begin
    frmConsultaIPI.Close;
  end;
end;

procedure TfrmConsultaIPI.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBGrid1DblClick(self);
  end;
end;

procedure TfrmConsultaIPI.FormShow(Sender: TObject);
begin
  qryIPI.Close;
  qryIpi.ParamByName('pTipo').Value := tipo;
  qryIPI.Open;
end;

end.
