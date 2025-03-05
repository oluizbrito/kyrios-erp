unit uMovFinanPessoa;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Tabs, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TFrmMovReceberPessoa = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    Panel4: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnImp: TSpeedButton;
    btnCarne: TSpeedButton;
    btnAtualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    maskInicio: TMaskEdit;
    maskFim: TMaskEdit;
    btnFiltrar: TBitBtn;
    ChkPeriodo: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PnRodape: TPanel;
    TabSet1: TTabSet;
    Panel7: TPanel;
    Label14: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label16: TLabel;
    dbGrid1: TDBGrid;
    ChckSeleciona: TCheckBox;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText13: TDBText;
    Panel8: TPanel;
    btnEstornar: TSpeedButton;
    DBGrid2: TDBGrid;
    dsCliente: TDataSource;
    qryCliente: TFDQuery;
    qryClienteCODIGO: TIntegerField;
    qryClienteRAZAO: TStringField;
    qryClienteCLI: TStringField;
    FinanPessoa: TDataSource;
    Panel3: TPanel;
    Shape1: TShape;
    Label15: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBReceber: TfrxDBDataset;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
  idx: Integer;
    vOrdem, vSql: string;
    procedure Filtrar;
    { Public declarations }

  end;

var
  FrmMovReceberPessoa: TFrmMovReceberPessoa;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uCadReceber, uBaixaReceber, uSupervisor, uBaixaReceberLote;


procedure TFrmMovReceberPessoa.btnImpClick(Sender: TObject);
begin
 try

    if btnImp.Visible = false then
      exit;

    btnImp.Enabled := false;
    Filtrar;
    frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\Relatorio\RelReceber.fr3');
    frxReport.ShowReport;
  finally
    btnImp.Enabled := true;
    if (idx in [3, 6]) then
      maskInicio.SetFocus
    else
      edtLoc.SetFocus;
  end;
end;

procedure TfrmMovReceberPessoa.Filtrar;
var
  ordem, filtro, filtro1, filtro2, filtro3: string;
begin
  TThread.CreateAnonymousThread(
    procedure
    begin

      filtro := '';
      filtro1 := '';
      filtro2 := '';
      filtro3 := '';
      vSql := ' select CR.*, pessoa.razao, ved.nome as vendedor from creceber CR'
        + ' left join pessoa on pessoa.codigo=cr.fkcliente' +
        ' left join vendedores ved on ved.codigo=cr.id_vendedor' + ' where' +
        ' cr.codigo>0' + ' /*where*/' + ' /*ordem*/';

      filtro := filtro + ' and cr.fkempresa=' + Dados.qryEmpresaCODIGO.AsString;

      case idx of
        1:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.CODIGO = ' + edtLoc.Text;
          end;
        2:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.DOC like ' +
                QuotedStr(edtLoc.Text + '%');
          end;
        3:
          begin
            if ChkPeriodo.Checked then
            begin
              filtro := filtro + ' and cr.data>=' +
                QuotedStr(FormatDateTime('mm/dd/yyyy',
                strtodate(maskInicio.EditText))) + ' and cr.data<=' +
                QuotedStr(FormatDateTime('mm/dd/yyyy',
                strtodate(maskFim.EditText)));
            end;

          end;
        4:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.HISTORICO like ' +
                QuotedStr(edtLoc.Text + '%');
          end;
        5:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and PESSOA.RAZAO like ' +
                QuotedStr(edtLoc.Text + '%');
          end;

        6:
          begin
            if ChkPeriodo.Checked then
            begin

              filtro := filtro + ' and cr.DTVENCIMENTO>=' +
                QuotedStr(FormatDateTime('mm/dd/yyyy',
                strtodate(maskInicio.EditText))) + ' and cr.DTVENCIMENTO<=' +
                QuotedStr(FormatDateTime('mm/dd/yyyy',
                strtodate(maskFim.EditText)));
            end;

          end;
        7:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.VALOR >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;
        8:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.JUROS >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;
        9:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.DESCONTO >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;
        10:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.VRECEBIDO >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;
        11:
          begin
            if (trim(edtLoc.Text) <> '') then
              filtro := filtro + ' and cr.VL_RESTANTE >= ' +
                StringReplace(edtLoc.Text, ',', '.', []);
          end;

      end;

      case TabSet1.TabIndex of
        1:
          filtro2 := ' and cr.situacao<>''T''';
        2:
          filtro2 := ' and cr.dtvencimento<current_date and cr.situacao<>''T''';
        3:
          filtro2 := ' and cr.situacao=''T''';
      end;


      case idx of
        1:
          ordem := ' order by cr.CODIGO' + vOrdem;
        2:
          ordem := ' order by cr.DOC' + vOrdem;
        3:
          ordem := ' order by cr.DATA' + vOrdem + ' ,CR.CODIGO';
        4:
          ordem := ' order by cr.HISTORICO' + vOrdem;
        5:
          ordem := ' order by PESSOA.RAZAO' + vOrdem;
        6:
          ordem := ' order by cr.DTVENCIMENTO' + vOrdem + ' ,CR.CODIGO';
        7:
          ordem := ' order by CR.VALOR' + vOrdem;
        8:
          ordem := ' order by CR.JUROS' + vOrdem;
        9:
          ordem := ' order by CR.DESCONTO' + vOrdem;
        10:
          ordem := ' order by CR.VRECEBIDO' + vOrdem;
        11:
          ordem := ' order by CR.VL_RESTANTE' + vOrdem;

      end;
      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          Dados.qrycr.Close;
          Dados.qrycr.SQL.Text := vSql;
          Dados.qrycr.SQL.Text := StringReplace(Dados.qrycr.SQL.Text,
            '/*where*/', filtro + filtro1 + filtro2 + ordem, [rfReplaceAll]);
          Dados.qrycr.Open;
        end);

    end).Start;

end;

procedure TFrmMovReceberPessoa.btnNovoClick(Sender: TObject);
begin
  if btnNovo.Visible = false then
    exit;

  try
    frmCadReceber := TfrmCadReceber.Create(Application);
    btnNovo.Enabled := false;
    frmCadReceber.qrycr.Close;
    frmCadReceber.qrycr.Params[0].Value := -1;
    frmCadReceber.qrycr.Open;

    frmCadReceber.qrycr.Insert;
    frmCadReceber.qrycrCODIGO.Value := Dados.Numerador('CRECEBER', 'CODIGO',
      'N', '', '');
    frmCadReceber.qrycrDATA.Value := date;
    frmCadReceber.qrycrFKEMPRESA.Value := Dados.qryEmpresaCODIGO.Value;
    frmCadReceber.qrycrFKCONTA.Value := 0;
    frmCadReceber.qrycrVALOR.Value := 0;
    frmCadReceber.qrycrDESCONTO.Value := 0;
    frmCadReceber.qrycrJUROS.Value := 0;
    frmCadReceber.qrycrVRECEBIDO.Value := 0;
    frmCadReceber.qrycrVL_RESTANTE.Value := 0;
    frmCadReceber.qrycrSITUACAO.Value := 'A';
    frmCadReceber.qrycrDOC.Value := '';
    frmCadReceber.ShowModal;
  finally
    frmCadReceber.Release;
    btnNovo.Enabled := true;
    if (idx in [3, 6]) then
      maskInicio.SetFocus
    else
      edtLoc.SetFocus;

    Filtrar;

  end;
end;

procedure TFrmMovReceberPessoa.Button1Click(Sender: TObject);
begin
 frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\CarneBobina.fr3');
  frxReport.ShowReport;
end;

procedure TFrmMovReceberPessoa.Button2Click(Sender: TObject);
begin
frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\Relatorio\CarneBobina.fr3');
  frxReport.ShowReport;
end;

end.
