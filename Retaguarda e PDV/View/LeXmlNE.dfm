object FrmXml: TFrmXml
  Left = 268
  Top = 27
  BorderStyle = bsDialog
  Caption = 'Importar XML'
  ClientHeight = 713
  ClientWidth = 1016
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnDblClick = FormDblClick
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1006
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
    ExplicitWidth = 1008
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
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000021744558745469746C65004170706C793B4F4B3B436865
        636B3B426172733B526962626F6E3B6463C868000000D349444154785EEDD031
        0E414110C671EF155AE25E4844E3105A5771042587F00AC481288C9984CC32C5
        97CD66669B2DBE76FEBFCC8888AAEE27D0000DB03BEC3D96DEEF6B01243EE70D
        BC6934E01B7FF0887713442440E3BA81D71940505C304BF08188B80504C72D20
        388E019D5F1C03B6BC236FEC19B7008DBF3EFA1340C0B8E072009B244E1881E3
        B98009EFAA718080F17C400602C40B001081E265008C3883783100236C7C2121
        07802250DC0FA088FB5FFCC95B49C017A09B092289AF25100750C445E391005D
        2F0107409D354003BC016C58E4B7FAF5E18F0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxFinalizarClick
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
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001D744558745469746C65004578706F72743B586D6C3B45
        78706F7274546F586D6C3B09E5AE25000000E049444154785EEDD3310EC2300C
        40D19EAF47E1009C206B06C4C09499B1632524363646E64C481CA20CA61ECC10
        47D48E5C02144B5F55BBF8296A1A00A8DAE702FE00E71C28BB8EB5634DA63280
        6610E1BDBF8710DA64891A40A9013146861001D6FB1D94464327962008803B58
        7300184205C099784E0152C4800815E070393F01343A0047E0ED90007039214A
        4EE05537ED094801E21B62F50F50F60065BF0760816C6C00DB55C742B5E56476
        D802BACD099760B430897D3F5A02D822FECE618B00506F07E49A1D20690100C1
        7C11409809C0A2FA005DF6805E09E80950B50777BBD3885D7722050000000049
        454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 11
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxImportarClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 574
    Width = 1006
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
    ExplicitTop = 582
    ExplicitWidth = 1008
    object TabSheet1: TTabSheet
      Caption = 'Detalhes Itens - Fornecedor'
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
            Title.Caption = 'C'#243'digo Fornecedor'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODBARRA'
            Title.Caption = 'C'#243'd.Barra'
            Width = 90
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'QUANT_E'
            Title.Alignment = taCenter
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRECO_E'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VL_ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 60
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Totais'
      ImageIndex = 1
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
    Width = 1006
    Height = 477
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1008
    ExplicitHeight = 485
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 1002
      Height = 16
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
      ExplicitWidth = 608
    end
    object Panel3: TPanel
      Left = 915
      Top = 18
      Width = 89
      Height = 414
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 917
      ExplicitHeight = 422
      object btnLoc: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 123
        Width = 81
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
        ExplicitTop = 67
        ExplicitWidth = 62
      end
      object btnCadastrar: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 81
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
        ExplicitWidth = 62
      end
      object btnDesvincularTodos: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 249
        Width = 81
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
        ExplicitTop = 193
        ExplicitWidth = 62
      end
      object btnGrupo: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 312
        Width = 81
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
        ExplicitTop = 256
        ExplicitWidth = 62
      end
      object btnDesvincular: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 186
        Width = 81
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
        ExplicitTop = 130
        ExplicitWidth = 62
      end
      object btnCadastrarTodos: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 67
        Width = 81
        Height = 50
        Align = alTop
        Caption = 'Cadastrar Todos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000900000007000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000070000002006132374030A145A0000001B0000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C010305360E2B4FBF2361A0FF195191FF091C36A90000
          012C000000080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001605101B6317487DEA2C7CB9FF53AADEFF2E92D5FF2064A5FF0F2E
          5CDB010203410000000E00000002000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010000000A0000
          001C0000001B0000000A00000001000000000000000000000001000000070000
          00200E2B49A12567A5FD3A97D0FF3EA3DBFF62B3E1FF2F95D6FF2E92D4FF2679
          BBFF133C76F60308106500000017000000040000000000000000000000000000
          000000000000000000000000000000000000000000040000001802080E570E2C
          58D40D2A56D402050A500000001600000004000000020000000D040C14431A4D
          7DD63485BEFF48AADDFF46A9DEFF43A7DDFF71BCE5FF3197D6FF2F94D5FF2D92
          D4FF2A88CBFF174988FE06132895000000230000000700000000000000000000
          00000000000000000000000000020000000B0000002A0A203CA6194E8BFB3987
          C2FF2576B8FF143D7AF80714299700000028000000130D283E782870A9F648A4
          D5FF51B4E3FF4EB2E1FF4BAFE0FF48ACDFFF81C5E8FF3299D8FF3097D5FF2F94
          D4FF2D91D4FF2C8DD2FF1B5698FF0A2042C20000013300000009000000000000
          000000000000000000050000001A050E1963164073E32872B0FF379BD8FF53AB
          E0FF2E91D4FF2986CAFF1B5598FF0C2451D80104095A2772B1FF5ABCE5FF5ABE
          E6FF58BBE5FF54B8E4FF51B5E3FF4EB1E2FF90CDECFF349CD9FF319AD7FF3096
          D6FF2F94D5FF2E91D3FF2B8DD2FF2068AAFF0D2C5AE000000021000000000000
          00020000000D01020431113051B12566A5FD3794CFFF3DA4DEFF3DA3DDFF60B3
          E4FF3094D5FF2D8FD3FF2A8AD1FF216DB3FF11356CF92775B4FF64C7EBFF61C4
          E9FF5DC1E8FF5BBEE7FF57BBE5FF54B7E4FF9DD5EFFF349ED9FF339CD8FF3299
          D6FF3095D6FF2E93D4FF2D90D3FF2C8DD2FF133B7BFF00000030000000050000
          001A0919287020588EEB3589C2FF44ABDFFF43ABE0FF41A9E0FF40A6DFFF6DBB
          E7FF3197D7FF2E92D4FF2C8DD2FF2988D0FF2477BFFF2877B5FF6ACDEEFF66CA
          ECFF63C8EBFF61C4E9FF5EC1E8FF5ABEE7FFAADDF2FF35A1DAFF349ED9FF329B
          D8FF3198D7FF2F95D5FF2E93D4FF2D90D3FF133C7CFF00000031000000131942
          68B8317EBAFF47ABDBFF4BB5E4FF49B2E4FF48B1E3FF44AEE1FF43ACE0FF7AC3
          E9FF339BD8FF3096D6FF2E90D3FF2B8CD1FF2780C6FF297AB8FF6FD3F0FF6CD0
          EFFF6ACEEEFF66CAECFF64C7EBFF61C5EAFFB4E2F4FF43A9DEFF35A0DAFF349D
          D8FF329BD7FF3197D6FF2F95D4FF2E92D3FF143E7FFF000000300000001F2B73
          B2FF54BFE8FF53BDE7FF51BBE6FF4FB8E5FF4CB5E4FF4AB3E3FF48B1E3FF87CB
          ECFF349DDAFF3298D7FF2F94D5FF2D8FD3FF2981C7FF2A7BB9FF75D8F3FF73D6
          F1FF6FD3EFFF6CD0EFFF6ACDEDFF7FD3EFFFB3C9E2FF8BCFEDFF4FB2E2FF37A1
          DAFF339DD8FF329AD7FF3097D6FF2F94D5FF143F80FF0000002E000000202C75
          B4FF5CC4E9FF58C2E9FF56C0E8FF53BEE7FF51BBE6FF4FBAE5FF4CB6E4FF95D3
          EFFF35A1DAFF339CD9FF3197D6FF2E92D4FF2A84C8FF2B7DBAFF7ADDF4FF77DB
          F3FF75D9F2FF7CD8F2FFC1EBF9FFC8F1FCFF7FBBDEFF97D4F0FF51B7E5FF52B6
          E4FF49ADE0FF339CD9FF3299D7FF3097D6FF154081FF0000002D0000001E2D77
          B6FF60CAECFF5EC7EBFF5CC5EAFF59C3E9FF57C1E8FF54BEE7FF52BCE7FFA2DA
          F2FF37A3DCFF359FDAFF339AD8FF3095D6FF2B87C8FF2C7FBCFF7EE1F6FF7EDF
          F5FFB5ECF9FFD3F5FCFFADECFAFFA5E8FAFF7FBBDEFFA2D8F1FF51B7E5FF51B7
          E5FF51B7E5FF55B9E6FF40A6DDFF3298D7FF154282FF0000002B0000001C2F7B
          B7FF66CFEEFF63CCEDFF62CAECFF5FC8EBFF5DC6EAFF59C3E9FF57C2E8FFAFE1
          F4FF39A6DDFF37A2DBFF349DD9FF3198D7FF2D8BCBFF2C81BDFF8BD6EEFFCCED
          F8FF6FC0E4FF50B1DEFF4BAFDDFF46ACDBFF3591CAFFABDCF2FF9FD7F1FF95D3
          EFFF8ACEEDFF7FCAECFF76C6EBFF5DABDAFF1F5294FF0002072F0000001A307D
          BAFF6BD4EFFF69D2EFFF66D0EEFF65CDEDFF62CBECFF5FC9ECFF5DC7EBFFBBE7
          F6FF3AA9DFFF38A4DDFF36A0DAFF339CD9FF3092D2FF2B83C1FF2A7CBAFF6CAD
          D6FFC2E7F5FF96D3EFFF74C5EAFF74C5EAFF6FBDE5FF3491CAFF7DBBDEFF7CB9
          DEFF7AB8DEFF64A6D4FF346BA9FF0E326CE1051020680000000E00000018317F
          BCFF71D9F2FF6ED7F1FF6CD5F0FF6AD2EFFF68D1EFFF65CEEEFF63CCECFFC7EC
          F8FF3BABDFFF3AA7DDFF37A3DCFF349FDAFF3299D6FF2F92D2FF2B88CBFF287B
          BEFF2877B7FF6BAAD2FFC2E7F5FF96D3EFFF74C5EAFF42AADAFFA2E6F9FF84D1
          EEFF4689BCFF143F6FD4061322630000001A0000000A00000002000000163280
          BDFF75DDF3FF74DBF2FF71D9F2FF6FD8F2FF6CD5F1FF6BD3EFFF83D9F2FFEAF8
          FDFF86CDECFF63BCE6FF38A5DEFF37A1DBFF349CD9FF3198D7FF2F91D4FF2B8B
          D0FF2981C8FF2677BBFF2672B2FF6AA7D0FFC1E7F5FF63B7DFFF4A91C3FF1747
          78CE071524590000001400000008000000020000000000000000000000143482
          BFFF7BE0F5FF79DFF5FF76DDF3FF74DBF2FF7EDCF3FFBAEDF9FFD9F3FAFFA1D5
          EBFF78C7EBFF5CBBE6FF82CBEBFF52B0E0FF369FDBFF339BD8FF3096D6FF2D91
          D4FF2B8CD1FF2885CCFF257CC5FF184785FF1B5383CF1B507FC70818274E0000
          000D000000060000000100000000000000000000000000000000000000123585
          C0FF7FE4F7FF7CE2F6FF80E1F5FFB0EDF9FFD7F7FDFFB7E9F6FF91D1E9FF6FAC
          D0FF81CBECFF51B7E5FF51B7E5FF5FBCE7FF7BC6E9FF43A6DCFF3299D7FF2F95
          D5FF2D8FD3FF2A8AD1FF2785CDFF123775FF0000002B00000005000000030000
          0001000000000000000000000000000000000000000000000000000000103787
          C2FF83E6F8FFA4EDFAFFD1F7FDFFC5F4FDFFACEAF7FF9AD9EDFF88C6DFFF5F94
          C1FF8CD0EEFF51B7E5FF51B7E5FF51B7E5FF51B7E5FF64BFE7FF72C2E8FF3A9E
          D8FF2E92D4FF2C8DD2FF2988D0FF133977FF0000002700000000000000000000
          00000000000000000000000000000000000000000000000000000000000C3887
          C2FFB4E8F4FFB0DDECFF99CFE3FF92CBE0FF8AC2DAFF7AB2D0FF6AA1C5FF4777
          ABFF97D4F0FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF6DC6
          EBFF64BAE6FF3294D4FF2B8BD1FF143B7AFF0000002500000000000000000000
          0000000000000000000000000000000000000000000000000000000000061C42
          5E884A8DBDF288C3DFFFA1D9EEFFA1D9EEFFA1D9EEFFA1D9EEFFA1D9EEFF7EB0
          D6FFA2D8F1FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7
          E5FF54B9E6FF71C9EDFF58B0E1FF153D7DFF0000002400000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0005010202101431476F3572A0DD68ADD1FF83CAE6FF86CEE9FF86CEE9FF6FB0
          D7FFABDCF2FF9FD7F1FF95D3EFFF8ACEEDFF7FCAECFF76C6EBFF6EC3E9FF66C0
          E8FF60BDE7FF5BBBE7FF58B7E3FF29649DFF0000001C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000040000000B0B1C2847275980B95BA0C9FD7FC6E3FF80C6
          E4FF6FB0D7FF69A8D2FF7EB0D6FF487DB0FF609BC8FF68A7D0FF68ADD7FF4E94
          C8FF2E6AA9FF153E7AEE0C2346A7040B164D0000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000300000008040A0F261B405E924E90
          BCF679BEDEFF86CEE9FFA1D9EEFF67A6C9FF67B7DBFF4590C3FF1E528CEE1131
          54AB0612205A0000001A0000000E000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000060101
          0212102A406D407DA7E388C2DFFF25619DF6173F67B30A1B2D63000000160000
          000D000000060000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000050000000C0A192849010304180000000B00000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 5
        OnClick = btnCadastrarTodosClick
        ExplicitLeft = 6
        ExplicitTop = 55
        ExplicitWidth = 62
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 18
      Width = 913
      Height = 414
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
      Top = 432
      Width = 1002
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
      ExplicitTop = 440
      ExplicitWidth = 1004
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
