unit uConsRotaViagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, cxButtons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Tabs,
  Vcl.ComCtrls;

type
  TfrmConsRotaViagem = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    cxAtualizar: TcxButton;
    cxImp: TcxButton;
    cxAlterar: TcxButton;
    cxNovo: TcxButton;
    cxSair: TcxButton;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    maskInicio: TMaskEdit;
    maskFim: TMaskEdit;
    btnFiltrar: TBitBtn;
    ChkPeriodo: TCheckBox;
    dsRota: TDataSource;
    procedure cxAtualizarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRotaViagem: TfrmConsRotaViagem;

implementation

{$R *.dfm}

uses Udados, uCadRota;

procedure TfrmConsRotaViagem.cxAlterarClick(Sender: TObject);
begin
  if Dados.qryRota.IsEmpty then
    exit;

  frmCadRota := TfrmCadRota.Create(Application);
  frmCadRota.ShowModal;

  Dados.qryRota.Edit;
end;

procedure TfrmConsRotaViagem.cxAtualizarClick(Sender: TObject);
begin
  Dados.qryRota.Close;
  Dados.qryRota.Open;
end;

procedure TfrmConsRotaViagem.cxNovoClick(Sender: TObject);
begin
  Dados.qryRota.Insert;

  frmCadRota := TfrmCadRota.Create(Application);
  frmCadRota.ShowModal;
end;

procedure TfrmConsRotaViagem.cxSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsRotaViagem.DBGrid1DblClick(Sender: TObject);
begin
  cxAlterarClick(Self);
end;

procedure TfrmConsRotaViagem.FormShow(Sender: TObject);
begin
  Dados.qryRota.Close;
  Dados.qryRota.Open;
end;

end.
