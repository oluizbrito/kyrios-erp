inherited frmCBRconfig: TfrmCBRconfig
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es da Cobran'#231'a'
  ClientHeight = 458
  ClientWidth = 686
  Color = 5723991
  Position = poDesktopCenter
  ExplicitWidth = 692
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlComandos: TPanel
    Top = 291
    Width = 680
    Height = 85
    Font.Color = clBlack
    Visible = False
    ExplicitTop = 291
    ExplicitWidth = 680
    ExplicitHeight = 85
    inherited btnConfirmar: TSpeedButton
      Width = 100
      Height = 85
      Caption = 'F5 Gravar'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 85
    end
    inherited btnCancelar: TSpeedButton
      Left = 100
      Width = 100
      Height = 85
      Caption = 'Esc Cancelar'
      ExplicitLeft = 50
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 85
    end
  end
  inherited pageDefault: TJvPageControl
    Left = 7
    Top = 7
    Width = 672
    Height = 281
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    HideAllTabs = True
    ExplicitLeft = 7
    ExplicitTop = 7
    ExplicitWidth = 672
    ExplicitHeight = 281
    inherited tabDefault: TTabSheet
      TabVisible = False
      ExplicitLeft = 4
      ExplicitTop = 6
      ExplicitWidth = 664
      ExplicitHeight = 271
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 658
        Height = 134
        Align = alTop
        Caption = 'Diret'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label25: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 648
          Height = 17
          Align = alTop
          Caption = 'Remessa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 52
        end
        object Label2: TLabel
          Left = 330
          Top = 18
          Width = 42
          Height = 15
          Caption = 'Retorno'
        end
        object sbtnGetCert: TSpeedButton
          Left = 294
          Top = 37
          Width = 25
          Height = 25
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000104F64641B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA104E63630000000000000000000000000829
            343428CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0828333300000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4A6D
            71FF399FBDFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2AC7FBFF34B4
            DEFF34B4DEFF29C7FBFF458EA4FF4F5D5AFF2AC7FAFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF2FBDECFF5C7379FF998062FF988062FF606C6FFF537C8AFF2AC7
            FBFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4E8496FFCD9E63FFF6B5
            64FFF6B564FFCC9D63FF4E8597FF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF5F7075FFF5B464FFF6B564FFF6B564FFF5B464FF5E7275FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF507F8EFFD9A563FFF6B5
            64FFF6B564FFD7A363FF507F8FFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D4C646428CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF32B7E2FF6C706BFFB69163FFB59062FF6B706CFF32B8E4FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D4C646400000000000000000D66
            8E8E28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2FBFEEFF40A0
            BFFF40A0BFFF2EBFEEFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D668E8E00000000000000000B60868628CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0B597C7C00000000000000000139
            59591DBFFFFF27C9FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF27C9FFFF1DB2
            EBEB01090C0C00000000000000000020333300A0FFFF00A0FFFF00A0FFFF00A0
            FFFF00A0FFFF00A0FFFF0067A4A4000102020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000003F64640072B5B50075BBBB0075BBBB0075BBBB005D9595000304040000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = sbtnGetCertClick
        end
        object SpeedButton2: TSpeedButton
          Left = 614
          Top = 37
          Width = 25
          Height = 25
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000104F64641B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA104E63630000000000000000000000000829
            343428CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0828333300000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4A6D
            71FF399FBDFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2AC7FBFF34B4
            DEFF34B4DEFF29C7FBFF458EA4FF4F5D5AFF2AC7FAFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF2FBDECFF5C7379FF998062FF988062FF606C6FFF537C8AFF2AC7
            FBFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4E8496FFCD9E63FFF6B5
            64FFF6B564FFCC9D63FF4E8597FF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF5F7075FFF5B464FFF6B564FFF6B564FFF5B464FF5E7275FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF507F8EFFD9A563FFF6B5
            64FFF6B564FFD7A363FF507F8FFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D4C646428CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF32B7E2FF6C706BFFB69163FFB59062FF6B706CFF32B8E4FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D4C646400000000000000000D66
            8E8E28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2FBFEEFF40A0
            BFFF40A0BFFF2EBFEEFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D668E8E00000000000000000B60868628CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0B597C7C00000000000000000139
            59591DBFFFFF27C9FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF27C9FFFF1DB2
            EBEB01090C0C00000000000000000020333300A0FFFF00A0FFFF00A0FFFF00A0
            FFFF00A0FFFF00A0FFFF0067A4A4000102020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000003F64640072B5B50075BBBB0075BBBB0075BBBB005D9595000304040000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SpeedButton2Click
        end
        object Label5: TLabel
          Left = 5
          Top = 69
          Width = 191
          Height = 15
          Caption = 'Diret'#243'rio de backup do recebimento'
        end
        object SpeedButton3: TSpeedButton
          Left = 294
          Top = 86
          Width = 25
          Height = 25
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000104F64641B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87AAAA1B87
            AAAA1B87AAAA1B87AAAA1B87AAAA104E63630000000000000000000000000829
            343428CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0828333300000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4A6D
            71FF399FBDFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2AC7FBFF34B4
            DEFF34B4DEFF29C7FBFF458EA4FF4F5D5AFF2AC7FAFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF2FBDECFF5C7379FF998062FF988062FF606C6FFF537C8AFF2AC7
            FBFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF4E8496FFCD9E63FFF6B5
            64FFF6B564FFCC9D63FF4E8597FF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D43555528CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF5F7075FFF5B464FFF6B564FFF6B564FFF5B464FF5E7275FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D43555500000000000000000D43
            555528CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF507F8EFFD9A563FFF6B5
            64FFF6B564FFD7A363FF507F8FFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D43555500000000000000000D4C646428CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF32B7E2FF6C706BFFB69163FFB59062FF6B706CFF32B8E4FF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0D4C646400000000000000000D66
            8E8E28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF2FBFEEFF40A0
            BFFF40A0BFFF2EBFEEFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF0D668E8E00000000000000000B60868628CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF0B597C7C00000000000000000139
            59591DBFFFFF27C9FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CA
            FFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF28CAFFFF27C9FFFF1DB2
            EBEB01090C0C00000000000000000020333300A0FFFF00A0FFFF00A0FFFF00A0
            FFFF00A0FFFF00A0FFFF0067A4A4000102020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000003F64640072B5B50075BBBB0075BBBB0075BBBB005D9595000304040000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SpeedButton3Click
        end
        object Label9: TLabel
          AlignWithMargins = True
          Left = 473
          Top = 69
          Width = 36
          Height = 15
          Caption = 'Layout'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 330
          Top = 69
          Width = 96
          Height = 15
          Caption = 'Numera'#231#227'o Inicial'
        end
        object DIRRECEBE: TJvDBMaskEdit
          Left = 5
          Top = 38
          Width = 284
          Height = 23
          DataField = 'DIRENVIA'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          EditMask = ''
        end
        object DIRENVIA: TJvDBMaskEdit
          Left = 330
          Top = 38
          Width = 280
          Height = 23
          DataField = 'DIRRECEBE'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          EditMask = ''
        end
        object DIRRECEBEBKP: TJvDBMaskEdit
          Left = 5
          Top = 87
          Width = 284
          Height = 23
          DataField = 'DIRRECEBEBKP'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          EditMask = ''
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 473
          Top = 87
          Width = 164
          Height = 25
          DataField = 'CNAB'
          DataSource = dtsDefault
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'CNAB 240'
            'CNAB 400')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'CNAB 240'
            'CNAB 400')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvDBMaskEdit1: TJvDBMaskEdit
          Left = 330
          Top = 87
          Width = 133
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'NUMERO_BOLETO'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          EditMask = ''
        end
      end
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 143
        Width = 658
        Height = 125
        Align = alClient
        Caption = 'Cobran'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 22
          Width = 23
          Height = 15
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 255
          Top = 21
          Width = 35
          Height = 17
          Caption = 'Banco'
        end
        object Label6: TLabel
          Left = 304
          Top = 20
          Width = 46
          Height = 17
          Caption = 'Ag'#234'ncia'
        end
        object Label7: TLabel
          Left = 392
          Top = 20
          Width = 34
          Height = 17
          Caption = 'Conta'
        end
        object Label12: TLabel
          Left = 519
          Top = 21
          Width = 95
          Height = 17
          Caption = 'C'#243'digo Cedente'
        end
        object Convênio: TLabel
          Left = 8
          Top = 69
          Width = 54
          Height = 17
          Caption = 'Convenio'
        end
        object Label14: TLabel
          Left = 392
          Top = 69
          Width = 44
          Height = 17
          Caption = 'Esp'#233'cie'
        end
        object Label16: TLabel
          Left = 476
          Top = 68
          Width = 42
          Height = 17
          Caption = 'Moeda'
        end
        object Label17: TLabel
          Left = 561
          Top = 69
          Width = 35
          Height = 17
          Caption = 'Aceite'
        end
        object lbCarteira: TLabel
          Left = 135
          Top = 68
          Width = 46
          Height = 17
          Caption = 'Carteira'
        end
        object lbModalidade: TLabel
          Left = 255
          Top = 68
          Width = 71
          Height = 17
          Caption = 'Modalidade'
        end
        object Label4: TLabel
          Left = 8
          Top = 115
          Width = 119
          Height = 17
          Caption = 'Local de Pagamento'
        end
        object Label8: TLabel
          Left = 8
          Top = 161
          Width = 421
          Height = 17
          Caption = 
            'Instru'#231#227'o 1 (Texto de responsabilidade do benefici'#225'rio.)  286 Ca' +
            'racteres'
        end
        object TIPOCOBRANCA: TJvDBComboBox
          Left = 8
          Top = 41
          Width = 241
          Height = 25
          DataField = 'TIPOCOBRANCA'
          DataSource = dtsDefault
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object CODBANCO: TJvDBMaskEdit
          Left = 255
          Top = 41
          Width = 43
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CODBANCO'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          EditMask = ''
        end
        object AGENCIA: TJvDBMaskEdit
          Left = 304
          Top = 41
          Width = 55
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'AGENCIA'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          EditMask = ''
        end
        object CONTA: TJvDBMaskEdit
          Left = 392
          Top = 41
          Width = 94
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CONTA'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          EditMask = ''
        end
        object AGENCIADIG: TJvDBMaskEdit
          Left = 362
          Top = 41
          Width = 24
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'AGENCIAD'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          EditMask = ''
        end
        object CONTADIG: TJvDBMaskEdit
          Left = 492
          Top = 41
          Width = 21
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CONTADIG'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          EditMask = ''
        end
        object CODCEDENTE: TJvDBMaskEdit
          Left = 519
          Top = 41
          Width = 121
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CODCEDENTE'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          EditMask = ''
        end
        object CONVENIO: TJvDBMaskEdit
          Left = 8
          Top = 88
          Width = 117
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CONVENIO'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          EditMask = ''
        end
        object ESPECIEDOC: TJvDBMaskEdit
          Left = 392
          Top = 88
          Width = 78
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'ESPECIEDOC'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          EditMask = ''
        end
        object COBMOEDA: TJvDBMaskEdit
          Left = 476
          Top = 88
          Width = 79
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'COBMOEDA'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          EditMask = ''
        end
        object COBACEITE: TJvDBMaskEdit
          Left = 561
          Top = 88
          Width = 79
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'COBACEITE'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          EditMask = ''
        end
        object CARTEIRA: TJvDBMaskEdit
          Left = 131
          Top = 88
          Width = 118
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'CARTEIRA'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          EditMask = ''
        end
        object MODALIDADE: TJvDBMaskEdit
          Left = 255
          Top = 88
          Width = 131
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'MODALIDADE'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          EditMask = ''
        end
        object LOCALPAGTO: TJvDBMaskEdit
          Left = 8
          Top = 135
          Width = 630
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'LOCALPAGTO'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          EditMask = ''
        end
        object INSTRUCAO1: TJvDBMaskEdit
          Left = 8
          Top = 181
          Width = 632
          Height = 23
          BevelInner = bvLowered
          BevelOuter = bvRaised
          DataField = 'INSTRUCAO1'
          DataSource = dtsDefault
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          EditMask = ''
        end
      end
    end
  end
  object Panel4: TPanel [2]
    AlignWithMargins = True
    Left = 7
    Top = 386
    Width = 672
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 164
      Top = 7
      Width = 150
      Height = 51
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
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000001B8494441545809ED9731
        4BC3401886EFB4E2225A070767712D1D4404057152D05FE0A28B8320A27F405A
        70757071101DDC0427C5A2E81270D0A5D05110574510A9ED52979ECF958B2458
        C8196D53F08EF7C977977CBDEFEB9B845221DC700E38075AEB80F4B7574A6599
        A7210995A594A550611AF2202979C28C2E133B26346B282FDB3470210F21356B
        2894D0EE856B28CAF15454827F9DD7AF9FF92804F5C0E356099EF8EDDCBA210A
        8DC3350435CBE20AFE4C719EA103AA8F19EE880DE1E00084F6632D6110BA1B49
        1687D00616F93AE589DB5434542836AD947AE44219AACC47A017F658EB736FC4
        0258294E435B14F33544956D18860CCC816E6283B80A97B0004760A594555638
        A9C0F20CB4AA1C4A3005E7B00BB7A09BF8202EE1648D68AD380DE9DBB5EF57C0
        AA75E637A0E30EB10C7ADF1E621FB4BCA1159A98A790967624C3E419EE61126A
        700813A07FB02F88299CDA24464A7F93C82493F0423C81A0DECD6291F80A6B70
        4CF13A4DD7992F0B2166E0147E2636D0DF86A072A24D836239D0F2841971DE32
        F3D1D604D75094AF1DE7D057C33C591E24254F98D1710E49D398C09A2CF33424
        A1EF7F8392E8C2D5740EFC0B073E019BA489A7F76494CD0000000049454E44AE
        426082}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cxGravar: TcxButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Salvar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA7930000015A494441545809ED97C1
        4A03311086274510C422052F82C8FA1E457C08117AF3A57AF1057C0E4F5E7B15
        948A072FA222F5E4C1F5FBB1420FDD24932A4AC9307F329B994CFE4CD25D6A56
        A55660CD2A1072F7D3B6ED88D83E58552F4208B3AE241E42539234B6BA1C8610
        EEAC43363AC663C38F383B77886F996A9D83658EE2318E6CDA7EC9993985690D
        F8D6C622D28BF8FEC4554C88ED8EC033988839BD6C61883D06B2C7F279A0B3F5
        C42FC66EF23000AF403A500394738B5ECFEA31F3B5B842F94BF822FF1D219537
        B905EEC3B199ED8145BDE6E11C3C01A96CF50F3497E01D5C819F55C81C813720
        BDA1D9F7AEC09CEC9F7D34378976C10C486F698A5E6ECCCB2694BA43DB3016E8
        EC8457FEBD8CDF44CF91FCC5115B1CEA2154BC8867622594AA56AD50AD50AA02
        297FBD43A90A657DEDE749267C933EE6B6B7CB3E090FA11D2F8B92F81421FDE5
        392D491C99A39C117775D50AAC59053E01A4C49B7FA08942B80000000049454E
        44AE426082}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 445
    Top = 24
  end
  inherited dtsDefault: TDataSource
    DataSet = qryDefault
    Left = 254
    Top = 19
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 542
    Top = 34
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos de imagem|*.jpg;*.jpeg;*.bmp'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Procurar logomarca'
    Left = 364
    Top = 24
  end
  object qryDefault: TFDQuery
    BeforeOpen = qryDefaultBeforeOpen
    OnNewRecord = qryDefaultNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  CBR_CONFIG'
      'WHERE'
      '  1=1'
      '  AND CBR_CONFIG.ID_EMPRESA = :ID_EMPRESA'
      ''
      '')
    Left = 174
    Top = 18
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDefaultID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDefaultDIRRECEBE: TStringField
      FieldName = 'DIRRECEBE'
      Origin = 'DIRRECEBE'
      Size = 300
    end
    object qryDefaultDIRENVIA: TStringField
      FieldName = 'DIRENVIA'
      Origin = 'DIRENVIA'
      Size = 300
    end
    object qryDefaultDIRRECEBEBKP: TStringField
      FieldName = 'DIRRECEBEBKP'
      Origin = 'DIRRECEBEBKP'
      Size = 300
    end
    object qryDefaultVLRTARIFABOLETA: TFMTBCDField
      FieldName = 'VLRTARIFABOLETA'
      Origin = 'VLRTARIFABOLETA'
      Precision = 18
      Size = 2
    end
    object qryDefaultTIPOCOBRANCA: TStringField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TIPOCOBRANCA'
      Size = 30
    end
    object qryDefaultCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Origin = 'CODBANCO'
    end
    object qryDefaultAGENCIA: TSmallintField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryDefaultAGENCIADIG: TStringField
      FieldName = 'AGENCIADIG'
      Origin = 'AGENCIADIG'
      FixedChar = True
      Size = 1
    end
    object qryDefaultCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 15
    end
    object qryDefaultCONTADIG: TStringField
      FieldName = 'CONTADIG'
      Origin = 'CONTADIG'
      FixedChar = True
      Size = 1
    end
    object qryDefaultCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Origin = 'CODCEDENTE'
    end
    object qryDefaultCODCEDENTEDIG: TStringField
      FieldName = 'CODCEDENTEDIG'
      Origin = 'CODCEDENTEDIG'
      FixedChar = True
      Size = 1
    end
    object qryDefaultCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
      Size = 15
    end
    object qryDefaultCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 15
    end
    object qryDefaultMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Origin = 'MODALIDADE'
      Size = 15
    end
    object qryDefaultESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Origin = 'ESPECIEDOC'
      FixedChar = True
      Size = 3
    end
    object qryDefaultCOBMOEDA: TStringField
      FieldName = 'COBMOEDA'
      Origin = 'COBMOEDA'
      Size = 10
    end
    object qryDefaultCOBACEITE: TStringField
      FieldName = 'COBACEITE'
      Origin = 'COBACEITE'
      Size = 10
    end
    object qryDefaultLOCALPAGTO: TStringField
      FieldName = 'LOCALPAGTO'
      Origin = 'LOCALPAGTO'
      Size = 100
    end
    object qryDefaultINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Origin = 'INSTRUCAO1'
      Size = 300
    end
    object qryDefaultINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Origin = 'INSTRUCAO2'
      Size = 300
    end
    object qryDefaultCNAB: TStringField
      FieldName = 'CNAB'
      Origin = 'CNAB'
      Size = 10
    end
    object qryDefaultNUMERO_BOLETO: TIntegerField
      FieldName = 'NUMERO_BOLETO'
      Origin = 'NUMERO_BOLETO'
    end
    object qryDefaultAGENCIAD: TStringField
      FieldName = 'AGENCIAD'
      Origin = 'AGENCIAD'
      Size = 10
    end
  end
end
