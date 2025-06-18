unit uCadRota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  DBGridEh, Vcl.Samples.Spin, DBCtrlsEh, DBLookupEh, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh;

type
  TfrmCadRota = class(TForm)
    Panel2: TPanel;
    cxSair: TcxButton;
    cxGravar: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dataSaida: TDBEdit;
    dataChegada: TDBEdit;
    kmFinal: TDBEdit;
    dsRota: TDataSource;
    dsVeiculosCavalo: TDataSource;
    veiculo: TDBLookupComboboxEh;
    EditDescricaoVeiculo: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    horaSaida: TDBEdit;
    horaChegada: TDBEdit;
    kmInicial: TDBEdit;
    observacao: TDBMemoEh;
    status: TDBComboBox;
    dsRotaParadas: TDataSource;
    qryOrigem: TFDQuery;
    qryOrigemENDERECO_COMPLETO: TStringField;
    origem: TDBLookupComboboxEh;
    destino: TDBLookupComboboxEh;
    dsOrigem: TDataSource;
    qryDestinoFinal: TFDQuery;
    StringField1: TStringField;
    dsDestinoFinal: TDataSource;
    PageControlDados: TPageControl;
    TabSheetFin: TTabSheet;
    PageControlFin: TPageControl;
    TabSheetFinLista: TTabSheet;
    TabSheetFinDados: TTabSheet;
    panelItens: TPanel;
    SpeedButtonAddItem: TSpeedButton;
    SpeedButtonRemoverItem: TSpeedButton;
    DBGridEh2: TDBGridEh;
    dsRotaFin: TDataSource;
    dsRotasDespesas: TDataSource;
    panelFotterAddItens: TPanel;
    SpeedButtonSalvarItem: TSpeedButton;
    SpeedButtonCancelarItem: TSpeedButton;
    Label8: TLabel;
    TipoDesp: TDBLookupComboboxEh;
    Label13: TLabel;
    Label14: TLabel;
    ValorDesp: TDBEdit;
    VencDesp: TDBEdit;
    Label15: TLabel;
    DBMemoEh1: TDBMemoEh;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    DescDesp: TDBEdit;
    dsTipoDesp: TDataSource;
    SaveDialog: TSaveDialog;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    procedure veiculoChange(Sender: TObject);
    procedure cxGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsRotaStateChange(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure SpeedButtonAddItemClick(Sender: TObject);
    procedure SpeedButtonSalvarItemClick(Sender: TObject);
    procedure SpeedButtonCancelarItemClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRota: TfrmCadRota;

implementation

{$R *.dfm}

uses Udados;

procedure TfrmCadRota.cxGravarClick(Sender: TObject);
begin

  if Dados.qryRotaKM_INICIAL.Value = '' then
  begin
    ShowMessage('É necessário informar o KM inicial.');
    kmInicial.SetFocus;
    Exit;
  end;

  if Dados.qryRotaKM_FINAL.Value = '' then
  begin
    ShowMessage('É necessário informar o KM Final.');
    kmFinal.SetFocus;
    Exit;
  end;

  if Dados.qryRotaORIGEM.Value = '' then
  begin
    ShowMessage('É necessário informar a origem.');
    origem.SetFocus;
    Exit;
  end;

  if Dados.qryRota.State in [dsInsert, dsEdit] then
  begin
    Dados.qryRota.Post;
    Dados.Conexao.CommitRetaining;
  end;

  ShowMessage('Rota Salva com sucesso!');

  Dados.qryRota.Close;
  Dados.qryRota.Open;

  Close;
end;

procedure TfrmCadRota.cxSairClick(Sender: TObject);
begin
  Dados.qryRota.Cancel;

  Dados.qryRota.Close;
  Dados.qryRota.Open;
  Close;
end;

procedure TfrmCadRota.DBGridEh2DblClick(Sender: TObject);
begin
  if Dados.qryRotaDespesas.IsEmpty then
    exit;

  PageControlFin.ActivePage := TabSheetFinDados;
  Dados.qryRotaDespesas.edit;
  TipoDesp.SetFocus;
end;

procedure TfrmCadRota.veiculoChange(Sender: TObject);
begin
  EditDescricaoVeiculo.Text := Dados.qryVeiculos_cavaloDESCRICAO.Value;
end;

procedure TfrmCadRota.dsRotaStateChange(Sender: TObject);
begin
  Dados.qryRotaParadas.Close;
  Dados.qryRotaParadas.Params[0].Value := Dados.qryRotaCODIGO.Value;
  Dados.qryRotaParadas.Open;

  Dados.qryRotaDespesas.Close;
  Dados.qryRotaDespesas.Params[0].Value := Dados.qryRotaCODIGO.Value;
  Dados.qryRotaDespesas.Open;
end;

procedure TfrmCadRota.FormShow(Sender: TObject);
begin
  if Dados.qryRota.State in [dsInsert] then
  begin
    status.Text               := 'PLANEJAMENTO';
    Dados.qryRotaSTATUS.Value := 'PLANEJAMENTO';
    EditDescricaoVeiculo.Text := '';
  end;

  Dados.qryVeiculos_cavalo.Close;
  Dados.qryVeiculos_cavalo.Open;

  Dados.qryRotaParadas.Close;
  Dados.qryRotaParadas.Open;

  qryOrigem.Close;
  qryOrigem.Open;

  qryDestinoFinal.Close;
  qryDestinoFinal.Open;

  Dados.qryRotaDespesas.Close;
  Dados.qryRotaDespesas.Open;

  Dados.qryRotaTipoDespesa.Close;
  Dados.qryRotaTipoDespesa.Open;

  PageControlFin.ActivePage := TabSheetFinLista;
end;

procedure TfrmCadRota.SpeedButton1Click(Sender: TObject);
var
  FileStream: TFileStream;
  BlobField: TBlobField;
begin
  if OpenDialog.Execute then
  begin
    // Certifique-se de estar em modo edição
    if not (Dados.qryRotaDespesas.State in [dsEdit, dsInsert]) then
      Dados.qryRotaDespesas.Edit;

    FileStream := TFileStream.Create(OpenDialog.FileName, fmOpenRead or fmShareDenyWrite);
    try
      BlobField := Dados.qryRotaDespesas.FieldByName('COMPROVANTE_DOC') as TBlobField;
      BlobField.LoadFromStream(FileStream);
    finally
      FileStream.Free;
    end;
  end;
end;


procedure TfrmCadRota.SpeedButton2Click(Sender: TObject);
var
  BlobStream: TStream;
  FileStream: TFileStream;
  FileName: string;
begin
  if not Dados.qryRotaDespesasCOMPROVANTE_DOC.IsNull then
  begin
    SaveDialog.Title := 'Salvar comprovante como';
    SaveDialog.Filter := 'Todos os arquivos (*.*)|*.*';

    // Sugestão de nome (se houver campo com nome original)
    if Dados.qryRotaDespesas.FindField('DESCRICAO') <> nil then
      SaveDialog.FileName := Dados.qryRotaDespesas.FieldByName('DESCRICAO').AsString
    else
      SaveDialog.FileName := 'comprovante_' + Dados.qryRotaDespesasCODIGO.AsString + '.pdf';

    if SaveDialog.Execute then
    begin
      BlobStream := Dados.qryRotaDespesas.CreateBlobStream(Dados.qryRotaDespesasCOMPROVANTE_DOC, bmRead);
      try
        FileName := SaveDialog.FileName;
        FileStream := TFileStream.Create(FileName, fmCreate);
        try
          FileStream.CopyFrom(BlobStream, BlobStream.Size);
          ShowMessage('Comprovante salvo com sucesso em:' + sLineBreak + FileName);
        finally
          FileStream.Free;
        end;
      finally
        BlobStream.Free;
      end;
    end;
  end
  else
    ShowMessage('Nenhum comprovante encontrado para este registro.');
end;

procedure TfrmCadRota.SpeedButtonAddItemClick(Sender: TObject);
begin
  if (Dados.qryRotaCODIGO.Value = 0) then
  begin
    if MessageDlg('É necessário salvar os dados já preenchidos antes de incluir um ítem. Deseja salvar as alterações?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      if Dados.qryRota.State in [dsInsert, dsEdit] then
      begin
        if Dados.qryRotaKM_INICIAL.Value = '' then
        begin
          ShowMessage('É necessário informar o KM inicial.');
          kmInicial.SetFocus;
          Exit;
        end;

        if Dados.qryRotaKM_FINAL.Value = '' then
        begin
          ShowMessage('É necessário informar o KM Final.');
          kmFinal.SetFocus;
          Exit;
        end;

        if Dados.qryRotaORIGEM.Value = '' then
        begin
          ShowMessage('É necessário informar a origem.');
          origem.SetFocus;
          Exit;
        end;

        Dados.qryRota.Post;
        Dados.Conexao.CommitRetaining;

        Dados.qryRota.Close;
        Dados.qryRota.Open;
      end;

      Dados.qryRota.Edit;

    end
    else
    begin
      veiculo.SetFocus;
      Exit;
    end;
  end;

  veiculo.SetFocus;

  Dados.qryRotaDespesas.Insert;
  PageControlFin.ActivePage := TabSheetFinDados;
  cxGravar.Enabled          := False;

  TipoDesp.SetFocus;
end;

procedure TfrmCadRota.SpeedButtonCancelarItemClick(Sender: TObject);
begin
  Dados.qryRotaTipoDespesa.Cancel;

  cxGravar.Enabled          := True;
  PageControlFin.ActivePage := TabSheetFinLista;
end;

procedure TfrmCadRota.SpeedButtonSalvarItemClick(Sender: TObject);
begin
  if Dados.qryRotaDespesasTIPO_DESPESA_CODIGO.AsString = '' then
  begin
    ShowMessage('É necessário informar o tipo da Despesa.');
    TipoDesp.SetFocus;
    Exit;
  end;

  if Dados.qryRotaDespesasDESCRICAO.Value = '' then
  begin
    ShowMessage('É necessário informar a descrição da Despesa.');
    DescDesp.SetFocus;
    Exit;
  end;

  if Dados.qryRotaDespesasDATA_VENCIMENTO.AsString = '' then
  begin
    ShowMessage('É necessário informar a data de vencimento da Despesa.');
    VencDesp.SetFocus;
    Exit;
  end;

  if Dados.qryRotaDespesasVALOR.AsString = '' then
  begin
    ShowMessage('É necessário informar 0 valor da Despesa.');
    ValorDesp.SetFocus;
    Exit;
  end;

  Dados.qryRotaDespesasROTA_CODIGO.Value := Dados.qryRotaCODIGO.Value;

  Dados.qryRotaDespesas.Post;
  Dados.Conexao.CommitRetaining;

  Dados.qryRotaDespesas.Close;
  Dados.qryRotaDespesas.Params[0].Value := Dados.qryRotaCODIGO.Value;
  Dados.qryRotaDespesas.Open;

  cxGravar.Enabled          := True;
  PageControlFin.ActivePage := TabSheetFinLista;
end;

end.
