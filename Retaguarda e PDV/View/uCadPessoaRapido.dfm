object frmCadPessoaRapido: TfrmCadPessoaRapido
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Cliente'
  ClientHeight = 414
  ClientWidth = 608
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 594
    Height = 328
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = 16382457
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 9
      Width = 43
      Height = 17
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 68
      Top = 9
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 103
      Top = 98
      Width = 55
      Height = 17
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 139
      Width = 35
      Height = 17
      Caption = 'Bairro'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 97
      Width = 46
      Height = 17
      Caption = 'F2 | CEP'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 12
      Top = 224
      Width = 41
      Height = 17
      Caption = 'Cidade'
      FocusControl = DBEdit6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 536
      Top = 224
      Width = 15
      Height = 17
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 14
      Top = 53
      Width = 45
      Height = 17
      Caption = 'Apelido'
      FocusControl = DBEdit22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 509
      Top = 96
      Width = 48
      Height = 17
      Caption = 'N'#250'mero'
      FocusControl = DBEdit7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 266
      Width = 40
      Height = 17
      Caption = 'Celular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 181
      Width = 82
      Height = 17
      Caption = 'Complemento'
      FocusControl = DBEdit9
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 12
      Top = 27
      Width = 50
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 68
      Top = 28
      Width = 514
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'RAZAO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 106
      Top = 114
      Width = 399
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ENDERECO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit4: TDBEdit
      Left = 12
      Top = 156
      Width = 570
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'BAIRRO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 12
      Top = 114
      Width = 66
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CEP'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEdit5KeyDown
    end
    object DBEdit6: TDBEdit
      Left = 12
      Top = 241
      Width = 52
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODMUN'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit22: TDBEdit
      Left = 12
      Top = 72
      Width = 570
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FANTASIA'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit22Exit
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 533
      Top = 242
      Width = 49
      Height = 23
      Ctl3D = False
      DataField = 'UF'
      DataSource = dsPessoas
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
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
    object DBEdit7: TDBEdit
      Left = 509
      Top = 114
      Width = 73
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 69
      Top = 242
      Width = 459
      Height = 23
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUN'
      DataSource = dsPessoas
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsCidade
      ParentFont = False
      TabOrder = 6
      Visible = True
      OnEnter = DBLookupComboboxEh1Enter
      OnExit = DBLookupComboboxEh1Exit
      OnKeyPress = DBLookupComboboxEh1KeyPress
    end
    object btnCEP: TBitBtn
      Left = 80
      Top = 114
      Width = 24
      Height = 23
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000C40E0000C40E00000000000000000000FBFBFBF4F4F4
        F0F0F0EEEEEEEBEBEBEAEAEAEAEAEAE9E9E9E9E9E9EAEAE9ECEAE7EFEEECF6F5
        F5FBFBFBFFFFEFEFEFDCDCDCD3D3D3CFCFCFCCCCCCCACACACACACACACACAC8C8
        C7BEB8A9B19E75C0B395DCDAD5F6F6F6FFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFDFDFCF0EBE0C7AF7CB89141D1B170F6EFE1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4EECBB586B79242CAA357E6
        CEA1FCF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7F9F9F9FEFEFDD1
        BE95B69145C69E50E2C791F8F1E3FEFEFEFFFFFFFFFFFFFFFFFDFDFDECECECD1
        D1D1C5C5C5C6C6C6CECBC4B59654C29A4CDDBF82F6ECDAFEFEFCFFFFFFFFFFFF
        FFFFFEFEFEE6E6E6C8C8C8D2D2D2DEDEDEDEDEDED3D3D0BDB5A4D6B983F5E9D0
        FEFDFCFFFFFFFFFFFFFFFFFFFFFFF5F5F5CECECED5D8DDA4CEEA64BAEF76C2F1
        D6E9F5D4D8DDD0D0CEFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3CDD0D3
        B4D1E771BAEE75BCF0ACD6F4BFDDF69FCBF0B7C5D5F1F1F1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDFDFDFCED6DCA8CEEDB0D5F1AED4F296C8F2CAE2F7A9D5F3B1C8
        DEF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7D4D8DDC0DAEFB6D6F2D7E7
        F59FCCF3C4DFF7C5E1F3CAD6DFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
        F6E2E2E2E8EAECDBE7F4D1E6F7CEE6F8F0F5FAE2E6EAE4E6E6FAFAFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1E4E4E4E8E9E9E7ECF0EBEFF1E9E9EAE5
        E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6E9
        E9E9E5E5E5E5E5E5EDEDEDF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      TabOrder = 12
      TabStop = False
      OnClick = btnCEPClick
    end
    object DBEdit8: TDBEdit
      Left = 12
      Top = 285
      Width = 136
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CELULAR1'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 12
      Top = 199
      Width = 570
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'COMPLEMENTO'
      DataSource = dsPessoas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 342
    Width = 594
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
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
  object dsPessoas: TDataSource
    DataSet = qryPessoas
    Left = 240
    Top = 184
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg;*.gif;*.png;*.i' +
      'co;*.emf;*.wmf;*.tif;*.tiff)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jp' +
      'g;*.jpeg;*.gif;*.png;*.ico;*.emf;*.wmf;*.tif;*.tiff|GIF Image (*' +
      '.gif)|*.gif|Portable Network Graphics (*.png)|*.png|JPEG Image F' +
      'ile (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp' +
      ')|*.bmp|JPEG Images (*.jpg)|*.jpg|JPEG Images (*.jpeg)|*.jpeg|GI' +
      'F Images (*.gif)|*.gif|PNG Images (*.png)|*.png|Icons (*.ico)|*.' +
      'ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIF' +
      'F Images (*.tif)|*.tif|TIFF Images (*.tiff)|*.tiff'
    Left = 152
    Top = 280
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 408
    Top = 248
  end
  object dsCidade: TDataSource
    DataSet = Dados.qryCidade
    Left = 304
    Top = 160
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    WebService = wsRepublicaVirtual
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 168
    Top = 136
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 248
    Top = 136
  end
  object qryPessoas: TFDQuery
    BeforePost = qryPessoasBeforePost
    AfterPost = qryPessoasAfterPost
    OnNewRecord = qryPessoasNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'Select * from pessoa'
      'where '
      'codigo=:codigo'
      'order by codigo')
    Left = 216
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPessoasEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryPessoasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryPessoasIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryPessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryPessoasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryPessoasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryPessoasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryPessoasCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Required = True
    end
    object qryPessoasMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryPessoasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryPessoasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryPessoasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryPessoasFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryPessoasFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryPessoasCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      EditMask = '(##)# ####-####;0;_'
      Size = 14
    end
    object qryPessoasCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object qryPessoasEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryPessoasEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 60
    end
    object qryPessoasFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPessoasSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
    object qryPessoasDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
    object qryPessoasECIVIL: TStringField
      FieldName = 'ECIVIL'
      Origin = 'ECIVIL'
      Size = 10
    end
    object qryPessoasLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object qryPessoasDIA_PGTO: TSmallintField
      FieldName = 'DIA_PGTO'
      Origin = 'DIA_PGTO'
    end
    object qryPessoasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryPessoasNUM_USU: TSmallintField
      FieldName = 'NUM_USU'
      Origin = 'NUM_USU'
    end
    object qryPessoasFATURA: TStringField
      FieldName = 'FATURA'
      Origin = 'FATURA'
      Size = 1
    end
    object qryPessoasCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
      Size = 1
    end
    object qryPessoasCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 1
    end
    object qryPessoasSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object qryPessoasISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 1
    end
    object qryPessoasFORN: TStringField
      FieldName = 'FORN'
      Origin = 'FORN'
      Required = True
      Size = 1
    end
    object qryPessoasFUN: TStringField
      FieldName = 'FUN'
      Origin = 'FUN'
      Required = True
      Size = 1
    end
    object qryPessoasCLI: TStringField
      FieldName = 'CLI'
      Origin = 'CLI'
      Required = True
      Size = 1
    end
    object qryPessoasFAB: TStringField
      FieldName = 'FAB'
      Origin = 'FAB'
      Required = True
      Size = 1
    end
    object qryPessoasTRAN: TStringField
      FieldName = 'TRAN'
      Origin = 'TRAN'
      Required = True
      Size = 1
    end
    object qryPessoasADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      Required = True
      Size = 1
    end
    object qryPessoasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryPessoasDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Origin = 'DT_ADMISSAO'
    end
    object qryPessoasDT_DEMISSAO: TDateField
      FieldName = 'DT_DEMISSAO'
      Origin = 'DT_DEMISSAO'
    end
    object qryPessoasSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object qryPessoasPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryPessoasMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryPessoasBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryPessoasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryPessoasGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 30
    end
    object qryPessoasFONE_GERENTE: TStringField
      FieldName = 'FONE_GERENTE'
      Origin = 'FONE_GERENTE'
      Size = 15
    end
    object qryPessoasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 50
    end
    object qryPessoasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryPessoasTECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 1
    end
    object qryPessoasATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 1
    end
    object qryPessoasCODIGO_WEB: TIntegerField
      FieldName = 'CODIGO_WEB'
      Origin = 'CODIGO_WEB'
    end
    object qryPessoasREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPessoasFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryPessoasRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryPessoasTIPO_RECEBIMENTO: TStringField
      FieldName = 'TIPO_RECEBIMENTO'
      Origin = 'TIPO_RECEBIMENTO'
    end
    object qryPessoasPARC: TStringField
      FieldName = 'PARC'
      Origin = 'PARC'
      Size = 1
    end
    object qryPessoasREGIME_TRIBUTARIO: TStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = 'REGIME_TRIBUTARIO'
      Size = 10
    end
    object qryPessoasWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
      Size = 14
    end
  end
end
