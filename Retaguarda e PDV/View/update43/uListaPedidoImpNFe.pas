unit uListaPedidoImpNFe;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Buttons, Data.DB, Vcl.Tabs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DateUtils, Datasnap.DBClient, System.Math, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TfrmListaPedidoImpNFe = class(TForm)
    Panel4: TPanel;
    Panel12: TPanel;
    Label13: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnImportar: TSpeedButton;
    btnCancelar: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLoc: TEdit;
    GroupBox2: TGroupBox;
    btnFiltrar: TBitBtn;
    maskFim: TMaskEdit;
    maskInicio: TMaskEdit;
    PageControl1: TPageControl;
    Vendas: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    dsPedido: TDataSource;
    qryPV: TFDQuery;
    qryPVCODIGO: TIntegerField;
    qryPVDATA_EMISSAO: TDateField;
    qryPVDATA_SAIDA: TDateField;
    qryPVID_CLIENTE: TIntegerField;
    qryPVFK_USUARIO: TIntegerField;
    qryPVFK_CAIXA: TIntegerField;
    qryPVFK_VENDEDOR: TIntegerField;
    qryPVTIPO_DESCONTO: TStringField;
    qryPVTIPO: TStringField;
    qryPVNECF: TIntegerField;
    qryPVFKORCAMENTO: TIntegerField;
    qryPVFKEMPRESA: TIntegerField;
    qryPVOBSERVACOES: TMemoField;
    qryPVCPF_NOTA: TStringField;
    qryPVSITUACAO: TStringField;
    qryPVRAZAO: TStringField;
    qryPVNOME: TStringField;
    qryPVVIRTUAL_SITUACAO: TStringField;
    qryPVSUBTOTAL: TFMTBCDField;
    qryPVDESCONTO: TFMTBCDField;
    qryPVTROCO: TFMTBCDField;
    qryPVDINHEIRO: TFMTBCDField;
    qryPVTOTAL: TFMTBCDField;
    qryPVPERCENTUAL: TFMTBCDField;
    qryPVLOTE: TIntegerField;
    qryPVGERA_FINANCEIRO: TStringField;
    qryPVPERCENTUAL_ACRESCIMO: TFMTBCDField;
    qryPVACRESCIMO: TFMTBCDField;
    qryPVFK_TABELA: TIntegerField;
    qryPVPEDIDO: TStringField;
    qryPVCONTA: TStringField;
    qryPVFORMA_PAGAMENTO: TStringField;
    qryPVFLAG_NFCE: TStringField;
    qryPVTTOTAL: TAggregateField;
    qryPV_Itens: TFDQuery;
    dsItens: TDataSource;
    dsFPG: TDataSource;
    qryFPG: TFDQuery;
    qryFPGID_FORMA: TIntegerField;
    qryFPGDESCRICAO: TStringField;
    qryFPGVALOR: TFMTBCDField;
    qryPV_ItensCODIGO: TIntegerField;
    qryPV_ItensFKVENDA: TIntegerField;
    qryPV_ItensID_PRODUTO: TIntegerField;
    qryPV_ItensITEM: TSmallintField;
    qryPV_ItensCOD_BARRA: TStringField;
    qryPV_ItensQTD: TFMTBCDField;
    qryPV_ItensE_MEDIO: TFMTBCDField;
    qryPV_ItensPRECO: TFMTBCDField;
    qryPV_ItensVALOR_ITEM: TFMTBCDField;
    qryPV_ItensVDESCONTO: TFMTBCDField;
    qryPV_ItensTOTAL: TFMTBCDField;
    qryPV_ItensSITUACAO: TStringField;
    qryPV_ItensUNIDADE: TStringField;
    qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField;
    qryPV_ItensACRESCIMO: TFMTBCDField;
    qryPV_ItensOS: TStringField;
    qryPV_ItensFK_GRADE: TIntegerField;
    qryPV_ItensPDESCONTO: TFMTBCDField;
    qryPV_ItensVALOR_ITEM_SD: TFMTBCDField;
    qryPV_ItensFATOR: TFMTBCDField;
    qryPV_ItensFK_IMEI: TIntegerField;
    qryPV_ItensPRODUTO: TStringField;
    cdsPV: TClientDataSet;
    cdsPVCODIGO: TIntegerField;
    cdsPVDATA_EMISSAO: TDateField;
    cdsPVDATA_SAIDA: TDateField;
    cdsPVID_CLIENTE: TIntegerField;
    cdsPVFK_USUARIO: TIntegerField;
    cdsPVFK_CAIXA: TIntegerField;
    cdsPVFK_VENDEDOR: TIntegerField;
    cdsPVTIPO_DESCONTO: TStringField;
    cdsPVTIPO: TStringField;
    cdsPVNECF: TIntegerField;
    cdsPVFKORCAMENTO: TIntegerField;
    cdsPVFKEMPRESA: TIntegerField;
    cdsPVOBSERVACOES: TMemoField;
    cdsPVCPF_NOTA: TStringField;
    cdsPVSITUACAO: TStringField;
    cdsPVRAZAO: TStringField;
    cdsPVNOME: TStringField;
    cdsPVVIRTUAL_SITUACAO: TStringField;
    cdsPVSUBTOTAL: TFMTBCDField;
    cdsPVDESCONTO: TFMTBCDField;
    cdsPVTROCO: TFMTBCDField;
    cdsPVDINHEIRO: TFMTBCDField;
    cdsPVTOTAL: TFMTBCDField;
    cdsPVPERCENTUAL: TFMTBCDField;
    cdsPVLOTE: TIntegerField;
    cdsPVGERA_FINANCEIRO: TStringField;
    cdsPVPERCENTUAL_ACRESCIMO: TFMTBCDField;
    cdsPVACRESCIMO: TFMTBCDField;
    cdsPVFK_TABELA: TIntegerField;
    cdsPVPEDIDO: TStringField;
    cdsPVCONTA: TStringField;
    cdsPVFORMA_PAGAMENTO: TStringField;
    cdsPVFLAG_NFCE: TStringField;
    cdsPVTTOTAL: TAggregateField;
    cdsPVchk: TStringField;
    pnlAguarde: TPanel;
    Cursor: TFDGUIxWaitCursor;
    Label1: TLabel;
    qryPVCHK: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnImportarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dsPedidoDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure tamanho;
    procedure localiza;
    procedure AlimentarCDS;
    procedure LimpaCDS;
    procedure MostrarPanel(bMostrar: Boolean = False);
  public
    { Public declarations }
    idx: Integer;
    vOrdem, vSql: String;
    bImporta: Boolean;
  end;

var
  frmListaPedidoImpNFe: TfrmListaPedidoImpNFe;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uNFe;

procedure TfrmListaPedidoImpNFe.AlimentarCDS;
var
  I: integer;
begin
  Exit;
  try
    MostrarPanel(True);
    try
      if qryPV.IsEmpty then
        Exit;
      LimpaCDS;
      qryPV.First;
      while not qryPV.Eof do
        begin
          cdsPV.Append;
          for I := 0 to qryPV.FieldCount-1 do
            begin
              cdsPV.Fields[I].Value :=
                qryPV.Fields[I].Value;
            end;
          cdsPV.Fields[I].Value :=  'N';
          cdsPV.Post;
          qryPV.Next;
        end;
    except
      on E: Exception do
        begin
          Application.MessageBox(PChar('Falha: '+
            sLineBreak+E.Message), 'Error', 0+16);
          LimpaCDS;
        end;
    end;
  finally
    MostrarPanel;
  end;
end;

procedure TfrmListaPedidoImpNFe.btnCancelarClick(Sender: TObject);
begin
  bImporta  :=  False;
  Close;
end;

procedure TfrmListaPedidoImpNFe.btnFiltrarClick(Sender: TObject);
begin
  localiza;
end;

procedure TfrmListaPedidoImpNFe.btnImportarClick(Sender: TObject);
begin
  bImporta  :=  True;
  Close;
end;

procedure TfrmListaPedidoImpNFe.DBGrid1DblClick(Sender: TObject);
begin
  if ((Sender as TDBGrid).DataSource.Dataset.IsEmpty) then
    Exit;

  (Sender as TDBGrid).DataSource.Dataset.Edit;

  if
   (Sender as TDBGrid).DataSource.Dataset.FieldByName('chk').AsString = 'S'
  then
    (Sender as TDBGrid).DataSource.Dataset.FieldByName('chk').AsString := 'N'
  else
    (Sender as TDBGrid).DataSource.Dataset.FieldByName('chk').AsString := 'S';

  (Sender as TDBGrid).DataSource.Dataset.Post;
end;

procedure TfrmListaPedidoImpNFe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F1ECE7
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Style := [fsbold];
  end
  else
  begin
    DBGrid1.Canvas.Font.Style := [];
  end;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if ((Sender as TDBGrid).DataSource.Dataset.IsEmpty) then
    Exit;

  // Desenha um checkbox no dbgrid
  if UpperCase(Column.FieldName) = 'CHK' then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);

    if ((Sender as TDBGrid).DataSource.Dataset.FieldByName('chk').AsString = 'S') then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmListaPedidoImpNFe.DBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
begin
  edtLoc.Clear;

  if idx = Column.Index then
  begin
    if vOrdem = ' ASC' then
      vOrdem := ' DESC'
    else
      vOrdem := ' ASC';
  end
  else
    vOrdem := ' ASC';

  if Column.Index = 0 then
    idx :=  1
  else
    idx := Column.Index;
  DBGrid1.Columns[0].Title.Caption := 'X';
  DBGrid1.Columns[1].Title.Caption := 'Número';
  DBGrid1.Columns[2].Title.Caption := 'Data';
  DBGrid1.Columns[3].Title.Caption := 'Clientes';
  DBGrid1.Columns[4].Title.Caption := 'Caixa';
  DBGrid1.Columns[5].Title.Caption := 'Vendedor';
  DBGrid1.Columns[6].Title.Caption := 'Total';

  if (idx in [2]) then
  begin
    GroupBox1.Visible := false;
    maskInicio.SetFocus;
  end
  else
  begin
    GroupBox1.Visible := true;
    edtLoc.SetFocus;
  end;

  GroupBox1.Caption := 'F5 | Localizar <<' + DBGrid1.Columns[idx]
    .Title.Caption + '>>';

  DBGrid1.Columns[idx].Title.Caption := '>>' + DBGrid1.Columns[idx]
    .Title.Caption;

  edtLoc.Width := DBGrid1.Columns[idx].Width + 50;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Title.Font.Style := [];

  DBGrid1.Columns[idx].Title.Font.Style := [fsbold];

  localiza;
end;

procedure TfrmListaPedidoImpNFe.dsPedidoDataChange(Sender: TObject;
  Field: TField);
begin
  qryFPG.Close;
  qryFPG.Params[0].Value  :=
    qryPVCODIGO.Value;
  qryFPG.Open;
  qryPV_Itens.Close;
  qryPV_Itens.Params[0].Value :=
    qryPVCODIGO.Value;
  qryPV_Itens.Open;
end;

procedure TfrmListaPedidoImpNFe.FormActivate(Sender: TObject);
begin
  Dados.vForm := nil;
  Dados.vForm := self;
  Dados.GetComponentes;
end;

procedure TfrmListaPedidoImpNFe.FormCreate(Sender: TObject);
begin
  vOrdem := ' ASC';
  maskInicio.Text := DateToStr(StartOfTheWeek(DATE));
  maskFim.Text := DateToStr(DATE);
  btnCancelar.Caption := 'F4' + sLineBreak + 'Cancelar';
  btnImportar.Caption := 'F3' + sLineBreak + 'Importar';
  cdsPV.CreateDataSet;
end;

procedure TfrmListaPedidoImpNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f3 then
  begin
    btnImportarClick(self);
    abort;
  end;
  if Key = vk_f4 then
  begin
    btnCancelarClick(self);
    abort;
  end;
  if Key = vk_f5 then
  begin
    edtLoc.SetFocus;
    abort;
  end;
end;

procedure TfrmListaPedidoImpNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(CM_DialogKey, Vk_Tab, 0);
  end;
end;

procedure TfrmListaPedidoImpNFe.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex  :=  0;
  GroupBox2.Visible :=  True;
  GroupBox1.Visible :=  True;
  bImporta  :=  False;
  tamanho;
  //localiza;
end;

procedure TfrmListaPedidoImpNFe.LimpaCDS;
begin
  cdsPV.Open;
  cdsPV.EmptyDataSet;
  cdsPV.Close;
  cdsPV.Open;
end;

procedure TfrmListaPedidoImpNFe.localiza;
var
  filtro, ordem: string;
begin
  filtro := '';
  ordem := '';

  if vSql = '' then
    vSql := qryPV.SQL.Text;

  filtro := ' where vm.fkempresa='+
    Dados.qryEmpresaCODIGO.AsString+' and vm.situacao=''F'' ';

  filtro := filtro + ' and vm.data_emissao>=' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', strtodate(maskInicio.EditText))) +
    ' and vm.data_emissao<=' + QuotedStr(FormatDateTime('mm/dd/yyyy',
    strtodate(maskFim.EditText)));

  case idx of
    1:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and vm.codigo=' + edtLoc.Text;
      end;
    3:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and p.razao like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    4:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and c.descricao like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    5:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and v.nome like ' +
            QuotedStr(edtLoc.Text + '%');
      end;
    6:
      begin
        if (trim(edtLoc.Text) <> '') then
          filtro := filtro + ' and vm.total >= ' + StringReplace(edtLoc.Text,
            ',', '.', []);
      end;
  end;

  case idx of
    1:
      ordem := ' order by vm.codigo' + vOrdem;
    2:
      ordem := ' order by vm.data_emissao' + vOrdem;
    3:
      ordem := ' order by p.Razao' + vOrdem;
    4:
      ordem := ' order by c.Descricao' + vOrdem;
    5:
      ordem := ' order by v.nome' + vOrdem;
    6:
      ordem := ' order by vm.total' + vOrdem;
  end;

  qryPV.close;

  qryPV.SQL.Text := vSql;
  qryPV.SQL.Text := StringReplace(qryPV.SQL.Text, '/*where*/',
    filtro + ordem, [rfReplaceAll]);
  qryPV.Open;
  AlimentarCDS;
end;

procedure TfrmListaPedidoImpNFe.MostrarPanel(bMostrar: Boolean);
begin
  pnlAguarde.Visible  :=  bMostrar;
  if bMostrar then
    begin
      Cursor.ScreenCursor :=  gcrSQLWait;
      pnlAguarde.top := (self.Height div 2) - (pnlAguarde.height div 2);
      pnlAguarde.left := (self.Width div 2) - (pnlAguarde.width div 2);
    end
  else
    Cursor.ScreenCursor :=  gcrDefault;
  Application.ProcessMessages;
end;

procedure TfrmListaPedidoImpNFe.tamanho;
begin
  //Grid-Vendas
  DBGrid1.Columns[0].Width := round(Vendas.Width * 0.05);
  DBGrid1.Columns[1].Width := round(Vendas.Width * 0.10);
  DBGrid1.Columns[2].Width := round(Vendas.Width * 0.12);
  DBGrid1.Columns[3].Width := round(Vendas.Width * 0.30);
  DBGrid1.Columns[4].Width := round(Vendas.Width * 0.13);
  DBGrid1.Columns[5].Width := round(Vendas.Width * 0.13);
  DBGrid1.Columns[6].Width := round(Vendas.Width * 0.08);
  //Grid-Itens
  DBGrid2.Columns[0].Width := round(TabSheet2.Width * 0.05);
  DBGrid2.Columns[1].Width := round(TabSheet2.Width * 0.05);
  DBGrid2.Columns[2].Width := round(TabSheet2.Width * 0.40);
  DBGrid2.Columns[3].Width := round(TabSheet2.Width * 0.08);
  DBGrid2.Columns[4].Width := round(TabSheet2.Width * 0.08);
  DBGrid2.Columns[5].Width := round(TabSheet2.Width * 0.08);
  DBGrid2.Columns[6].Width := round(TabSheet2.Width * 0.08);
  DBGrid2.Columns[7].Width := round(TabSheet2.Width * 0.08);
  //Grid-FPG
  DBGrid3.Columns[0].Width := round(TabSheet1.Width * 0.05);
  DBGrid3.Columns[1].Width := round(TabSheet1.Width * 0.60);
  DBGrid3.Columns[2].Width := round(TabSheet1.Width * 0.25);
end;

end.
