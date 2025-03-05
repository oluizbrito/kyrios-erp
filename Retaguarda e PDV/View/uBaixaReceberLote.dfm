object frmBaixaReceberLote: TfrmBaixaReceberLote
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixar - Contas '#224' Receber em Lote'
  ClientHeight = 461
  ClientWidth = 692
  Color = 5723991
  DefaultMonitor = dmPrimary
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
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 678
    Height = 375
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    TabStop = False
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    ExplicitWidth = 674
    ExplicitHeight = 363
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 678
    Height = 375
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 674
    ExplicitHeight = 363
    object Label4: TLabel
      Left = 124
      Top = 241
      Width = 66
      Height = 20
      Alignment = taRightJustify
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 99
      Top = 327
      Width = 91
      Height = 20
      Alignment = taRightJustify
      Caption = 'Recebido Em:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 267
      Width = 106
      Height = 20
      Alignment = taRightJustify
      Caption = 'Total '#224' Receber:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 150
      Top = 182
      Width = 40
      Height = 20
      Alignment = taRightJustify
      Caption = ' Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 149
      Top = 154
      Width = 41
      Height = 20
      Alignment = taRightJustify
      Caption = 'Saldo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 80
      Top = 66
      Width = 110
      Height = 20
      Alignment = taRightJustify
      Caption = 'Plano de Contas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 72
      Top = 97
      Width = 118
      Height = 20
      Alignment = taRightJustify
      Caption = 'Conta de Destino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 45
      Top = 126
      Width = 145
      Height = 20
      Alignment = taRightJustify
      Caption = 'Forma de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 79
      Top = 210
      Width = 111
      Height = 20
      Alignment = taRightJustify
      Caption = 'Saldo com Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 78
      Top = 35
      Width = 112
      Height = 20
      Alignment = taRightJustify
      Caption = 'N'#250'mero do Lote:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 83
      Top = 296
      Width = 107
      Height = 20
      Alignment = taRightJustify
      Caption = 'Total  Recebido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 196
      Top = 65
      Width = 421
      Height = 26
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FK_PLANO'
      DataSource = dsBaixaLote
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsPlano
      ParentFont = False
      TabOrder = 1
      Visible = True
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 196
      Top = 94
      Width = 421
      Height = 26
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FK_CONTA'
      DataSource = dsBaixaLote
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsConta
      ParentFont = False
      TabOrder = 2
      Visible = True
    end
    object DBEdit1: TDBEdit
      Left = 196
      Top = 33
      Width = 77
      Height = 26
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 196
      Top = 152
      Width = 239
      Height = 26
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'SALDO'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 295
      Top = 181
      Width = 140
      Height = 26
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'JUROS_VALOR'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 196
      Top = 210
      Width = 239
      Height = 26
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTAL_C_JUROS'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 196
      Top = 239
      Width = 93
      Height = 26
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'DESCONTO_PERC'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnExit = DBEdit6Exit
    end
    object DBEdit9: TDBEdit
      Left = 295
      Top = 239
      Width = 140
      Height = 26
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'DESCONTO_VALOR'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnExit = DBEdit9Exit
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 196
      Top = 123
      Width = 421
      Height = 26
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FK_FPG'
      DataSource = dsBaixaLote
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsFPG
      ParentFont = False
      TabOrder = 3
      Visible = True
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 196
      Top = 325
      Width = 239
      Height = 24
      Ctl3D = False
      DataField = 'DATA'
      DataSource = dsBaixaLote
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Flat = True
      Kind = dtkDateEh
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      Visible = True
    end
    object DBEdit7: TDBEdit
      Left = 196
      Top = 267
      Width = 239
      Height = 26
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TOTAL_FINAL'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit3: TDBEdit
      Left = 196
      Top = 181
      Width = 93
      Height = 26
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'JUROS_PERC'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnExit = DBEdit3Exit
    end
    object DBEdit8: TDBEdit
      Left = 196
      Top = 296
      Width = 239
      Height = 26
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'TOTAL_RECEBIDO'
      DataSource = dsBaixaLote
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnExit = DBEdit6Exit
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 389
    Width = 678
    Height = 65
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 377
    ExplicitWidth = 674
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
  object dsBaixaLote: TDataSource
    DataSet = qryBaixaLote
    Left = 36
    Top = 88
  end
  object qryCaixa: TFDQuery
    BeforePost = qryCaixaBeforePost
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from caixa'
      'where'
      'fkreceber=:id')
    Left = 576
    Top = 160
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object qryCaixaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object qryCaixaFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCaixaFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCaixaFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryCaixaFKCOMPRA: TIntegerField
      FieldName = 'FKCOMPRA'
      Origin = 'FKCOMPRA'
    end
    object qryCaixaFKPAGAR: TIntegerField
      FieldName = 'FKPAGAR'
      Origin = 'FKPAGAR'
    end
    object qryCaixaFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryCaixaTRANSFERENCIA: TIntegerField
      FieldName = 'TRANSFERENCIA'
      Origin = 'TRANSFERENCIA'
    end
    object qryCaixaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCaixaFK_CONTA1: TIntegerField
      FieldName = 'FK_CONTA1'
      Origin = 'FK_CONTA1'
    end
    object qryCaixaFK_PAI: TIntegerField
      FieldName = 'FK_PAI'
      Origin = 'FK_PAI'
    end
    object qryCaixaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryCaixaECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryCaixaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCaixaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
    object qryCaixaFK_FICHA_CLI: TIntegerField
      FieldName = 'FK_FICHA_CLI'
      Origin = 'FK_FICHA_CLI'
    end
    object qryCaixaVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryCaixaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object qryCaixaFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
      Origin = 'FK_DEVOLUCAO'
    end
    object qryCaixaFK_CARTAO: TIntegerField
      FieldName = 'FK_CARTAO'
      Origin = 'FK_CARTAO'
    end
    object qryCaixaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Size = 2
    end
    object qryCaixaID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
      DisplayFormat = ',0.00'
    end
    object qryCaixaFPG: TIntegerField
      FieldName = 'FPG'
      Origin = 'FPG'
      DisplayFormat = ',0.00'
    end
  end
  object qryPlano: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select * from plano'
      'where'
      'DC='#39'C'#39
      'ORDER BY DESCRICAO')
    Left = 528
    Top = 160
    object qryPlanoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPlanoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object qryPlanoDC: TStringField
      FieldName = 'DC'
      Origin = 'DC'
      Required = True
      Size = 1
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 336
    Top = 264
  end
  object dsPlano: TDataSource
    DataSet = qryPlano
    Left = 480
    Top = 216
  end
  object qryConta: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select * from contas'
      'where'
      'tipo<>'#39'S'#39
      'ORDER BY DESCRICAO')
    Left = 480
    Top = 160
    object qryContaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryContaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryContaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryContaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryContaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryContaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryContaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
  end
  object dsConta: TDataSource
    DataSet = qryConta
    Left = 528
    Top = 216
  end
  object ACBrPosPrinter2: TACBrPosPrinter
    Modelo = ppEscBematech
    PaginaDeCodigo = pc860
    EspacoEntreLinhas = 5
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    ConfigLogo.IgnorarLogo = True
    LinhasEntreCupons = 10
    ControlePorta = True
    VerificarImpressora = True
    Left = 338
    Top = 161
  end
  object ACBrNFeDANFeESCPOS2: TACBrNFeDANFeESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeDescAcrescItem = False
    FormularioContinuo = True
    PosPrinter = ACBrPosPrinter2
    Left = 338
    Top = 215
  end
  object qryFPG: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'Select * from forma_pagamento'
      'where'
      'tipo not in ('#39'F'#39','#39'N'#39')'
      'ORDER BY DESCRICAO')
    Left = 632
    Top = 160
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryFPGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryFPGGERACR: TStringField
      FieldName = 'GERACR'
      Origin = 'GERACR'
      Size = 1
    end
    object qryFPGGERACH: TStringField
      FieldName = 'GERACH'
      Origin = 'GERACH'
      Size = 1
    end
    object qryFPGECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryFPGUSAVD: TStringField
      FieldName = 'USAVD'
      Origin = 'USAVD'
      Size = 1
    end
    object qryFPGUSACR: TStringField
      FieldName = 'USACR'
      Origin = 'USACR'
      Size = 1
    end
    object qryFPGATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryFPGINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
    end
    object qryFPGTAXA: TFMTBCDField
      FieldName = 'TAXA'
      Origin = 'TAXA'
      Precision = 18
      Size = 2
    end
    object qryFPGENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qryFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryFPGDIAS: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object qryFPGFKCONTADESTINO: TIntegerField
      FieldName = 'FKCONTADESTINO'
      Origin = 'FKCONTADESTINO'
    end
    object qryFPGCOD_BEMA: TStringField
      FieldName = 'COD_BEMA'
      Origin = 'COD_BEMA'
      Size = 10
    end
    object qryFPGCOD_DARU: TStringField
      FieldName = 'COD_DARU'
      Origin = 'COD_DARU'
      Size = 10
    end
    object qryFPGCOD_ELGI: TStringField
      FieldName = 'COD_ELGI'
      Origin = 'COD_ELGI'
      Size = 10
    end
    object qryFPGCOD_EPSO: TStringField
      FieldName = 'COD_EPSO'
      Origin = 'COD_EPSO'
      Size = 10
    end
    object qryFPGGERACC: TStringField
      FieldName = 'GERACC'
      Origin = 'GERACC'
      Size = 1
    end
    object qryFPGGERACX: TStringField
      FieldName = 'GERACX'
      Origin = 'GERACX'
      Size = 1
    end
  end
  object dsFPG: TDataSource
    DataSet = qryFPG
    Left = 632
    Top = 215
  end
  object qryBaixaLote: TFDQuery
    BeforePost = qryBaixaLoteBeforePost
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from CRRECEBIMENTO_LOTE'
      'where'
      'codigo=:cod')
    Left = 32
    Top = 40
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryBaixaLoteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryBaixaLoteDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryBaixaLoteFK_PLANO: TIntegerField
      FieldName = 'FK_PLANO'
      Origin = 'FK_PLANO'
      DisplayFormat = ',0.00'
    end
    object qryBaixaLoteFK_FPG: TIntegerField
      FieldName = 'FK_FPG'
      Origin = 'FK_FPG'
      DisplayFormat = ',0.00'
    end
    object qryBaixaLoteFK_CONTA: TIntegerField
      FieldName = 'FK_CONTA'
      Origin = 'FK_CONTA'
      DisplayFormat = ',0.00'
    end
    object qryBaixaLoteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteJUROS_PERC: TFMTBCDField
      FieldName = 'JUROS_PERC'
      Origin = 'JUROS_PERC'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteJUROS_VALOR: TFMTBCDField
      FieldName = 'JUROS_VALOR'
      Origin = 'JUROS_VALOR'
      OnChange = qryBaixaLoteJUROS_VALORChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteTOTAL_C_JUROS: TFMTBCDField
      FieldName = 'TOTAL_C_JUROS'
      Origin = 'TOTAL_C_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteDESCONTO_PERC: TFMTBCDField
      FieldName = 'DESCONTO_PERC'
      Origin = 'DESCONTO_PERC'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteDESCONTO_VALOR: TFMTBCDField
      FieldName = 'DESCONTO_VALOR'
      Origin = 'DESCONTO_VALOR'
      OnChange = qryBaixaLoteDESCONTO_VALORChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteTOTAL_FINAL: TFMTBCDField
      FieldName = 'TOTAL_FINAL'
      Origin = 'TOTAL_FINAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBaixaLoteFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryBaixaLoteFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryBaixaLoteTOTAL_RECEBIDO: TFMTBCDField
      FieldName = 'TOTAL_RECEBIDO'
      Origin = 'TOTAL_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryCRBaixa: TFDQuery
    OnCalcFields = qryCRBaixaCalcFields
    AggregatesActive = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select CR.codigo, cr.fkcliente, CR.data, cr.doc, cr.vl_restante,' +
        ' cr.dtvencimento from CRECEBER CR'
      'where'
      'cr.flag='#39'S'#39' and cr.fkcliente=:us')
    Left = 32
    Top = 216
    ParamData = <
      item
        Name = 'US'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCRBaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryCRBaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCRBaixaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryCRBaixaFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
      DisplayFormat = ',0.00'
    end
    object qryCRBaixaVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRBaixaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
    end
    object qryCRBaixaJUROS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'JUROS'
    end
    object qryCRBaixaPERC_JUROS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERC_JUROS'
    end
    object qryCRBaixaSALDO_C_JUROS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SALDO_C_JUROS'
    end
    object qryCRBaixaDIAS_ATRASO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIAS_ATRASO'
      Calculated = True
    end
    object qryCRBaixaTOTAL_JUROS: TAggregateField
      FieldName = 'TOTAL_JUROS'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(JUROS)'
    end
    object qryCRBaixaTOTAL_S_JUROS: TAggregateField
      FieldName = 'TOTAL_S_JUROS'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(VL_RESTANTE)'
    end
    object qryCRBaixaTOTAL_C_JUROS: TAggregateField
      FieldName = 'TOTAL_C_JUROS'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(SALDO_C_JUROS)'
    end
  end
  object qryRecebimento: TFDQuery
    BeforePost = qryRecebimentoBeforePost
    AggregatesActive = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT CR.* FROM CRRECEBIMENTO CR'
      'WHERE'
      'CR.FKRECEBER=:CODIGO')
    Left = 488
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryRecebimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRecebimentoFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryRecebimentoFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryRecebimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryRecebimentoFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryRecebimentoFKUSUARIO: TIntegerField
      FieldName = 'FKUSUARIO'
      Origin = 'FKUSUARIO'
    end
    object qryRecebimentoFKKEMPRESA: TIntegerField
      FieldName = 'FKKEMPRESA'
      Origin = 'FKKEMPRESA'
    end
    object qryRecebimentoFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryRecebimentoFK_FORMA_PGTO: TIntegerField
      FieldName = 'FK_FORMA_PGTO'
      Origin = 'FK_FORMA_PGTO'
    end
    object qryRecebimentoNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
    end
    object qryRecebimentoTSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TSALDO'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object qryRecebimentoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      DisplayFormat = '0.00%'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryRecebimentoID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
      DisplayFormat = ',0.00'
    end
    object qryRecebimentoSALDO_C_JUROS: TExtendedField
      FieldKind = fkCalculated
      FieldName = 'SALDO_C_JUROS'
      DisplayFormat = ',0.00'
      Precision = 19
      Calculated = True
    end
    object qryRecebimentoFKLOTE: TIntegerField
      FieldName = 'FKLOTE'
      Origin = 'FKLOTE'
      DisplayFormat = ',0.00'
    end
    object qryRecebimentoTOTAL_JUROS: TAggregateField
      FieldName = 'TOTAL_JUROS'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(JUROS)'
    end
    object qryRecebimentoTOTAL_DESCONTO: TAggregateField
      FieldName = 'TOTAL_DESCONTO'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(DESCONTO)'
    end
    object qryRecebimentoTOTAL_RECEBIDO: TAggregateField
      FieldName = 'TOTAL_RECEBIDO'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(VALOR_RECEBIDO)'
    end
  end
  object qryBuscaCaixa: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select co.descricao, usu.login  from vendas_master vm'
      'left join contas co on co.codigo= vm.fk_caixa'
      'left join usuarios usu on usu.codigo= vm.fk_usuario'
      'where'
      'vm.lote=:id'
      ' ')
    Left = 584
    Top = 216
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryBuscaCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryBuscaCaixaLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 10
    end
  end
  object qryCR: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT * FROM CRECEBER CR'
      'WHERE'
      'cr.CODIGO=:CODIGO')
    Left = 544
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryCRDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCRFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
      DisplayFormat = ',0.00'
    end
    object qryCRDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryCRVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryCRDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
    end
    object qryCRHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCRDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'DATA_RECEBIMENTO'
    end
    object qryCRDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object qryCRJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryCRFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryCRFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
      DisplayFormat = ',0.00'
    end
    object qryCRVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
      DisplayFormat = ',0.00'
    end
    object qryCRFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
      DisplayFormat = ',0.00'
    end
    object qryCRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCRNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
      DisplayFormat = ',0.00'
    end
    object qryCRID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
      DisplayFormat = ',0.00'
    end
    object qryCRFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryCRFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryCRBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCRFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
  end
  object qryCRClie: TFDQuery
    OnCalcFields = qryCRBaixaCalcFields
    AggregatesActive = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select distinct(cr.fkcliente) codigo from CRECEBER CR'
      'where'
      'cr.flag='#39'S'#39' and cr.fkcliente=:us')
    Left = 32
    Top = 152
    ParamData = <
      item
        Name = 'US'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCRClieCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'FKCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = ',0.00'
    end
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
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
      'AUTO_CADASTRO_PRODUTO=AUTO_CADASTRO_PRODUTO')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 146
    Top = 3
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
    Left = 232
    Top = 8
  end
  object frxDBRecibo: TfrxDBDataset
    UserName = 'frxDBRecibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'FK_PLANO=FK_PLANO'
      'FK_FPG=FK_FPG'
      'FK_CONTA=FK_CONTA'
      'SALDO=SALDO'
      'JUROS_PERC=JUROS_PERC'
      'JUROS_VALOR=JUROS_VALOR'
      'TOTAL_C_JUROS=TOTAL_C_JUROS'
      'DESCONTO_PERC=DESCONTO_PERC'
      'DESCONTO_VALOR=DESCONTO_VALOR'
      'TOTAL_FINAL=TOTAL_FINAL'
      'FK_EMPRESA=FK_EMPRESA'
      'FK_USUARIO=FK_USUARIO'
      'TOTAL_RECEBIDO=TOTAL_RECEBIDO')
    DataSet = qryBaixaLote
    BCDToCurrency = False
    DataSetOptions = []
    Left = 314
    Top = 8
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DataSetName = 'frxDBCo'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 44108.333782326400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      'end.')
    OnGetValue = frxReportGetValue
    Left = 384
    Top = 8
    Datasets = <
      item
        DataSet = frmBaixaReceber.frxDBClientes
        DataSetName = 'frxDBClientes'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBRecibo
        DataSetName = 'frxDBRecibo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Compra: TfrxReportPage
      PaperWidth = 74.000000000000000000
      PaperHeight = 130.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      EndlessWidth = True
      MirrorMode = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      ResetPageNumbers = True
      object Cabecalho: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 105.826840000000000000
        Width = 266.456865000000000000
        object frxDBClientesRAZAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.574830000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          DataSet = frmBaixaReceber.frxDBClientes
          DataSetName = 'frxDBClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:[frxDBClientes."RAZAO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.015770000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          DataSet = frmBaixaReceber.frxDBClientes
          DataSetName = 'frxDBClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:[frxDBClientes."CNPJ"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 266.456865000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 101.450130000000000000
        Top = 204.094620000000000000
        Width = 266.456865000000000000
        DataSet = frxDBRecibo
        DataSetName = 'frxDBRecibo'
        RowCount = 0
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 75.370130000000000000
          Width = 260.787570000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 266.456865000000000000
          Height = 101.450130000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 4.267372360000000000
          Top = 10.000000000000000000
          Width = 124.724436300000000000
          Height = 15.118120000000000000
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Parcela:')
          ParentFont = False
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 755.800000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 133.039055200000000000
          Top = 10.000000000000000000
          Width = 120.944906300000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRecibo."VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 5.118120000000000000
          Top = 24.677180000000000000
          Width = 124.724436300000000000
          Height = 15.118120000000000000
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Juros:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 4.897650000000000000
          Top = 40.574830000000000000
          Width = 124.724436300000000000
          Height = 15.118120000000000000
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 4.897650000000000000
          Top = 56.133890000000000000
          Width = 124.724436300000000000
          Height = 15.118120000000000000
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 134.401670000000000000
          Top = 25.897650000000000000
          Width = 120.944906300000000000
          Height = 15.118120000000000000
          DataField = 'JUROS'
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRecibo."JUROS"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 134.181200000000000000
          Top = 41.015770000000000000
          Width = 120.944906300000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRecibo."DESCONTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 134.181200000000000000
          Top = 56.133890000000000000
          Width = 120.944906300000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_RECEBIDO'
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRecibo."VALOR_RECEBIDO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 124.724436300000000000
          Height = 15.118120000000000000
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Recebido:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 136.842610000000000000
          Top = 79.370130000000000000
          Width = 120.944906300000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_RECEBIDO'
          DataSet = frxDBRecibo
          DataSetName = 'frxDBRecibo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRecibo."VALOR_RECEBIDO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 62.588930000000000000
        Top = 18.897650000000000000
        Width = 266.456865000000000000
        object frxMemoView1: TfrxMemoView
          AllowVectorExport = True
          Left = 63.831540000000000000
          Top = 4.077180000000000000
          Width = 188.976377950000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBEmpresaRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 64.127520000000000000
          Top = 18.020470000000000000
          Width = 188.976377950000000000
          Height = 15.420470000000000000
          DataField = 'RAZAO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 64.774830000000000000
          Top = 36.347990000000000000
          Width = 200.314870310000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPROVANTE DE PAGAMENTO')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -86.929190000000000000
          Top = -18.897650000000000000
          Width = 268.346410310000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo15: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 266.456865000000000000
          Height = 62.588930000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 70.374830000000000000
        Top = 366.614410000000000000
        Width = 266.456865000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.600000000000000000
          Top = 2.000000000000000000
          Width = 232.591960000000000000
          Height = 15.420470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA/HORA: [DATE]- [TIME]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'USUARIO:[USUARIO]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 32.015770000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CAIXA:[CAIXA]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 50.913420000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '** Obrigado pela prefer'#234'ncia **')
          ParentFont = False
        end
      end
    end
  end
  object frxDBClientes: TfrxDBDataset
    UserName = 'frxDBClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO=RAZAO'
      'CNPJ=CNPJ'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'MUNICIPIO=MUNICIPIO'
      'FONE1=FONE1'
      'CEP=CEP'
      'UF=UF'
      'CODMUN=CODMUN'
      'CIDADE=CIDADE'
      'NUMERO=NUMERO')
    DataSet = qryCliente
    BCDToCurrency = False
    DataSetOptions = []
    Left = 466
    Top = 8
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
    Left = 88
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CLI.codigo, CLI.RAZAO, CLI.cnpj, CLI.ENDERECO,'
      
        'CLI.BAIRRO, CLI.municipio,CLI.fone1, CLI.CEP, CLI.UF, CLI.codmun' +
        ', MUN.descricao CIDADE, CLI.numero'
      'FROM PESSOA CLI LEFT JOIN cidade MUN on MUN.codigo=CLI.codmun'
      'WHERE CLI.codigo=:ID')
    Left = 544
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClienteMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClienteFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClienteCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Required = True
    end
    object qryClienteCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
  end
end
