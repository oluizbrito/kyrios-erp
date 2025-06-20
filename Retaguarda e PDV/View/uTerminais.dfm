object frmTerminais: TfrmTerminais
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es de Terminais'
  ClientHeight = 661
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semilight'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 17
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 214
    Height = 597
    Align = alLeft
    DataSource = dsTerminais
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI Semilight'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 173
        Visible = True
      end>
  end
  object PageControl3: TPageControl
    Left = 214
    Top = 0
    Width = 570
    Height = 597
    ActivePage = TabSheet11
    Align = alClient
    TabOrder = 1
    OnChange = PageControl3Change
    object TabSheet11: TTabSheet
      Caption = 'Configura'#231#245'es'
      DesignSize = (
        562
        565)
      object Label24: TLabel
        Left = 338
        Top = 4
        Width = 41
        Height = 17
        Caption = 'N'#186' Vias'
        FocusControl = DBEdit6
      end
      object Label23: TLabel
        Left = 273
        Top = 4
        Width = 50
        Height = 17
        Caption = 'N'#186' Inicial'
      end
      object Label27: TLabel
        Left = 400
        Top = 3
        Width = 28
        Height = 17
        Caption = 'S'#233'rie'
        FocusControl = DBEdit6
      end
      object Label17: TLabel
        Left = 946
        Top = 148
        Width = 99
        Height = 17
        Caption = 'Caminho Cozinha'
      end
      object Label21: TLabel
        Left = 947
        Top = 191
        Width = 72
        Height = 17
        Caption = 'Caminho Bar'
      end
      object lblImpressora: TLabel
        Left = 11
        Top = 192
        Width = 158
        Height = 17
        Caption = 'Caminho Impressora Gr'#225'fico'
      end
      object btnImpressora: TSpeedButton
        Left = 512
        Top = 217
        Width = 39
        Height = 23
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000019427ACA245A
          A5FF255CA7FF255BA7FF245AA6FF2459A6FF2358A5FF2358A4FF2356A4FF2256
          A4FF2255A3FF2154A3FF2153A1FF1C468AE303080F2900000002255DA5FF316B
          AEFF6DA6D5FF86CAF0FF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2C77C1FF10284D8B000000082B68AEFF4984
          BEFF4B8BC5FFB2E3F8FF68BBECFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3A92D6FF1C4885D50000000D2F6FB4FF6CA7
          D2FF3F87C4FFAED9F0FF9AD8F5FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2D69B1FF040B142F3276B9FF8FC7
          E6FF509FD4FF86BCE0FFC5EFFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF448BC9FF122D4D81357CBCFFAFE3
          F5FF75C8EDFF59A2D4FFDDF7FDFFDFF8FEFFDDF7FEFFDBF7FEFFD8F5FEFFD4F4
          FDFFD0F2FDFFCCEFFCFFC7EDFBFFC1EBFBFF9ACBE9FF215187CB3882C1FFC7F5
          FEFF97E5FCFF64BAE5FF4D9FD3FF4D9DD2FF4B9BD1FF4A99CFFF4998CFFF4896
          CEFF4694CCFF4592CBFF3073B7FF3072B6FF2F71B5FF2A65A4EA3A88C5FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFF89DFFBFF86DEFAFF81DAFAFF7ED8
          F9FF7BD7F9FF79D6F9FF2A6BB0FF000000140000000A000000073D8EC8FFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFBBF2FDFFD4F9FEFFD5F9FEFFD3F8
          FEFFD1F8FEFFCEF7FDFF3680BFFF0000000800000000000000003F92CBFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF4895CBFF3B8CC6FF3B8AC6FF3A89
          C5FF3A88C5FF3A87C3FF2A6391C20000000500000000000000004197CEFFE2FC
          FEFFE2FCFEFFE1FCFEFFD4F3FAFF458FBFEC040A0E1B00000006000000060000
          000600000006000000060000000400000001000000000000000031739ABF429A
          D0FF4299D0FF4299D0FF4297CFFF153244590000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0003000000030000000400000003000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = btnImpressoraClick
      end
      object DBEdit6: TDBEdit
        Left = 338
        Top = 22
        Width = 56
        Height = 21
        Ctl3D = False
        DataField = 'NVIAS'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit17: TDBEdit
        Left = 400
        Top = 22
        Width = 35
        Height = 21
        Ctl3D = False
        DataField = 'SERIE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit18: TDBEdit
        Left = 273
        Top = 22
        Width = 61
        Height = 21
        Ctl3D = False
        DataField = 'NUMERACAO_INICIAL'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 3
        Top = 4
        Width = 264
        Height = 42
        Caption = 'Tip de Impressora'
        Columns = 3
        DataField = 'TIPOIMPRESSORA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'Pedido A4'
          'ESC/POS'
          'Gr'#225'fico')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object cbCozinha: TDBComboBox
        Left = 947
        Top = 165
        Width = 118
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'CAMINHO_COZINHA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '75'
          '110'
          '134'
          '150'
          '300'
          '600'
          '1200'
          '1800'
          '2400'
          '4800'
          '7200'
          '9600'
          '14400'
          '19200'
          '38400'
          '57600'
          '115200'
          '128000')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object cbBar: TDBComboBox
        Left = 947
        Top = 209
        Width = 124
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'CAMINHO_BAR'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '75'
          '110'
          '134'
          '150'
          '300'
          '600'
          '1200'
          '1800'
          '2400'
          '4800'
          '7200'
          '9600'
          '14400'
          '19200'
          '38400'
          '57600'
          '115200'
          '128000')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBCheckBox15: TDBCheckBox
        Left = 444
        Top = 17
        Width = 112
        Height = 29
        TabStop = False
        Caption = 'Usar N'#186' Inicial'
        DataField = 'USAR_NUMERO_INICIAL'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        WordWrap = True
      end
      object GroupBox_pdv: TGroupBox
        Left = 292
        Top = 317
        Width = 264
        Height = 130
        Caption = 'Configura'#231#245'es do PDV'
        TabOrder = 7
        object DBCheckBox3: TDBCheckBox
          Left = 16
          Top = 25
          Width = 97
          Height = 17
          TabStop = False
          Caption = 'Usa Gaveta'
          DataField = 'USAGAVETA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 16
          Top = 48
          Width = 150
          Height = 17
          TabStop = False
          Caption = 'Usa controle de Caixa'
          DataField = 'EH_CAIXA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 71
          Width = 183
          Height = 17
          TabStop = False
          Caption = 'Perguntar se quer Imprimir'
          DataField = 'IMPRIME'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckPREVIEW: TDBCheckBox
          Left = 16
          Top = 94
          Width = 245
          Height = 17
          TabStop = False
          Caption = 'Preview da Impress'#227'o (Modo Gr'#225'fico)'
          DataField = 'IMPRIME_PREVIEW'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DBEdit_impressora: TDBEdit
        Left = 11
        Top = 215
        Width = 495
        Height = 25
        DataField = 'IMPRESSORA_FORTESREPORT'
        DataSource = dsTerminais
        TabOrder = 8
      end
      object ckMeiaFolha: TDBCheckBox
        Left = 20
        Top = 323
        Width = 193
        Height = 17
        Caption = 'Modo Economia - Meia Folha'
        DataField = 'MEIAFOLHA'
        DataSource = dsTerminais
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 54
        Width = 553
        Height = 132
        Caption = 'Configura'#231#245'es ESC/POS'
        TabOrder = 10
        object Label15: TLabel
          Left = 8
          Top = 72
          Width = 93
          Height = 17
          Caption = 'Caminho Padr'#227'o'
        end
        object Label13: TLabel
          Left = 8
          Top = 26
          Width = 124
          Height = 17
          Caption = 'Modelo da Impressora'
        end
        object cbPortaImpressora: TDBComboBox
          Left = 8
          Top = 92
          Width = 529
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'PORTA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            '75'
            '110'
            '134'
            '150'
            '300'
            '600'
            '1200'
            '1800'
            '2400'
            '4800'
            '7200'
            '9600'
            '14400'
            '19200'
            '38400'
            '57600'
            '115200'
            '128000')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object cbModeloImpressora: TDBComboBox
          Left = 8
          Top = 45
          Width = 529
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'MODELO'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'TEXTO'
            'ELGIN'
            'EPSON'
            'BEMATECH'
            'DARUMA'
            'VOX'
            'DIEBOLD'
            'EPSONP2'
            'POSSTAR'
            'GPRINTER'
            'JIANG')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 292
        Top = 453
        Width = 264
        Height = 105
        Caption = 'Quais abas exibir no PDV ?'
        TabOrder = 11
        object DBCheckBox10: TDBCheckBox
          Left = 16
          Top = 50
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - Delivery'
          DataField = 'DELIVERY'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 16
          Top = 73
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - Mesas'
          DataField = 'RESTAURANTE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 16
          Top = 27
          Width = 109
          Height = 17
          TabStop = False
          Caption = 'Exibe - PDV'
          DataField = 'PDV'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 356
        Width = 264
        Height = 202
        Caption = 'Tipo de Opera'#231#227'o padr'#227'o.'
        TabOrder = 12
        object Label3: TLabel
          Left = 17
          Top = 29
          Width = 90
          Height = 17
          Caption = 'Selecione o tipo'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 17
          Top = 107
          Width = 200
          Height = 17
          TabStop = False
          Caption = 'Bot'#227'o F4 - Transmitir (NFCe) '
          DataField = 'EXIBE_F4'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 17
          Top = 130
          Width = 125
          Height = 26
          TabStop = False
          Caption = 'Bot'#227'o F5 - Pedido '
          DataField = 'EXIBE_F5'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 17
          Top = 161
          Width = 141
          Height = 17
          TabStop = False
          Caption = 'Bot'#227'o F6 - Finalizar'
          DataField = 'EXIBE_F6'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 17
          Top = 82
          Width = 232
          Height = 17
          TabStop = False
          Caption = 'Bot'#227'o F3 - Conting'#234'ncia (NFCe)'
          DataField = 'EXIBE_F3'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBComboBoxEh3: TDBComboBoxEh
          Left = 17
          Top = 52
          Width = 183
          Height = 23
          DataField = 'FLAG'
          DataSource = dsTerminais
          DynProps = <>
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Modo H'#237'brido'
            'NFCe - Conting'#234'ncia'
            'NFCe - Transmitir '
            'Pedido N'#227'o Fiscal'
            'ECF Fiscal - Finalizar')
          KeyItems.Strings = (
            ''
            'O'
            'N'
            'P'
            'F')
          ParentFont = False
          TabOrder = 4
          Visible = True
          OnKeyDown = DBComboBoxEh3KeyDown
        end
      end
      object grptipoCaixa: TDBRadioGroup
        Left = 3
        Top = 248
        Width = 553
        Height = 55
        Anchors = [akLeft]
        Caption = 'Tipo de Fechamento Caixa'
        Columns = 4
        DataField = 'TIPOFECHAMENTO'
        DataSource = dsTerminais
        Items.Strings = (
          'A4 - Padr'#227'o'
          'A4 - Detalhado'
          'Bobina - Detalhado'
          'Bobina - Sint'#233'tico')
        TabOrder = 13
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        OnChange = grptipoCaixaChange
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Balan'#231'as'
      ImageIndex = 1
      object Label28: TLabel
        Left = 27
        Top = 7
        Width = 44
        Height = 17
        Caption = 'Balan'#231'a'
      end
      object Label84: TLabel
        Left = 27
        Top = 48
        Width = 29
        Height = 17
        Caption = 'Porta'
      end
      object Label85: TLabel
        Left = 27
        Top = 88
        Width = 61
        Height = 17
        Caption = 'Velocidade'
      end
      object Label86: TLabel
        Left = 27
        Top = 208
        Width = 48
        Height = 17
        Caption = 'Stop Bits'
      end
      object Label87: TLabel
        Left = 27
        Top = 169
        Width = 49
        Height = 17
        Caption = 'Paridade'
      end
      object Label88: TLabel
        Left = 27
        Top = 129
        Width = 50
        Height = 17
        Caption = 'Data Bits'
      end
      object Label89: TLabel
        Left = 27
        Top = 250
        Width = 72
        Height = 17
        Caption = 'Handshaking'
      end
      object DBComboBoxEh28: TDBComboBoxEh
        Left = 27
        Top = 267
        Width = 187
        Height = 23
        DataField = 'BALANCA_HANDSHAKING'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'Nenhum'
          'XON/XOFF'
          'RTS/CTS'
          'DTR/DSR')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3')
        ParentFont = False
        TabOrder = 6
        Visible = True
      end
      object DBComboBoxEh27: TDBComboBoxEh
        Left = 27
        Top = 227
        Width = 187
        Height = 23
        DataField = 'BALANCA_STOPBITS'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          's1'
          's1,5'
          's2')
        KeyItems.Strings = (
          '0'
          '1'
          '2')
        ParentFont = False
        TabOrder = 5
        Visible = True
      end
      object DBComboBoxEh26: TDBComboBoxEh
        Left = 27
        Top = 186
        Width = 187
        Height = 23
        DataField = 'BALANCA_PARIDADE'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'none'
          'odd'
          'even'
          'mark'
          'space')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        ParentFont = False
        TabOrder = 4
        Visible = True
      end
      object DBComboBoxEh25: TDBComboBoxEh
        Left = 27
        Top = 146
        Width = 187
        Height = 23
        DataField = 'BALANCA_DATABITS'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          '5'
          '6'
          '7'
          '8')
        KeyItems.Strings = (
          '5'
          '6'
          '7'
          '8')
        ParentFont = False
        TabOrder = 3
        Visible = True
      end
      object DBComboBox5: TDBComboBox
        Left = 27
        Top = 65
        Width = 187
        Height = 23
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'BALANCA_PORTA'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object cbBalanca: TDBComboBoxEh
        Left = 27
        Top = 25
        Width = 187
        Height = 23
        DataField = 'BALANCA_MARCA'
        DataSource = dsTerminais
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          'balNenhum'
          'balFilizola'
          'balToledo'
          'balToledo2090'
          'balToledo2180'
          'balUrano'
          'balLucasTec'
          'balMagna'
          'balDigitron'
          'balMagellan'
          'balUranoPOP'
          'balLider'
          'balRinnert'
          'balMuller'
          'balSaturno'
          'balAFTS'
          'balGenerica'
          'balLibratek'
          'balMicheletti'
          'balAlfa'
          'balToledo9091_8530_8540'
          'balWeightechWT1000'
          'balMarelCG62XL'
          'balWeightechWT3000_ABS'
          'balToledo2090N'
          'balToledoBCS21'
          'balPrecision'
          'balDigitron_UL'
          'balLibratekWT3000IR')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28')
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object DBComboBox4: TDBComboBox
        Left = 27
        Top = 105
        Width = 187
        Height = 23
        BevelKind = bkFlat
        DataField = 'BALANCA_VELOCIDADE'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Items.Strings = (
          '110'
          '300'
          '600'
          '1200'
          '2400'
          '4800'
          '9600'
          '14400'
          '19200'
          '38400'
          '56000'
          '57600')
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox16: TDBCheckBox
        Left = 27
        Top = 296
        Width = 187
        Height = 33
        Caption = 'Habilita leitura Peso no PDV'
        DataField = 'LER_PESO'
        DataSource = dsTerminais
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'SAT'
      ImageIndex = 2
      object Label2: TLabel
        Left = 24
        Top = 18
        Width = 24
        Height = 17
        Caption = 'Tipo'
      end
      object Label20: TLabel
        Left = 24
        Top = 78
        Width = 118
        Height = 17
        Caption = 'Caminho da DLL SAT'
        FocusControl = DBEdit14
      end
      object btnSat: TSpeedButton
        Left = 398
        Top = 95
        Width = 23
        Height = 24
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btnSatClick
      end
      object lbvsSat: TLabel
        Left = 277
        Top = 18
        Width = 41
        Height = 17
        Caption = ' Vers'#227'o'
        Color = clDefault
        ParentColor = False
      end
      object cbSatTipoDLL: TDBComboBox
        Left = 24
        Top = 35
        Width = 247
        Height = 25
        DataField = 'TIPO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 24
        Top = 95
        Width = 368
        Height = 25
        DataField = 'CAMINHO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 1
      end
      object DBCheckBox8: TDBCheckBox
        Left = 24
        Top = 126
        Width = 97
        Height = 17
        Caption = 'Emulador'
        DataField = 'MODELO_SAT_DLL'
        DataSource = dsTerminais
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object Button1: TButton
        Left = 24
        Top = 160
        Width = 193
        Height = 25
        Caption = 'Testar SAT'
        TabOrder = 3
        OnClick = Button1Click
      end
      object CBXvssat: TJvHTComboBox
        Left = 277
        Top = 35
        Width = 76
        Height = 22
        HideSel = False
        DropWidth = 145
        ColorHighlight = clHighlight
        ColorHighlightText = clHighlightText
        ColorDisabledText = clGrayText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          '0.07'
          '0.08'
          '0.09')
        ParentFont = False
        SuperSubScriptRatio = 0.666666666666666600
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TEF/POS'
      ImageIndex = 3
      object Label39: TLabel
        Left = 3
        Top = 8
        Width = 92
        Height = 17
        Caption = 'Gerenciador TEF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 3
        Top = 283
        Width = 79
        Height = 17
        Caption = 'Troco M'#225'ximo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label10: TLabel
        Left = 101
        Top = 283
        Width = 69
        Height = 17
        Caption = 'M'#225'x.Cart'#245'es'
        Color = clBtnFace
        ParentColor = False
      end
      object Label18: TLabel
        Left = 2
        Top = 148
        Width = 108
        Height = 17
        Caption = 'Registro/Serial POS'
        Color = clBtnFace
        ParentColor = False
      end
      object Label16: TLabel
        Left = 3
        Top = 195
        Width = 92
        Height = 17
        Caption = 'Nome Aplica'#231#227'o'
        Color = clBtnFace
        ParentColor = False
      end
      object Label19: TLabel
        Left = 339
        Top = 195
        Width = 37
        Height = 17
        Caption = 'Vers'#227'o'
        Color = clBtnFace
        ParentColor = False
      end
      object Label14: TLabel
        Left = 3
        Top = 99
        Width = 71
        Height = 17
        Caption = 'Raz'#227'o Social'
        Color = clBtnFace
        ParentColor = False
      end
      object Label11: TLabel
        Left = 3
        Top = 56
        Width = 45
        Height = 17
        Alignment = taRightJustify
        Caption = 'Arq.Log:'
        Color = clBtnFace
        ParentColor = False
      end
      object SbArqLog: TSpeedButton
        Left = 423
        Top = 71
        Width = 24
        Height = 22
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SbArqLogClick
      end
      object Label22: TLabel
        Left = 339
        Top = 148
        Width = 110
        Height = 17
        Caption = 'N'#186' Estabelecimento'
        Color = clBtnFace
        ParentColor = False
      end
      object cbxGP: TDBComboBoxEh
        Left = 3
        Top = 27
        Width = 444
        Height = 25
        DataField = 'TEF_GERENCIADOR'
        DataSource = Dados.dsCP
        DynProps = <>
        EditButtons = <>
        Items.Strings = (
          'Nenhum '
          'TefDial '
          'TefDisc'
          'HiperTef'
          'CliSiTef'
          'TefGpu'
          'VeSPague'
          'Banese'
          'TefAuttar'
          'GoodCard'
          'FoxWin'
          'CliDTEF'
          'Petrocard'
          'CrediShop'
          'TicketCar'
          'ConvCard'
          'Cappta'
          'PayGo')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17')
        TabOrder = 0
        Visible = True
      end
      object edLog: TDBEdit
        Left = 2
        Top = 74
        Width = 415
        Height = 25
        DataField = 'TEF_LOG'
        DataSource = dsTerminais
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 2
        Top = 117
        Width = 445
        Height = 25
        DataField = 'TEF_SOFT_HOUSE'
        DataSource = dsTerminais
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 2
        Top = 164
        Width = 331
        Height = 25
        DataField = 'TEF_REGISTRO'
        DataSource = dsTerminais
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 2
        Top = 212
        Width = 331
        Height = 25
        DataField = 'TEF_APLICACAO'
        DataSource = dsTerminais
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 339
        Top = 212
        Width = 108
        Height = 25
        DataField = 'TEF_VERSAO'
        DataSource = dsTerminais
        TabOrder = 6
      end
      object DBEdit15: TDBEdit
        Left = 2
        Top = 300
        Width = 92
        Height = 25
        DataField = 'TEF_TROCO_MAXIMO'
        DataSource = dsTerminais
        TabOrder = 9
      end
      object DBEdit16: TDBEdit
        Left = 100
        Top = 300
        Width = 92
        Height = 25
        DataField = 'TEF_MAX_CARTOES'
        DataSource = dsTerminais
        TabOrder = 10
      end
      object cbIMprimirViaReduzida: TDBCheckBox
        Left = 2
        Top = 240
        Width = 169
        Height = 17
        Caption = 'Imprimir Via Reduzida'
        DataField = 'TEF_VIA_REDUZIDA'
        DataSource = dsTerminais
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object cbMultiplosCartoes: TDBCheckBox
        Left = 2
        Top = 263
        Width = 169
        Height = 17
        Caption = 'Multiplos Cart'#245'es'
        DataField = 'TEF_MULTIPLO_CARTOES'
        DataSource = dsTerminais
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 2
        Top = 331
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Usa POS'
        DataField = 'USA_POS'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 2
        Top = 348
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Usa TEF'
        DataField = 'USA_TEF'
        DataSource = dsTerminais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit9: TDBEdit
        Left = 339
        Top = 164
        Width = 108
        Height = 25
        DataField = 'NUMERO_LOJA'
        DataSource = dsTerminais
        TabOrder = 4
      end
    end
    object TabSheet_ECF: TTabSheet
      Caption = 'ECF'
      ImageIndex = 4
      object GroupBox_ecf: TGroupBox
        Left = 19
        Top = 19
        Width = 503
        Height = 206
        Caption = 'Configura'#231#245'es da ECF Fiscal'
        TabOrder = 0
        object Label1: TLabel
          Left = 19
          Top = 27
          Width = 61
          Height = 17
          Caption = 'Velocidade'
        end
        object Label135: TLabel
          Left = 123
          Top = 27
          Width = 81
          Height = 17
          Caption = 'P'#225'gina C'#243'digo'
        end
        object Label136: TLabel
          Left = 229
          Top = 110
          Width = 44
          Height = 17
          Caption = 'Colunas'
        end
        object Label141: TLabel
          Left = 19
          Top = 108
          Width = 84
          Height = 17
          Caption = 'Largura Bobina'
        end
        object Label142: TLabel
          Left = 19
          Top = 67
          Width = 87
          Height = 17
          Caption = 'Marg. Esquerda'
        end
        object Label143: TLabel
          Left = 127
          Top = 67
          Width = 73
          Height = 17
          Caption = 'Marg. Direita'
        end
        object Label144: TLabel
          Left = 233
          Top = 67
          Width = 75
          Height = 17
          Caption = 'Marg. Inferior'
        end
        object Label145: TLabel
          Left = 338
          Top = 67
          Width = 82
          Height = 17
          Caption = 'Marg. Superior'
        end
        object Label146: TLabel
          Left = 123
          Top = 108
          Width = 87
          Height = 17
          Caption = 'Tamanho Fonte'
        end
        object Label4: TLabel
          Left = 19
          Top = 155
          Width = 113
          Height = 17
          Caption = 'Linhas Entre Cupons'
        end
        object Label5: TLabel
          Left = 159
          Top = 154
          Width = 111
          Height = 17
          Caption = 'Espa'#231'o Entre Linhas'
        end
        object cbPaginaCodigo: TDBComboBox
          Left = 123
          Top = 43
          Width = 110
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'PAGINA_CODIGO'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object cbVelocidade: TDBComboBox
          Left = 19
          Top = 43
          Width = 91
          Height = 23
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'VELOCIDADE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            '75'
            '110'
            '134'
            '150'
            '300'
            '600'
            '1200'
            '1800'
            '2400'
            '4800'
            '7200'
            '9600'
            '14400'
            '19200'
            '38400'
            '57600'
            '115200'
            '128000')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 19
          Top = 172
          Width = 134
          Height = 21
          Ctl3D = False
          DataField = 'LINHAS_ENTRE_CUPOM'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 159
          Top = 172
          Width = 122
          Height = 21
          Ctl3D = False
          DataField = 'ESPACO_ENTRE_LINHAS'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 227
          Top = 127
          Width = 54
          Height = 21
          Ctl3D = False
          DataField = 'COLUNAS'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 19
          Top = 127
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'LARGURA_BOBINA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit42: TDBEdit
          Left = 19
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_ESQUERDA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit43: TDBEdit
          Left = 127
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_DIREITA'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit44: TDBEdit
          Left = 233
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_SUPERIOR'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit45: TDBEdit
          Left = 338
          Top = 84
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'MARGEM_SUPERIOR'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit46: TDBEdit
          Left = 123
          Top = 127
          Width = 98
          Height = 21
          Ctl3D = False
          DataField = 'TAMANHO_FONTE'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object GroupBox1: TGroupBox
          Left = 287
          Top = 117
          Width = 202
          Height = 78
          Caption = 'Logo Marca'
          TabOrder = 11
          object Label6: TLabel
            Left = 8
            Top = 20
            Width = 19
            Height = 17
            Caption = 'KC1'
          end
          object Label7: TLabel
            Left = 53
            Top = 20
            Width = 21
            Height = 17
            Caption = 'KC2'
          end
          object Label8: TLabel
            Left = 143
            Top = 20
            Width = 39
            Height = 17
            Caption = 'Fator Y'
          end
          object Label9: TLabel
            Left = 98
            Top = 20
            Width = 39
            Height = 17
            Caption = 'Fator X'
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L1'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 53
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L2'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 98
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L3'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 143
            Top = 37
            Width = 42
            Height = 21
            Ctl3D = False
            DataField = 'L4'
            DataSource = dsTerminais
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object DBCheckBox9: TDBCheckBox
          Left = 254
          Top = 44
          Width = 202
          Height = 17
          TabStop = False
          Caption = 'Imprimir QrCOde/Logo Lateral'
          DataField = 'QRCODE_LATERAL'
          DataSource = dsTerminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 597
    Width = 784
    Height = 64
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 630
    ExplicitWidth = 736
    object cxGravar: TcxButton
      AlignWithMargins = True
      Left = 208
      Top = 8
      Width = 150
      Height = 48
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F10 | Salvar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000098749444154785E8D570B7054D519FE
        CEDDBB9BCD6349480C7910214882488804C25B5E2518F041A5D5215550192D30
        BCA28E531D713A6851C6B1EA0C68950A5A2B2275C096F2465AE340B0BC820931
        40020979BFC826FBCA66F73ECEE9B967EF4D769C71DAFFCE37FF393B9BFBFDFF
        F7FFE73F1BB2E5E3FB21D98880CD80046BCF01489201BE2600B111AC7FF008C1
        CF1BDE3FB284E99482E90C3A87C641752ABCAE510ED3F3FDDB1BBF87CCC0F0EC
        F29520C643220020F6109F0169714F58A4E4278836C6814D0F9F30BC40AB7F2F
        63E00F63A0CCF0D45C53ECFC72B7E09169E42B0695F0E235661019F183C41207
        D9B6A7E8DE78977D991C438A2409B184907BB987A6EAD58C61203CA07FEBED0B
        1F7CFDB767AE00A059AE1514006BF6EE315F6D1A231C919D0C33326A0621C819
        9099F0B495A5EDADBD45BF8A75C96FB8E25DB9A3D2C6202D39030ED981C4F814
        18E6EDEF2D50B4103ADCEDB39A3B6FBDFAEE3F8A6E04BCCAEB5B569D3900401F
        95F8246DF47C4605970188A5A90035369A491CE1CC723D6B2CA49777CCCEBE23
        3D6E6F7AEA88199372272325291903AA07612D00151A3AFC4D4235598A059125
        64676660FCE809E8F5F5E656D5557CF1E6BE79CFDDBAEA796AF7D62B0DD949AB
        3400ECA67B1783A9BA59021D0688F98C1EB65664BD79E79C5F240D777E559857
        387C4C56167CA14EB4795BCDEA987D42221969340C4A19FCAC87EFEBE1B02560
        56C16C34B6B64C03BBF07DE91F0B57EEF85DC5BF01A83929AB51DBB393314A87
        14A0D0203182ECA48D82FCA5EDB3162627C71D9E3F6D8EC319CF33F55E15C406
        3B61C259120A0C351A85A1685077C31FEA414A4A06164E2F1A5E76BEECE0FA6D
        05CB3EDC5C2982E0ECFC311550354D9460CCF01784EC6B5F9F9CE31A1EF3E5FC
        69331DD4EE86271830B32591004874374522B10415C930030C7575DDB878E93C
        1E7D6406164C9F6F3F1E3AB5A7E4B9F10BBEDA7EBD767CEA7AADF4DD422A0208
        0407409906ABE192D3623E2D9C383145957B785BFB20116236272049569FB021
        723320EB34793D611C3D5A8B8CC44528C85E8CBF1FFA14CB1F9330F5DE29C9FD
        81EF770158C44177BC58218E2A79F2F779D8B3B5469097BE3DA564D4E8115FCC
        9B33017DC15608498814A580F05607588D14E96C063434F4A2EC9B3E3CB6E80D
        E48D9B02095EBCB4A318C50FDC85FCDC3C949FBD8ADADAB6673EDB5AB30F80C2
        4165C6E860F676A76DCBA4BC1CB8032D42154244001C881C52CA4186C80931BC
        8800577FBC8DCA0B4E6C28D983D1776622CEA9E0B50F4BB172F922C4247AD0ED
        6FC0A4BCF168EBE87E15C0D71C9A50C0225FFEC2B84513F2338F2F583016DE60
        A718BBD663B0F22D303425ADDCC52B2A2A3A50579D8875251F223B2B034E8782
        57B69760EEBC4C0CBBA31FFD8A579C92E4F82C9C2D6F407545EB23073FBA7912
        802A5B93CEE69016DF91928EF6BE7638EC549C0A227120527BCAF792352BC810
        7979791BBA1A33B0E1F10F90959106BB1CC6CBEF95A0707A3212520308843DA0
        0CE23EE8F6B6237D443A6E24741603304E84260356A9C9F4D804825E7F801332
        24C5C7F04024681AC3951FDC98322D15B24D1A9A011C953FDC46676326D6977C
        809199A9888BB1E1FDBD9B917127436636833FDC2732D7548A605813AAC7B952
        20C9642A001B07061560C0DD924383AE68D028438F974296249CFDB60B0E9A8B
        43CD4DB8FFE1118875CAA2048DB7FCB85AE944E98AF79099910A1B9170F1C723
        B8D57916CB7F5300777F1B544D87A2E8DC3350508083385443D15C3300622940
        18C3308D0C40339A8F49A0D071E17437D212E6E08987DEC08DC6CB38786033E6
        172741A70CE5653EACFEF527B833331386296A37761D780DCB4BA6A0C5DD24AE
        5C0AF3F603336704A02304C6E0B2782D0508A380AA0D80722F1106354CE0F3A8
        D8B86C1D46A6A72039693E626376E08B63CF43D1827862C976DC33F61ED1974E
        07C1B68F5FC4CCD963D0A7B440D535733282830ECD09468DBF1565B16A29C134
        5D67BE50488D1C30CA9010EFC4234B67E283FD1B40582F9C4E3BF22714E29965
        BBF1C07DAF60EAC4D9B0C936714CCF5CDA075FB81EA923091435049D52014A75
        3026BC088401E01C06971F51F73C33A02BAC2E1460002542AE012500D5D18BFB
        E66463CBCE1590A5001C7619E3C78EC7FC69CB6077D845869AEEC65F0FBF85D9
        7373D117EC86C684DC11586B911405A180C1A186683D00CAC12C05286F964BBE
        3E5D9C320A26E00FF6C296E0C3DD79097873D72A0C8B6590650971713142E218
        AEC09747B76162FE48045997208B266783DE04213038C203FA65003A0793AD00
        825EF55F5D6DC14D29A362C0A80A888621F004DC189E9A8AB410C53B9FAFC18B
        4FED465F4087615D3D55A8AA3F85E287F278F6ED436319885A47C8B913B3A5AB
        AD1F7E8F5A2602889E841CF14BD7E55E2E98EBBA2B2E915A3FD306EF80545726
        6EDDF023D1968F358FBE87B0A2E10F1F2F436E5E0CB418237B8B58500A811933
        F72C32B6FBBD12AACAFD8D87FE543703809743911E5C9BCBCC7AA8813EE5AD5B
        D7544844162FA48C1A10EBDBBE768C1D9784AEFE0A7C75722B2ED57C0D6AEB86
        1CDF0F4DD323B2EB3A984E394CF961958342820D4DD71478BA43EF0008997701
        64668509A8657F6BDAFFE09A9C351D4D646A6A9604C62C251828083A3C4DC89F
        340615178FE1C4B9CF515434113E437A625E4E11A5C51AE2D8411881848E6605
        3D9D0355A7F737EF07101E6C42C6DDF19A0DCCAC49B8BD3EB0A9A126DCD7EFA5
        919751F33C9B8DD4D2DB80A9D34763E5E30B11827B5025F613C5740630018280
        97A1A17AC0D37CCD5B0A2028B2378D2C7E36079B9EBF5FE4B834FFCF3200E7CC
        5F662D4ECF8EDB973359B6BB9225B31798353B84271187E84F59D4860976C0D7
        ABA3BE52535B6F069EBE78B4FD38807E0E6DC9EA1C7662D74D4888324B857387
        5A4FB537F4AFB87E5EF576B7E8603055B0BA1A667DAD7F340C44D79C463EEF6E
        D570FDBCE66BAD0DACE2E427ADEC0F57AF638C12444D420ACB4C79062E1C693B
        515FE929BE79395C59F31F05FE3E5112F35C4380320C0560B63277E2BB57CFA9
        A8BBA45CA9AB703F70F144FB3100010E75888F5901584BE048F55A161DC4B573
        B76B4E7EDA50DC7C2DB8B1FA74B8B9EABB305AAE6BF0BA75881E31874C90AF7D
        BD142DB52AAABE53507D5A6969AA09967EF397FAC57517DDD5427693FC30E720
        1832D99AC804148C7B439EA5F91F1100BA755CCEFDB3750F8003050BD3A7BBDB
        9D4B1C4EDB1C02E6B4D9A571A26E2AAB63602125A49FF576874F5695755E3012
        883A6EBA450ECBA29BF0E7ECE42737AD60257358D92D98FBC1516E428D826E02
        9C83FDCCFB41F0FF1989F292E94D086316A20B2CFCFFB0FF02A614B488B3A126
        BC0000000049454E44AE426082}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 365
      Top = 8
      Width = 150
      Height = 48
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'ESC | Sair'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001D744558745469746C6500436C6F73653B457869743B426172733B52
        6962626F6E3B4603B9E80000067749444154785EC5975B8C955715C77FFB0C03
        33C3CC30F70B3894D62284526BB11A630CC6041F7C6C4C7CD0686234B16AD486
        165B07DBDADA02112592A8313ED4C4F8A0D6A4DE22314D0DB4182EA558532816
        2D22B470E6C2309773CE9CF9F65E6B393D7B67BE1C652693F0E097AC597BCF5E
        7BFEFFBDD67FAF6F3E6766FC3F1F0770F9E03E3018BAFF61B79CF89B347BFDA9
        C76CD3EEC77302970EEC61FDCE6197E685E4DD32C1DD32095B320134590A48C0
        A71F7DE823ED4D4D7B0BCEDD0386A56DC983190BBF27CE359F80FDF71E4BD105
        30C58B9E1E2B9586771CFCD19F8100D80AF2A7D0DEB8F2E7BD3B3EDCDFD4DF07
        66C93402A9C6B128A6423E5630C14440051305115403A8804433152A2313DBEC
        EF6FFE0CB805904420CF8006E95FD1A8CC9E394D7E4CB0053244AF8699629A08
        461F89A962D1D2389153452B152C843EA021619267009C7A8F56CA58F0398184
        8D691A5B1D09CC52161493E823B8448212308D6B966584CCE7A5AF2700E23D16
        32340BE4E84490E4731239789E811CDCC4C0847C2E48F048161625E0240B98F7
        98CF484F0E080BBAB01AB0E1EAB220A0D19B1AA4AC246DA02258E611BF0481AC
        5CAE9D5E7D96C7249957CB555E7DFE38D72E1719BC7D3D776C7F2F858602A812
        7CE0CC9153BCF9FA45BAD7F572D7F66DAC6C5A1949254226010D9EB9E952DD15
        2DE413A88E5F271B29A273199AF91A11F59EEA7489D3BF3F4CF5F6BBE97DE400
        93ED6B79F9D00BF86A153F57E5D4A11799EA1C62ED933FC06F7E3F27FE78B4B6
        C7BC47BD60B5BF13C826AE53199FACCB40A14E8462F8B12295F3E70853939144
        F09C3DFC126CFB10FD9FF80C1BDFBD89ADBB86C9D66DE2AF7F3A366FC7999B1F
        F77FEE2BDCBA752377DDBF93E60F7E94578FFE0D4DE5947285AC78856C6A0A09
        8B8BD0A92A1A02522933FBC6795C4B0B8D1D5D4C8F4CB0FDE01798758D74AE69
        056714767D8333FBF71244E9FBEC971918E8A2A7BB1DCCD8FEE0D7F8CD8EDF12
        A6A791D20C9A650BFA5065895BA0D408980866C0CC0C3253A27BB08B0B3FF921
        DBBEF908D54C5185EEDE0EEED835CCE454998E8E56BA3BDB30355A9B1A38F1E4
        77E85BD743363E1E819D81827A41040016C98045118A000E4B22DC706B2FFF7C
        E5255ED9B787F73C3C4CA92A007477B7D3356F0006B4AD6AE0D413DF62F2E563
        6CB9733DFEDA0446EA98383404546B902EDA0D4A60C1C7A6913722B2F131DEB9
        7980F3C75EE0E4E3199BBFBE1B289007818A727CEF134C1D7F912D77DF46363A
        927A972E5C5D1545456E2842072022484DFD310BF33E9209816A710424303131
        C3D8580904C85F0FA8417966164CA85CB9124BF9B6F9B7BDD4C61A04D1254BA0
        A9040ACE812AE662CFBF3452267BD73DB47FEA4B980331C320B1886719FAEA43
        9CDFFF6D2EBC76820D036D14483116332AF525A8F9FFD180F92C3277907E50BC
        EEF19BDF47DB27EFA36FA08BAE8ED598291DAB1B311A982C790CA5ABAB8D8D0F
        ECE68D034F71F9DC4986BA9A2338402A81AA2E710B4408998F6D137016395432
        E3CE9DBB28DB8A080E74B4347266FF1ECCA8F585899207A0B3AB9D0F3CFA1847
        EEFD182A010052EB560D4890A5FA00988F41CE81A9033356B736537DFE776CF8
        F4E7295703EDCD2B38F7BD7D4CFCE50866C659075B1E1C66BAE2696D5EC9BF9E
        7E9AB6B6164C322C7F8322216601E086B74044109F45D11891048E819E162E3D
        FB0C00B7DDFB71CE7EF7C75C3B7684A1C13560C6E5A38779CD8CADF77D917FFC
        F4192EFEFA97AC5FDB811F1F4D2F2B0043832C5A02B7A0816A2C010089443636
        CA3BFAFB29FEE1592EFCEA17B4B63633D8B39AF2BCDA01D6F6F5317AF228879E
        7B8E96E6466E59D7493636827AC1111B91295810546CA94EA804B15A20712B0E
        301364E42A7DBD3D340CAC21944A54E7C193C699BD7295DE9E6E06FBFA91D92A
        95AB45508F012AA49328228A982EAE0113C1BCA1AAB9789C8B3E134A6FBD05EA
        A23AB1DAD8A5D3558A455052DB755804A2FEFF08C144EAFB40CE06276AE88206
        1C140C97440409D80073092892A4000818699ED62001E330334414155DB4159B
        88C43AA944ACA41F88DED51D2A6581024E351E32464512A4B95A0EA00BD9B568
        39010344828C8C5D9FEB6F2A7854638CA9D5A71250E728600BEC345F8B802ECE
        AD6E9FA39C15F0AAA340A8D70028307771B6F2409055DF2FD0D403F9FDD5046C
        B9C7CCE52932F2960BD1CCF23514C321A6D7FE9DCDEE02AA40DE91926F005601
        4DB93670CBFC1473CBFC34F3097CF6465F469216B2A5406EC22CC7216F873705
        72F364F80FA3C7188E64BF0D450000000049454E44AE426082}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairClick
    end
    object cxExcluir: TcxButton
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 193
      Height = 48
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F4 | Excluir Terminal'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B2000009AA49444154785E8D96097054D7
        9946CF7DBD6869ADAD1648AC025B8AC35694C106EC84C910E2B552C626768D17
        927126953126D86106B298941D3B4E4219882B95C2E5D8659C541687C5186C27
        98D8C090106C30036637C8C6420809099044AB97F7FADD25AF6EF54B75854A25
        57F5EBEB5BAA7AE7FB37BD165D2B9E020460E5CA63C00840DB0BA3BFFBB8E01F
        1F3A9E586E0C06A30D020255F633068CD14198E25DD3B6FAA744D186E6871610
        3A305C79A2C996102A4AE34AABD0F2E40F0D60C3EF395E2483556D306830868F
        57BD0440545B57DAC229C50B1180C785100710FB962D995253563E2FE2389F17
        980A4730C56883D2EA089ABC2BFD1D17B3D9CD739E7BE130A063CD13B435D27D
        D4A035C69AB181560A6BC028EBE8CAAC1BC68759460E7D67E99D8978FCE9584D
        756BA2ED2ACAC78EC089C5890F6B000C5EEFC5A9DAF3C87774CDAA3AD1BEFCF8
        D225ED97F3F92767AD797E23A0622326E942D7618D36802D3F4A692C474985D1
        BAA4C286D8B03601383B163DD432B2AEEE378991CD33EA6E9846D9F006E4E020
        EAF265D4904FA6F323301AA722018E43D55523A9BB6E326EEFA5D6F23FEDFDF5
        A1C58B1E3D70AEFBCB0F6E7AED747CD4140918AF63BFB11590B2D802A5213400
        C49AAEB159BFF7E8E27F4F5627D6A566CFAC4FB4B550E83E47F683330060DB66
        15B4467A0356FDBEF3D650A4A696E6DBFE8DC4C933D74D7BE7CF7BB6DCFB1F0F
        DCF1CAEFB6037E59CB74BCF6778D94AA68404A821B08417CE4440BDFFDF0C239
        C9DA9A379ABE38371E118ADCD143608A6C0CA258CA709AB193AD8350A034FE85
        3E0AE7CF53317A0CA3EFB9BD5EADFFFDE64D5F9A3FEFAE8DAF5A135A29A38B06
        C489258F32FE9B0F523676AA2DFBE6FF5CD0DA3A7CF8EED1F36F6D3099016450
        EED2F10C81188A6A570BAC81623B95C2DE038DD62711A966DA7FB5A57F5F67E7
        E716BFFDF64940EEB9F73E7DC32BBF255AB89C06290907AEA5BA766DEAC6E90D
        7AE042001FF8BBD5B4E0A2DA08E1816A9BBD3514A8D1D2DEBDA01231AFC08839
        B392535ECFBD08CC057400B72938856C9EB2ABA6DBEC777DEDAB775734266755
        D49653B8D887F16510BE0D7730CDBEF56FF187956B39F8C6FF21F36EF837A4EB
        72F0CD3FF1FAAA5FB267C31F71D343185FA17D89917ED08E6E2A130E95C31B66
        BC72CB6D7703514060B74029C2EC134EF489E4B409E43B3B402A8C1000F83997
        FD01544D9A49E382A50CFE7E3DFB376FE7DADB3E0BC6F0FE9BBB709BAE66C4D3
        4BC8ECDCCABB9B7670FDED3752561643DB762872A73E64C48CC9F4779C5B0EBC
        0A48C08810BEE1E65BE7B64D6CDB3A6AF654BCDE1E848563F5E05B7BF0DAA691
        BAEB7E9A5235F852717CF50AE2E74E5903B9003EFCBFBEC1F0C65A9C489413CF
        FD0C3ED8CDB573A75938520722291F398A8F769FE0E0F153772C7EFFDD6D801F
        05009C84706E8E2562648E7C40A4B61E1171084B933E7F91D9CFFE377911A3BE
        B60A84C159F65D8EAEFC315269863DB888A6A624A9861A6B68F6D247D93C770B
        F805B432D8E194926C7B3B895435754EE426603B209D22C38918737D141FB7E3
        1332C70E2107FA318502DAF71976750BA75F584373633560D01A1A1AEB98B8EC
        31C62E5C4273006FA8AFB66B99288B7078D533345D3D06E54BB45F406632B83D
        3D76AEE2514D0C311D8800FCAD0228FD29BC1CD22F8067C89CFC9068A28A6843
        8AB6191338B6F3001FACF81153BFF318195701D010649C0C02C000D5017CFF53
        DF277DF400533E772D7E4F376A68085570ED7A8220EA7B08655A8B0644388D42
        6A5D433E87F61438B6F7F84369FCCC106E572757B58EE1E4FB7BD8F7E4F7B9E6
        5BCB01A7F41D82569AF77EFC14E9FD7B98785D1BD96347304A85AB6A0D0442D4
        CBA095AA0EB9610584F25500CBDA61C1080402843562F73ADB711AE3BAF4F70F
        71E14286C692CC35964376286FFB9E3DD381830583213460CDF8D92C526ACB2C
        6D014AC9B497F71A1C5DFCC7220442601504672FE429B44DA7E6FE8731029431
        166EF106C061F423DFE6D4CA1FF0F1F1BD8C1B596D096883C15805819BF19052
        0E855C073080710BEA9497F7D15A61DF904AA203D552D2D3EFE15F731DD50F2C
        64585392645D0263347595116A2B6318FB7C4D32594DEBFF2EC74C9C41674F06
        2D354A29B4AFB0AA35D94C81BC941F87850B2BA0B385C2FE4C363A2B562940FA
        48276C8320EFC3E4FF5946D644B17008E0B1600D7F64E193826DE8CFF800D427
        6B98F9F813ECBAF3566BDE846F4E6D6CC3D3699F21AF700050941AE875F3EFD4
        A5A38B6BE2805416AE1D70105426AA70B7BF4ECB82AF9175253515514EAC5E41
        FF5F76D9FE1E133061E963A4733E5515713E59BB96EA9A4A942C20B4C1983060
        60C0A5CF7377961A30805A7EEAC8AEB59F9E763A1D33E3AB2B44F125031A8761
        C3CAE97C6D0300E3EF9CCFB155CF7369CF2E4635558380AEDD3B396E0C931E5A
        48FBCB1BE8D8B88E31236BF12EF4DACC2DD97118E8CF3230A43A56F77EB21390
        80717E71CDB47090FDEE7C7E45DFA0414A85B2FD0F5449DCBEF334A712F4BCB1
        8977EEBD9BF4FBBB696AA820DBDD4DEE5C37231A135CDEBB9BADF3EFA27BCB46
        468F08E07D7D685F15E748E37B92AE8B8AB36E6E15E002B2F832D2E136F9DFEB
        38BE61CDF8C95FAFECD7D31BAA852D3F8E00A9C805B0D4B01491541299CB920F
        C0DA1800B2E77A48A5523407215D975C4F8F5D6761849D01AD0D3DFD3E035973
        68F5C5331B008F70089552EC9833DDCCD9B15F01DEFFA707160B5DFB878828D4
        D7C4238888C0FE488FA1B3DD200CE28A6FE5866C770F082C102300835D55A519
        C848BA07C5E0DE5CFA112017660F209E1B3B91D66601C017DE3B1A05CA97348E
        BDB9B5BCF295E15585586D854324E2E0005A08AB06AC6A4A8F097F833156A52F
        83AC15E70622FE312FF7959786CE6F05B2805C59DF62960D7410B5BBEAC9F061
        B60ACF5E38F3F6A2E4E8FB0B7EC58BAE57A8ADAB8078DCC1118E3541291C1366
        5C1461E7C79392FE0C9CCF88F4875E66E1CBD9BE6D61F69B278D33273BC3AFE5
        5A53F02518C22381FC9AFEB36FCDAB4ADD34D3AFF9F9E5BC999A2CF7A98C1B9C
        88433C0810441C0703282DC1807D9654643DB8948D30503087F714D20BB7B983
        C78B701F40157C947100103F69BC9AF1F52E1A8363605EFBB9B0B911A00CA85C
        5C33E29EE648FC5B15113326115354C634424059545BB02705DA0872BE20E339
        E42567BB7461E5F3D9DE0D40B674EAD78F6B366068EF8BB13C7B16B1AA613C2D
        355944883530FF93DEF0E600D1A2918AFB2A1BAF1F1589DD5249E4330EA23C26
        68C340C1E853DAE0668CFA4B00DEB6CEBDB40FC8978015C0BA318D619DF9E852
        5960A00BF14CFDB87068AC2208BF72F3ED7467A99108102B8948D120802E865F
        12AA18FC3031CA70E5C11AE05F3BA2449DA28601604A421715ABFFE4FC153983
        B3D2BAD003AD0000000049454E44AE426082}
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxExcluirClick
    end
  end
  object dsTerminais: TDataSource
    DataSet = qryTerminal
    Left = 72
    Top = 368
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 96
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 296
  end
  object qryTerminal: TFDQuery
    OnNewRecord = qryTerminalNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from VENDAS_TERMINAIS'
      'order by NOME')
    Left = 88
    Top = 232
    object qryTerminalIP: TStringField
      FieldName = 'IP'
      Origin = 'IP'
      Required = True
    end
    object qryTerminalNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 35
    end
    object qryTerminalIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 1
    end
    object qryTerminalUSAGAVETA: TStringField
      FieldName = 'USAGAVETA'
      Origin = 'USAGAVETA'
      Size = 1
    end
    object qryTerminalFABIMPRESSORA: TStringField
      FieldName = 'FABIMPRESSORA'
      Origin = 'FABIMPRESSORA'
    end
    object qryTerminalMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryTerminalPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 50
    end
    object qryTerminalCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'CONTINGENCIA'
      Size = 1
    end
    object qryTerminalNVIAS: TSmallintField
      FieldName = 'NVIAS'
      Origin = 'NVIAS'
      DisplayFormat = '0'
    end
    object qryTerminalSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryTerminalNUMERACAO_INICIAL: TIntegerField
      FieldName = 'NUMERACAO_INICIAL'
      Origin = 'NUMERACAO_INICIAL'
      DisplayFormat = '0'
    end
    object qryTerminalEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryTerminalVELOCIDADE: TIntegerField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
      DisplayFormat = '0'
    end
    object qryTerminalIMPRIME_FECHAMENTO: TStringField
      FieldName = 'IMPRIME_FECHAMENTO'
      Origin = 'IMPRIME_FECHAMENTO'
      Size = 1
    end
    object qryTerminalLOGADO: TStringField
      FieldName = 'LOGADO'
      Origin = 'LOGADO'
      Size = 1
    end
    object qryTerminalEH_CAIXA: TStringField
      FieldName = 'EH_CAIXA'
      Origin = 'EH_CAIXA'
      Size = 1
    end
    object qryTerminalVERSAO: TSmallintField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      DisplayFormat = ',0.00'
    end
    object qryTerminalTIPO_BROWSER: TStringField
      FieldName = 'TIPO_BROWSER'
      Origin = 'TIPO_BROWSER'
      Size = 30
    end
    object qryTerminalBALANCA_PORTA: TStringField
      FieldName = 'BALANCA_PORTA'
      Origin = 'BALANCA_PORTA'
      Size = 10
    end
    object qryTerminalBALANCA_VELOCIDADE: TStringField
      FieldName = 'BALANCA_VELOCIDADE'
      Origin = 'BALANCA_VELOCIDADE'
      Size = 10
    end
    object qryTerminalBALANCA_MARCA: TStringField
      FieldName = 'BALANCA_MARCA'
      Origin = 'BALANCA_MARCA'
      Size = 10
    end
    object qryTerminalBALANCA_PARIDADE: TStringField
      FieldName = 'BALANCA_PARIDADE'
      Origin = 'BALANCA_PARIDADE'
    end
    object qryTerminalBALANCA_DATABITS: TStringField
      FieldName = 'BALANCA_DATABITS'
      Origin = 'BALANCA_DATABITS'
      Size = 10
    end
    object qryTerminalBALANCA_STOPBITS: TStringField
      FieldName = 'BALANCA_STOPBITS'
      Origin = 'BALANCA_STOPBITS'
      Size = 10
    end
    object qryTerminalBALANCA_HANDSHAKING: TStringField
      FieldName = 'BALANCA_HANDSHAKING'
      Origin = 'BALANCA_HANDSHAKING'
    end
    object qryTerminalDATA_VERSAO: TSQLTimeStampField
      FieldName = 'DATA_VERSAO'
      Origin = 'DATA_VERSAO'
    end
    object qryTerminalDESTINO_IMPRESSAO: TStringField
      FieldName = 'DESTINO_IMPRESSAO'
      Origin = 'DESTINO_IMPRESSAO'
      Size = 30
    end
    object qryTerminalDT_VERSAO: TStringField
      FieldName = 'DT_VERSAO'
      Origin = 'DT_VERSAO'
      Size = 50
    end
    object qryTerminalESC_POS_DIRETO: TStringField
      FieldName = 'ESC_POS_DIRETO'
      Origin = 'ESC_POS_DIRETO'
      Size = 1
    end
    object qryTerminalPAGINA_CODIGO: TStringField
      FieldName = 'PAGINA_CODIGO'
      Origin = 'PAGINA_CODIGO'
      Size = 30
    end
    object qryTerminalDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      Origin = 'DATA_SISTEMA'
    end
    object qryTerminalIMPRIME_DUAS_LINHAS: TStringField
      FieldName = 'IMPRIME_DUAS_LINHAS'
      Origin = 'IMPRIME_DUAS_LINHAS'
      Size = 1
    end
    object qryTerminalMARGEM_DIREITA: TFMTBCDField
      FieldName = 'MARGEM_DIREITA'
      Origin = 'MARGEM_DIREITA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_ESQUERDA: TFMTBCDField
      FieldName = 'MARGEM_ESQUERDA'
      Origin = 'MARGEM_ESQUERDA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_INFERIOR: TFMTBCDField
      FieldName = 'MARGEM_INFERIOR'
      Origin = 'MARGEM_INFERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_SUPERIOR: TFMTBCDField
      FieldName = 'MARGEM_SUPERIOR'
      Origin = 'MARGEM_SUPERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalLARGURA_BOBINA: TIntegerField
      FieldName = 'LARGURA_BOBINA'
      Origin = 'LARGURA_BOBINA'
    end
    object qryTerminalESPACO_ENTRE_LINHAS: TStringField
      FieldName = 'ESPACO_ENTRE_LINHAS'
      Origin = 'ESPACO_ENTRE_LINHAS'
      Size = 1
    end
    object qryTerminalLINHAS_ENTRE_CUPOM: TStringField
      FieldName = 'LINHAS_ENTRE_CUPOM'
      Origin = 'LINHAS_ENTRE_CUPOM'
      Size = 1
    end
    object qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_ATUALIZACAO'
      Origin = 'DT_ULTIMA_ATUALIZACAO'
    end
    object qryTerminalTAMANHO_FONTE: TIntegerField
      FieldName = 'TAMANHO_FONTE'
      Origin = 'TAMANHO_FONTE'
    end
    object qryTerminalFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryTerminalEXIBE_F3: TStringField
      FieldName = 'EXIBE_F3'
      Origin = 'EXIBE_F3'
      Size = 1
    end
    object qryTerminalEXIBE_F4: TStringField
      FieldName = 'EXIBE_F4'
      Origin = 'EXIBE_F4'
      Size = 1
    end
    object qryTerminalEXIBE_F5: TStringField
      FieldName = 'EXIBE_F5'
      Origin = 'EXIBE_F5'
      Size = 1
    end
    object qryTerminalEXIBE_F6: TStringField
      FieldName = 'EXIBE_F6'
      Origin = 'EXIBE_F6'
      Size = 1
    end
    object qryTerminalFRENTE: TStringField
      FieldName = 'FRENTE'
      Origin = 'FRENTE'
      Size = 40
    end
    object qryTerminalRETAGUARDA: TStringField
      FieldName = 'RETAGUARDA'
      Origin = 'RETAGUARDA'
      Size = 40
    end
    object qryTerminalCAMINHO_SAT_DLL: TStringField
      FieldName = 'CAMINHO_SAT_DLL'
      Origin = 'CAMINHO_SAT_DLL'
      Size = 200
    end
    object qryTerminalMODELO_SAT_DLL: TStringField
      FieldName = 'MODELO_SAT_DLL'
      Origin = 'MODELO_SAT_DLL'
      Size = 30
    end
    object qryTerminalTIPO_SAT_DLL: TStringField
      FieldName = 'TIPO_SAT_DLL'
      Origin = 'TIPO_SAT_DLL'
      Size = 30
    end
    object qryTerminalQRCODE_LATERAL: TStringField
      FieldName = 'QRCODE_LATERAL'
      Origin = 'QRCODE_LATERAL'
      Size = 1
    end
    object qryTerminalDATA_SCRIPT: TSQLTimeStampField
      FieldName = 'DATA_SCRIPT'
      Origin = 'DATA_SCRIPT'
    end
    object qryTerminalPARAMETROS_ADICIONAIS: TStringField
      FieldName = 'PARAMETROS_ADICIONAIS'
      Origin = 'PARAMETROS_ADICIONAIS'
      Size = 200
    end
    object qryTerminalCOLUNAS: TIntegerField
      FieldName = 'COLUNAS'
      Origin = 'COLUNAS'
    end
    object qryTerminalL1: TIntegerField
      FieldName = 'L1'
      Origin = 'L1'
    end
    object qryTerminalL2: TIntegerField
      FieldName = 'L2'
      Origin = 'L2'
    end
    object qryTerminalL3: TIntegerField
      FieldName = 'L3'
      Origin = 'L3'
    end
    object qryTerminalL4: TIntegerField
      FieldName = 'L4'
      Origin = 'L4'
    end
    object qryTerminalTIPOIMPRESSORA: TStringField
      FieldName = 'TIPOIMPRESSORA'
      Origin = 'TIPOIMPRESSORA'
      Size = 1
    end
    object qryTerminalEMPRESA_ATIVA: TIntegerField
      FieldName = 'EMPRESA_ATIVA'
      Origin = 'EMPRESA_ATIVA'
    end
    object qryTerminalTEF_LOG: TStringField
      FieldName = 'TEF_LOG'
      Origin = 'TEF_LOG'
      Size = 200
    end
    object qryTerminalTEF_GERENCIADOR: TIntegerField
      FieldName = 'TEF_GERENCIADOR'
      Origin = 'TEF_GERENCIADOR'
    end
    object qryTerminalTEF_MAX_CARTOES: TIntegerField
      FieldName = 'TEF_MAX_CARTOES'
      Origin = 'TEF_MAX_CARTOES'
    end
    object qryTerminalTEF_TROCO_MAXIMO: TSingleField
      FieldName = 'TEF_TROCO_MAXIMO'
      Origin = 'TEF_TROCO_MAXIMO'
    end
    object qryTerminalTEF_SOFT_HOUSE: TStringField
      FieldName = 'TEF_SOFT_HOUSE'
      Origin = 'TEF_SOFT_HOUSE'
      Size = 100
    end
    object qryTerminalTEF_REGISTRO: TStringField
      FieldName = 'TEF_REGISTRO'
      Origin = 'TEF_REGISTRO'
      Size = 30
    end
    object qryTerminalTEF_APLICACAO: TStringField
      FieldName = 'TEF_APLICACAO'
      Origin = 'TEF_APLICACAO'
      Size = 50
    end
    object qryTerminalTEF_VERSAO: TStringField
      FieldName = 'TEF_VERSAO'
      Origin = 'TEF_VERSAO'
      Size = 10
    end
    object qryTerminalTEF_VIA_REDUZIDA: TStringField
      FieldName = 'TEF_VIA_REDUZIDA'
      Origin = 'TEF_VIA_REDUZIDA'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_DESCONTO: TStringField
      FieldName = 'TEF_SUPORTA_DESCONTO'
      Origin = 'TEF_SUPORTA_DESCONTO'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_SAQUE: TStringField
      FieldName = 'TEF_SUPORTA_SAQUE'
      Origin = 'TEF_SUPORTA_SAQUE'
      Size = 1
    end
    object qryTerminalTEF_REAJUSTA_VALOR: TStringField
      FieldName = 'TEF_REAJUSTA_VALOR'
      Origin = 'TEF_REAJUSTA_VALOR'
      Size = 1
    end
    object qryTerminalTEF_MULTIPLO_CARTOES: TStringField
      FieldName = 'TEF_MULTIPLO_CARTOES'
      Origin = 'TEF_MULTIPLO_CARTOES'
      Size = 1
    end
    object qryTerminalRESTAURANTE: TStringField
      FieldName = 'RESTAURANTE'
      Origin = 'RESTAURANTE'
      Size = 1
    end
    object qryTerminalDELIVERY: TStringField
      FieldName = 'DELIVERY'
      Origin = 'DELIVERY'
      Size = 1
    end
    object qryTerminalPDV: TStringField
      FieldName = 'PDV'
      Origin = 'PDV'
      Size = 1
    end
    object qryTerminalCAMINHO_BAR: TStringField
      FieldName = 'CAMINHO_BAR'
      Origin = 'CAMINHO_BAR'
      Size = 100
    end
    object qryTerminalCAMINHO_COZINHA: TStringField
      FieldName = 'CAMINHO_COZINHA'
      Origin = 'CAMINHO_COZINHA'
      Size = 100
    end
    object qryTerminalUSA_POS: TStringField
      FieldName = 'USA_POS'
      Origin = 'USA_POS'
      Size = 1
    end
    object qryTerminalUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Size = 1
    end
    object qryTerminalNUMERO_LOJA: TIntegerField
      FieldName = 'NUMERO_LOJA'
      Origin = 'NUMERO_LOJA'
    end
    object qryTerminalUSAR_NUMERO_INICIAL: TStringField
      FieldName = 'USAR_NUMERO_INICIAL'
      Origin = 'USAR_NUMERO_INICIAL'
      Size = 1
    end
    object qryTerminalMODELO_TEF: TIntegerField
      FieldName = 'MODELO_TEF'
      Origin = 'MODELO_TEF'
    end
    object qryTerminalIP_SERVIDOR_TEF: TStringField
      FieldName = 'IP_SERVIDOR_TEF'
      Origin = 'IP_SERVIDOR_TEF'
      Size = 30
    end
    object qryTerminalNUMERO_LOGICO_TERMINAL: TIntegerField
      FieldName = 'NUMERO_LOGICO_TERMINAL'
      Origin = 'NUMERO_LOGICO_TERMINAL'
    end
    object qryTerminalPORTA_PIN_PAD: TIntegerField
      FieldName = 'PORTA_PIN_PAD'
      Origin = 'PORTA_PIN_PAD'
    end
    object qryTerminalMENSAGEM_PIN_PAD: TStringField
      FieldName = 'MENSAGEM_PIN_PAD'
      Origin = 'MENSAGEM_PIN_PAD'
      Size = 200
    end
    object qryTerminalIMPRESSORA_FASTREPORT: TStringField
      FieldName = 'IMPRESSORA_FASTREPORT'
      Origin = 'IMPRESSORA_FASTREPORT'
      Size = 1
    end
    object qryTerminalMOSTRA_PREVIEW: TStringField
      FieldName = 'MOSTRA_PREVIEW'
      Origin = 'MOSTRA_PREVIEW'
      Size = 1
    end
    object qryTerminalMOSTRAR_TELA_CAIXA_LIVRE: TStringField
      FieldName = 'MOSTRAR_TELA_CAIXA_LIVRE'
      Origin = 'MOSTRAR_TELA_CAIXA_LIVRE'
      Size = 1
    end
    object qryTerminalTIME_TELA_CAIXA_LIVRE: TIntegerField
      FieldName = 'TIME_TELA_CAIXA_LIVRE'
      Origin = 'TIME_TELA_CAIXA_LIVRE'
    end
    object qryTerminalPESQUISA_RAPIDA: TStringField
      FieldName = 'PESQUISA_RAPIDA'
      Origin = 'PESQUISA_RAPIDA'
      Size = 1
    end
    object qryTerminalBUSCA_BALANCA_BARRAS: TStringField
      FieldName = 'BUSCA_BALANCA_BARRAS'
      Origin = 'BUSCA_BALANCA_BARRAS'
      Size = 1
    end
    object qryTerminalIMPRESSORA_FORTESREPORT: TStringField
      DisplayWidth = 100
      FieldName = 'IMPRESSORA_FORTESREPORT'
      Origin = 'IMPRESSORA_FORTESREPORT'
      Size = 100
    end
    object qryTerminalMENSAGEM_PDV: TStringField
      FieldName = 'MENSAGEM_PDV'
      Origin = 'MENSAGEM_PDV'
      Size = 300
    end
    object qryTerminalMOSTRAR_MENSAGEM_PDV: TStringField
      FieldName = 'MOSTRAR_MENSAGEM_PDV'
      Origin = 'MOSTRAR_MENSAGEM_PDV'
      Size = 1
    end
    object qryTerminalQTD_TENTATIVA_CONECT_BAL: TIntegerField
      FieldName = 'QTD_TENTATIVA_CONECT_BAL'
      Origin = 'QTD_TENTATIVA_CONECT_BAL'
    end
    object qryTerminalIMPRIMIR_TEF_ESCPOS: TStringField
      FieldName = 'IMPRIMIR_TEF_ESCPOS'
      Origin = 'IMPRIMIR_TEF_ESCPOS'
      Size = 1
    end
    object qryTerminalIMPRIME_PREVIEW: TStringField
      FieldName = 'IMPRIME_PREVIEW'
      Origin = 'IMPRIME_PREVIEW'
      Size = 1
    end
    object qryTerminalTIPOFECHAMENTO: TStringField
      FieldName = 'TIPOFECHAMENTO'
    end
    object qryTerminalMEIAFOLHA: TStringField
      FieldName = 'MEIAFOLHA'
    end
    object qryTerminalLER_PESO: TStringField
      FieldName = 'LER_PESO'
      Origin = 'LER_PESO'
      FixedChar = True
      Size = 1
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 96
    Top = 176
  end
  object prtImpressora: TPrintDialog
    Left = 74
    Top = 444
  end
end
