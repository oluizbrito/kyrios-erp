object FrmXml: TFrmXml
  Left = 268
  Top = 27
  BorderStyle = bsDialog
  Caption = 'Importar XML'
  ClientHeight = 721
  ClientWidth = 1018
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnDblClick = FormDblClick
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1008
    Height = 82
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1018
    object Label1: TLabel
      Left = 310
      Top = 41
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 828
      Top = 2
      Width = 64
      Height = 13
      Caption = 'Data Entrada'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 917
      Top = 2
      Width = 64
      Height = 13
      Caption = 'Data Emiss'#227'o'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 926
      Top = 42
      Width = 52
      Height = 13
      Caption = 'Nota Fiscal'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 208
      Top = 2
      Width = 53
      Height = 13
      Caption = 'Chave NFe'
      FocusControl = DBEdit7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 751
      Top = 41
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = DBEdit10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 898
      Top = 43
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 208
      Top = 41
      Width = 27
      Height = 13
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 310
      Top = 55
      Width = 33
      Height = 21
      TabStop = False
      Color = 15724527
      Ctl3D = False
      DataField = 'ID_FORNECEDOR'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 827
      Top = 18
      Width = 85
      Height = 21
      Ctl3D = False
      DataField = 'DATA_ENTRADA'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 917
      Top = 18
      Width = 85
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'DATA_EMISSAO_NF'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 926
      Top = 55
      Width = 76
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'NOTA_FISCAL'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 208
      Top = 18
      Width = 613
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'CHAVE'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit9: TDBEdit
      Left = 349
      Top = 55
      Width = 396
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'VIRTUAL_FORNECEDOR'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit10: TDBEdit
      Left = 751
      Top = 55
      Width = 140
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'VIRTUAL_CNPJ'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit11: TDBEdit
      Left = 897
      Top = 55
      Width = 23
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'VITUAL_UF'
      DataSource = dsMaster
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 208
      Top = 55
      Width = 66
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CFOP'
      DataSource = dsMaster
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'CODIGO'
      ListSource = dsCFOP
      ParentFont = False
      Style = csDropDownEh
      TabOrder = 8
      Visible = True
    end
    object Button1: TButton
      Left = 280
      Top = 52
      Width = 24
      Height = 25
      Caption = '+'
      TabOrder = 9
      OnClick = Button1Click
    end
    object cxFinalizar: TcxButton
      AlignWithMargins = True
      Left = 109
      Top = 7
      Width = 90
      Height = 68
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'Finalizar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000252494441545809ED973D
        8B13511486DF891682A011D146D80D88853F4050109CFC007B41D045B017412C
        8D9DD8B83F61B0F0A3B3B6F1866D049BD456B385E082C8202A22C8F89C641287
        6C6E66EE4C6295C3FBCC3933F7DC7BCF9CB9645969639B0EB4EB40E49B9EE779
        4FD28EDA5B1A4551A2B6464131AC424E0176B466EEB0665E39AD27691B56235A
        33EB509315993F00935380750272FF4B6AA38278ED8BF0160EE0233C8423BE8A
        19EB4159B13C56F70CCDA6B3EA596EEC4C9DC19BECFE09C131780CADD4A443B7
        D8D18AF982BF01CFC1749F623B162CE033CFFA5029DF02CB266E15837BFCBEBC
        267E06A6135CBA7048E4FD02A71A16FCC9587304A6EB74648FE01C98EC07F0AB
        056D6852D07B36FC01C7E12A4C359C066D7CD027A32356C41B3634FF07FF0D7E
        82E9769EE7772C68432770F25DF22FC077B8C2B938893F052FC1F494A2220B9A
        125AD0A562A31714F3C162FC6FFC03309DE6721E1A2BE80CB1F94D763270FFC4
        F34FDCB5EA0CF3C70AEDD078D23A2F411D0A2C2491E424653055BF084685AFEF
        389C318C557F56FBCCB57588378925C55A6E8EF3E754B2B515C41EB1A4475025
        A792D52AA878DBD2B4A5E188B7CEC848250D619952CD5934773FBB2D8A78377B
        503FE84751E498DF658A81F32A2337F38E9607583086268A85317100551A68CE
        BC9F8CCA9D246F07195B8B8236E4755F51C565D8A5E05DBC57E4761934705E65
        AC939547430B7292AEC13EA45A6CF7D86444413BAAFE4733213751C9BC9FAC94
        B328DCE6A1813BA46EF1A4A749F138AF9CE62CB4A044933F0738AF524DCCA9DA
        9C36B6E9C08A3BF017852D6163AB3367870000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxFinalizarClick
      ExplicitLeft = 1
      ExplicitTop = 6
      ExplicitHeight = 67
    end
    object cxImportar: TcxButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 95
      Height = 68
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'Buscar XML'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000291494441545809ED97BD
        6B144118C6DF3DA3222888958518D12658A5512CFC2A4545ACD4341205C53F21
        A0E00ADA0B56C642D4466C12154524CA3516A268C4528C778220D808A91225E3
        EF39EE96BBCD7EE5766F0471787EFBCE3B37F3CEC3DCEC9198FD6F254FC03977
        A46489EA9663E6382C5657B144258CB4CC105D89322B5E1A24ADC0C405C66FC0
        104867F41800B34110CC66D6C5CC1E58001F0A2DD63A27D03DFC8EE403EC828E
        9A9D4E45713375D6423171346B600A5A2AB6AAF82C8AD6410A2DD66AB1BC95F2
        BDEACD3A49320D5E9568480EDAA64ED09F026F4A35240798FA451C036F0ABCED
        D4B51197E710A92EF6B2D73ED3100B57B3F032E86DBCC9897D71CE9D23DF012F
        E0339C07E93A8F1F30011B6086F933CCDF6666E346230FAD6CA3E02D90EEF118
        81DFA0DFA9ADC483D0D14B3AD7A0A3D06824D11CD2F2A2E0B0734E0664E4117D
        695295E9449BD18F2B341A83D11CD25C655E6AADE6989BC4BBB00A8EC2225C85
        81A856B0AA0C2C3137808798FC4A8CEB2D033FE113F4AD5AC195EB982733041B
        D22301FD909E66FC1BF4ADA2862EB1830C2D118F712F46883DE2D4E6E071CF60
        1F49AEA1F6E6A7A8ADBBF380A8BB7491B86251ABDE66346D71AE2116EA7464E2
        0EFD0990B1310A2F3B253ECBD30126888DC444A5DD87D664369591F7241FE13E
        5F4993B1B3F4B7C02698039924449AA4F70C5E81D430B32BD0AD86A5B4203ECE
        86A38C89EF185061D2BF280C8520D5ADE246D1DC3FCA6A15EF9957EE39A6D667
        4DF26D683F669E6499F26D083F26534FD34C65BD65FAEFA3618369FB28FB0653
        BB7971E6E947CA32A40B381CCDACBEB39D923BE135444A3234CDA70D1B4CBBDD
        2EBB401CE7747ACC30E6577C45D23C8FBD7E774ED90D2332A3FB9332C3F33086
        0E7BDEF21FDCEE0F02DFC0DF68707F680000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 11
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxImportarClick
      ExplicitLeft = 0
      ExplicitTop = 10
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 582
    Width = 1008
    Height = 134
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = TabSheet1
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 3
    ExplicitTop = 500
    ExplicitWidth = 1012
    object TabSheet1: TTabSheet
      Caption = 'Detalhes Itens - Fornecedor'
      ExplicitWidth = 1010
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1000
        Height = 99
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = dsDetail
        FixedColor = 15395562
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PRODUTO_FOR'
            Title.Caption = 'C'#243'digo'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODBARRA'
            Title.Caption = 'C'#243'd.Barra'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP_E'
            Title.Caption = 'CFOP'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_E'
            Title.Caption = 'CST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_FORNECEDOR'
            Title.Caption = 'Descri'#231#227'o'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANT_E'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantidade'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UND_E'
            Title.Caption = 'Unidade'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_E'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ITEM'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 90
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Totais'
      ImageIndex = 1
      ExplicitWidth = 1010
      object Label10: TLabel
        Left = 16
        Top = 8
        Width = 49
        Height = 14
        Caption = 'SubTotal'
        FocusControl = DBEdit12
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 48
        Width = 47
        Height = 14
        Caption = 'Base PIS'
        FocusControl = DBEdit18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 128
        Top = 48
        Width = 50
        Height = 14
        Caption = 'Total PIS'
        FocusControl = DBEdit19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 124
        Top = 9
        Width = 29
        Height = 14
        Caption = 'Frete'
        FocusControl = DBEdit13
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 236
        Top = 9
        Width = 50
        Height = 14
        Caption = 'Despesas'
        FocusControl = DBEdit14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 236
        Top = 48
        Width = 61
        Height = 14
        Caption = 'Base Cofins'
        FocusControl = DBEdit20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 348
        Top = 8
        Width = 39
        Height = 14
        Caption = 'Seguro'
        FocusControl = DBEdit15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 346
        Top = 48
        Width = 64
        Height = 14
        Caption = 'Total Cofins'
        FocusControl = DBEdit26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 458
        Top = 48
        Width = 44
        Height = 14
        Caption = 'Base IPI'
        FocusControl = DBEdit27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 458
        Top = 9
        Width = 52
        Height = 14
        Caption = 'Desconto'
        FocusControl = DBEdit16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 569
        Top = 10
        Width = 28
        Height = 14
        Caption = 'Total'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 676
        Top = 10
        Width = 56
        Height = 14
        Caption = 'Base ICMS'
        FocusControl = DBEdit22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 676
        Top = 48
        Width = 44
        Height = 14
        Caption = 'Base ST'
        FocusControl = DBEdit24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 781
        Top = 48
        Width = 47
        Height = 14
        Caption = 'Total ST'
        FocusControl = DBEdit25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 781
        Top = 10
        Width = 59
        Height = 14
        Caption = 'Total ICMS'
        FocusControl = DBEdit23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 568
        Top = 48
        Width = 47
        Height = 14
        Caption = 'Total IPI'
        FocusControl = DBEdit21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'SUB_TOTAL'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 16
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'BASE_PIS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 128
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL_PIS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 126
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'FRETE'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 236
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'OUTRAS_DESPESAS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit20: TDBEdit
        Left = 237
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'BASE_COFINS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit15: TDBEdit
        Left = 347
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'SEGURO'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit26: TDBEdit
        Left = 347
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL_COFINS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit27: TDBEdit
        Left = 458
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'BASE_IPI'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit16: TDBEdit
        Left = 457
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'DESCONTO'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit17: TDBEdit
        Left = 568
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit22: TDBEdit
        Left = 676
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'BASE_ICMS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit24: TDBEdit
        Left = 676
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'BASE_ST'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit25: TDBEdit
        Left = 782
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL_ST'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit23: TDBEdit
        Left = 783
        Top = 24
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL_ICMS'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit21: TDBEdit
        Left = 568
        Top = 64
        Width = 100
        Height = 21
        TabStop = False
        Color = clWhite
        Ctl3D = False
        DataField = 'TOTAL_IPI'
        DataSource = dsMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
    end
  end
  object pnAguarde: TPanel
    Left = 232
    Top = 312
    Width = 475
    Height = 73
    Caption = 'Aguarde...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 92
    Width = 1008
    Height = 485
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 82
    ExplicitWidth = 1018
    ExplicitHeight = 421
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 1004
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 
        'ATEN'#199#195'O - Verifique se os produtos em vermelho est'#227'o vinculados ' +
        'corretamente'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 936
      Top = 21
      Width = 70
      Height = 419
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 946
      ExplicitTop = 18
      ExplicitHeight = 358
      object btnLoc: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 67
        Width = 62
        Height = 57
        Align = alTop
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C0B0A264C463AEB181715480000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000100F0D3050493BF94F4737FF4D483CEE0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C0B
          0A254F483BF64F4737FF50493BFA131311360000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0B0A254F48
          3BF64F4737FF50493BFA12121035000000000000000000000000000000000000
          0000000000000000000000000000000000001111112C3636368F515151D55E5E
          5EF75E5E5EF7515151D43636368E1010102A000000000606060F4D4941E44F47
          37FF504A3DF911100F3100000000000000000000000000000000000000000000
          000000000000000000000202020638383894606060FC666461FF8D7A62FFA386
          62FFA38662FF8C7961FF656361FF606060FC3A3A3A974D4D4DC9616161FF524E
          46EF11110F310000000000000000000000000000000000000000000000000000
          00000000000002020205464646B9626261FFA08562FFEBAF64FFF6B564FFF6B5
          64FFF6B564FFF6B564FFEBAF64FF9F8463FF616161FF5D5D5DF4535353D80909
          0918000000000000000000000000000000000000000000000000000000000000
          00000000000037373790626261FFBD9563FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFBC9563FF626261FF393939960000
          0000000000000000000000000000000000000000000000000000000000000000
          00001010102B606060FCA38662FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFA18562FF5F5F5FFB0F0F
          0F28000000000000000000000000000000000000000000000000000000000000
          00003636368E676462FFECAF64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFEBAF64FF666461FF3535
          358B000000000000000000000000000000000000000000000000000000000000
          0000515151D68E7B62FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FF8C7A62FF5151
          51D4000000000000000000000000000000000000000000000000000000000000
          00005D5D5DF4A58762FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFA48763FF5C5C
          5CF2000000000000000000000000000000000000000000000000000000000000
          00005C5C5CF3A58762FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFA48763FF5C5C
          5CF2000000000000000000000000000000000000000000000000000000000000
          0000515151D68E7B62FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B5
          64FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FF8C7961FF5050
          50D3000000000000000000000000000000000000000000000000000000000000
          000038383893686561FFEDB064FFF6B564FFF8C688FFF9CC94FFF6B566FFF6B5
          64FFF6B564FFF6B566FFF9CC96FFF8C789FFF6B564FFEEB064FF676461FF3737
          3790000000000000000000000000000000000000000000000000000000000000
          00001111112D606060FDA48762FFF6B564FFF6B769FFF9D2A2FFFBD8AEFFF9CC
          94FFF9CC94FFFBD8AFFFF9D3A2FFF6B769FFF6B564FFA28562FF606060FC1010
          102A000000000000000000000000000000000000000000000000000000000000
          0000000000003A3A3A99626261FFBD9563FFF6B564FFF6B564FFF7BE77FFF8C7
          8AFFF8C78AFFF7BE76FFF6B564FFF6B564FFBC9563FF626261FF393939950000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002020206474747BA626261FFA08562FFEBAF64FFF6B564FFF6B5
          64FFF6B564FFF6B564FFEBAF64FF9F8463FF616161FF464646B8020202060000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000202020638383894606060FC666461FF8D7A62FFA386
          62FFA38662FF8C7961FF656361FF606060FC3737379102020205000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001111112C3636368F515151D45959
          59EB595959EB505050D33636368E1010102A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 0
        OnClick = btnLocClick
        ExplicitLeft = 1
        ExplicitTop = 58
        ExplicitWidth = 68
      end
      object btnCadastrar: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 62
        Height = 57
        Align = alTop
        Caption = 'Cadastrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017341653367A33C2459B41F7459B
          41F7367933C11733155100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002451228147A043FF47A043FF47A043FF47A0
          43FF47A043FF47A043FF234F217E000000000000000000000000000000000000
          00007E6F5E807E6F5E807E6F5E807E6F5E807E6F5E807E6F5E807E6F5E807E6F
          5E807E6F5E807E6F5E806D7D56A647A043FF47A043FF47A043FFFFFFFFFFFFFF
          FFFF47A043FF47A043FF47A043FF152E134A0000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFFFBDEBBFF72AF60FF47A043FF47A043FF47A043FFFFFFFFFFFFFF
          FFFF47A043FF47A043FF47A043FF357832BF0000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFFFBDEBBFF4FA348FF47A043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF47A043FF439840F20000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF1C695FFF1C695FFF1C695FFE8AD70FFE8AD
          70FFE8AD70FFFADCB9FF4FA348FF47A043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF47A043FF439840F20000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF0C290FFF0C290FFF0C290FFE5A764FFE5A7
          64FFE5A764FFF9DAB5FF72AF60FF47A043FF47A043FF47A043FFFFFFFFFFFFFF
          FFFF47A043FF47A043FF47A043FF357832BF0000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF1C695FFF1C695FFF1C695FFE8AD70FFE8AD
          70FFE8AD70FFF1C594FFC0CA94FF47A043FF47A043FF47A043FFFFFFFFFFFFFF
          FFFF47A043FF47A043FF47A043FF163215500000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF0C290FFF0C290FFF0C290FFE5A764FFE5A7
          64FFE5A764FFEAB478FFFBDEBBFF96BC78FF47A043FF47A043FF47A043FF47A0
          43FF47A043FF47A043FF2757258B000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF1C695FFF1C695FFF1C695FFE8AD70FFE8AD
          70FFE8AD70FFE8AD70FFE9B072FFF8D8B1FFC0CA94FF72AF60FF53A44BFF53A4
          4BFF73AF60FF1733165200000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF0C290FFF0C290FFF0C290FFE5A764FFE5A7
          64FFE5A764FFE5A764FFE5A764FFEAB377FFFADCB8FFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF1C695FFF1C695FFF1C695FFE8AD70FFE8AD
          70FFE8AD70FFE8AD70FFE8AD70FFE8AD70FFE8AD70FFF1C695FFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF0C290FFF0C290FFF0C290FFE5A764FFE5A7
          64FFE5A764FFE5A764FFE5A764FFE5A764FFE5A764FFF0C290FFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF1C695FFF1C695FFF1C695FFE8AD70FFE8AD
          70FFE8AD70FFE8AD70FFE8AD70FFE8AD70FFE8AD70FFF1C695FFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFF0C290FFF0C290FFF0C290FFE5A764FFE5A7
          64FFE5A764FFE5A764FFE5A764FFE5A764FFE5A764FFF0C290FFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000FBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDEBBFFFBDE
          BBFFFBDEBBFF0000000000000000000000000000000000000000000000000000
          0000B5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB551
          3FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB551
          3FFFB5513FFF0000000000000000000000000000000000000000000000000000
          0000B5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB551
          3FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB5513FFFB551
          3FFFB5513FFF0000000000000000000000000000000000000000000000000000
          000051241C72612B2288612B2288612B2288612B2288612B2288612B2288612B
          2288612B2288612B2288612B2288612B2288612B2288612B2288612B2288612B
          228850241C710000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 1
        OnClick = btnCadastrarClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 68
      end
      object btnDesvincularTodos: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 193
        Width = 62
        Height = 57
        Align = alTop
        Caption = 'Desv.Todos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000012164F532933
          BAC23441ECF73441ECF72933B9C111154E510000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001B227B813643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF1B21797E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010144A4D3643F4FF3B47F4FF828A
          F8FF3643F4FF3643F4FF828AF8FF3B47F4FF3643F4FF1013474A000000000000
          00000000000000000000473C404E6D5B62776D5B62776D5B62776D5B62776D5B
          62776D5B62776D5B62776D5B62776D5B62774349D1DE3643F4FF868EF8FFFFFF
          FFFFA5ABFAFFA6ACFAFFFFFFFFFF868DF8FF3643F4FF2832B7BF000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FF3E48F2FF3643F4FF3844F4FFB1B6
          FBFFFFFFFFFFFFFFFFFFB1B6FBFF3844F4FF3643F4FF3340E8F2000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FF3E48F2FF3643F4FF3643F4FF9FA5
          FAFFFFFFFFFFFFFFFFFF9FA5FAFF3643F4FF3643F4FF3340E8F2000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FF6162ECFF3643F4FF868EF8FFFFFF
          FFFFA5ABFAFFA6ACFAFFFFFFFFFF868DF8FF3643F4FF2832B7BF000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFAF9ADCFF3643F4FF3B47F4FF828A
          F8FF3643F4FF3643F4FF828AF8FF3B47F4FF3643F4FF11154D50000000000000
          00000000000000000000473C404E7C696F887C696F887C696F887C696F887C69
          6F887C696F887C696F887C696F887C696F887C696F885454BACB3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF3643F4FF1D25858B00000000000000000000
          00000000000000000000473C404E6D5B62776D5B62776D5B62776D5B62776D5B
          62776D5B62776D5B62776D5B62776D5B62776D5B62776D5B62775C5391A34349
          D1DE3945EBF63743E8F32933B9C111164E520000000000000000000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE3BFCBF800000000000000000000000000000000000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FF00000000000000000000000000000000000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FF00000000000000000000000000000000000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE3BFCBF800000000000000000000000000000000000000000000
          00000000000000000000473C404E7C696F887C696F887C696F887C696F887C69
          6F887C696F887C696F887C696F887C696F887C696F887C696F887C696F887C69
          6F887C696F88463B3F4D00000000000000000000000000000000000000000000
          00000000000000000000473C404E6D5B62776D5B62776D5B62776D5B62776D5B
          62776D5B62776D5B62776D5B62776D5B62776D5B62776D5B62776D5B62776D5B
          62776D5B6277463B3F4D00000000000000000000000000000000000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE3BFCBF800000000000000000000000000000000000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FF00000000000000000000000000000000000000000000
          00000000000000000000E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FF00000000000000000000000000000000000000000000
          00000000000000000000E4BFCCF9E9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4D1FFE9C4
          D1FFE9C4D1FFE3BFCBF800000000000000000000000000000000000000000000
          00000000000000000000473C404E7C696F887C696F887C696F887C696F887C69
          6F887C696F887C696F887C696F887C696F887C696F887C696F887C696F887C69
          6F887C696F88463B3F4D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 2
        OnClick = btnDesvincularTodosClick
        ExplicitLeft = 1
        ExplicitTop = 172
        ExplicitWidth = 68
      end
      object btnGrupo: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 256
        Width = 62
        Height = 57
        Align = alTop
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FF7A4B11800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FF7A4B11800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FF7A4B11800000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FF7A4B11800000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FF000000000000000000000000000000000000
          000000000000F39621FFF39621FF00000000F39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 3
        OnClick = btnGrupoClick
        ExplicitLeft = 1
        ExplicitTop = 229
        ExplicitWidth = 68
      end
      object btnDesvincular: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 130
        Width = 62
        Height = 57
        Align = alTop
        Caption = 'Desvincular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000011164E522933B9C13441ECF73441
          ECF72933B9C111154E5100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E258A913643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF1B21797E000000000000000000000000000000000000
          00001E110424B76716DED78129FFF4BE7FFFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFC0A3AEFF3643F4FF3643F4FF4954F5FFDEE1FDFFEEEF
          FEFFA0A6FAFF3A47F4FF3643F4FF1013474A0000000000000000000000000000
          000063380C78D27619FFD27619FFE7A359FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF6764DCFF3643F4FF4653F5FF3643F4FF606AF6FFF2F3
          FEFFFFFFFFFF9FA5FAFF3643F4FF2832B7BF0000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFF7C68AFF3F4AF0FF3643F4FFDADCFDFF545FF6FF3643F4FF606A
          F6FFF2F3FEFFEBECFEFF3643F4FF3340E8F20000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF3F4AF0FF3643F4FFEBEDFEFFEBECFEFF545FF6FF3643
          F4FF606AF6FFDFE1FDFF3643F4FF3340E8F20000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFF0B675FF6764DCFF3643F4FFA0A7FAFFFFFFFFFFEBECFEFF545F
          F6FF3643F4FF4D58F5FF3643F4FF2832B7BF0000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFC0A3AEFF3643F4FF3A47F4FFA0A7FAFFE7E8FEFFD8DA
          FDFF4954F5FF3643F4FF3643F4FF1013474A0000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFD3781BFFF1B979FF9886C2FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF1E268A8F000000000000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFBA9FB0FF6664DCFF434CEEFF434C
          EEFF6664DCFFBB9FB0FF00000000000000000000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFD27619FFE5A055FFE6A156FFE19646FFF0B877FFF6C284FFF9CA
          90FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFD27619FFE5A055FFE5A055FFD27619FFD27619FFD27619FFE5A0
          55FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          0000693B0D80D27619FFD27619FFE6A054FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFD27619FFE5A055FFE5A055FFD27619FFD27619FFD27619FFE5A0
          55FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFEFB674FFE7A3
          59FFE7A359FFE7A359FFE7A359FFE7A359FFE7A359FFE7A359FFE7A359FFEFB6
          74FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFE5A055FFD276
          19FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFE5A0
          55FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFEFB371FFE49D
          50FFE49D50FFE49D50FFE49D50FFE49D50FFE49D50FFE49D50FFE49D50FFEFB3
          71FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          00000000000000000000000000007D654880F9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
          90FFF9CA90FFF9CA90FF00000000000000000000000000000000000000000000
          000000000000000000000000000042362644856C4D88856C4D88856C4D88856C
          4D88856C4D88856C4D88856C4D88856C4D88856C4D88856C4D88856C4D88856C
          4D88856C4D88856C4D8800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 4
        OnClick = btnDesvincularClick
        ExplicitLeft = 1
        ExplicitTop = 115
        ExplicitWidth = 68
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 21
      Width = 934
      Height = 419
      Align = alClient
      DataSource = dsDetail
      DynProps = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleParams.Font.Charset = ANSI_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -11
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = []
      TitleParams.ParentFont = False
      OnDblClick = DBGridEh1DblClick
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_PRODUTO_LOC'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Width = 54
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DESCRICAO_LOCAL'
          Footers = <>
          Title.Caption = 'Descri'#231#227'o'
          Width = 370
        end
        item
          AutoDropDown = True
          CellButtons = <>
          DropDownBox.ColumnDefValues.AutoDropDown = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'VIRTUAL_GRUPO'
          Footers = <>
          Title.Caption = 'Grupo'
          Width = 151
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EMBALAGEM'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd.Emb.'
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'QUANT_S'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd.Unid.'
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTD_TOTAL'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Qtd.Total'
          Width = 74
        end
        item
          AutoDropDown = True
          CellButtons = <>
          DropDownBox.ColumnDefValues.AutoDropDown = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'VIRTUAL_UN'
          Footers = <>
          Title.Caption = 'Und'
          Width = 26
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRECO_S'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = 'Prc.Unit'#225'ro'
          Width = 66
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PR_VENDA'
          Footers = <>
          Title.Caption = 'Pr.Venda'
          Width = 91
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CFOP'
          Footers = <>
          Width = 35
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 440
      Width = 1004
      Height = 43
      Align = alBottom
      Caption = 'Produto Vinculado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 376
      ExplicitWidth = 1014
      object DBText1: TDBText
        Left = 14
        Top = 19
        Width = 65
        Height = 17
        DataField = 'ID_PRODUTO_LOC'
        DataSource = dsDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 91
        Top = 19
        Width = 154
        Height = 17
        DataField = 'VIRTUAL_BARRA'
        DataSource = dsDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 243
        Top = 19
        Width = 690
        Height = 17
        DataField = 'VIRTUAL_DESCRICAO'
        DataSource = dsDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object ACBrNFe: TACBrNFe
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
    Left = 264
    Top = 160
  end
  object dsMaster: TDataSource
    DataSet = Dados.qryXmlMaster
    Left = 104
    Top = 168
  end
  object dsDetail: TDataSource
    DataSet = Dados.QryXmlDetail
    Left = 112
    Top = 216
  end
  object dsProduto: TDataSource
    DataSet = Dados.qryXMLProduto
    Left = 112
    Top = 280
  end
  object qryFornecedor: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from pessoa'
      'where'
      'cnpj=:cnpj')
    Left = 192
    Top = 152
    ParamData = <
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object qryFornecedorEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFornecedorTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryFornecedorIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryFornecedorRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
    object qryFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryFornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryFornecedorCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Required = True
    end
    object qryFornecedorMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryFornecedorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryFornecedorFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryFornecedorFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryFornecedorCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryFornecedorCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object qryFornecedorEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryFornecedorEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 60
    end
    object qryFornecedorFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryFornecedorSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
    object qryFornecedorDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
    object qryFornecedorECIVIL: TStringField
      FieldName = 'ECIVIL'
      Origin = 'ECIVIL'
      Size = 10
    end
    object qryFornecedorDIA_PGTO: TSmallintField
      FieldName = 'DIA_PGTO'
      Origin = 'DIA_PGTO'
    end
    object qryFornecedorOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryFornecedorNUM_USU: TSmallintField
      FieldName = 'NUM_USU'
      Origin = 'NUM_USU'
    end
    object qryFornecedorFATURA: TStringField
      FieldName = 'FATURA'
      Origin = 'FATURA'
      Size = 1
    end
    object qryFornecedorCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
      Size = 1
    end
    object qryFornecedorCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 1
    end
    object qryFornecedorSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object qryFornecedorISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 1
    end
    object qryFornecedorFORN: TStringField
      FieldName = 'FORN'
      Origin = 'FORN'
      Required = True
      Size = 1
    end
    object qryFornecedorFUN: TStringField
      FieldName = 'FUN'
      Origin = 'FUN'
      Required = True
      Size = 1
    end
    object qryFornecedorCLI: TStringField
      FieldName = 'CLI'
      Origin = 'CLI'
      Required = True
      Size = 1
    end
    object qryFornecedorFAB: TStringField
      FieldName = 'FAB'
      Origin = 'FAB'
      Required = True
      Size = 1
    end
    object qryFornecedorTRAN: TStringField
      FieldName = 'TRAN'
      Origin = 'TRAN'
      Required = True
      Size = 1
    end
    object qryFornecedorADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      Required = True
      Size = 1
    end
    object qryFornecedorATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryFornecedorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Origin = 'DT_ADMISSAO'
    end
    object qryFornecedorDT_DEMISSAO: TDateField
      FieldName = 'DT_DEMISSAO'
      Origin = 'DT_DEMISSAO'
    end
    object qryFornecedorLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object qryFornecedorSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object qryFornecedorPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryFornecedorMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryFornecedorBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryFornecedorAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryFornecedorGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 30
    end
    object qryFornecedorFONE_GERENTE: TStringField
      FieldName = 'FONE_GERENTE'
      Origin = 'FONE_GERENTE'
      Size = 15
    end
    object qryFornecedorPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 50
    end
    object qryFornecedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryFornecedorTECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 1
    end
    object qryFornecedorATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 1
    end
  end
  object dsNatureza: TDataSource
    DataSet = Dados.qryCFOP
    Left = 320
    Top = 160
  end
  object qryCadProduto: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from Produto'
      'where'
      'codigo=:cod')
    Left = 184
    Top = 208
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCadProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryCadProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryCadProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryCadProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryCadProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryCadProdutoULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryCadProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryCadProdutoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryCadProdutoCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryCadProdutoCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryCadProdutoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryCadProdutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryCadProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryCadProdutoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryCadProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryCadProdutoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryCadProdutoULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryCadProdutoULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryCadProdutoCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryCadProdutoEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCadProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryCadProdutoGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryCadProdutoEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryCadProdutoPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryCadProdutoCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryCadProdutoINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryCadProdutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryCadProdutoESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryCadProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryCadProdutoPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryCadProdutoSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryCadProdutoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryCadProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryCadProdutoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryCadProdutoALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryCadProdutoALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryCadProdutoPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryCadProdutoMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryCadProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryCadProdutoQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCadProdutoQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCadProdutoE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryCadProdutoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryCadProdutoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryCadProdutoPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryCadProdutoALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryCadProdutoREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryCadProdutoPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
  end
  object QRYUnidade: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from unidade'
      'where'
      'codigo=:cod')
    Left = 272
    Top = 216
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object QRYUnidadeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QRYUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object QRYUnidadeFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Xml|*.Xml|Todos|*'
    Left = 488
    Top = 320
  end
  object qryCFOP: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cfop'
      'WHERE'
      'ATIVO='#39'S'#39' AND'
      'TIPO='#39'E'#39
      'ORDER BY CODIGO')
    Left = 400
    Top = 184
    object qryCFOPCODIGO: TIntegerField
      DisplayWidth = 20
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryCFOPTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCFOPMOV_ES: TStringField
      FieldName = 'MOV_ES'
      Origin = 'MOV_ES'
      Size = 1
    end
    object qryCFOPATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 400
    Top = 243
  end
  object qryCompra: TFDQuery
    AfterOpen = qryCompraAfterOpen
    AfterPost = qryCompraAfterPost
    OnNewRecord = qryCompraNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from compra'
      'where'
      'id=:id')
    Left = 194
    Top = 269
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCompraDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      Required = True
    end
    object qryCompraDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
      Required = True
    end
    object qryCompraFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
    end
    object qryCompraMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 5
    end
    object qryCompraSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object qryCompraCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryCompraNR_NOTA: TStringField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Size = 15
    end
    object qryCompraGERA_CP: TStringField
      FieldName = 'GERA_CP'
      Origin = 'GERA_CP'
      Required = True
      Size = 1
    end
    object qryCompraGERA_ES: TStringField
      FieldName = 'GERA_ES'
      Origin = 'GERA_ES'
      Required = True
      Size = 1
    end
    object qryCompraAJUSTA_PC: TStringField
      FieldName = 'AJUSTA_PC'
      Origin = 'AJUSTA_PC'
      Required = True
      Size = 1
    end
    object qryCompraAJUSTA_PV: TStringField
      FieldName = 'AJUSTA_PV'
      Origin = 'AJUSTA_PV'
      Required = True
      Size = 1
    end
    object qryCompraEHFISCAL: TStringField
      FieldName = 'EHFISCAL'
      Origin = 'EHFISCAL'
      Required = True
      Size = 1
    end
    object qryCompraLEUXML: TStringField
      FieldName = 'LEUXML'
      Origin = 'LEUXML'
      Required = True
      Size = 1
    end
    object qryCompraSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 1
    end
    object qryCompraXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryCompraTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCompraSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ICM: TFMTBCDField
      FieldName = 'BASE_ICM'
      Origin = 'BASE_ICM'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ICM: TFMTBCDField
      FieldName = 'TOTAL_ICM'
      Origin = 'TOTAL_ICM'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_PIS: TFMTBCDField
      FieldName = 'TOTAL_PIS'
      Origin = 'TOTAL_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_COF: TFMTBCDField
      FieldName = 'BASE_COF'
      Origin = 'BASE_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_COF: TFMTBCDField
      FieldName = 'TOTAL_COF'
      Origin = 'TOTAL_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 6
    end
  end
  object qryItensCompra: TFDQuery
    BeforeEdit = qryItensCompraBeforeEdit
    BeforePost = qryItensCompraBeforePost
    AfterPost = qryItensCompraAfterPost
    BeforeDelete = qryItensCompraBeforeDelete
    OnNewRecord = qryItensCompraNewRecord
    MasterFields = 'ID'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from compra_itens ic'
      'where'
      'ic.fk_compra=:id'
      'order by ic.item')
    Left = 266
    Top = 269
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensCompraFK_COMPRA: TIntegerField
      FieldName = 'FK_COMPRA'
      Origin = 'FK_COMPRA'
      Required = True
    end
    object qryItensCompraEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryItensCompraITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      Required = True
    end
    object qryItensCompraFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      Required = True
    end
    object qryItensCompraCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryItensCompraCST_ICM: TStringField
      FieldName = 'CST_ICM'
      Origin = 'CST_ICM'
      Size = 5
    end
    object qryItensCompraGERA_CP: TStringField
      FieldName = 'GERA_CP'
      Origin = 'GERA_CP'
      Size = 1
    end
    object qryItensCompraGERA_ES: TStringField
      FieldName = 'GERA_ES'
      Origin = 'GERA_ES'
      Size = 1
    end
    object qryItensCompraSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItensCompraFK_PRODUTO_FORN: TStringField
      FieldName = 'FK_PRODUTO_FORN'
      Origin = 'FK_PRODUTO_FORN'
      Size = 30
    end
    object qryItensCompraCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qryItensCompraCST_COF: TStringField
      FieldName = 'CST_COF'
      Origin = 'CST_COF'
      Size = 3
    end
    object qryItensCompraCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qryItensCompraFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryItensCompraVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryItensCompraVL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItensCompraVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItensCompraVL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraVL_ST: TFMTBCDField
      FieldName = 'VL_ST'
      Origin = 'VL_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItensCompraVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraBASE_COF: TFMTBCDField
      FieldName = 'BASE_COF'
      Origin = 'BASE_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraALIQ_COF: TFMTBCDField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItensCompraVL_COF: TFMTBCDField
      FieldName = 'VL_COF'
      Origin = 'VL_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraFRETE1: TFMTBCDField
      FieldName = 'FRETE1'
      Origin = 'FRETE1'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraDESPESA: TFMTBCDField
      FieldName = 'DESPESA'
      Origin = 'DESPESA'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryItensCompraALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
      Size = 2
    end
    object qryItensCompraPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensCompraFK_GRADE_PRODUTO: TIntegerField
      FieldName = 'FK_GRADE_PRODUTO'
      Origin = 'FK_GRADE_PRODUTO'
    end
  end
end
