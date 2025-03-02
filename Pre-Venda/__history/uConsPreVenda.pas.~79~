unit uConsPreVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Tabs,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DateUtils, dxSkinsCore,
  dxSkinDevExpressDarkStyle, dxSkinOffice2019Colorful, dxSkinOffice2019White,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TFrmListaPreVenda = class(TForm)
    PnBarraCabecalho: TPanel;
    ImgFechar: TImage;
    Label42: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    qryPreM: TFDQuery;
    qryPreMRAZAO: TStringField;
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
    qryPreMSTATUS: TStringField;
    dsPreM: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSet1: TTabSet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    qryPreD: TFDQuery;
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
    dsPreD: TDataSource;
    cxAlterar: TcxButton;
    cxImp: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtLocChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtLocKeyPress(Sender: TObject; var Key: Char);
    procedure TabSet1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure ImgFecharClick(Sender: TObject);
    procedure dsPreMDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure cxAlterarClick(Sender: TObject);
    procedure cxImpClick(Sender: TObject);
  private
    { Private declarations }
    procedure tamanho;
    procedure Localiza;
  public
    { Public declarations }
    idx: Integer;
    vSql: String;
  end;

var
  FrmListaPreVenda: TFrmListaPreVenda;

implementation

{$R *.dfm}

uses Udados, uCadPreVenda, uImpressaoPreVenda;

{ TFrmListaPreVenda }

procedure TFrmListaPreVenda.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TFrmListaPreVenda.cxAlterarClick(Sender: TObject);
begin
  if qryPreMSITUACAO.AsString = 'X' then
    begin
      try
        FrmCadPreVenda  :=  TFrmCadPreVenda.Create(Application);
        FrmCadPreVenda.Tag  :=  1;
        FrmCadPreVenda.qryPreMaster.Close;
        FrmCadPreVenda.qryPreMaster.SQL.Clear;
        FrmCadPreVenda.qryPreMaster.SQL.Text  :=
          'select * from PRE_VENDA_MASTER '+
          'where codigo = '+IntToStr(qryPreMCODIGO.AsInteger);
        FrmCadPreVenda.qryPreMaster.Open;
        FrmCadPreVenda.qryPreDetalhe.Close;
        FrmCadPreVenda.qryPreDetalhe.Params[0].Value  :=
          IntToStr(qryPreMCODIGO.AsInteger);
        FrmCadPreVenda.qryPreDetalhe.Open;
        FrmCadPreVenda.ShowModal;
      finally
        FrmCadPreVenda.Release;
        qryPreM.Refresh;
      end;
    end
  else
    ShowMessage('Não é possivel Alterar.');
end;

procedure TFrmListaPreVenda.cxImpClick(Sender: TObject);
begin
  try
    frmImpressaoPreVenda  :=  TfrmImpressaoPreVenda.Create(Application);
    frmImpressaoPreVenda.iCodPreVenda :=  qryPreMCODIGO.AsInteger;
    frmImpressaoPreVenda.ShowModal;
  finally
    frmImpressaoPreVenda.Release;
  end;
end;

procedure TFrmListaPreVenda.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex  :=  1;
end;

procedure TFrmListaPreVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00FAF8F5;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').AsString = 'X' then
    (Sender as TDBGrid).Canvas.Font.Color := clBlack
  else if (Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').AsString = 'F' then
    (Sender as TDBGrid).Canvas.Font.Color := clGreen
  else if (Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').AsString = 'C' then
    (Sender as TDBGrid).Canvas.Font.Color := clRed
  else if (Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').AsString = 'I' then
    (Sender as TDBGrid).Canvas.Font.Color := clMaroon;

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

procedure TFrmListaPreVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FormKeyDown(Sender, Key, Shift);
end;

procedure TFrmListaPreVenda.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  tamanho;
  idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'Código';
  DBGrid1.Columns[1].Title.Caption := 'Cliente';
  DBGrid1.Columns[2].Title.Caption := 'Vendedor';
  DBGrid1.Columns[3].Title.Caption := 'Dt. Emissão';
  DBGrid1.Columns[4].Title.Caption := 'Sub Total';
  DBGrid1.Columns[5].Title.Caption := 'Desconto';
  DBGrid1.Columns[6].Title.Caption := 'Total';
  DBGrid1.Columns[7].Title.Caption := 'Status';

  if idx = 3 then
    begin
      GroupBox1.Visible :=  False;
      GroupBox2.Visible :=  True;
    end
  else
    begin
      GroupBox1.Visible :=  True;
      GroupBox2.Visible :=  False;
      GroupBox1.Caption := 'F5 | Localizar <<' + DBGrid1.Columns[idx]
        .Title.Caption + '>>';
    end;

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  if idx = 3 then
    maskInicio.SetFocus
  else
    begin
      edtLoc.Width := DBGrid1.Columns[idx].Width + 50;
      edtLoc.SetFocus;
    end;
  localiza;
end;

procedure TFrmListaPreVenda.DBGrid2DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex  :=  0;
end;

procedure TFrmListaPreVenda.dsPreMDataChange(Sender: TObject; Field: TField);
begin
  qryPreD.Close;
  qryPreD.Params[0].Value :=
    qryPreMCODIGO.Value;
  qryPreD.Open;
end;

procedure TFrmListaPreVenda.edtLocChange(Sender: TObject);
begin
  localiza;
end;

procedure TFrmListaPreVenda.edtLocKeyPress(Sender: TObject; var Key: Char);
begin
  if (idx in [0]) then
  begin
    if not(Key in ['0' .. '9', #8, #9, #13, #27]) then
      Key := #0;
  end
  else
  if (idx in [4, 5, 6]) then
  begin
    if not(Key in ['0' .. '9', '.', #8, #9, #13, #27]) then
      Key := #0;
  end;
end;

procedure TFrmListaPreVenda.FormActivate(Sender: TObject);
begin
  tamanho;
end;

procedure TFrmListaPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F8 then
    begin
      if GroupBox1.Visible then
        edtLoc.SetFocus
      else if GroupBox2.Visible then
        maskInicio.SetFocus;
    end;
  if Key = VK_F3 then
    cxAlterarClick(Self);
  if Key = VK_F4 then
    cxImpClick(Self);
end;

procedure TFrmListaPreVenda.FormShow(Sender: TObject);
begin
  maskInicio.Text := DateToStr(StartOfTheMonth(date));
  maskFim.Text := DateToStr(date);
  Localiza;
  DBGrid1TitleClick(DBGrid1.Columns[0]);
end;

procedure TFrmListaPreVenda.ImgFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmListaPreVenda.Localiza;
var
  filtro1, filtro2, ordem: string;
begin
  try
    vSql  :=
      'SELECT P.RAZAO, V.NOME VENDEDOR, '+
      'PVM.*, '+
      'CASE PVM.SITUACAO '+
      '    WHEN ''X'' THEN ''ABERTA'' '+
      '    WHEN ''F'' THEN ''FINALIZADA'' '+
      '    WHEN ''C'' THEN ''CANCELADA'' '+
      '    WHEN ''I'' THEN ''IMPORTADA'' '+
      '    ELSE ''NÃO IDENTIFICADO'' '+
      'END STATUS '+
      'FROM PRE_VENDA_MASTER PVM '+
      'LEFT JOIN PESSOA P ON PVM.ID_CLIENTE = P.CODIGO '+
      'LEFT JOIN VENDEDORES V ON PVM.FK_VENDEDOR = V.CODIGO '+
      'WHERE PVM.FKEMPRESA = :EMPRESA '+
      '/*WHERE*/ ';

    filtro1 :=  '';
    case TabSet1.TabIndex of
      1:  filtro1 := ' and PVM.SITUACAO = ''X'' ';
      2:  filtro1 := ' and PVM.SITUACAO = ''F'' ';
      3:  filtro1 := ' and PVM.SITUACAO = ''C'' ';
      4:  filtro1 := ' and PVM.SITUACAO = ''I'' ';
    end;

    case idx of
      0:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and PVM.CODIGO=' + edtLoc.Text;
        end;
      1:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and P.RAZAO like ' +
              QuotedStr(edtLoc.Text + '%');
        end;
      2:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and V.NOME like ' +
              QuotedStr(edtLoc.Text + '%');
        end;
      3:
        begin
          if GroupBox2.Visible then
            begin
              filtro2 :=  ' AND PVM.DATA_EMISSAO BETWEEN '+
                QuotedStr(FormatDateTime('mm-dd-yyyy' ,StrToDate(maskInicio.Text)))+
                ' AND '+QuotedStr(FormatDateTime('mm-dd-yyyy' ,StrToDate(maskFim.Text)))+'';
            end;
        end;
      4:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and PVM.SUBTOTAL = ' +
              edtLoc.Text;
        end;
      5:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and PVM.DESCONTO = ' +
              edtLoc.Text;
        end;
      6:
        begin
          if (trim(edtLoc.Text) <> '') then
            filtro2 := ' and PVM.TOTAL = ' +
              edtLoc.Text;
        end;
    end;

    case idx of
      0:
        ordem := ' order by PVM.CODIGO';
      1:
        ordem := ' order by P.RAZAO';
      2:
        ordem := ' order by V.NOME';
      3:
        ordem := ' order by PVM.DATA_EMISSAO';
      4:
        ordem := ' order by PVM.SUBTOTAL';
      5:
        ordem := ' order by PVM.DESCONTO';
      6:
        ordem := ' order by PVM.TOTAL';
      7:
        ordem := ' order by PVM.SITUACAO';
    end;

    qryPreM.Close;
    qryPreM.SQL.Clear;
    qryPreM.SQL.Text :=
      vSQL.Replace('/*WHERE*/', filtro1+filtro2+ordem);
    qryPreM.Params[0].Value  :=  Dados.qryEmpresaCODIGO.Value;
    qryPreM.Open;
  except
    on E: Exception do
      ShowMessage('Falha ao fazer consulta: '+sLineBreak+E.Message);
  end;
end;

procedure TFrmListaPreVenda.TabSet1Click(Sender: TObject);
begin
  Localiza;
end;

procedure TFrmListaPreVenda.tamanho;
begin
  DBGrid1.Columns[0].Width := round(Self.Width * 0.06);
  DBGrid1.Columns[1].Width := round(Self.Width * 0.22);
  DBGrid1.Columns[2].Width := round(Self.Width * 0.18);
  DBGrid1.Columns[3].Width := round(Self.Width * 0.13);
  DBGrid1.Columns[4].Width := round(Self.Width * 0.09);
  DBGrid1.Columns[5].Width := round(Self.Width * 0.09);
  DBGrid1.Columns[6].Width := round(Self.Width * 0.09);
  DBGrid1.Columns[7].Width := round(Self.Width * 0.09);
end;

end.
