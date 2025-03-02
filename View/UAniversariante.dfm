object FrmAniversariante: TFrmAniversariante
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Rela'#231#227'o Aniversariantes'
  ClientHeight = 363
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 703
    object GroupBox1: TGroupBox
      Left = 1
      Top = 0
      Width = 280
      Height = 67
      Caption = 'Filtrar'
      TabOrder = 0
      object btnFiltrar: TBitBtn
        Left = 176
        Top = 35
        Width = 83
        Height = 25
        Caption = 'Filtrar Per'#237'odo'
        TabOrder = 2
        OnClick = btnFiltrarClick
      end
      object maskFim: TMaskEdit
        Left = 95
        Top = 37
        Width = 75
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object maskInicio: TMaskEdit
        Left = 15
        Top = 37
        Width = 74
        Height = 21
        Color = clWhite
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object ChkPeriodo: TCheckBox
        Left = 15
        Top = 17
        Width = 121
        Height = 17
        TabStop = False
        Caption = 'Informar Per'#237'odo'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 287
      Top = 0
      Width = 185
      Height = 67
      Caption = 'Ordenar por:'
      TabOrder = 1
      object combocons: TComboBox
        Left = 21
        Top = 27
        Width = 153
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nome'
        Items.Strings = (
          'Nome'
          'C'#243'digo'
          'Dt. Nascimento')
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 277
    Width = 705
    Height = 86
    Align = alBottom
    Color = 15724527
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 273
    ExplicitWidth = 703
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 432
      Height = 84
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnImp: TSpeedButton
        Left = 0
        Top = 0
        Width = 85
        Height = 84
        Align = alLeft
        Caption = 'F4 | Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000040000
          0005000000050000000500000005000000050000000500000006000000060000
          0006000000060000000600000006000000060000000600000006000000040000
          0002000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000050000000A0000000F0000
          0011000000120000001200000013000000130000001400000014000000140000
          00150000001500000016000000160000001600000016000000140000000F0000
          0007000000020000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000030000000A7A5A4DC2A57867FFA577
          67FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA37363FFA273
          63FFA27262FFA17262FFA17262FFA17162FFA17161FFA07160FF775347C50000
          000F000000040000000200000001000000010000000100000000000000010000
          00030000000600000007000000090000000C00000014A97C6BFFF8F1EDFFF8F0
          EDFFF7F0EDFFF7F0EDFFF7F0EBFFF6EFEBFFF6EEE8FFF5EDE8FFF5EDE8FFF5EC
          E7FFF6EDE7FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFA27363FF0000
          001B0000000F0000000C0000000A000000080000000500000002000000050000
          000F000000190000001F00000021000000250000002EAC8070FFF9F3EFFFDFB1
          77FFDFAF77FFDFAE76FFDEAE76FFDEAE74FFDCA76DFFDAA465FFDAA265FFDAA1
          64FFDAA063FFD9A062FFD89F61FFD99E5FFFD89D5FFFF6EDE7FFA37565FF0000
          003B0000002E0000002A000000280000002100000014000000070000000E2D1F
          1B618E6454EC9B6C5CFF9B6B5CFF976958FF8F6251FF996C5AFFF9F5F2FFE1B4
          7EFFE5BD89FFE5BD88FFE4BC88FFE5BB86FFE4B982FFE0AF74FFE0AF73FFDFAE
          73FFDFAD72FFDFAC70FFDFAB6EFFDEAA6CFFD89E5FFFF6EEE9FF905F50FF7B4D
          3EFF855444FF865645FF855545FF784D3EEE2517136A0000001400000016986E
          5FF0C39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFD0B8A5FFA87B6BFFFAF6F3FFE3B9
          84FFE7C290FFE8C18FFFE8C08EFFE7C08CFFE7BE8BFFE2B47BFFE1B176FFE1B0
          75FFDFAF74FFDFAE72FFDFAD70FFDEAC6FFFD99F61FFF6F0EAFF9E705FFFCAB2
          A0FFD7C0B0FFDBC4B3FFC8A695FFBE9A88FF926656F10000002000000019A67A
          69FFC8A797FFCDAF9EFFDFCABBFFDBC4B4FFE0CFC3FFAB7F6FFFFBF7F5FFE5BE
          8AFFE9C595FFE9C596FFE9C495FFE9C493FFE8C392FFE5BC86FFE1B379FFE1B2
          77FFE0B076FFE0B074FFE0AE72FFDFAD70FFD9A062FFF8F1ECFFA07363FFDACA
          BEFFD9C3B4FFDEC8B9FFC9AA99FFC4A291FF9E6E5DFF0000002500000019A87B
          6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA47E6DFFA57666FFFBF9F6FFE8C1
          90FFEBC99CFFEBC99BFFEAC99CFFEAC89AFFE9C799FFE8C595FFE2B57BFFE2B4
          7AFFE1B378FFE0B175FFDFAF74FFDFAD71FFDAA063FFF8F2EEFF986B5AFFA17B
          6BFFDEC9BBFFE1CDBFFFCCAE9FFFC7A595FFA0705FFF0000002600000018AA7E
          6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A4836FF7A48
          35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
          36FF7A4836FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF966C
          5BFFE5D2C6FFE5D3C6FFCFB3A5FFCAAA9BFFA07261FF0000002500000016AC80
          6FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
          CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
          CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFE8DACFFFE8D9
          CFFFE8DACFFFE8D9CEFFD2B9ABFFCCB0A1FFA27363FF0000002300000015AE82
          72FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0D8FFECE0
          D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
          D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
          D8FFECE0D7FFECE0D7FFD6BEB3FFCFB4A8FFA37564FF0000002200000014AF84
          74FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF0E7E0FFF0E7E0FFF0E7DFFFF0E7
          DFFFF0E7E0FFF0E7E0FFF0E7DFFFF0E7DFFFF0E7E0FFF0E7DFFFF0E7E0FFF0E7
          E0FFF0E7E0FFF0E6E0FFF0E6E0FFF0E7DFFFF0E7E0FFF0E6DFFFF0E7E0FFF0E7
          DFFFF0E7E0FFF0E7DFFFDAC4BBFFD3BAB0FFA47666FF0000002000000012B289
          78FFDCC7BEFFE1D0C8FFF6F1ECFFF4EDE8FFF5EEE9FFF7F3EFFFF9F5F2FFF9F6
          F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
          F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F5F2FFF7F3EFFFF5EE
          E9FFF4EDE7FFF4EDE7FFDDCAC2FFD7C0B6FFA77B6AFF0000001F00000010B68D
          7DFFDFCCC4FFE4D5CEFFF9F5F2FFF8F3EFFFEAE4E1FF8C7A73FF664D45FF553C
          32FF553A32FF553B32FF543A31FF543A32FF543931FF543931FF533930FF5339
          30FF523930FF523830FF523830FF52372FFF51372EFF614942FF897770FFE9E3
          E0FFF8F3EFFFF7F2EEFFE0CFC7FFDAC5BCFFAB7F6FFF0000001D0000000FB992
          81FFE2D1CBFFE8DAD4FFFBF9F7FFE0DBD8FF674E45FF674A40FF6B4E44FF6D4F
          45FF6E4F45FF6E4F45FF6E4F45FF6D4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F
          45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF6149
          40FFDFD9D6FFFAF6F4FFE4D4CDFFDDCAC3FFAF8374FF0000001C0000000EBC97
          87FFE5D6CFFFEBDFD9FFFDFCFAFF918079FF6B4F45FF715449FF715349FF7153
          49FF705349FF715449FF715349FF715349FF705349FF71534AFF715349FF7154
          4AFF715349FF715349FF715449FF705349FF715449FF70534AFF715349FF684D
          42FF8C7A73FFFCFAF8FFE7D9D3FFE0CFC7FFB28979FF0000001A0000000CC09C
          8CFFE7DAD4FFECE1DDFFFEFDFCFF6C554AFF896C5FFF8D6F63FF8F7063FF9677
          69FF967769FF957769FF997B6DFF9D7F70FF9E7F70FF9D7F70FF9E7F70FF9E7F
          70FF9E7F70FF9E7F70FF9A7B6CFF967769FF967869FF967769FF8F7163FF8D6E
          61FF634B41FFFDFCFBFFE8DBD6FFE2D3CDFFB68E7EFF000000180000000BC5A1
          91FFEADEDAFFEEE4E1FFFEFEFEFF6E5649FFB29381FFB29381FFB29381FFB393
          81FFB29381FFB29381FFB29281FFB39381FFB29381FFB29381FFB29381FFB293
          81FFB29281FFB39281FFB29381FFB29381FFB29281FFB29381FFB29381FFB392
          81FF684F44FFFEFDFDFFEADEDBFFE6D8D3FFBA9484FF0000001600000009BB9B
          8EF1EFE6E2FFEFE7E3FFFFFEFEFF7F6759FFC6A692FF715349FF705349FF7152
          49FF705348FF705248FF705248FF705248FF705248FF705247FF6F5147FF6F51
          47FF6E5147FF6E5046FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A5
          92FF795F53FFFFFEFEFFECE2DDFFEDE1DEFFB59284F500000013000000068872
          69B0ECE1DCFFF8F4F2FFFEFEFEFF866F60FFCCAD97FFA97C6BFFF2E9E4FFEEE2
          DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDFD8FFECDF
          D8FFECDED8FFECDED7FFECDED8FFECDFD7FFEBDED7FFEEE3DDFFA27363FFC7A8
          93FF80685AFFFCFAFAFFF4EDEBFFEADDD9FF836C61B80000000D000000031F1B
          192EC5AA9FF0EEE3DEFFFAF6F5FF8E7666FFD6B59EFFAD8272FFF4EBE7FFEFE4
          DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2DBFFEEE2
          DBFFEDE1DAFFEDE1DBFFEDE0DAFFEDE0D9FFECE0D9FFF0E6DFFFA47767FFCFAF
          99FF896F62FFF8F4F3FFEBE0DAFFBEA395F1201B183A00000007000000010000
          00031613112188746BACB99E90E6937C6FFF957F73FFB18876FFF4EEEAFFF1E7
          E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4DEFFEFE4
          DEFFEEE4DEFFEFE3DDFFEFE2DDFFEEE2DCFFEEE3DCFFF1E8E2FFA97C6CFF907A
          6FFF8F7869FFB29587E7836E64B11512102A0000000800000003000000000000
          00010000000200000004000000050000000A00000016B68D7EFFF6F0EDFFF2E9
          E4FFF2E9E5FFF2E9E3FFF1E8E3FFF2E8E3FFF1E7E2FFF1E7E2FFF0E7E2FFF1E7
          E1FFF1E6E0FFF0E6E0FFF0E6E0FFF0E5DFFFEFE5DFFFF3EAE5FFAE8373FF0000
          0023000000130000000D00000009000000050000000200000001000000000000
          0000000000000000000100000001000000040000000EBB9484FFF8F3F0FFF4EC
          E8FFF3EBE8FFF3EBE7FFF3EBE7FFF3EBE6FFF3EAE5FFF3EAE5FFF3E9E5FFF2E9
          E4FFF2E9E4FFF2E8E4FFF1E8E3FFF1E7E2FFF1E7E2FFF5EDE9FFB2897AFF0000
          0018000000080000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000030000000CBF998AFFF9F5F3FFF6EF
          EBFFF6EEEBFFF5EEEBFFF5EEEAFFF5EDE9FFF5EDE9FFF5EDE9FFF4ECE8FFF3EB
          E8FFF4EBE7FFF4EBE6FFF3EBE6FFF3EAE6FFF3EAE5FFF5EFECFFB69080FF0000
          0014000000050000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000BC3A08FFFFAF7F5FFF7F1
          EEFFF7F1EEFFF6F0EDFFF7F0EDFFF7F0ECFFF6F0ECFFF6EFEBFFF6EFEBFFF6EF
          EBFFF5EEEAFFF5EEEAFFF5EEE9FFF4EDE9FFF5EDE9FFF7F1EFFFBC9687FF0000
          0013000000050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000009C7A495FFFAF8F7FFF8F4
          F1FFF9F3F1FFF9F3F0FFF8F2F0FFF7F2EFFFF8F3EFFFF7F2EFFFF7F2EFFFF7F2
          EEFFF7F1EDFFF7F0EDFFF7F0EDFFF6EFECFFF6F0EBFFF9F4F2FFC09C8DFF0000
          0011000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000008CAA99AFFFDF9F8FFFAF6
          F4FFFAF6F4FFF9F6F4FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F1FFF8F4F1FFF9F4
          F1FFF8F3F0FFF8F3F0FFF8F3EFFFF8F2EFFFF7F2EFFFFAF6F4FFC4A293FF0000
          0010000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000007CDAD9FFFFDFBFBFFFCF8
          F6FFFBF7F6FFFBF7F5FFFBF7F6FFFAF7F5FFFAF7F5FFFAF6F4FFFAF6F4FFFAF6
          F3FFF9F6F3FFF9F5F3FFFAF5F3FFF9F4F2FFF9F4F2FFFAF8F6FFC7A698FF0000
          000E000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000005CFB1A2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBAC9CFF0000
          000B000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000039B857ABFD1B3A5FFD1B3
          A5FFD1B3A4FFD1B3A4FFD0B2A4FFD1B2A4FFD0B2A4FFCFB2A3FFCFB2A3FFCFB2
          A3FFCFB0A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEB0A2FFCEAFA1FF998277C10000
          0007000000020000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnImpClick
        ExplicitLeft = 170
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 705
    Height = 204
    Align = alClient
    DataSource = dsCons
    DynProps = <>
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODIGO'
        Footers = <>
        Title.Caption = 'C'#211'DIGO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZAO'
        Footers = <>
        Title.Caption = 'NOME'
        Width = 466
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FANTASIA'
        Footers = <>
        Title.Caption = 'APELIDO'
        Width = 153
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DT_NASC'
        Footers = <>
        Title.Caption = 'DT. NASC.'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CELULAR1'
        Footers = <>
        Title.Caption = 'CELULAR 1'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CELULAR2'
        Footers = <>
        Title.Caption = 'CELULAR 2'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ENDERECO'
        Footers = <>
        Title.Caption = 'ENDERE'#199'O'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MUNICIPIO'
        Footers = <>
        Title.Caption = 'CIDADE'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QryCons: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT p.codigo, p.razao, p.fantasia, p.celular1, p.celular2, p.' +
        'endereco, p.municipio, p.dt_nasc'
      'FROM pessoa p'
      'WHERE EXTRACT(DAY FROM p.dt_nasc)  >= :DIA1  AND'
      '               EXTRACT(DAY FROM p.dt_nasc) <=  :DIA2  AND'
      '               EXTRACT(MONTH FROM p.dt_nasc) >= :MES1 AND'
      '               EXTRACT(MONTH FROM p.dt_nasc) <= :MES2')
    Left = 480
    Top = 56
    ParamData = <
      item
        Name = 'DIA1'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DIA2'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'MES1'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'MES2'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object QryConsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object QryConsFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object QryConsCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object QryConsCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object QryConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object QryConsMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object QryConsDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
  end
  object dsCons: TDataSource
    AutoEdit = False
    DataSet = QryCons
    Left = 616
    Top = 80
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 344
    Top = 184
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 352
    Top = 192
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 360
    Top = 200
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    ExportType = dxTable
    Left = 368
    Top = 208
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 376
    Top = 216
  end
  object frxReport1: TfrxReport
    Version = '2022.1.3'
    DataSetName = 'frxDBCo'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 44645.954639641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 384
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDbAniversariante'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDbEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Compra: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Cabecalho: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.656710000000000000
        Top = 177.637910000000000000
        Width = 755.906000000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.959060000000000000
          Top = 4.779529999999990000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 67.133890000000000000
          Top = 4.779530000000000000
          Width = 172.422140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 63.120000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 756.200000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Height = 38.158120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 41.656710000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 172.422140000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'APELIDO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DT. NASC.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CELULAR')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 22.677180000000000000
          Width = 93.052010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 44.757180000000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDbAniversariante'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 2.779530000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 67.974830000000000000
          Top = 2.779530000000000000
          Width = 285.052010000000000000
          Height = 15.118120000000000000
          DataField = 'RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."RAZAO"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 63.120000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 755.800000000000000000
          Height = 41.937650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Height = 38.158120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 183.004700000000000000
          Height = 15.118120000000000000
          DataField = 'FANTASIA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."FANTASIA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 3.779530000000000000
          Width = 96.075510000000000000
          Height = 15.118120000000000000
          DataField = 'DT_NASC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."DT_NASC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 96.075510000000000000
          Height = 15.118120000000000000
          DataField = 'CELULAR1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."CELULAR1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 281.272480000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."ENDERECO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 22.677180000000000000
          Width = 307.729190000000000000
          Height = 15.118120000000000000
          DataField = 'MUNICIPIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDbAniversariante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbAniversariante."MUNICIPIO"]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Top = 41.795300000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 134.400000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Width = 756.480000000000000000
          Height = 134.400000000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 121.304020000000000000
          Top = 6.856710000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBEmpresaENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 49.600000000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 121.200000000000000000
          Top = 71.400000000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object frxDBEmpresaRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 28.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.200000000000000000
          Top = 13.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frmPrincipal.frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 106.379530000000000000
          Width = 725.367100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE ANIVERSARIANTES')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 101.600000000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object SysMemo2: TfrxSysMemoView
        AllowVectorExport = True
        Left = 875.600000000000000000
        Top = 357.800000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'P'#225'g.[PAGE#]')
        ParentFont = False
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio emitido em [DATE]- [TIME]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 657.179530000000000000
          Top = 1.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 3.779530000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDbAniversariante'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO=RAZAO'
      'FANTASIA=FANTASIA'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2'
      'ENDERECO=ENDERECO'
      'MUNICIPIO=MUNICIPIO'
      'DT_NASC=DT_NASC')
    DataSet = QryCons
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 224
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
      'TIPO=TIPO'
      'CNPJ=CNPJ'
      'IE=IE'
      'IM=IM'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'FAX=FAX'
      'SITE=SITE'
      'LOGOMARCA=LOGOMARCA'
      'FUNDACAO=FUNDACAO'
      'USU_CAD=USU_CAD'
      'USU_ATU=USU_ATU'
      'NSERIE=NSERIE'
      'CSENHA=CSENHA'
      'NTERM=NTERM'
      'ID_PLANO_TRANSFERENCIA_C=ID_PLANO_TRANSFERENCIA_C'
      'ID_PLANO_TRANSFERENCIA_D=ID_PLANO_TRANSFERENCIA_D'
      'ID_CAIXA_GERAL=ID_CAIXA_GERAL'
      'BLOQUEAR_ESTOQUE_NEGATIVO=BLOQUEAR_ESTOQUE_NEGATIVO'
      'ID_CIDADE=ID_CIDADE'
      'CRT=CRT'
      'ID_UF=ID_UF'
      'ID_PLANO_VENDA=ID_PLANO_VENDA'
      'OBSFISCO=OBSFISCO'
      'CFOP=CFOP'
      'CSOSN=CSOSN'
      'CST_ICMS=CST_ICMS'
      'ALIQ_ICMS=ALIQ_ICMS'
      'CST_ENTRADA=CST_ENTRADA'
      'CST_SAIDA=CST_SAIDA'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'CST_IPI=CST_IPI'
      'ALIQ_IPI=ALIQ_IPI'
      'IMP_F5=IMP_F5'
      'IMP_F6=IMP_F6'
      'MOSTRA_RESUMO_CAIXA=MOSTRA_RESUMO_CAIXA'
      'LIMITE_DIARIO=LIMITE_DIARIO'
      'PRAZO_MAXIMO=PRAZO_MAXIMO'
      'ID_PLA_CONTA_FICHA_CLI=ID_PLA_CONTA_FICHA_CLI'
      'ID_PLANO_CONTA_RETIRADA=ID_PLANO_CONTA_RETIRADA'
      'USA_PDV=USA_PDV'
      'RECIBO_VIAS=RECIBO_VIAS'
      'ID_PLANO_TAXA_CARTAO=ID_PLANO_TAXA_CARTAO'
      'OBS_CARNE=OBS_CARNE'
      'CAIXA_UNICO=CAIXA_UNICO'
      'CAIXA_RAPIDO=CAIXA_RAPIDO'
      'EMPRESA_PADRAO=EMPRESA_PADRAO'
      'ID_PLANO_CONTA_DEVOLUCAO=ID_PLANO_CONTA_DEVOLUCAO'
      'N_INICIAL_NFCE=N_INICIAL_NFCE'
      'N_INICIAL_NFE=N_INICIAL_NFE'
      'CHECA_ESTOQUE_FISCAL=CHECA_ESTOQUE_FISCAL'
      'DESCONTO_PROD_PROMO=DESCONTO_PROD_PROMO'
      'LANCAR_CARTAO_CREDITO=LANCAR_CARTAO_CREDITO'
      'FILTRAR_EMPRESA_LOGIN=FILTRAR_EMPRESA_LOGIN'
      'ENVIAR_EMAIL_NFE=ENVIAR_EMAIL_NFE'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TABELA_PRECO=TABELA_PRECO'
      'TAXA_VENDA_PRAZO=TAXA_VENDA_PRAZO'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'AUTOPECAS=AUTOPECAS'
      'ATUALIZA_PR_VENDA=ATUALIZA_PR_VENDA'
      'INFORMAR_GTIN=INFORMAR_GTIN'
      'RECOLHE_FCP=RECOLHE_FCP'
      'DIFAL_ORIGEM=DIFAL_ORIGEM'
      'DIFAL_DESTINO=DIFAL_DESTINO'
      'EXCLUI_PDV=EXCLUI_PDV'
      'VENDA_SEMENTE=VENDA_SEMENTE'
      'EMAIL=EMAIL'
      'ULTIMO_PEDIDO=ULTIMO_PEDIDO'
      'ULTIMONSU=ULTIMONSU'
      'TIPO_CONTRATO=TIPO_CONTRATO'
      'VIRTUAL_ID_UF=VIRTUAL_ID_UF'
      'VIRTUAL_UF=VIRTUAL_UF'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_VALIDADE=DATA_VALIDADE'
      'FLAG=FLAG'
      'CHECA=CHECA'
      'BLOQUEAR_PRECO=BLOQUEAR_PRECO'
      'EXIBE_RESUMO_CAIXA=EXIBE_RESUMO_CAIXA'
      'EXIBE_F3=EXIBE_F3'
      'EXIBE_F4=EXIBE_F4'
      'RESTAURANTE=RESTAURANTE'
      'PESQUISA_REFERENCIA=PESQUISA_REFERENCIA'
      'CARENCIA_JUROS=CARENCIA_JUROS'
      'RESPONSAVEL_TECNICO=RESPONSAVEL_TECNICO'
      'ID_PLANO_COMPRA=ID_PLANO_COMPRA'
      'LER_PESO=LER_PESO'
      'FARMACIA=FARMACIA'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'QTD_MESAS=QTD_MESAS'
      'TIPO_JUROS=TIPO_JUROS'
      'JUROS_DIA=JUROS_DIA'
      'JUROS_MES=JUROS_MES'
      'LOJA_ROUPA=LOJA_ROUPA'
      'EMITE_ECF=EMITE_ECF'
      'CHECA_LIMITE=CHECA_LIMITE'
      'DESCONTO_MAXIMO=DESCONTO_MAXIMO'
      'RESPONSAVEL_EMPRESA=RESPONSAVEL_EMPRESA'
      'PAGAMENTO_DINHEIRO=PAGAMENTO_DINHEIRO'
      'HABILITA_DESCONTO_PDV=HABILITA_DESCONTO_PDV'
      'PUXA_CFOP_PRODUTO=PUXA_CFOP_PRODUTO'
      'USA_BLUETOOTH_RESTA=USA_BLUETOOTH_RESTA'
      'LANCAR_CARTAO_CR=LANCAR_CARTAO_CR'
      'CFOP_EXTERNO=CFOP_EXTERNO'
      'CNAE=CNAE'
      'OBSNFCE=OBSNFCE'
      'CODIGO_PAIS=CODIGO_PAIS'
      'MULTI_IDIOMA=MULTI_IDIOMA'
      'HABILITA_ACRESCIMO=HABILITA_ACRESCIMO'
      'COD_FPG_DINHEIRO=COD_FPG_DINHEIRO'
      'CSOSN_EXTERNO=CSOSN_EXTERNO'
      'CST_EXTERNO=CST_EXTERNO'
      'ALIQ_ICMS_EXTERNO=ALIQ_ICMS_EXTERNO'
      'SEGUNDA_VIA_NFCE=SEGUNDA_VIA_NFCE'
      'ID_PLANO_BOLETO=ID_PLANO_BOLETO'
      'REPLICAR_DADOS=REPLICAR_DADOS'
      'CFOP_ENTRADA_PADRAO=CFOP_ENTRADA_PADRAO'
      'PUXAR_CFOP_ENTRADA=PUXAR_CFOP_ENTRADA'
      'CFOP_ENTRADA_PADRO_E=CFOP_ENTRADA_PADRO_E'
      'AUTO_CADASTRO_PRODUTO=AUTO_CADASTRO_PRODUTO'
      'EXIBE_ESTOQUE_FISCAL=EXIBE_ESTOQUE_FISCAL'
      'BAIXAR_ESTOQUE_NFE=BAIXAR_ESTOQUE_NFE'
      'OCULTAR_SALDO_ANTERIOR=OCULTAR_SALDO_ANTERIOR'
      'NFE_SERIE=NFE_SERIE'
      'LUCRO_PADRAO=LUCRO_PADRAO'
      'TRANSMITIR_CARTAO_AUTO=TRANSMITIR_CARTAO_AUTO'
      'SERVIDOR_SMTP_PROPRIO=SERVIDOR_SMTP_PROPRIO'
      'ALIQUOTA_SIMPLES=ALIQUOTA_SIMPLES'
      'MENSAGEM_COBRANCA=MENSAGEM_COBRANCA'
      'ID_PLANO_ABERTURA=ID_PLANO_ABERTURA'
      'BAIXAR_ESTOQUE_COMPOSICAO=BAIXAR_ESTOQUE_COMPOSICAO'
      'PESQUISA_POR_PARTE=PESQUISA_POR_PARTE'
      'USA_TEF=USA_TEF'
      'USA_CREDITO_SIMPLES=USA_CREDITO_SIMPLES'
      'RATEAR_FRETE=RATEAR_FRETE'
      'DESCONTO_ITEM_PDV=DESCONTO_ITEM_PDV'
      'BLOQUEAR_CPF=BLOQUEAR_CPF'
      'BLOQUEAR_PERSONALIZACAO=BLOQUEAR_PERSONALIZACAO'
      'AUTO_ATUALIZA=AUTO_ATUALIZA'
      'PRE_VISUALIZAR_IMPRESSAO=PRE_VISUALIZAR_IMPRESSAO'
      'NFCE_PRODUTO_SUBSTITUTO=NFCE_PRODUTO_SUBSTITUTO'
      'OBRIGAR_VENDEDOR=OBRIGAR_VENDEDOR'
      'QR_PIX=QR_PIX'
      'RECEBER_PARCIAL_CR=RECEBER_PARCIAL_CR'
      'MULTA=MULTA'
      'OBRIGAR_CPF_CNPJ=OBRIGAR_CPF_CNPJ'
      'CONSIDERAR_NOME=CONSIDERAR_NOME'
      'CONSIDERAR_PROD_FILIAL=CONSIDERAR_PROD_FILIAL'
      'DESCONTO_CR=DESCONTO_CR'
      'LANCAR_FATURADO_CAIXA=LANCAR_FATURADO_CAIXA'
      'DESCONSIDERAR_QUANT_ATACADO=DESCONSIDERAR_QUANT_ATACADO'
      'PERGUNTAR_VENDA_NOVA=PERGUNTAR_VENDA_NOVA')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 456
    Top = 224
  end
end
