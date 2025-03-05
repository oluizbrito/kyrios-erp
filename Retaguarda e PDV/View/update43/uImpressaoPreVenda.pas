unit uImpressaoPreVenda;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass,
  frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, frxExportPDF;

type
  TfrmImpressaoPreVenda = class(TForm)
    pnImpressao: TPanel;
    Shape1: TShape;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    frxDBEmpresa: TfrxDBDataset;
    qryPreM: TFDQuery;
    frxDBPreM: TfrxDBDataset;
    qryPreD: TFDQuery;
    frxDBPreD: TfrxDBDataset;
    frxReport: TfrxReport;
    qryPreMRAZAO: TStringField;
    qryPreMENDERECO: TStringField;
    qryPreMNUMERO: TStringField;
    qryPreMBAIRRO: TStringField;
    qryPreMMUNICIPIO: TStringField;
    qryPreMUF: TStringField;
    qryPreMEMAIL1: TStringField;
    qryPreMFONE1: TStringField;
    qryPreMVENDEDOR: TStringField;
    qryPreMCODIGO: TIntegerField;
    qryPreMDATA_EMISSAO: TDateField;
    qryPreMID_CLIENTE: TIntegerField;
    qryPreMFK_USUARIO: TIntegerField;
    qryPreMFK_VENDEDOR: TIntegerField;
    qryPreMSUBTOTAL: TFMTBCDField;
    qryPreMDESCONTO: TFMTBCDField;
    qryPreMTOTAL: TFMTBCDField;
    qryPreMOBSERVACOES: TStringField;
    qryPreMSITUACAO: TStringField;
    qryPreMFKEMPRESA: TIntegerField;
    qryPreMPERCENTUAL: TFMTBCDField;
    qryPreDPRODUTO: TStringField;
    qryPreDCODIGO: TIntegerField;
    qryPreDFK_PREVENDA: TIntegerField;
    qryPreDID_PRODUTO: TIntegerField;
    qryPreDITEM: TSmallintField;
    qryPreDQTD: TFMTBCDField;
    qryPreDPRECO: TFMTBCDField;
    qryPreDVALOR_ITEM: TFMTBCDField;
    qryPreDVDESCONTO: TFMTBCDField;
    qryPreDPVDESCONTO: TFMTBCDField;
    qryPreDTOTAL: TFMTBCDField;
    qryPreDSITUACAO: TStringField;
    qryPreDUNIDADE: TStringField;
    qryPreDSUBTOTAL: TFMTBCDField;
    qryPreMSTATUS: TStringField;
    frxPDFExport: TfrxPDFExport;
    qryPreMFONE2: TStringField;
    qryPreMCELULAR1: TStringField;
    qryPreMCELULAR2: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    iCodPreVenda: Integer;
    procedure Imprimir(Tipo: integer);
    { Public declarations }
  end;

var
  frmImpressaoPreVenda: TfrmImpressaoPreVenda;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uPrincipal;

procedure TfrmImpressaoPreVenda.Button1Click(Sender: TObject);
begin
  Imprimir(1);
end;

procedure TfrmImpressaoPreVenda.Button2Click(Sender: TObject);
begin
  Imprimir(0);
end;

procedure TfrmImpressaoPreVenda.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpressaoPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmImpressaoPreVenda.Imprimir(Tipo: integer);
begin
  try
    qryPreM.Close;
    qryPreM.Params[0].Value :=  iCodPreVenda;
    qryPreM.Open;
    qryPreD.Close;
    qryPreD.Params[0].Value :=  qryPreMCODIGO.Value;
    qryPreD.Open;
    if Tipo = 0 then
      begin
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelPreVendaCupom2.fr3');
      end
    else if Tipo = 1 then
      begin
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelPreVendaA4.fr3');
      end;
    frxReport.PrintOptions.ShowDialog:= False;
    frxReport.PrepareReport;
    frxReport.PrintOptions.Printer := sImpressora;

    if not bImprimir then
      begin
        if bPreview then
          frxReport.ShowReport
        else
          frxReport.Print;
      end
    else
      begin
        if Application.messageBox(Pwidechar('Deseja Imprimir Pré Venda?'),
          'Confirmação', mb_Yesno) = mrYes then
        if bPreview then
          frxReport.ShowReport
        else
          frxReport.Print;
      end;
  except
    on E: Exception do
      ShowMessage('Falha na impressão:'+sLineBreak+E.Message);
  end;
end;

end.
