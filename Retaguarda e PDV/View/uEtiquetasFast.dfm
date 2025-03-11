object frmEtiquetasFast: TfrmEtiquetasFast
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 584
  ClientWidth = 714
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Label4: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 142
    Width = 708
    Height = 13
    Margins.Bottom = 0
    Align = alTop
    Caption = '[F3] - Pesquisar'
    ExplicitWidth = 77
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 565
    Width = 714
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Sair [ ESC ]'
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 708
    Height = 107
    Align = alTop
    Caption = 'Parametros'
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 15
      Width = 112
      Height = 13
      Caption = 'Modelos de Etiquetas'
    end
    object Label2: TLabel
      Left = 174
      Top = 15
      Width = 61
      Height = 13
      Caption = 'Impressoras'
    end
    object Label3: TLabel
      Left = 525
      Top = 15
      Width = 104
      Height = 13
      Caption = '[F4] - Qtde Etiquetas'
    end
    object Label5: TLabel
      Left = 389
      Top = 59
      Width = 103
      Height = 13
      Caption = '[CTRL + P] - Imprimir'
    end
    object cbModeloEtq: TComboBox
      Left = 9
      Top = 30
      Width = 159
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'Etiqueta 21'
        'Etiqueta 33'
        'Etiqueta 65'
        'Etiqueta Argox 20x40'
        'Etiqueta Argox 22x33'
        'Etiqueta Argox 30x50'
        'Etiqueta Argox 70x50'
        'Etiqueta Argox 105x12'
        'Etiqueta Argox 115x35'
        'Etiqueta Vertica l74x42'
        'Etiqueta Zebra 105x60'
        'etiqueta_gondula'
        'etiqueta 30'
        'etiqueta 60'
        'etiqueta 80')
    end
    object rgTipoBusca: TRadioGroup
      Left = 9
      Top = 53
      Width = 345
      Height = 43
      Caption = '[F2] - Tipo de Busca'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo de Barras'
        'C'#243'digo'
        'Descri'#231#227'o')
      TabOrder = 1
      OnClick = rgTipoBuscaClick
    end
    object btnLimpar: TButton
      Left = 525
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnLimparClick
    end
    object btnImprimir: TButton
      Left = 607
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object chkVisualizar: TCheckBox
      Left = 374
      Top = 78
      Width = 131
      Height = 17
      Caption = 'Visualizar Impress'#227'o'
      TabOrder = 4
    end
    object cbImpressoras: TComboBox
      Left = 174
      Top = 30
      Width = 345
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
    object edtQtdeEtq: TSpinEdit
      Left = 525
      Top = 30
      Width = 124
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 6
      Value = 1
      OnKeyDown = edtQtdeEtqKeyDown
    end
  end
  object edtBusca: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 118
    Width = 708
    Height = 21
    Margins.Top = 5
    Margins.Bottom = 0
    Align = alTop
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = edtBuscaChange
    OnEnter = edtBuscaEnter
    OnKeyDown = edtBuscaKeyDown
    OnKeyPress = edtBuscaKeyPress
  end
  object gridBusca: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 160
    Width = 708
    Height = 184
    Margins.Top = 5
    Align = alTop
    DataSource = dsBusca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = gridBuscaDblClick
    OnKeyDown = gridBuscaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'd.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'C'#243'd. Barras'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PR_VENDA'
        Title.Caption = 'Valor'
        Width = 115
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 350
    Width = 708
    Height = 212
    Align = alClient
    Caption = 'Produtos a Serem Impressos'
    TabOrder = 4
    object gridProdutos: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 15
      Width = 698
      Height = 192
      Margins.Top = 0
      Align = alClient
      DataSource = dsProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = gridProdutosDblClick
    end
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40085.701364826400000000
    ReportOptions.LastChange = 44692.869699768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure BarCode1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 331
    Top = 411
    Datasets = <
      item
        DataSet = frxDBProduto
        DataSetName = 'frxDBProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 63.300000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.370130000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 4
        ColumnWidth = 184.440944881890000000
        ColumnGap = 5.669291338582680000
        DataSet = frxDBProduto
        DataSetName = 'frxDBProduto'
        RowCount = 0
        object frxDBDataset1DESCRICAO_REDUZIDA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBProduto."DESCRICAO"]')
          ParentFont = False
        end
        object frxDSEMB_VENDA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 50.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd.: [frxDBProduto."CODIGO"] - [frxDBProduto."UNIDADE"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxDSPreco_Venda: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 50.472480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDS'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBProduto."PR_VENDA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 28.126005000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cole'#231#227'o: [frxDBProduto."COLECAO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBProduto: TfrxDBDataset
    UserName = 'frxDBProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PR_VENDA=PR_VENDA'
      'DESCRICAO=DESCRICAO'
      'PRECO_ATACADO=PRECO_ATACADO'
      'REFERENCIA=REFERENCIA'
      'APLICACAO=APLICACAO'
      'DESC_GRUPO=DESC_GRUPO'
      'DESC_MARCA=DESC_MARCA'
      'UNIDADE=UNIDADE'
      'COLECAO=COLECAO')
    DataSet = cdsProduto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 226
    Top = 219
  end
  object qryProdutos: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select p.*, g.descricao desc_grupo, m.descricao desc_marca from ' +
        'produto p'
      'left join grupo g on p.grupo=g.codigo'
      'left join marca m on p.fk_marca=m.codigo'
      '/*where*/')
    Left = 382
    Top = 211
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdutosPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryProdutosDESC_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosDESC_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 120
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object cdsProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object cdsProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object cdsProdutoDESC_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 35
    end
    object cdsProdutoDESC_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 35
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object cdsProdutoCOLECAO: TStringField
      FieldName = 'COLECAO'
    end
  end
  object dsBusca: TDataSource
    DataSet = qryProdutos
    Left = 480
    Top = 120
  end
  object dsProdutos: TDataSource
    DataSet = cdsProduto
    Left = 568
    Top = 120
  end
end
