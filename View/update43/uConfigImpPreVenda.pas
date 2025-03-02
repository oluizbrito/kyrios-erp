unit uConfigImpPreVenda;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Printers, IniFiles;

type
  TfrmConfigImpPreVenda = class(TForm)
    Label1: TLabel;
    cbImpressora: TComboBox;
    chkPreview: TCheckBox;
    rgrpTipoImpressao: TRadioGroup;
    chkImprimir: TCheckBox;
    btnSalvar: TButton;
    chkPerguntaTipo: TCheckBox;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LerIni;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigImpPreVenda: TfrmConfigImpPreVenda;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmConfigImpPreVenda.btnSalvarClick(Sender: TObject);
var
  ArquivoINI: TIniFile;
begin
  try
    ArquivoINI :=
      TIniFile.Create(ExtractFilePath(Application.ExeName)+'ConfigPreVenda.ini');
    ArquivoINI.WriteString('Impressao', 'Impressora', cbImpressora.Text);
    ArquivoINI.WriteBool('Impressao', 'Preview', chkPreview.Checked);
    ArquivoINI.WriteBool('Impressao', 'Pergunta', chkImprimir.Checked);
    ArquivoINI.WriteInteger('Impressao', 'Tipo', rgrpTipoImpressao.ItemIndex);
    ArquivoINI.WriteBool('Impressao', 'Pergunta Tipo de Impressao', chkPerguntaTipo.Checked);
  finally
    ArquivoINI.Free;
  end;
  ShowMessage('Salvo com Sucesso!');
  Close;
end;

procedure TfrmConfigImpPreVenda.FormCreate(Sender: TObject);
begin
  cbImpressora.Items.Assign(Printer.Printers);
end;

procedure TfrmConfigImpPreVenda.FormShow(Sender: TObject);
begin
  LerIni;
end;

procedure TfrmConfigImpPreVenda.LerIni;
var
  ArquivoINI: TIniFile;
begin
  try
    ArquivoINI :=
      TIniFile.Create(ExtractFilePath(Application.ExeName)+'ConfigPreVenda.ini');

    cbImpressora.ItemIndex := cbImpressora.Items.IndexOf(
      ArquivoINI.ReadString('Impressao', 'Impressora', ''));
    chkPreview.Checked  := ArquivoINI.ReadBool('Impressao', 'Preview', False);
    chkImprimir.Checked  := ArquivoINI.ReadBool('Impressao', 'Pergunta', False);
    rgrpTipoImpressao.ItemIndex := ArquivoINI.ReadInteger('Impressao', 'Tipo', 0);
    chkPerguntaTipo.Checked := ArquivoINI.ReadBool('Impressao', 'Pergunta Tipo de Impressao', False);
  finally
    ArquivoINI.Free;
  end;
end;

end.
