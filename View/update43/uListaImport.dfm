object frmListaImport: TfrmListaImport
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Listar Importa'#231#227'o'
  ClientHeight = 321
  ClientWidth = 576
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 576
    Height = 21
    Align = alTop
    Alignment = taCenter
    Caption = 'Selecione para importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 183
  end
  object Grid: TDBGrid
    Left = 0
    Top = 42
    Width = 576
    Height = 235
    Align = alClient
    DataSource = dsGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = GridCellClick
    OnColEnter = GridColEnter
    OnDrawColumnCell = GridDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = '      '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object btnImportar: TButton
    AlignWithMargins = True
    Left = 100
    Top = 277
    Width = 376
    Height = 25
    Margins.Left = 100
    Margins.Top = 0
    Margins.Right = 100
    Margins.Bottom = 0
    Align = alBottom
    Caption = 'Importar'
    TabOrder = 1
    OnClick = btnImportarClick
  end
  object sb: TStatusBar
    Left = 0
    Top = 302
    Width = 576
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '[ ESC ] Sair | [ F5 ] Atualizar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 21
    Width = 576
    Height = 21
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 1
      Width = 34
      Height = 19
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Inicio: '
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 146
      Top = 1
      Width = 21
      Height = 19
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Fim:'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object btnBuscar: TSpeedButton
      AlignWithMargins = True
      Left = 273
      Top = 1
      Width = 23
      Height = 19
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000900000011000000110000
        0009000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000093D332F8268524CF467514BF42E24
        21820000000A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000108B756CFFEBE8E7FFBAAFA9FF6F58
        50FF000000110000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000011877169FFE5E0DDFFBEB0A7FF715A
        53FF000000120000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000010846E67FFE4DDDAFFC2B4ABFF735C
        56FF000000110000000000000000000000000000000000000000000000000000
        000000000000000000000000000200000012836C64FFDDD5D0FFC2B4ACFF775F
        59FF000000140000000200000000000000000000000000000000000000000000
        000000000000000000030101010F34292681826B64FFD3CFCBFFBDB3AEFF7962
        5CFF2F2523830101011100000004000000010000000000000000000000000000
        0000000000040C0A092662524ACC8F786EFFA18D81FFAE9B8FFFAF9A8EFF9D87
        7AFF826A61FF554440CD0A080829000000050000000100000000000000000000
        0003120F0E2D7F6B63ECA69186FFBEB0A5FFCCC1B8FFBDACA1FFBEABA0FFB29E
        92FFA69082FF937B70FF6B5650ED0F0C0B310000000300000000000000010000
        00076E5E58C6AD9B90FFC4B7ADFFE5DFDAFFDBD5CDFFC9BBB1FFC3B1A6FFBCAB
        9FFFAF9B8EFFA69285FF937B6FFF574642C80000000A00000001000000022B25
        234EA49087FFC5B8ADFFE1DBD5FFF4F3F0FFE5E1DAFFCFC3B9FFC3B1A6FFC3B3
        A8FFB4A296FFAD998CFFA28C7FFF826A61FF211A19530000000300000004685C
        55A6B6A59AFFCEC4BBFFF2F0EDFFFCFCFBFFECEBE4FFD4C9C0FFC3B1A6FFC7B8
        AEFFB6A598FFAF9C8FFFA79284FF927A6DFF4E403CA900000006000000059E8C
        83ECC5B8AEFFE3DED8FFFCFAFAFFFDFCFBFFFCFBFAFFF8F8F5FFF6F3F0FFF2EE
        EBFFEAE4DFFFD8CEC6FFC5B6ACFFA18A7EFF77645DEB0000000800000004B19D
        94FFF0ECE9FFDCD5D2FFB6A8A4FF988681FF77615AFF7E6862FF89746CFF9580
        79FFB1A099FFC4B6B0FFD7CCC5FFDDD4CBFF87736BFE00000007000000023D35
        335CA8968DF0CCC0B9FFE3DBD6FFEFEBE7FFF1EEEAFFF4F0EEFFF1EDEAFFE8E1
        DCFFE0D7D1FFCEC2BAFFB3A39AFF8C7971F12F29266000000003000000000000
        00010807070F3E36335E695E579F897870CE8F7F77DDA49088FFA18D84FF8877
        70DD7D6C65CF5D514CA1352E2B60070606120000000300000000}
      OnClick = btnBuscarClick
      ExplicitLeft = 320
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object edtDTini: TDateTimePicker
      AlignWithMargins = True
      Left = 50
      Top = 1
      Width = 96
      Height = 19
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Date = 44031.000000000000000000
      Time = 0.532980081021378300
      TabOrder = 0
    end
    object edtDTfim: TDateTimePicker
      AlignWithMargins = True
      Left = 172
      Top = 1
      Width = 96
      Height = 19
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Date = 44031.000000000000000000
      Time = 0.533007118057867000
      TabOrder = 1
    end
  end
  object cdsGrid: TClientDataSet
    PersistDataPacket.Data = {
      7A0000009619E0BD0100000018000000050000000000030000007A0005415449
      564F010049000000010005574944544802000200010006434F4449474F040001
      00000000000444415441040006000000000007434C49454E5445010049000000
      010005574944544802000200320005544F54414C08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 248
    object cdsGridATIVO: TStringField
      FieldName = 'ATIVO'
      OnGetText = cdsGridATIVOGetText
      Size = 1
    end
    object cdsGridCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsGridDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsGridCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object cdsGridTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 536
    Top = 248
  end
  object qryOS: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from os_master'
      'where'
      '(data_inicio between :dt_ini and :dt_fim) and'
      '(situacao='#39'F'#39')')
    Left = 536
    Top = 152
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOSDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
      Required = True
    end
    object qryOSHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
      Required = True
    end
    object qryOSPREVISAO_ENTREGA: TDateField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = 'PREVISAO_ENTREGA'
    end
    object qryOSDATA_TERMINO: TDateField
      FieldName = 'DATA_TERMINO'
      Origin = 'DATA_TERMINO'
    end
    object qryOSHORA_TERMINO: TTimeField
      FieldName = 'HORA_TERMINO'
      Origin = 'HORA_TERMINO'
    end
    object qryOSDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object qryOSHORA_ENTREGA: TTimeField
      FieldName = 'HORA_ENTREGA'
      Origin = 'HORA_ENTREGA'
    end
    object qryOSFK_ATENDENDE: TIntegerField
      FieldName = 'FK_ATENDENDE'
      Origin = 'FK_ATENDENDE'
    end
    object qryOSPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      BlobType = ftMemo
    end
    object qryOSOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryOSFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryOSFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryOSDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object qryOSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryOSFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryOSFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryOSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryOSNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Origin = 'NUMERO_SERIE'
      Size = 30
    end
    object qryOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qryOSMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object qryOSMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object qryOSANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object qryOSPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryOSKM: TFMTBCDField
      FieldName = 'KM'
      Origin = 'KM'
      Precision = 18
      Size = 2
    end
    object qryOSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryOSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryOSCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryOSUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 50
    end
    object qryOSDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryOSNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryOSFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryOSNOME_TIME: TStringField
      FieldName = 'NOME_TIME'
      Origin = 'NOME_TIME'
      Size = 50
    end
    object qryOSTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      Origin = 'TIPO_SERVICO'
      Size = 100
    end
    object qryOSFK_TIPO_TECIDO: TIntegerField
      FieldName = 'FK_TIPO_TECIDO'
      Origin = 'FK_TIPO_TECIDO'
    end
    object qryOSFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryOSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryOSDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Origin = 'DESCRICAO2'
      Size = 60
    end
    object qryOSAVISAR_REVISAO: TStringField
      FieldName = 'AVISAR_REVISAO'
      Origin = 'AVISAR_REVISAO'
      Size = 1
    end
    object qryOSLAUDO: TMemoField
      FieldName = 'LAUDO'
      Origin = 'LAUDO'
      BlobType = ftMemo
    end
    object qryOSMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Origin = 'MODELO_VEICULO'
      Size = 250
    end
    object qryOSCATEGORIA_VEICULO: TStringField
      FieldName = 'CATEGORIA_VEICULO'
      Origin = 'CATEGORIA_VEICULO'
      Size = 100
    end
    object qryOSMARCA_VEICULO: TStringField
      FieldName = 'MARCA_VEICULO'
      Origin = 'MARCA_VEICULO'
      Size = 100
    end
    object qryOSANO_VEICULO: TIntegerField
      FieldName = 'ANO_VEICULO'
      Origin = 'ANO_VEICULO'
    end
    object qryOSCOR_VEICULO: TStringField
      FieldName = 'COR_VEICULO'
      Origin = 'COR_VEICULO'
      Size = 50
    end
    object qryOSPLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Origin = 'PLACA_VEICULO'
      Size = 10
    end
    object qryOSTIPO_COMBUSTIVEL_VEICULO: TStringField
      FieldName = 'TIPO_COMBUSTIVEL_VEICULO'
      Origin = 'TIPO_COMBUSTIVEL_VEICULO'
    end
    object qryOSCHASSI_VEICULO: TStringField
      FieldName = 'CHASSI_VEICULO'
      Origin = 'CHASSI_VEICULO'
      Size = 150
    end
    object qryOSPROXIMA_REVISAO: TDateField
      FieldName = 'PROXIMA_REVISAO'
      Origin = 'PROXIMA_REVISAO'
    end
    object qryOSQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qryOSENVIO_WHATS_STATUS: TIntegerField
      FieldName = 'ENVIO_WHATS_STATUS'
      Origin = 'ENVIO_WHATS_STATUS'
    end
    object qryOSPATH_PDF_WHATS: TStringField
      FieldName = 'PATH_PDF_WHATS'
      Origin = 'PATH_PDF_WHATS'
      Size = 500
    end
    object qryOSNUMERO_WHATSAPP: TStringField
      FieldName = 'NUMERO_WHATSAPP'
      Origin = 'NUMERO_WHATSAPP'
      Size = 30
    end
    object qryOSSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryOSSUBTOTAL_PECAS: TFMTBCDField
      FieldName = 'SUBTOTAL_PECAS'
      Origin = 'SUBTOTAL_PECAS'
      Precision = 18
      Size = 2
    end
    object qryOSSUBTOTAL_SERVICOS: TFMTBCDField
      FieldName = 'SUBTOTAL_SERVICOS'
      Origin = 'SUBTOTAL_SERVICOS'
      Precision = 18
      Size = 2
    end
    object qryOSVL_DESC_PECAS: TFMTBCDField
      FieldName = 'VL_DESC_PECAS'
      Origin = 'VL_DESC_PECAS'
      Precision = 18
      Size = 2
    end
    object qryOSVL_DESC_SERVICOS: TFMTBCDField
      FieldName = 'VL_DESC_SERVICOS'
      Origin = 'VL_DESC_SERVICOS'
      Precision = 18
      Size = 2
    end
    object qryOSDESC_PERC_PECAS: TFMTBCDField
      FieldName = 'DESC_PERC_PECAS'
      Origin = 'DESC_PERC_PECAS'
      Precision = 18
      Size = 2
    end
    object qryOSDESC_PERC_SERVICOS: TFMTBCDField
      FieldName = 'DESC_PERC_SERVICOS'
      Origin = 'DESC_PERC_SERVICOS'
      Precision = 18
      Size = 2
    end
    object qryOSTOTAL_SERVICOS: TBCDField
      FieldName = 'TOTAL_SERVICOS'
      Origin = 'TOTAL_SERVICOS'
      Precision = 18
    end
    object qryOSTOTAL_PRODUTOS: TBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      Precision = 18
    end
    object qryOSTOTAL_GERAL: TBCDField
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
      Precision = 18
    end
  end
  object qryItemOS: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from os_detalhe'
      'where'
      'fk_os_master=:codigo')
    Left = 536
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemOSFK_OS_MASTER: TIntegerField
      FieldName = 'FK_OS_MASTER'
      Origin = 'FK_OS_MASTER'
      Required = True
    end
    object qryItemOSFK_FUNCIONARIO: TIntegerField
      FieldName = 'FK_FUNCIONARIO'
      Origin = 'FK_FUNCIONARIO'
      Required = True
    end
    object qryItemOSFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryItemOSDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object qryItemOSHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      Origin = 'HORA_INICIO'
    end
    object qryItemOSDATA_TERMINO: TDateField
      FieldName = 'DATA_TERMINO'
      Origin = 'DATA_TERMINO'
    end
    object qryItemOSHORA_TERMINO: TTimeField
      FieldName = 'HORA_TERMINO'
      Origin = 'HORA_TERMINO'
    end
    object qryItemOSDISCRIMINACAO: TStringField
      FieldName = 'DISCRIMINACAO'
      Origin = 'DISCRIMINACAO'
      Size = 50
    end
    object qryItemOSFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryItemOSFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryItemOSTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryItemOSSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryItemOSCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 30
    end
    object qryItemOSTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 10
    end
    object qryItemOSDETALHE: TStringField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      Size = 30
    end
    object qryItemOSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object qryItemOSNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryItemOSQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItemOSPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
    end
    object qryItemOSTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object qryItemOSFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
  end
  object qryOrcamento: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from orcamento'
      'where'
      '(data between :ini and :fim) and'
      '(situacao='#39'F'#39')')
    Left = 480
    Top = 152
    ParamData = <
      item
        Name = 'INI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryOrcamentoFKVENDEDOR: TIntegerField
      FieldName = 'FKVENDEDOR'
      Origin = 'FKVENDEDOR'
    end
    object qryOrcamentoFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryOrcamentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qryOrcamentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object qryOrcamentoCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 13
    end
    object qryOrcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryOrcamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryOrcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryOrcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryOrcamentoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryOrcamentoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryOrcamentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 60
    end
    object qryOrcamentoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qryOrcamentoOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryOrcamentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryOrcamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryOrcamentoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryOrcamentoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object qryItemO: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from ORCAMENTO_ITEM'
      'where'
      'fk_orcamento=:codigo')
    Left = 480
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemOFK_ORCAMENTO: TIntegerField
      FieldName = 'FK_ORCAMENTO'
      Origin = 'FK_ORCAMENTO'
      Required = True
    end
    object qryItemOFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryItemOQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItemOPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryItemOTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryItemOITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
  end
end
