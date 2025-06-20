unit uListaImport;

interface //Suporte e Vendas direto no Whatsapp (48)998463846

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, DateUtils;

type
  TfrmListaImport = class(TForm)
    Label1: TLabel;
    Grid: TDBGrid;
    btnImportar: TButton;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    cdsGridATIVO: TStringField;
    cdsGridCODIGO: TIntegerField;
    cdsGridDATA: TDateField;
    cdsGridCLIENTE: TStringField;
    cdsGridTOTAL: TFloatField;
    sb: TStatusBar;
    qryOS: TFDQuery;
    qryOSCODIGO: TIntegerField;
    qryOSDATA_INICIO: TDateField;
    qryOSHORA_INICIO: TTimeField;
    qryOSPREVISAO_ENTREGA: TDateField;
    qryOSDATA_TERMINO: TDateField;
    qryOSHORA_TERMINO: TTimeField;
    qryOSDATA_ENTREGA: TDateField;
    qryOSHORA_ENTREGA: TTimeField;
    qryOSFK_ATENDENDE: TIntegerField;
    qryOSPROBLEMA: TMemoField;
    qryOSOBSERVACOES: TMemoField;
    qryOSFK_EMPRESA: TIntegerField;
    qryOSFK_USUARIO: TIntegerField;
    qryOSDOCUMENTO: TStringField;
    qryOSNOME: TStringField;
    qryOSFONE1: TStringField;
    qryOSFONE2: TStringField;
    qryOSSITUACAO: TStringField;
    qryOSNUMERO_SERIE: TStringField;
    qryOSDESCRICAO: TStringField;
    qryOSMODELO: TStringField;
    qryOSMARCA: TStringField;
    qryOSANO: TIntegerField;
    qryOSPLACA: TStringField;
    qryOSKM: TFMTBCDField;
    qryOSENDERECO: TStringField;
    qryOSBAIRRO: TStringField;
    qryOSCIDADE: TStringField;
    qryOSUF: TStringField;
    qryOSDATA_EMISSAO: TDateField;
    qryOSNUMERO: TStringField;
    qryOSFK_CLIENTE: TIntegerField;
    qryOSNOME_TIME: TStringField;
    qryOSTIPO_SERVICO: TStringField;
    qryOSFK_TIPO_TECIDO: TIntegerField;
    qryOSFK_PRODUTO: TIntegerField;
    qryOSFOTO: TBlobField;
    qryOSDESCRICAO2: TStringField;
    qryOSAVISAR_REVISAO: TStringField;
    qryOSLAUDO: TMemoField;
    qryOSMODELO_VEICULO: TStringField;
    qryOSCATEGORIA_VEICULO: TStringField;
    qryOSMARCA_VEICULO: TStringField;
    qryOSANO_VEICULO: TIntegerField;
    qryOSCOR_VEICULO: TStringField;
    qryOSPLACA_VEICULO: TStringField;
    qryOSTIPO_COMBUSTIVEL_VEICULO: TStringField;
    qryOSCHASSI_VEICULO: TStringField;
    qryOSPROXIMA_REVISAO: TDateField;
    qryItemOS: TFDQuery;
    qryItemOSCODIGO: TIntegerField;
    qryItemOSFK_OS_MASTER: TIntegerField;
    qryItemOSFK_FUNCIONARIO: TIntegerField;
    qryItemOSFK_PRODUTO: TIntegerField;
    qryItemOSDATA_INICIO: TDateField;
    qryItemOSHORA_INICIO: TTimeField;
    qryItemOSDATA_TERMINO: TDateField;
    qryItemOSHORA_TERMINO: TTimeField;
    qryItemOSDISCRIMINACAO: TStringField;
    qryItemOSFK_USUARIO: TIntegerField;
    qryItemOSFK_EMPRESA: TIntegerField;
    qryItemOSTIPO: TStringField;
    qryItemOSSITUACAO: TStringField;
    qryItemOSCOR: TStringField;
    qryItemOSTAMANHO: TStringField;
    qryItemOSDETALHE: TStringField;
    qryItemOSNOME: TStringField;
    qryItemOSNUMERO: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtDTini: TDateTimePicker;
    edtDTfim: TDateTimePicker;
    btnBuscar: TSpeedButton;
    qryOrcamento: TFDQuery;
    qryOrcamentoCODIGO: TIntegerField;
    qryOrcamentoDATA: TDateField;
    qryOrcamentoFKVENDEDOR: TIntegerField;
    qryOrcamentoFK_CLIENTE: TIntegerField;
    qryOrcamentoCLIENTE: TStringField;
    qryOrcamentoTELEFONE: TStringField;
    qryOrcamentoCELULAR: TStringField;
    qryOrcamentoENDERECO: TStringField;
    qryOrcamentoNUMERO: TStringField;
    qryOrcamentoBAIRRO: TStringField;
    qryOrcamentoCIDADE: TStringField;
    qryOrcamentoUF: TStringField;
    qryOrcamentoCNPJ: TStringField;
    qryOrcamentoFORMA_PAGAMENTO: TStringField;
    qryOrcamentoVALIDADE: TSmallintField;
    qryOrcamentoOBS: TMemoField;
    qryOrcamentoSITUACAO: TStringField;
    qryOrcamentoTOTAL: TFMTBCDField;
    qryOrcamentoCEP: TStringField;
    qryOrcamentoFKEMPRESA: TIntegerField;
    qryOrcamentoSUBTOTAL: TFMTBCDField;
    qryOrcamentoPERCENTUAL: TFMTBCDField;
    qryOrcamentoDESCONTO: TFMTBCDField;
    qryItemO: TFDQuery;
    qryItemOCODIGO: TIntegerField;
    qryItemOFK_ORCAMENTO: TIntegerField;
    qryItemOFK_PRODUTO: TIntegerField;
    qryItemOQTD: TFMTBCDField;
    qryItemOPRECO: TFMTBCDField;
    qryItemOTOTAL: TFMTBCDField;
    qryItemOITEM: TSmallintField;
    qryOSQUANTIDADE: TIntegerField;
    qryOSENVIO_WHATS_STATUS: TIntegerField;
    qryOSPATH_PDF_WHATS: TStringField;
    qryOSNUMERO_WHATSAPP: TStringField;
    qryItemOSQTD: TFMTBCDField;
    qryItemOSPRECO: TBCDField;
    qryItemOSTOTAL: TBCDField;
    qryItemOSFK_GRADE: TIntegerField;
    qryOSSUBTOTAL: TFMTBCDField;
    qryOSSUBTOTAL_PECAS: TFMTBCDField;
    qryOSSUBTOTAL_SERVICOS: TFMTBCDField;
    qryOSVL_DESC_PECAS: TFMTBCDField;
    qryOSVL_DESC_SERVICOS: TFMTBCDField;
    qryOSDESC_PERC_PECAS: TFMTBCDField;
    qryOSDESC_PERC_SERVICOS: TFMTBCDField;
    qryOSTOTAL_SERVICOS: TBCDField;
    qryOSTOTAL_PRODUTOS: TBCDField;
    qryOSTOTAL_GERAL: TBCDField;
    procedure cdsGridATIVOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure GridCellClick(Column: TColumn);
    procedure GridColEnter(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    //procedure
    procedure LimparCDS;
    //function
  public
    { Public declarations }
  end;

var
  frmListaImport: TfrmListaImport;

implementation //Acesse lojadodesenvolvedor.com.br e saiba mais sobre esse código fonte.

{$R *.dfm}

uses Udados, uImportarNFe, uNFe;

procedure TfrmListaImport.btnBuscarClick(Sender: TObject);
begin
  frmListaImport.OnShow(Self);
end;

procedure TfrmListaImport.btnImportarClick(Sender: TObject);
var
  numero: string;
  vitem: integer;
  qtd: real;
begin
  case Tag of
    2:  //Orçamento
      begin
        with cdsGrid do
          begin
            Filtered := True;
            Filter := 'ATIVO='+QuotedStr('S');
            Filtered := True;
          end;
        if cdsGrid.RecordCount = 0 then
          begin
            ShowMessage('Nenhuma O.S. selecionada.');
            Exit;
          end
        else
          cdsGrid.IndexFieldNames := 'CODIGO';
        //Importar
        cdsGrid.First;
        qryOrcamento.Locate('CODIGO', cdsGridCODIGO.Value, []);
        //Passar dados para NFe
        if not(frmCadNFe.qryVenda.State in dsEditModes) then
          frmCadNFe.qryVenda.Edit;
        frmCadNFe.qryVendaFK_VENDEDOR.Value := qryOrcamentoFKVENDEDOR.Value;
        frmCadNFe.qryVendaID_CLIENTE.Value := qryOrcamentoFK_CLIENTE.Value;
        frmCadNFe.qryVenda.Post;
        //Limpar os Itens
        frmCadNFe.qryItem.First;
        while not frmCadNFe.qryItem.IsEmpty do
          frmCadNFe.qryItem.Delete;
        dados.Conexao.Commit;

        //Importar Itens
        while not cdsGrid.Eof do
          begin
            qryItemO.Close;
            qryItemO.Params[0].Value := cdsGridCODIGO.Value;
            qryItemO.Open;

            qryItemO.First;
            while not qryItemO.Eof do
              begin
                dados.qryConsulta.Close;
                dados.qryConsulta.SQL.Text :=
                  ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
                  + ' where ' + ' pr.codigo=:id ';
                dados.qryConsulta.Params[0].Value := qryItemOFK_PRODUTO.AsInteger;
                dados.qryConsulta.Open;
                qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

                frmCadNFe.qryItem.Last;
                vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
                frmCadNFe.qryItem.Append;
                frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
                  'CODIGO', 'N', '', '');
                frmCadNFe.qryItemID_PRODUTO.Value := qryItemOFK_PRODUTO.Value;
                frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
                frmCadNFe.qryItemITEM.Value := vitem;
                frmCadNFe.qryItemQTD.Value := qryItemOQTD.Value;
                frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
                  ('UNIDADE').AsString;
                frmCadNFe.qryItemPRECO.Value := qryItemOPRECO.Value;;
                frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
                  frmCadNFe.qryItemPRECO.AsFloat;

                frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
                  ('CODBARRA').AsString;

                frmCadNFe.qryItemEVENDA.AsString := 'S';

                frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat -
                  frmCadNFe.qryItemDESCONTO.AsFloat;
                frmCadNFe.qryItem.Post;
                dados.Conexao.Commit;
                qryItemO.Next;
              end;
            cdsGrid.Next;
          end;
        Application.ProcessMessages;
        ShowMessage('Importação realizada com sucesso!');
        Close;
      end;
    3:  //Venda
      begin

      end;
    4:  //Dev. Compra
      begin

      end;
    5:  //Dev. Venda
      begin

      end;
    6:  //O. S.
      begin
        //Testar se tem notas para importar
        with cdsGrid do
          begin
            Filtered := True;
            Filter := 'ATIVO='+QuotedStr('S');
            Filtered := True;
          end;
        if cdsGrid.RecordCount = 0 then
          begin
            ShowMessage('Nenhuma O.S. selecionada.');
            Exit;
          end
        else
          cdsGrid.IndexFieldNames := 'CODIGO';
        //Importar
        cdsGrid.First;
        qryOS.Locate('CODIGO', cdsGridCODIGO.Value, []);
        //Passar dados para NFe
        if not(frmCadNFe.qryVenda.State in dsEditModes) then
          frmCadNFe.qryVenda.Edit;
        numero := qryOSCODIGO.AsString;
        frmCadNFe.qryVendaFK_VENDEDOR.Value := qryOSFK_ATENDENDE.Value;
        frmCadNFe.qryVendaID_CLIENTE.Value := qryOSFK_CLIENTE.Value;
        frmCadNFe.qryVenda.Post;
        //Limpar os Itens
        frmCadNFe.qryItem.First;
        while not frmCadNFe.qryItem.IsEmpty do
          frmCadNFe.qryItem.Delete;
        dados.Conexao.Commit;

        //Importar Itens
        while not cdsGrid.Eof do
          begin
            qryItemOS.Close;
            qryItemOS.Params[0].Value := cdsGridCODIGO.Value;
            qryItemOS.Open;

            //Pegar Codigo da O.S.
            numero  :=  cdsGridCODIGO.AsString;

            qryItemOS.First;
            while not qryItemOS.Eof do
              begin
                dados.qryConsulta.Close;
                dados.qryConsulta.SQL.Text :=
                  ' select pr.codigo, pr.codbarra, pr.unidade, pr.cfop,  pr.ncm,  pr.qtd_atual from produto pr '
                  + ' where ' + ' pr.codigo=:id ';
                dados.qryConsulta.Params[0].Value := qryItemOSFK_PRODUTO.AsInteger;
                dados.qryConsulta.Open;
                qtd := dados.qryConsulta.FieldByName('QTD_ATUAL').AsFloat;

                frmCadNFe.qryItem.Last;
                vitem := frmCadNFe.qryItemITEM.AsInteger + 1;
                frmCadNFe.qryItem.Append;
                frmCadNFe.qryItemCODIGO.AsFloat := dados.Numerador('NFE_DETALHE',
                  'CODIGO', 'N', '', '');
                frmCadNFe.qryItemID_PRODUTO.Value := qryItemOSFK_PRODUTO.Value;
                frmCadNFe.qryItemFKNFE.Value := frmCadNFe.qryVendaCODIGO.Value;
                frmCadNFe.qryItemITEM.Value := vitem;
                frmCadNFe.qryItemQTD.Value := qryItemOSQTD.Value;
                frmCadNFe.qryItemUNIDADE.AsString := dados.qryConsulta.FieldByName
                  ('UNIDADE').AsString;
                frmCadNFe.qryItemPRECO.Value := qryItemOSPRECO.Value;;
                frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemQTD.AsFloat *
                  frmCadNFe.qryItemPRECO.AsFloat;

                frmCadNFe.qryItemCOD_BARRA.Value := dados.qryConsulta.FieldByName
                  ('CODBARRA').AsString;

                frmCadNFe.qryItemEVENDA.AsString := 'S';

                frmCadNFe.qryItemTOTAL.AsFloat := frmCadNFe.qryItemTOTAL.AsFloat -
                  frmCadNFe.qryItemDESCONTO.AsFloat;
                frmCadNFe.qryItem.Post;
                dados.Conexao.Commit;
                qryItemOS.Next;
              end;
            //Atualizar para importado status da O.S. - ws
            dados.qryConsulta.Close;
            dados.qryConsulta.SQL.Text :=
              'UPDATE OS_MASTER SET SITUACAO=''I'' WHERE CODIGO=:NUM';
            dados.qryConsulta.Params[0].AsString := numero;
            dados.qryConsulta.ExecSQL;

            cdsGrid.Next;
          end;

          {$REGION 'Atualizar Situação da O.S.'}
          {
          //Atualizar Situação da O.S.
          dados.qryConsulta.Close;
          dados.qryConsulta.SQL.Text :=
            'UPDATE OS_MASTER SET SITUACAO=''I'' WHERE CODIGO=:NUM';
          dados.qryConsulta.Params[0].AsString := numero;
          dados.qryConsulta.ExecSQL;
          }
          {$ENDREGION}
          Application.ProcessMessages;
          ShowMessage('Importação realizada com sucesso!');
        Close;
      end;
  end;
end;

procedure TfrmListaImport.cdsGridATIVOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := EmptyStr;
end;

procedure TfrmListaImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
end;

procedure TfrmListaImport.FormCreate(Sender: TObject);
begin
  //Alimentar Data
  edtDTini.Date :=  StartOfTheMonth(Date);
  edtDTfim.Date :=  Date;
end;

procedure TfrmListaImport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;
    VK_F5:
      frmListaImport.OnShow(Self);
  end;
end;

procedure TfrmListaImport.FormShow(Sender: TObject);
begin
  //Limpar
  LimparCDS;
  case Tag of
    2:  //Orçamento
      begin
        //Pesquisar
        qryOrcamento.Close;
        qryOrcamento.Params[0].Value :=  edtDTini.Date;
        qryOrcamento.Params[1].Value :=  edtDTfim.Date;
        qryOrcamento.Open;

        if qryOrcamento.IsEmpty then
          begin
            ShowMessage('Nenhuma Orçamento encontrada!');
            exit;
          end;

        //Inserir Grid
        qryOrcamento.First;
        while not qryOrcamento.Eof do
          begin
            cdsGrid.Append;
            cdsGridATIVO.Value    :=  'N';
            cdsGridCODIGO.Value   :=  qryOrcamentoCODIGO.Value;
            cdsGridDATA.Value     :=  qryOrcamentoDATA.Value;
            cdsGridCLIENTE.Value  :=  qryOrcamentoCLIENTE.Value;
            cdsGridTOTAL.AsFloat  :=  qryOrcamentoTOTAL.AsFloat;
            cdsGrid.Post;
            qryOrcamento.Next;
          end;
        cdsGrid.First;
      end;
    3:  //Venda
      begin

      end;
    4:  //Dev. Compra
      begin

      end;
    5:  //Dev. Venda
      begin

      end;
    6:  //O. S.
      begin
        //Pesquisar
        qryOS.Close;
        qryOS.Params[0].Value :=  edtDTini.Date;
        qryOS.Params[1].Value :=  edtDTfim.Date;
        qryOS.Open;

        if qryOS.IsEmpty then
          begin
            ShowMessage('Nenhuma O. S. encontrada!');
            exit;
          end;

        //Inserir Grid
        qryOS.First;
        while not qryOS.Eof do
          begin
            cdsGrid.Append;
            cdsGridATIVO.Value    :=  'N';
            cdsGridCODIGO.Value   :=  qryOSCODIGO.Value;
            cdsGridDATA.Value     :=  qryOSDATA_INICIO.Value;
            cdsGridCLIENTE.Value  :=  qryOSNOME.Value;
            cdsGridTOTAL.AsFloat  :=  qryOSTOTAL_GERAL.AsFloat;
            cdsGrid.Post;
            qryOS.Next;
          end;
        cdsGrid.First;
      end;
  end;
end;

procedure TfrmListaImport.GridCellClick(Column: TColumn);
var
  sValorColunaAtivo: string;
begin
  if AnsiUpperCase(Column.FieldName) = 'ATIVO' then
  begin
    if cdsGrid.FieldByName('Ativo').AsString = 'S' then
      sValorColunaAtivo := 'N'
    else
      sValorColunaAtivo := 'S';

    // edita o DataSet, alterna o status e grava os dados
    cdsGrid.Edit;
    cdsGrid.FieldByName('Ativo').AsString := sValorColunaAtivo;
    cdsGrid.Post;
  end;
end;

procedure TfrmListaImport.GridColEnter(Sender: TObject);
begin
  // controla a edição da célula
  if AnsiUpperCase(Grid.SelectedField.FieldName) = 'ATIVO' then
    Grid.Options := Grid.Options - [dgEditing]
  else
    Grid.Options := Grid.Options + [dgEditing];
end;

procedure TfrmListaImport.GridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nMarcar: word;
  oRetangulo: TRect;
begin
  // verifica se o registro está inativo
  if cdsGrid.FieldByName('Ativo').AsString = 'N' then
  begin
    // formata a linha em vermelho e itálico
    Grid.Canvas.Font.Style := [fsItalic];
    Grid.Canvas.Font.Color := clRed;

    // pinta a linha
    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if AnsiUpperCase(Column.FieldName) = 'ATIVO' then
  begin
    Grid.Canvas.FillRect(Rect);
    if Column.Field.AsString = 'S' then
      nMarcar := DFCS_CHECKED
    else
      nMarcar := DFCS_BUTTONCHECK;

    // ajusta o tamanho do CheckBox
    oRetangulo := Rect;
    InflateRect(oRetangulo,-2,-2);

    // desenha o CheckBox na célula conforme a condição acima
    DrawFrameControl(Grid.Canvas.Handle, oRetangulo, DFC_BUTTON, nMarcar);
  end;
end;

procedure TfrmListaImport.LimparCDS;
begin
  cdsGrid.Open;
  cdsGrid.EmptyDataSet;
  cdsGrid.Close;
  cdsGrid.Open;
end;

end.
