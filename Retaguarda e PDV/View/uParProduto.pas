unit uParProduto;
interface //Suporte e Vendas direto no Whatsapp (48)998463846
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dateutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportPDF, frxExportBaseDialog,
  frxExportXLS;
type
  TfrmParProduto = class(TForm)
    Panel3: TPanel;
    btnImp: TSpeedButton;
    bbSair: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    MaskInicio: TDateTimePicker;
    MaskFim: TDateTimePicker;
    chkPeriodo: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frxDBVendas: TfrxDBDataset;
    frxDBLucro: TfrxDBDataset;
    qryVendas: TFDQuery;
    Label4: TLabel;
    frxDBEmpresa: TfrxDBDataset;
    qryLucro: TFDQuery;
    edtNumero: TEdit;
    qryVendasID_PRODUTO: TIntegerField;
    qryVendasDESCRICAO: TStringField;
    qryVendasQTD: TFMTBCDField;
    qryVendasTOTAL: TFMTBCDField;
    qryLucroID_PRODUTO: TIntegerField;
    qryLucroDESCRICAO: TStringField;
    qryLucroQTD: TFMTBCDField;
    qryLucroCUSTO: TFMTBCDField;
    qryLucroVENDAS: TFMTBCDField;
    qryLucroLUCRO: TFMTBCDField;
    qryLucroMARGEM: TFMTBCDField;
    qryLucroLV: TStringField;
    EditMargem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    qrysomalucro: TFDQuery;
    frxqrysomalucro: TfrxDBDataset;
    qrysomalucroQTD: TFMTBCDField;
    qrysomalucroVLV: TFMTBCDField;
    qrysomalucroVLC: TFMTBCDField;
    qrysomalucroMG: TFMTBCDField;
    Label3: TLabel;
    procedure btnImpClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskInicioExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmParProduto: TfrmParProduto;
  somaitem, somaquantidade, somamargem:Real;
implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.
{$R *.dfm}
uses Udados;

procedure TfrmParProduto.bbSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmParProduto.btnImpClick(Sender: TObject);
var
  filtro, ordem: string;
begin
  somaitem := 0;
  somaquantidade := 0;
  somamargem := 0;
  ordem := '';
  filtro := '';
  if tag = 1 then
  begin
    case RadioGroup1.ItemIndex of
      0:
        ordem := ' order by 3 desc';
      1:
        ordem := ' order by 4 desc';
    end;
  end;
  if tag = 2 then
  begin
    case RadioGroup1.ItemIndex of
      0:
        ordem := ' order by 3';
      1:
        ordem := ' order by 4';
    end;
  end;
  case tag of
    1 .. 2:
      begin
        if chkPeriodo.Checked then
          filtro := ' and vm.data_emissao>=' +
            QuotedStr(FormatDateTime('mm-dd-yyy', MaskInicio.Date)) +
            ' and  vm.data_emissao<=' +
            QuotedStr(FormatDateTime('mm-dd-yyy', MaskFim.Date)) + ' ';
        qryVendas.close;
        qryVendas.SQL.Text :=
          ' select first :qtd vd.id_produto, pro.descricao, sum(vd.qtd) qtd, sum(vd.total)total from vendas_detalhe vd'
          + ' left join produto pro on pro.codigo=vd.id_produto' +
          ' left join vendas_master vm on vm.codigo=vd.fkvenda' +
          ' where   NOT vm.situacao in (''C'',''A'')' + ' /*where*/' +
          ' group by 1,2' + ' /*order*/';
        qryVendas.SQL.Text := StringReplace(qryVendas.SQL.Text, '/*where*/',
          filtro, []);
        qryVendas.SQL.Text := StringReplace(qryVendas.SQL.Text, '/*order*/',
          ordem, []);
        qryVendas.ParamByName('qtd').AsString := edtNumero.Text;
        qryVendas.Open;
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelProdutoVenda.fr3');
        frxReport.ShowReport;
      end;
    3 .. 5:
      begin
        if tag = 3 then
          ordem := 'order by 6 desc';
        if tag = 4 then
          ordem := 'order by 6';
        if tag = 5 then
          ordem := 'order by 7 desc';
        if chkPeriodo.Checked then
          filtro := ' and vm.data_emissao>=' +
            QuotedStr(FormatDateTime('mm-dd-yyy', MaskInicio.Date)) +
            ' and  vm.data_emissao<=' +
            QuotedStr(FormatDateTime('mm-dd-yyy', MaskFim.Date)) + ' ';
        qryLucro.close;
        qryLucro.SQL.Text :=
          'select first :qtd id_produto, descricao, qtd, custo, vendas, (vendas-custo) lucro, '
          + 'coalesce(((vendas / nullif(custo, 0)) - 1) * 100, 0) margem, ' +
          'case when coalesce(((vendas / nullif(custo, 0)) - 1) * 100, 0) >= :mag then ''+'' else ''-'' end lv '
          + 'from (' +
          ' select vd.id_produto, pro.descricao, sum(qtd) qtd, (max(pro.pr_custo)*SUM(vd.qtd)) custo,  '
          + ' (sum(VD.QTD)*avg(vd.preco)) vendas ' + ' from vendas_detalhe vd '
          + ' left join produto pro on pro.codigo=vd.id_produto ' +
          ' left join vendas_master vm on vm.codigo=vd.fkvenda ' +
          ' where NOT vm.situacao in (''C'',''A'') /*where*/ ' +
          ' group BY 1,2) /*ordem*/';

        qryLucro.SQL.Text := StringReplace(qryLucro.SQL.Text, '/*where*/',
          filtro, []);
        qryLucro.SQL.Text := StringReplace(qryLucro.SQL.Text, '/*ordem*/',
          ordem, []);
        qryLucro.ParamByName('qtd').AsString := edtNumero.Text;
        qryLucro.ParamByName('Mag').AsString := EditMargem.Text;
        qryLucro.Open;
        with qrysomalucro do
        begin
          ParamByName('dti').AsDate := MaskInicio.Date;
          ParamByName('dtf').AsDate := MaskFim.Date;
          Open;
        end;
        frxReport.LoadFromFile(ExtractFilePath(Application.ExeName) +
          '\Relatorio\RelVendasLucro.fr3');
        frxReport.ShowReport;
      end;
  end;
end;

procedure TfrmParProduto.FormActivate(Sender: TObject);
begin
  dados.vForm := nil;
  dados.vForm := self;
  dados.GetComponentes;
end;
procedure TfrmParProduto.FormCreate(Sender: TObject);
begin
  MaskInicio.Date := StartOfTheMonth(Date);
  MaskFim.Date := Date;
end;
procedure TfrmParProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_f4:
      btnImpClick(self);
    VK_ESCAPE:
      close;
  end;
end;
procedure TfrmParProduto.FormShow(Sender: TObject);
begin
  case tag of
    1 .. 2:
      RadioGroup1.Visible := true;
    3 .. 4:
       begin
        RadioGroup1.Visible := false;
         EditMargem.Visible := true;
         Label1.Visible     := true;
         Label2.Visible     := true;
       end;
    5: begin
        //chkPeriodo.Top    := chkPeriodo.Top+16;
        //MaskInicio.Top    := MaskInicio.Top+16;
        //MaskFim.Top       := MaskFim.Top+16;
        Label1.Visible    := true;
        Label2.Visible    := true;
        EditMargem.Visible:= true;
        Label4.Visible    := false;
        edtNumero.Visible := false;
        edtNumero.Text    := '100000'
       end;
  end;
end;
procedure TfrmParProduto.frxReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if tag = 1 then
  begin
    if VarName = 'TITULO' then
    begin
      Value := edtNumero.Text + ' PRODUTOS MAIS VENDIDOS';
    end;
    if chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
      begin
        Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
          datetostr(MaskFim.Date);
      end;
    end;
    if not chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
        Value := 'TODOS';
    end;
  end;
  if tag = 2 then
  begin
    if VarName = 'TITULO' then
    begin
      Value := edtNumero.Text + ' PRODUTOS MENOS VENDIDOS';
    end;
    if chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
      begin
        Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
          datetostr(MaskFim.Date);
      end;
    end;
    if not chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
        Value := 'TODOS';
    end;
  end;
  if tag = 3 then
  begin
    if VarName = 'TITULO' then
    begin
      Value := edtNumero.Text + ' PRODUTOS MAIS LUCRATIVOS';
    end;
    if chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
      begin
        Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
          datetostr(MaskFim.Date);
      end;
    end;
    if not chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
        Value := 'TODOS';
    end;
  end;
  if tag = 4 then
  begin
    if VarName = 'TITULO' then
    begin
      Value := edtNumero.Text + ' PRODUTOS MENOS LUCRATIVOS';
    end;
    if chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
      begin
        Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
          datetostr(MaskFim.Date);
      end;
    end;
    if not chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
        Value := 'TODOS';
    end;
  end;
  if tag = 5 then
  begin
    if VarName = 'MEMo25' then
    begin
      Value := somaitem;
    end;
    if VarName = 'TITULO' then
    begin
      Value := {edtNumero.Text +} ' LUCRATIVIDADE DE PRODUTOS ';
    end;
    if chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
      begin
        Value := 'PERÍODO DE ' + datetostr(MaskInicio.Date) + ' ATÉ ' +
          datetostr(MaskFim.Date);
      end;
    end;
    if not chkPeriodo.Checked then
    begin
      if VarName = 'PARAMETRO' then
        Value := 'TODOS';
    end;
  end;
end;
procedure TfrmParProduto.MaskInicioExit(Sender: TObject);
begin
  MaskFim.Date := EndOfTheMonth(MaskInicio.Date);
end;
end.
