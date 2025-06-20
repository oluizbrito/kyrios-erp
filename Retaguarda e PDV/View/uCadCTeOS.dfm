object frmCadCTeOS: TfrmCadCTeOS
  Left = 0
  Top = 0
  ActiveControl = DBEdit8
  BorderStyle = bsSingle
  Caption = 'Cadastro de CTe OS'
  ClientHeight = 434
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 362
    Align = alClient
    Color = 15724527
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 392
    object Label2: TLabel
      Left = 96
      Top = 9
      Width = 95
      Height = 13
      Caption = 'Tomador do Servi'#231'o'
    end
    object Label6: TLabel
      Left = 15
      Top = 124
      Width = 96
      Height = 13
      Caption = 'Munic'#237'po de Origem '
    end
    object Label8: TLabel
      Left = 511
      Top = 126
      Width = 50
      Height = 13
      Caption = 'UF Origem'
    end
    object Label1: TLabel
      Left = 15
      Top = 46
      Width = 75
      Height = 13
      Caption = 'Transportadora'
    end
    object Label3: TLabel
      Left = 15
      Top = 84
      Width = 27
      Height = 13
      Caption = 'CFOP'
    end
    object Label4: TLabel
      Left = 15
      Top = 164
      Width = 95
      Height = 13
      Caption = 'Munic'#237'po de Destino'
    end
    object Label5: TLabel
      Left = 511
      Top = 166
      Width = 52
      Height = 13
      Caption = 'UF Destino'
    end
    object Label12: TLabel
      Left = 15
      Top = 8
      Width = 59
      Height = 13
      Caption = 'N'#250'mero CTe'
      FocusControl = DBEdit8
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 511
      Top = 139
      Width = 72
      Height = 21
      Ctl3D = False
      DataField = 'UFINI'
      DataSource = dsCTe
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      KeyItems.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Visible = True
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 96
      Top = 23
      Width = 485
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FKTOMADOR'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'RAZAO'
      ListSource = dsTomador
      ParentFont = False
      TabOrder = 1
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 15
      Top = 61
      Width = 566
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FKTRANSPORTADOR'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsTransp
      ParentFont = False
      TabOrder = 2
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 15
      Top = 99
      Width = 567
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CFOP'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsCFOP
      ParentFont = False
      TabOrder = 3
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 15
      Top = 139
      Width = 490
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNINI'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsCidadeOrigem
      ParentFont = False
      TabOrder = 4
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh4Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBLookupComboboxEh5: TDBLookupComboboxEh
      Left = 15
      Top = 179
      Width = 490
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNFIM'
      DataSource = dsCTe
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsCidadeD
      ParentFont = False
      TabOrder = 6
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh5Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 511
      Top = 179
      Width = 72
      Height = 21
      Ctl3D = False
      DataField = 'UFFIM'
      DataSource = dsCTe
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      KeyItems.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Visible = True
    end
    object DBEdit8: TDBEdit
      Left = 15
      Top = 23
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsCTe
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 15
      Top = 206
      Width = 568
      Height = 140
      ActivePage = TabSheet1
      TabOrder = 8
      object TabSheet1: TTabSheet
        Caption = 'Descri'#231#227'o do Servi'#231'o'
        object Label18: TLabel
          Left = 14
          Top = 12
          Width = 99
          Height = 13
          Caption = 'Descri'#231#227'o do Servi'#231'o'
          FocusControl = DBEdit10
        end
        object Label19: TLabel
          Left = 14
          Top = 52
          Width = 56
          Height = 13
          Caption = 'Quantidade'
          FocusControl = DBEdit11
        end
        object Label25: TLabel
          Left = 127
          Top = 52
          Width = 73
          Height = 13
          Caption = 'Tipo de Servi'#231'o'
        end
        object DBEdit10: TDBEdit
          Left = 14
          Top = 27
          Width = 523
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DESCRICAOSERVICO'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 14
          Top = 67
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'QTD'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBComboBoxEh4: TDBComboBoxEh
          Left = 127
          Top = 67
          Width = 135
          Height = 21
          Ctl3D = False
          DataField = 'TIPOSERVICO'
          DataSource = dsCTe
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Normal'
            'Subcontratacao'
            'Redespacho'
            'Intermediario'
            'Multimodal'
            'TranspPessoas'
            'TranspValores'
            'ExcessoBagagem ')
          KeyItems.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Visible = True
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Totais'
        ImageIndex = 1
        object Label7: TLabel
          Left = 52
          Top = 20
          Width = 66
          Height = 13
          Caption = 'Total Servi'#231'o:'
          FocusControl = DBEdit1
        end
        object Label9: TLabel
          Left = 52
          Top = 60
          Width = 80
          Height = 13
          Caption = 'Valor '#224' Receber:'
          FocusControl = DBEdit2
        end
        object Label11: TLabel
          Left = 150
          Top = 60
          Width = 61
          Height = 13
          Caption = 'Valor Cofins:'
          FocusControl = DBEdit4
        end
        object Label10: TLabel
          Left = 150
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Valor Pis:'
          FocusControl = DBEdit3
        end
        object Label14: TLabel
          Left = 248
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Valor INSS:'
          FocusControl = DBEdit5
        end
        object Label15: TLabel
          Left = 248
          Top = 60
          Width = 42
          Height = 13
          Caption = 'Valor IR:'
          FocusControl = DBEdit6
        end
        object Label17: TLabel
          Left = 346
          Top = 60
          Width = 85
          Height = 13
          Caption = 'Totais de Tributo:'
          FocusControl = DBEdit9
        end
        object Label16: TLabel
          Left = 346
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Valor CLSS'
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 52
          Top = 35
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TOTAL'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 52
          Top = 75
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'RECEBIDO'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 150
          Top = 75
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VCOFINS'
          DataSource = dsCTe
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
          Left = 150
          Top = 35
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VPIS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 248
          Top = 35
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VINSS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 248
          Top = 75
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VIR'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 346
          Top = 75
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VTOTTIRB'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 346
          Top = 35
          Width = 92
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VCLSS'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Adicionais'
        ImageIndex = 2
        object Label20: TLabel
          Left = 18
          Top = 4
          Width = 98
          Height = 13
          Caption = 'Responsavel Seguro'
        end
        object Label21: TLabel
          Left = 156
          Top = 4
          Width = 49
          Height = 13
          Caption = 'N'#186' Ap'#243'lice'
          FocusControl = DBEdit13
        end
        object Label22: TLabel
          Left = 286
          Top = 4
          Width = 56
          Height = 13
          Caption = 'Seguradora'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 18
          Top = 46
          Width = 19
          Height = 13
          Caption = 'TAF'
          FocusControl = DBEdit15
        end
        object Label24: TLabel
          Left = 149
          Top = 46
          Width = 99
          Height = 13
          Caption = 'N'#186' Registro Estadual'
          FocusControl = DBEdit16
        end
        object DBComboBoxEh3: TDBComboBoxEh
          Left = 18
          Top = 19
          Width = 135
          Height = 21
          Ctl3D = False
          DataField = 'RESPSEG'
          DataSource = dsCTe
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Remetente'
            'Expedidor'
            'Recebedor'
            'Destinatario'
            'EmitenteCTe'
            'TomadorServico')
          KeyItems.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEdit13: TDBEdit
          Left = 156
          Top = 19
          Width = 125
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NAPOLICE'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 286
          Top = 19
          Width = 256
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'XSEG'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 18
          Top = 61
          Width = 125
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'TAF'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 12
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 149
          Top = 61
          Width = 393
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NROREGESTADUAL'
          DataSource = dsCTe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 362
    Width = 604
    Height = 65
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 416
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
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairClick
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
  end
  object dsCTe: TDataSource
    DataSet = qryCte
    Left = 104
    Top = 192
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 456
    Top = 32
  end
  object dsCidadeOrigem: TDataSource
    DataSet = qryCidadeO
    Left = 344
    Top = 176
  end
  object qryTomador: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from tomador'
      'ORDER BY RAZAO')
    Left = 200
    Top = 144
    object qryTomadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTomadorRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 50
    end
    object qryTomadorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qryTomadorFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object qryTomadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTomadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTomadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTomadorCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
    end
    object qryTomadorMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryTomadorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTomadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryTomadorFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTomadorTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryTomadorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTomadorIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
  end
  object qryTransp: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from TRANSPORTADORA'
      'order by nome')
    Left = 264
    Top = 144
    object qryTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryTranspCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTranspIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qryTranspAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 40
    end
    object qryTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTranspNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTranspCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qryTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 45
    end
    object qryTranspUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTranspCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryTranspPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryTranspUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      Size = 2
    end
    object qryTranspRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 10
    end
    object qryTranspATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTranspEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryTranspRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
  end
  object qryCFOP: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cfop'
      'WHERE'
      'ATIVO='#39'S'#39' AND'
      'TIPO='#39'S'#39)
    Left = 144
    Top = 144
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
  object qryCte: TFDQuery
    BeforeOpen = qryCteBeforeOpen
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select cte.* from cte_master cte'
      'where'
      'codigo=:cod')
    Left = 101
    Top = 144
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCteFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryCteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCteCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryCteCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qryCteMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryCteSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object qryCteCODMUNENVIO: TIntegerField
      FieldName = 'CODMUNENVIO'
      Origin = 'CODMUNENVIO'
    end
    object qryCteMUNICIPIOENVIO: TStringField
      FieldName = 'MUNICIPIOENVIO'
      Origin = 'MUNICIPIOENVIO'
      Size = 40
    end
    object qryCteUFENVIO: TStringField
      FieldName = 'UFENVIO'
      Origin = 'UFENVIO'
      Size = 2
    end
    object qryCteTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSERVICO'
    end
    object qryCteCODMUNINI: TIntegerField
      FieldName = 'CODMUNINI'
      Origin = 'CODMUNINI'
    end
    object qryCteMUNICIPIOINI: TStringField
      FieldName = 'MUNICIPIOINI'
      Origin = 'MUNICIPIOINI'
      Size = 40
    end
    object qryCteUFINI: TStringField
      FieldName = 'UFINI'
      Origin = 'UFINI'
      Size = 2
    end
    object qryCteCODMUNFIM: TIntegerField
      FieldName = 'CODMUNFIM'
      Origin = 'CODMUNFIM'
    end
    object qryCteMINICIPIOFIM: TStringField
      FieldName = 'MINICIPIOFIM'
      Origin = 'MINICIPIOFIM'
      Size = 40
    end
    object qryCteUFFIM: TStringField
      FieldName = 'UFFIM'
      Origin = 'UFFIM'
      Size = 2
    end
    object qryCteDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Origin = 'DESCRICAOSERVICO'
      Size = 120
    end
    object qryCteRESPSEG: TIntegerField
      FieldName = 'RESPSEG'
      Origin = 'RESPSEG'
    end
    object qryCteXSEG: TStringField
      FieldName = 'XSEG'
      Origin = 'XSEG'
      Size = 50
    end
    object qryCteNAPOLICE: TStringField
      FieldName = 'NAPOLICE'
      Origin = 'NAPOLICE'
    end
    object qryCteTAF: TStringField
      FieldName = 'TAF'
      Origin = 'TAF'
    end
    object qryCteNROREGESTADUAL: TStringField
      DisplayWidth = 25
      FieldName = 'NROREGESTADUAL'
      Origin = 'NROREGESTADUAL'
      Size = 25
    end
    object qryCteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCteSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCteFKTOMADOR: TIntegerField
      FieldName = 'FKTOMADOR'
      Origin = 'FKTOMADOR'
    end
    object qryCteFKTRANSPORTADOR: TIntegerField
      FieldName = 'FKTRANSPORTADOR'
      Origin = 'FKTRANSPORTADOR'
    end
    object qryCtePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryCteXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryCteDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCteHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryCteTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Origin = 'RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVINSS: TFMTBCDField
      FieldName = 'VINSS'
      Origin = 'VINSS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVIR: TFMTBCDField
      FieldName = 'VIR'
      Origin = 'VIR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVCLSS: TFMTBCDField
      FieldName = 'VCLSS'
      Origin = 'VCLSS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteVTOTTIRB: TFMTBCDField
      FieldName = 'VTOTTIRB'
      Origin = 'VTOTTIRB'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCteQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryCteFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object qryCteDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 1
    end
    object qryCteDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object qryCteTOMADOR: TStringField
      FieldName = 'TOMADOR'
      Origin = 'TOMADOR'
      Size = 15
    end
    object qryCteFK_DESTINATARIO: TIntegerField
      FieldName = 'FK_DESTINATARIO'
      Origin = 'FK_DESTINATARIO'
    end
    object qryCteFK_VEICULO: TStringField
      FieldName = 'FK_VEICULO'
      Origin = 'FK_VEICULO'
      Size = 7
    end
    object qryCteOBS_FISCO: TMemoField
      FieldName = 'OBS_FISCO'
      Origin = 'OBS_FISCO'
      BlobType = ftMemo
    end
    object qryCteOBS_CONTRIBUINTE: TMemoField
      FieldName = 'OBS_CONTRIBUINTE'
      Origin = 'OBS_CONTRIBUINTE'
      BlobType = ftMemo
    end
    object qryCteVALOR_SERVICO: TFMTBCDField
      FieldName = 'VALOR_SERVICO'
      Origin = 'VALOR_SERVICO'
      Precision = 18
      Size = 2
    end
    object qryCteVALOR_CARGA: TFMTBCDField
      FieldName = 'VALOR_CARGA'
      Origin = 'VALOR_CARGA'
      Precision = 18
      Size = 2
    end
    object qryCteCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryCteALIQUOTA_ICMS: TFMTBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'ALIQUOTA_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qryCteOUTROS_TRIBUTOS: TFMTBCDField
      FieldName = 'OUTROS_TRIBUTOS'
      Origin = 'OUTROS_TRIBUTOS'
      Precision = 18
      Size = 2
    end
    object qryCteMETRAGEM: TStringField
      FieldName = 'METRAGEM'
      Origin = 'METRAGEM'
      Size = 3
    end
    object qryCteFK_REMETENTE: TIntegerField
      FieldName = 'FK_REMETENTE'
      Origin = 'FK_REMETENTE'
    end
    object qryCteCHAVE_REFERENCIADA: TStringField
      FieldName = 'CHAVE_REFERENCIADA'
      Origin = 'CHAVE_REFERENCIADA'
      Size = 44
    end
    object qryCteNAVERBACAO: TStringField
      FieldName = 'NAVERBACAO'
      Origin = 'NAVERBACAO'
    end
    object qryCteCNPJ_SEGURADORA: TStringField
      FieldName = 'CNPJ_SEGURADORA'
      Origin = 'CNPJ_SEGURADORA'
    end
    object qryCtePESOL: TFMTBCDField
      FieldName = 'PESOL'
      Origin = 'PESOL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryCtePESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 151
    Top = 194
  end
  object dsTransp: TDataSource
    DataSet = qryTransp
    Left = 272
    Top = 184
  end
  object dsTomador: TDataSource
    DataSet = qryTomador
    Left = 208
    Top = 192
  end
  object qryCidadeO: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from cidade'
      'order by descricao')
    Left = 344
    Top = 136
    object qryCidadeOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryCidadeOCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'CODUF'
    end
    object qryCidadeOUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object qryCidadeD: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from cidade'
      'order by descricao')
    Left = 400
    Top = 136
    object qryCidadeDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryCidadeDCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'CODUF'
    end
    object qryCidadeDUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object dsCidadeD: TDataSource
    DataSet = qryCidadeD
    Left = 400
    Top = 176
  end
end
