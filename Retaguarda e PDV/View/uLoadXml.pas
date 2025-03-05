unit uLoadXml;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, acbrUtil,
  Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls;

type
  TfrmLoadXML = class(TForm)
    PageControl1: TPageControl;
    tsLog: TTabSheet;
    mLog: TMemo;
    tsGerado: TTabSheet;
    mVendaEnviar: TMemo;
    tsRecebido: TTabSheet;
    mRecebido: TWebBrowser;
    tsCancelamento: TTabSheet;
    mCancelamentoEnviar: TMemo;
    Panel2: TPanel;
    Label18: TLabel;
    edChaveCancelamento: TEdit;
    tsRedeXML: TTabSheet;
    mRede: TWebBrowser;
  private
    { Private declarations }
    MyWebBrowser: TWebBrowser;
  public
    { Public declarations }
    procedure LoadXML(AXML: String);
  end;

var
  frmLoadXML: TfrmLoadXML;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

procedure TfrmLoadXML.LoadXML(AXML: String);
begin
  MyWebBrowser := mRecebido;
  WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) +
    MyWebBrowser.Name + '-temp.xml', AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) +
    MyWebBrowser.Name + '-temp.xml');
end;

end.
