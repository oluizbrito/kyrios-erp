unit uConsClientes;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmConsCliente = class(TForm)
    StatusBar: TStatusBar;
    Panel1: TPanel;
    Label15: TLabel;
    qryClientes: TFDQuery;
    dsClientes: TDataSource;
    Panel4: TPanel;
    Label8: TLabel;
    Panel5: TPanel;
    Label1: TLabel;
    edtEmp: TDBEdit;
    GroupBox1: TGroupBox;
    LbRegistros: TLabel;
    edtLoc: TEdit;
    DBGrid1: TDBGrid;
    dsEmpresa: TDataSource;
    qryClientesEMPRESA: TSmallintField;
    qryClientesCODIGO: TIntegerField;
    qryClientesTIPO: TStringField;
    qryClientesCNPJ: TStringField;
    qryClientesIE: TStringField;
    qryClientesFANTASIA: TStringField;
    qryClientesRAZAO: TStringField;
    qryClientesENDERECO: TStringField;
    qryClientesNUMERO: TStringField;
    qryClientesCOMPLEMENTO: TStringField;
    qryClientesCODMUN: TIntegerField;
    qryClientesMUNICIPIO: TStringField;
    qryClientesBAIRRO: TStringField;
    qryClientesUF: TStringField;
    qryClientesCEP: TStringField;
    qryClientesFONE1: TStringField;
    qryClientesFONE2: TStringField;
    qryClientesCELULAR1: TStringField;
    qryClientesCELULAR2: TStringField;
    qryClientesEMAIL1: TStringField;
    qryClientesEMAIL2: TStringField;
    qryClientesFOTO: TBlobField;
    qryClientesSEXO: TStringField;
    qryClientesDT_NASC: TDateField;
    qryClientesECIVIL: TStringField;
    qryClientesLIMITE: TFMTBCDField;
    qryClientesDIA_PGTO: TSmallintField;
    qryClientesOBS: TMemoField;
    qryClientesNUM_USU: TSmallintField;
    qryClientesFATURA: TStringField;
    qryClientesCHEQUE: TStringField;
    qryClientesCCF: TStringField;
    qryClientesSPC: TStringField;
    qryClientesISENTO: TStringField;
    qryClientesFORN: TStringField;
    qryClientesFUN: TStringField;
    qryClientesCLI: TStringField;
    qryClientesFAB: TStringField;
    qryClientesTRAN: TStringField;
    qryClientesADM: TStringField;
    qryClientesATIVO: TStringField;
    qryClientesDT_ADMISSAO: TDateField;
    qryClientesDT_DEMISSAO: TDateField;
    qryClientesSALARIO: TFMTBCDField;
    qryClientesPAI: TStringField;
    qryClientesMAE: TStringField;
    qryClientesBANCO: TStringField;
    qryClientesAGENCIA: TStringField;
    qryClientesGERENTE: TStringField;
    qryClientesFONE_GERENTE: TStringField;
    qryClientesPROPRIEDADE: TStringField;
    qryClientesDT_CADASTRO: TDateField;
    qryClientesTECNICO: TStringField;
    qryClientesATENDENTE: TStringField;
    qryClientesCODIGO_WEB: TIntegerField;
    qryClientesREFERENCIA: TIntegerField;
    qryClientesFK_SISTEMA: TIntegerField;
    qryClientesCHAVE_ATIVACAO: TStringField;
    qryClientesVECTO_ATIVACAO: TDateField;
    qryClientesVET: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    sSQL: string;
    idx: Integer;
    procedure Localiza;
  public
    { Public declarations }
    iCodCliente: Integer;
    sRazao, sFantasia: string;
  end;

var
  frmConsCliente: TfrmConsCliente;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados;

procedure TfrmConsCliente.DBGrid1DblClick(Sender: TObject);
begin
  if qryClientesCODIGO.AsInteger > 0 then
    Close;
end;

procedure TfrmConsCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clWhite;
    (Sender as TDBGrid).Canvas.Brush.Color := clGray;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
    DBGrid1.Canvas.Font.Style := [];

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmConsCliente.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  edtLoc.Clear;
  idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'Código';
  DBGrid1.Columns[1].Title.Caption := 'Razão/Nome';
  DBGrid1.Columns[2].Title.Caption := 'Fantasia/Apelido';
  DBGrid1.Columns[3].Title.Caption := 'CPF/CNPJ';
  DBGrid1.Columns[4].Title.Caption := 'IE';
  DBGrid1.Columns[5].Title.Caption := 'Endereço';
  DBGrid1.Columns[6].Title.Caption := 'Município';
  DBGrid1.Columns[7].Title.Caption := 'UF';

  GroupBox1.Caption := 'F6 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  edtLoc.Width := DBGrid1.Columns[idx].Width + 50;

  edtLoc.SetFocus;

  localiza;
end;

procedure TfrmConsCliente.edtLocChange(Sender: TObject);
begin
  Localiza;
end;

procedure TfrmConsCliente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qryClientes.Active then
    begin
      if qryClientes.RecordCount > 0 then
        begin
          iCodCliente :=  qryClientesCODIGO.AsInteger;
          sRazao  :=  qryClientesRAZAO.AsString;
          sFantasia :=  qryClientesFANTASIA.AsString;
        end;
    end;
end;

procedure TfrmConsCliente.FormCreate(Sender: TObject);
begin
  sSQL  :=  'select * from PESSOA '+
            'where '+
            'empresa='+IntToStr(dados.qryEmpresaCODIGO.AsInteger)+' and '+
            'cli=''S'' and '+
            'ativo=''S'' '+
            '/*where*/ ';
  iCodCliente :=  0;
end;

procedure TfrmConsCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
  if Key = VK_F6 then
    edtLoc.SetFocus;
  if Key = VK_RETURN then
    DBGrid1DblClick(Self);
end;

procedure TfrmConsCliente.FormShow(Sender: TObject);
begin
  DBGrid1TitleClick(DBGrid1.Columns[0]);
end;

procedure TfrmConsCliente.Localiza;
var
  fitro1: string;
begin
  try
    fitro1  :=  '';
    if Trim(edtLoc.Text) <> '' then
      begin
        case idx of
          0:
            fitro1 :=  ' and CODIGO = '+edtLoc.Text;
          1:
            fitro1  :=  ' and RAZAO like '+QuotedStr('%'+edtLoc.Text+'%');
          2:
            fitro1  :=  ' and FANTASIA like '+QuotedStr('%'+edtLoc.Text+'%');
          3:
            fitro1  :=  ' and CNPJ like '+QuotedStr('%'+edtLoc.Text+'%');
          4:
            fitro1  :=  ' and IE like '+QuotedStr('%'+edtLoc.Text+'%');
          5:
            fitro1  :=  ' and ENDERECO like '+QuotedStr('%'+edtLoc.Text+'%');
          6:
            fitro1  :=  ' and MUNICIPIO like '+QuotedStr('%'+edtLoc.Text+'%');
          7:
            fitro1  :=  ' and UF like '+QuotedStr('%'+edtLoc.Text+'%');
        end;
      end;
    qryClientes.Close;
    qryClientes.SQL.Clear;
    qryClientes.SQL.Text  :=
      sSQL.Replace('/*where*/', fitro1);
    qryClientes.Open;
  except
    qryClientes.Close;
  end;
end;

end.
