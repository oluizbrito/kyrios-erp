unit uConsCliForNFe;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsCliForNFe = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    bbSair: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    bbAlterar: TSpeedButton;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    qryPessoa: TFDQuery;
    qryPessoaEMPRESA: TSmallintField;
    qryPessoaCODIGO: TIntegerField;
    qryPessoaTIPO: TStringField;
    qryPessoaCNPJ: TStringField;
    qryPessoaIE: TStringField;
    qryPessoaFANTASIA: TStringField;
    qryPessoaRAZAO: TStringField;
    qryPessoaENDERECO: TStringField;
    qryPessoaNUMERO: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaCODMUN: TIntegerField;
    qryPessoaMUNICIPIO: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaUF: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaFONE1: TStringField;
    qryPessoaFONE2: TStringField;
    qryPessoaCELULAR1: TStringField;
    qryPessoaCELULAR2: TStringField;
    qryPessoaEMAIL1: TStringField;
    qryPessoaEMAIL2: TStringField;
    qryPessoaFOTO: TBlobField;
    qryPessoaSEXO: TStringField;
    qryPessoaDT_NASC: TDateField;
    qryPessoaECIVIL: TStringField;
    qryPessoaLIMITE: TFMTBCDField;
    qryPessoaDIA_PGTO: TSmallintField;
    qryPessoaOBS: TMemoField;
    qryPessoaNUM_USU: TSmallintField;
    qryPessoaFATURA: TStringField;
    qryPessoaCHEQUE: TStringField;
    qryPessoaCCF: TStringField;
    qryPessoaSPC: TStringField;
    qryPessoaISENTO: TStringField;
    qryPessoaFORN: TStringField;
    qryPessoaFUN: TStringField;
    qryPessoaCLI: TStringField;
    qryPessoaFAB: TStringField;
    qryPessoaTRAN: TStringField;
    qryPessoaADM: TStringField;
    qryPessoaATIVO: TStringField;
    qryPessoaDT_ADMISSAO: TDateField;
    qryPessoaDT_DEMISSAO: TDateField;
    qryPessoaSALARIO: TFMTBCDField;
    qryPessoaPAI: TStringField;
    qryPessoaMAE: TStringField;
    qryPessoaBANCO: TStringField;
    qryPessoaAGENCIA: TStringField;
    qryPessoaGERENTE: TStringField;
    qryPessoaFONE_GERENTE: TStringField;
    qryPessoaPROPRIEDADE: TStringField;
    qryPessoaDT_CADASTRO: TDateField;
    qryPessoaTECNICO: TStringField;
    qryPessoaATENDENTE: TStringField;
    qryPessoaCODIGO_WEB: TIntegerField;
    qryPessoaREFERENCIA: TIntegerField;
    qryPessoaFK_SISTEMA: TIntegerField;
    qryPessoaCHAVE_ATIVACAO: TStringField;
    qryPessoaVECTO_ATIVACAO: TDateField;
    qryPessoaVET: TStringField;
    qryPessoaFK_PLANO_PET: TIntegerField;
    qryPessoaPARCEIRO: TStringField;
    qryPessoaDASH_PROPRIETARIO: TStringField;
    qryPessoaDASH_EMAIL: TStringField;
    qryPessoaDASH_SENHA: TStringField;
    dsPessoa: TDataSource;
    procedure bbSairClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    vSQL: string;
    procedure Localiza;
    { Private declarations }
  public
    iCodigo: Integer;
    { Public declarations }
  end;

var
  frmConsCliForNFe: TfrmConsCliForNFe;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados;

procedure TfrmConsCliForNFe.bbAlterarClick(Sender: TObject);
begin
  //Confirmar
  if qryPessoa.RecordCount > 0 then
    begin
      iCodigo :=  qryPessoaCODIGO.AsInteger;
      Close;
    end
  else
    ShowMessage('Nenhum Cliente/Fornecedor Selecionado.');
end;

procedure TfrmConsCliForNFe.bbSairClick(Sender: TObject);
begin
  iCodigo :=  0;
  Close;
end;

procedure TfrmConsCliForNFe.DBGrid1DblClick(Sender: TObject);
begin
  bbAlterarClick(Self);
end;

procedure TfrmConsCliForNFe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bbAlterarClick(Self);
end;

procedure TfrmConsCliForNFe.edtLocChange(Sender: TObject);
begin
  Localiza;
end;

procedure TfrmConsCliForNFe.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if (RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 3) then
    begin
      if not (Key in ['0'..'9', Chr(8), Chr(9), Chr(13)]) then
        Key := #0;
    end;
end;

procedure TfrmConsCliForNFe.FormCreate(Sender: TObject);
begin
  vSQL  :=  qryPessoa.SQL.Text;
end;

procedure TfrmConsCliForNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;
    VK_F5:
      bbAlterarClick(Self);
    VK_F6:
      edtLoc.SetFocus;
  end;
end;

procedure TfrmConsCliForNFe.FormShow(Sender: TObject);
begin
  edtLoc.SetFocus;
end;

procedure TfrmConsCliForNFe.Localiza;
var
  Filtro: string;
begin
  if Length(edtLoc.Text) = 0 then
    begin
      qryPessoa.Close;
      Exit;
    end;
  try
    case RadioGroup1.ItemIndex of
      0:
        begin
          Filtro  :=  ' and (p.codigo='+edtLoc.Text+') ';
        end;
      1:
        begin
          Filtro  :=  ' and (p.razao like '+QuotedStr('%'+edtLoc.Text+'%')+') ';
        end;
      2:
        begin
          Filtro  :=  ' and (p.fantasia like '+QuotedStr('%'+edtLoc.Text+'%')+') ';
        end;
      3:
        begin
          Filtro  :=  ' and (p.cnpj like '+QuotedStr('%'+edtLoc.Text+'%')+') ';
        end;
    end;
    qryPessoa.Close;
    qryPessoa.SQL.Text  :=  vSQL.Replace('/*where*/', Filtro);
    qryPessoa.Open;
  except
    qryPessoa.Close;
  end;
end;

procedure TfrmConsCliForNFe.RadioGroup1Click(Sender: TObject);
begin
  edtLoc.Clear;
end;

end.
