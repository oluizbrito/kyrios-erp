object frmCHParcela: TfrmCHParcela
  Left = 0
  Top = 0
  ActiveControl = edtParcela
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cheques | Parcela'
  ClientHeight = 387
  ClientWidth = 709
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 699
    Height = 86
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1072
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 89
      Height = 17
      Caption = 'Total da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 16
      Width = 49
      Height = 17
      Caption = 'Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 228
      Top = 16
      Width = 55
      Height = 17
      Caption = 'Intervalo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTotal: TEdit
      Left = 16
      Top = 40
      Width = 124
      Height = 23
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
    end
    object edtParcela: TEdit
      Left = 154
      Top = 39
      Width = 68
      Height = 23
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '1'
      OnKeyPress = edtParcelaKeyPress
    end
    object edtIntervalo: TEdit
      Left = 228
      Top = 39
      Width = 68
      Height = 23
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '1'
      OnKeyPress = edtParcelaKeyPress
    end
    object cxGerar: TcxButton
      AlignWithMargins = True
      Left = 310
      Top = 8
      Width = 90
      Height = 70
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alRight
      Caption = 'F2 | Gerar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA7930000034F494441545809ED964F
        4B54511887DF2B538B5A34B5282AB5314D90D61144DAD5D20C9242DAB472D307
        08225AE62668D9A645516A10442D8A96093A66EA87089B34B5944A26DD1442B7
        E7BD33771CEF9CDB9CB93A45D0E1F79C3FEFF99DF79E39F738A3C8FFF28F9D80
        13B55FCFF38E327713E2688D45371CC799A7DD1AB1211736A325163756BA9B84
        E582FB963EB5F550ED87BDF08A4DB53B8E33477F732251E1842AC9C4BA3150FD
        D00A3E40A36D8E1A5B630CDF63D6AC421DA43DCFB3DA54353734C746BA6105AC
        3755CD0D0977678ACD9C838A3685BF541CB10BBE4A67A3232C180355966A26CF
        22ED4F50CD52ED8BCA90889AD882F82E7228341B54CFA80596A044D5D8D06D9E
        3224E632680E5B443956177C59D8AD2C7EB25CE54A44A9F884C877925C4D60A3
        692EF6848D31F024824E05ED15BC7D60A3479826C05A096BE7BAF10BDD59B091
        7A6D7CE53DBC9ABF7287AAFAC5C8873A0B03F0168A4FEB3AE3AEF2C752E46081
        F18488DF85E5327C637E0DCA6912434BD16325CE1DDA4182DD60AB118C2F2003
        AAC354BDD00127608A4D5DE0AF719CBE385A99C0E48A481AF437A9E0237E8C58
        4ACCE500E15BB013F4C7F5320F9AA45F22F2B4127C020761198EE39DA6358B05
        C6576676E7A2AC1907D502556D2E2A423F09FD799245F17A621F4135AAF1C227
        D74131385C319F902B22CD1096DE85ABF960079FD63F5D1D932B2522EF41D5E0
        38CE8CE40B739D748741755A2B23185DF0556C2030E8FDBEA48BFDDAC79E8240
        290915265E83EA5E9C4BFD997C1908AB8EC036780942F624AD422385D7C7A096
        391A5F594E2B4B4FD7B4D12A3406B1C8055F86E99210C655509DD7493AFD504E
        FD42C1D403AA951AC65BA5E03E7A9B4918E795453D6F8189666802D51DAA21C9
        157D656F725D69A59D0755562B3802AA05AD8C707E2EF8321A42418C0F40351A
        9A1282290894925061A2B24BCD8267A11CA661F07F723BFE76C771D226533886
        F70CB136503DD5CA084617E24ABF18EB83C42489FA623CE479DE27508DA83FB8
        88DADF000EBD0FD73604CB0F92582EC27658843E4E2AF8D263B82EF277331A12
        113DD9C24F47E48630C6120F3AC5C2E7B00754A3543ACED0EAF31A682F812BB9
        F295A6978D8FD356476CAA1146A09C8631A4E44F151ED605039081EF79DED13E
        844ED33E7E0101CC5DFEB56A06E40000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGerarClick
      ExplicitLeft = 412
      ExplicitTop = 0
      ExplicitHeight = 57
    end
    object cxExcluir: TcxButton
      AlignWithMargins = True
      Left = 407
      Top = 8
      Width = 90
      Height = 70
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alRight
      Caption = 'F3 | Excluir'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA7930000038F494441545809ED97DB
        4B155114C6E7D4E9428245A09165418510151105BD548CA850A459F4D47FD14B
        0405E64BD04B063D44D483153D15E18B4485A0501474A3B4A4BB95DD7BC94B9E
        CC74FA7DC39E1AE7729AF112041DBEDF5E7BAFBDD69ECFED6150CBFAFFF9C76E
        2013E7D7719C15EC1D80B16888A6BD994CE60D716284211BC6A38F342F4DEB26
        9BB0E144C23A95D530CC8762B88CA9F24C26D3CD7C7CE2A05F3794E624FADA40
        1AD400AF6169D233A6242D1C43DD597AFAA0145A1DC749646A320D75636433F4
        4262539369C8E2BB731D335B209529EAC3E28A6D7015DE8DCFD0D006D2178697
        860FC411905E31CC8B3B211BB73101F9D99C2108A3B488D572F808214D86A143
        3CE59415FD698C4EFFCE8ECB10575FC05155B0041CE8822B7C7706882151DF18
        4A264DD06C83AB600FC92CD4431F04D54BA20E423F2C394FB695F643A70DAEFC
        BD24A6C345F094637217A4110D8666E2B4402F2957B695F6435B9CA1A3EC49C3
        0C07A1506713A3D4A03D0F5F816DA5FDD01C3244AE0C7E80B4DB7FA612110C91
        5BE6D531974E3264BD5CE2485394A13AF2D27386A9FEC35807F5CD24F67B75AC
        8F83FB270F7125B43A8EF309EEC376AF2E32521065E80279E958B049C918CE7B
        B5EC7B6674763FEBA0764CF18A13C60253D763A23FAC63E1E7346B699606C1EB
        40066CCBB29A41677510B782D604AB3EEDEFF2ADBA60258C120FBBE34FF0E422
        B3EE32D12257CE5C0F974999A9A0EF33F999E4AB6131448B221B5C79152C7681
        34C450E6E58391BDE5A09AA7C462ED13CBE12B48ED0CAE61E23CE804A945B591
        B01B656806F9172075302C0C36932B8587F01E96689F1867A698BD0720E51856
        AB3E1236438654487E130C82D4C3D000B58623C45E507E8DA9AF61EDD5DF643E
        C7E417307F02521FC346E563A120D2901AD8AB844F10A56F242B4C5D9C99126A
        9E80F46733E6B0584366BF90D3F6C00DE80719B94DAC35FB7E33B7C87B3753C2
        FC3148C9CC9803F31A524D1C3C29A9990D716784F21C3A2643F46D834190F2DD
        4C723372C769A90DD193C48CBEF4B16612BD1879D039998CA18B97DB5EB37798
        381D3AA19ABCFEAED6FBE612EB32C8C14EF2D788E984895F37C43C9FCEE8640A
        E6C20848EB4DAE88453B48030C55CAE7239B67F31D7B49FE856EA24E5ACB9081
        6178C4C357136576153107DBB89916E2DF1106F681A45BFAAE89413753F9775C
        F89EC2C39B20A86724DC97A4AF34EF54579CB720E9260FBE4A6D17DC31DCE357
        D4CF3C957E02E1C133AA1E19DDFE0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxExcluirClick
      ExplicitLeft = 363
      ExplicitTop = 9
    end
    object cxVoltar: TcxButton
      AlignWithMargins = True
      Left = 504
      Top = 8
      Width = 90
      Height = 70
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alRight
      Caption = 'F4 | Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000377494441545809ED97CF
        4B155114C7CF0BE34141114151A18695A2AEA395352A4A8642D4AA45E8A6FE81
        08DAB58BFE811649A18BA008FAB192EC87EF11D5AA7581E0C3B2578A16A19B24
        F0F6F98ECFC7E4CCF8669ECF45D0F0FDDC73E6DC73EF1CEFBBF343B3FFC73FB6
        0299B87A9D73EDF45D876AF49B41D73299CC0CB636A2200F36A32283EBD35653
        9770C070C23CA50DD01C80839073CE75666AB1524C545E21264E2CC6E5415A56
        039FE148D209B6254DAC22EF1E6396403F5BCE3997A8A8AD2C6886624EC32224
        2E6A2B0B32F6CE3B8AE9835445911F164BEC81AF706F7C840179907ED24C9798
        C5AE80F489667FDC0C75711D3588EF660E81F94B0D9CB5C21C84B41505DDE42A
        A3167D8C4487134459560F7C25484F94E24FB6DA781673A45E21E6F3CCAC1992
        68928D9DB71447EA82987B10862CD9316A66794B715453D03CF3172089949B24
        AF728E7E1AF055393B59863FD96AE359CCB1A50F46AEDD037761121602355CE5
        BC3B705ED96540E45D46FC16FCA8801E8ABFC8A9A471121A83D554B3877630C1
        1ED8488ECEB58FBF09FCC75000C59AB0E7A0137AE13D459DE56E7C8B6F193551
        90E499590EF44E2AE7113F4EECB0451FFA0EBA41D74EF80217B8D01B6C48CCD3
        41F03E1C82EF7082DC296CB41810F9934567AF46199307A948D3A028362B1B64
        2D866D74CE7D03E9A572EAD4A481919E453F185B899F02E9227FAD3ECC7A3919
        66CC19CE3FE01B7E1B760C7B99D873EC20E7E3D08DDF898D169D1EF80A661018
        711B1F39E59392051585717ADBB7E2B4817C8CD35BDF5F3D4E5E83743BF50A71
        B17928C07AD513D80E4F41FB6E992BF4E3BF027D6E4C6033207F013BC00A2D63
        258DE9C03909D162B2C8158ACE36237F09A4FE600E8116F80A6B92DFB22E67A0
        D4B9B82DD8B1495F7FBDA6706A02281E8CAD04FA426E2D0B2A96663F5AB25AB5
        76FC1CE85FA259EC1CE836CFB322DADC9CFA3AE6B766C5920D1B0678E02BDC1B
        8E9078072415603859D0C6C5446EEA693AB29A099B6E5333E0A10656409B5529
        1EF95D6CD809EC2502C3A0DBFE23D6887561C740B7BD36BE1E0DDAD084EC819A
        4818E841B5AAFAC1A80D175750331D57208DF451DFC7805D300743ACD4336C48
        FCA57D0447CD6C1F945F1DB105915495B89096FF0983F782A43DF508A700BA5E
        13F63C78B67A2C60CA2F57FCDA8BA29AE00554D238098DB5AF2066462ED603FA
        409BC2EAFB48C8D71D19F981F60758788780A1B41FEA0000000049454E44AE42
        6082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxVoltarClick
      ExplicitLeft = 618
      ExplicitTop = 12
      ExplicitHeight = 57
    end
    object cxAvancar: TcxButton
      AlignWithMargins = True
      Left = 601
      Top = 8
      Width = 90
      Height = 70
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Caption = 'F5 | Concluir'
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
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxAvancarClick
      ExplicitLeft = 557
      ExplicitTop = 9
    end
  end
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 5
    Top = 96
    Width = 699
    Height = 240
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    DataGrouping.Font.Charset = ANSI_CHARSET
    DataGrouping.Font.Color = clBlue
    DataGrouping.Font.Height = -13
    DataGrouping.Font.Name = 'Segoe UI'
    DataGrouping.Font.Style = []
    DataGrouping.ParentFont = False
    DataSource = dsCH
    DynProps = <>
    EvenRowColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleParams.Font.Charset = ANSI_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -13
    TitleParams.Font.Name = 'Segoe UI Semibold'
    TitleParams.Font.Style = [fsBold]
    TitleParams.ParentFont = False
    OnEnter = DBGridEh1Enter
    OnExit = DBGridEh1Exit
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUMERO'
        Footers = <>
        Title.Caption = 'N'#250'mero'
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATA_PREDATA'
        Footers = <>
        Title.Caption = 'Pr'#233'Datado'
        Width = 105
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BANCO'
        Footers = <>
        Title.Caption = 'Banco'
        Width = 241
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AGENCIA'
        Footers = <>
        Title.Caption = 'Ag'#234'ncia'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONTA_CORRENTE'
        Footers = <>
        Title.Caption = 'Conta Corrente'
        Width = 104
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALOR'
        Footers = <>
        Title.Caption = 'Valor'
        Width = 82
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 341
    Width = 699
    Height = 41
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 273
    ExplicitWidth = 710
    object Label3: TLabel
      Left = 12
      Top = 11
      Width = 94
      Height = 17
      Caption = 'Total Parcelas  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 115
      Top = 7
      Width = 125
      Height = 24
      DataField = 'TTOTAL'
      DataSource = dsCH
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qryCH: TFDQuery
    AfterPost = qryCHAfterPost
    AfterDelete = qryCHAfterPost
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CHEQUES'
      'where'
      'fk_venda=:id')
    Left = 240
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCHCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCHNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCHAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object qryCHCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
      Size = 10
    end
    object qryCHBANCO: TStringField
      DisplayWidth = 30
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryCHVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCHDATA_PREDATA: TDateField
      FieldName = 'DATA_PREDATA'
      Origin = 'DATA_PREDATA'
    end
    object qryCHDATA_COMPESADO: TDateField
      FieldName = 'DATA_COMPESADO'
      Origin = 'DATA_COMPESADO'
    end
    object qryCHSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCHFK_CONTA_DESTINO: TIntegerField
      FieldName = 'FK_CONTA_DESTINO'
      Origin = 'FK_CONTA_DESTINO'
    end
    object qryCHFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCHFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryCHFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryCHHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCHDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryCHTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR)'
    end
  end
  object dsCH: TDataSource
    DataSet = qryCH
    Left = 184
    Top = 144
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 88
    Top = 144
  end
end
