object frmCompra: TfrmCompra
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Compras'
  ClientHeight = 592
  ClientWidth = 1018
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TabSet1: TTabSet
    AlignWithMargins = True
    Left = 5
    Top = 51
    Width = 1008
    Height = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    SoftTop = True
    Style = tsSoftTabs
    Tabs.Strings = (
      'Todas'
      'Aberta'
      'Fechada'
      'Cancelada')
    TabIndex = 0
    TabPosition = tpTop
    OnClick = TabSet1Click
    ExplicitLeft = 0
    ExplicitTop = 41
    ExplicitWidth = 1018
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 74
    Width = 1008
    Height = 379
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alClient
    DataSource = dsCompra
    GradientEndColor = 15529196
    GradientStartColor = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = FormKeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = '>>N'#250'mero'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Caption = 'Dt.Emiss'#227'o'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTRADA'
        Title.Caption = 'Dt.Entrada'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_NOTA'
        Title.Caption = 'N'#186' da Nota'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO'
        Title.Caption = 'Fornecedor'
        Width = 418
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVE'
        Title.Caption = 'Chave'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Width = 89
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 458
    Width = 1008
    Height = 35
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alBottom
    Color = 16514043
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 468
    ExplicitWidth = 1018
    object LblSaldo: TLabel
      Left = 633
      Top = 10
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 131
      Top = 13
      Width = 222
      Height = 17
      DataField = 'TTOTAL'
      DataSource = dsCompra
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 13
      Width = 114
      Height = 15
      Caption = 'TOTAL DE COMPRAS |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1008
    Height = 41
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1018
    object Label8: TLabel
      Left = 9
      Top = 13
      Width = 48
      Height = 15
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 828
      Top = 0
      Width = 180
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 838
      object Label1: TLabel
        AlignWithMargins = True
        Left = 32
        Top = -2
        Width = 134
        Height = 37
        AutoSize = False
        Caption = 'Compras'
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object edtEmp: TDBEdit
      Left = 60
      Top = 9
      Width = 426
      Height = 25
      TabStop = False
      DataField = 'FANTASIA'
      DataSource = dsEmpresa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object PagUtilidade: TPageControl
    Left = 231
    Top = 144
    Width = 586
    Height = 289
    ActivePage = TabGerar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    object TabGerar: TTabSheet
      Caption = 'Gerar PDF / XML'
      ImageIndex = 1
      ExplicitWidth = 697
      ExplicitHeight = 309
      object pnGerar: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 261
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 574
        ExplicitHeight = 250
        object lblStatus: TLabel
          Left = 20
          Top = 277
          Width = 3
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BitBtn1: TBitBtn
          Left = 25
          Top = 200
          Width = 89
          Height = 33
          Caption = 'Gerar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 231
          Top = 201
          Width = 90
          Height = 33
          Caption = 'Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 244
          Width = 578
          Height = 17
          Align = alBottom
          TabOrder = 2
          ExplicitTop = 233
          ExplicitWidth = 574
        end
        object memLista: TListBox
          Left = 18
          Top = 18
          Width = 111
          Height = 161
          ItemHeight = 13
          TabOrder = 3
          Visible = False
        end
        object GroupBox3: TGroupBox
          Left = 18
          Top = 18
          Width = 551
          Height = 161
          Caption = 'Enviar Email'
          TabOrder = 4
          object Label14: TLabel
            Left = 16
            Top = 44
            Width = 83
            Height = 13
            Caption = 'E-Mail Contador'
          end
          object Label15: TLabel
            Left = 16
            Top = 87
            Width = 40
            Height = 13
            Caption = 'Arquivo'
          end
          object edtEmail: TEdit
            Left = 16
            Top = 59
            Width = 514
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object edtArquivo: TEdit
            Left = 16
            Top = 104
            Width = 514
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object Button1: TButton
          Left = 120
          Top = 200
          Width = 105
          Height = 33
          Caption = 'Enviar E-mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
      end
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 498
    Width = 1008
    Height = 89
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    ExplicitLeft = 7
    ExplicitTop = 503
    ExplicitWidth = 1004
    object cxAlterar: TcxButton
      AlignWithMargins = True
      Left = 109
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F3 | Alterar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002A9494441545809ED953D
        68144114C7DFEA21167E12BD228244108BD32E56728A9F678818C1424C23D85A
        D969B9858DBDBD8A366AA785367220162AB940721048671550215804BD48C8F9
        FBEB2DEEEDCEADBBDEEE4525CBFFB733F366E6CD9B37FB61B67EAD67E03FCB80
        17DD4FBBDD1EC526280A57C3F3BC46E22A04E4C3A0E45BE42A45DAE1668BC602
        14A1619C6E869892027A433A4FC466E46020FD75DC1C37C7B5C1615B53535286
        AAEC64B1A0E8B6F6F29B1490FA76F69A58945D8BF6F23D47876FC55CBE995520
        A6A4803EF2503F89CDC8C1C0A3700D371588E99F7AA8BBA26757550CFA76CC91
        B905DAFA963877C9B8A85ACC791D35BADA2597B187ED01F61133BB0AF7CCAC06
        77218DDE9BD93EF8ADFEBA238B45CC5104FFB27AAC3327036BD4DB3FAF0F149F
        A00957E43ECB91697CDE943B0E7751DE27A8D5D447C6E0673005E7996C2A416D
        173FC6685C14E65CC07604A426B771780AD28D2C193AC48C11331B0249E5A82A
        0E861C366D6202FB63D804B3709AB74F47A6B7577D7BB304741B07DBA10192CA
        9BAA38505F9799CC68417D68A3C1E8D86E75064F77CA5F05137D90727BA87136
        01CB20CD70DBAD1529CBD00449FD8765EF829E5C03C2DF24AC80F496DB0E2D48
        390CF3207DE156933D061DB90584AF494813CC995820810107B904849FFE8351
        5038EA3B207C5C862033EFA807C7B487FA3C484BDC8E69CD30A5702352AF3261
        31624BDBDCC6C08DD08473BCDA9FF1A5B7E905ED03B00C97B0BFA24C1613830C
        51ED4BB3CC76BD4D2DECE3BDA2F0A21D0C3E88AD027FA23B4C52269499536440
        1F3DB55F62D787B5457911FB73CA62C546B6C00A4827B51A953204DF99AFD4C7
        641F082C7614A4556EFB610CD62618ED98C5AF834BCACC598D192844F210C2FA
        46631A6A5902893DD4592687C7B2F023DA4B3005FAB9CEF0F0EAF5A6995EDF01
        9CA5E84DE8BCBCD20000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxAlterarClick
    end
    object cxAtualizar: TcxButton
      AlignWithMargins = True
      Left = 313
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Atualizar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002F2494441545809ED973F
        681441148767E53A41ED8C8A099A10A296564612F7144D0E89081662651A2B9B
        8085D7D9DA5A5828849C606521692C44C945CE7FA560238A1273269CA8202AA2
        088EDF3B778FBDECCCEDECBA0B0A2EBF6FDFDE9BF7DEBC9D9DCB6D94FA7FFC63
        2BE0D9FAD55AEF61EC0264D10F92AA9EE735B1F988867CF813AD90BC3D6D3725
        C784AB8E711236C5690B6C85BAD6BAECE5B15214EAAC10859D45DE2288BECB09
        9661D0B5C03AD7C00C71D7C9F90CF2D8EA5A6BA7A68A6CA8493393F0099C9B2A
        B221C5DE7948331548D514F171B1C43EB4151FB57B485804D1474E4B012DEC4F
        10BDE6B4D956A1641BC8C1BF911A02A64BFD7CDA056F21A6221ABAC82C35653E
        E6CC6E072FCBEA435B0EE14E21ED62BF4FBEB21C856E6ACB9C3DDDA91F193738
        42C53E70518B6FDA3397C0C41826363E32FC3570554D458E4892AF2CC75FF7C8
        2C7D2AC5DDF8D09635286180E4099885E7F01E42DDE2E248427AF73009991B22
        77373C82243D2040F66467F22C9BBA4AF624D8B4898121580FA2054E37E115C8
        0BE10EEC0928C32848E3C7D8FC0DAEEDA273E30AE1AF818B9A04EDB7CDC0D818
        BC01D1074E7213AA644BE8E19F676C49998F69A5D400BC8351EEBA89358AB106
        4DC80A3D26405EE8AE600F815904FBD09639A2DB4BE06108258FA33BC0F28984
        68DEC1D42B4481116AF7C15ACD048EFBDC7D3DB84E34C4DEA16683C0313899BA
        2192AA701A6C7A621BE8E19F674C1A1A2FE20FE32AC5D3EA4590B02DB071C332
        A6DD435FC8111D8D5773F7E4B9422BC1B44381CD644A99B2CC49B23187193A0E
        97C02A9651BEE27B4D014E0D51E08629798D2F7C4F96475DF63CAFBE663CFA51
        1A3736E445A3A2D734E12BA57A1565D8AA5546F6D1D43236266A9FC2D90F8370
        063AEAD5D03051E7208DE4A5BE42C20668C1344DDDC6C644531338AF81ACACC6
        7A90BF98681CE4B709D3D602E7B3508129380FF72094FC8B34137EC8BF232A52
        7C27DC8524C97BD180D65AF61D46CB4A51A1203183FC4ECD625FC237F80A4FE1
        321C08A7E5BAD3D02FD9C9EC8AE38762BB0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxAtualizarClick
    end
    object cxPDF: TcxButton
      AlignWithMargins = True
      Left = 906
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 4
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alRight
      Caption = 'F9 | Fechar M'#234's'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000271494441545809ED9431
        6FD43014C75FD0ED8C1C48402596560C746044C2DDCA806000A64A74E32B7403
        36860E3777210313533F00528D5431C38610C341011589E1800921617ECFE5A8
        7389734E48549078FAFFECF3F37BCE8BED9CC87FFBC776208BD5EB9C3BCFDC5D
        68A3EF246D6459B647DF8D28C8C09FE83DC9A79B5633484CD84A8CD3B0AB3427
        E114EC38E756B22E768A857EEF100B278B3C0BAA6FDAC05B3897BAC0B1D4C016
        718FC8F90A7A6C3BCEB9A4A2FA2C688F6256E10B2417D56741C2DD79463157A0
        5151C497C5161BF02ACFC63D2458504D68C6BFD8A7FF01AA373427622B0C6213
        1DF88FB3864257D019464BF0114AEAA3A0073C25976A7B58ED4EF0B2AD06BC12
        C29342FC62078D9188F57AA923CFAC75373E325E7091158790A27DBEB4972981
        73637870E591E1CF2155B90416241989D85F7764913A45781B035ED1A01E267A
        DD21DEE6068C6177B6767C9BA0739BE1DC201CA4FC66910DE256A1202EAF118C
        F911DD32A88634676188DF4AD11619EA3FF61A7317F95D2F820C788591387228
        691AC38485D66ABC433C781BC632DF9E1232816BF0194610EA3A830BF0029EC3
        6D90C6057134DB242A74B5B222F20426F089BC7B12185BF88EE125D885D7D0AE
        2016D2B3D7BBC11A87E281568AB620E25F38178C3C2345D32214F52E6B538B2E
        005E61208E1C4A9AC63061A1B57AFDECA74536E91B17C4D1AC4349150FBD9F25
        1AB92BE0D5B8209FD56373240571C146A0776D5D666C3033AE1C92FCB8722270
        723AB782E1BC9FFA555D26C8CA8C251544CE4DE852B988583980EE5075057D20
        6C0B3A17BB994BC4A20591F48A9C3BD0560B1CB59134D3234C8B6C1A4511165A
        EB48BEB2BA97FC098B5487630EBFBB980000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxPDFClick
      ExplicitLeft = 619
    end
    object cxNovo: TcxButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F2 | Novo'
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
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxNovoClick
    end
    object cxCancelar: TcxButton
      AlignWithMargins = True
      Left = 211
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
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
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxCancelarClick
    end
    object cxLerXML: TcxButton
      AlignWithMargins = True
      Left = 415
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F6 | Ler XML'
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
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxLerXMLClick
    end
    object cxVisualizar: TcxButton
      AlignWithMargins = True
      Left = 517
      Top = 7
      Width = 95
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F7 | Visualizar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000319494441545809ED97C1
        6F0C511CC7DFE8126475A342DB83A6D29096832337D3DB3AB890D08483831367
        6C42C2AD4DE31FC0A193C6419DC40507BA0764E3204E38B15465974884C4B6AA
        1D9FDF74B699CDBCD97DAFDB4948BC7C3FEFF7E6F77EBFF77EF36676BB55EA7F
        FBC74EC049AAD7F7FD7DCC5D81D56881A48B8EE37CC4AE8D28C88576542579C0
        B69A8C61C20DC338093B42D70B3BE021450D3B8E33C3B83DB1D0CA09D9AC445E
        1144F3D2C10718305D639D69E02AE26E91F30376C2B4EFFB4645A559D00C85E4
        E13B18179566418A77E719C51C06ABA2888F8B237621507C36D943421144DFE8
        CA2115EC1288DED37527AD90499A58037F8E35044C83FAB81A822AC494464163
        ECE2297D9BD0BB0DBC1CAB0B810CC28D4282C5963B5725B4545FEA843D9BBAAD
        1F193738C88A3D60A20A9FB43726812D63D858FBC8F07B602A4F455A24C95509
        EDAF7B6409752AC5DDB8102831C87282C546A00FAC5F1545920B812CF76D2BDC
        BA522A2CB0631E4CF480977AAC1E48EE21C623B00BE6A10493C4CC629B8B64ED
        09E1F7C0549EA211BC1D1E834E73380B8405B23E21B2EE425999B5976CB695D0
        A2526A2F889ED23D812C1C831E18252ECB495D66AC17012E04D247987959E03A
        886A74C7A3595C77C2248896E80E3AD180E898495729350DF23362250EFF203E
        B92B4C4C25EE72AEEE2556FEB87EE67A039C67EE1AB641C4C8DC739CFBE136E8
        45A0F684F07B90A47E156904E54124EFC9A6C854C3908033209A4DFB8BB12BDC
        F92BA7530BC73A23BF2EC5BFCDBA20163E0D492AABC6560D2FE553960BC73AB3
        277456421B379C9F0B81E2B3661E9237C317108DEBB298D802EFFCE576531713
        F8986FBB205988752E80E8375D01D68B5F60DC0F8F40B44037949189561078A7
        554C64FE2DE34B3CD345F2E431C9770D2ED541370A67F197B05918868DE0C339
        725E63F522C9055BBD22A15B56C4E6A00422B9FB2906F25D84695085AB139223
        343BA14F04D8FC0B2D7739CA5D56D9A093DCFB700016E114FE29FCBD8C4FC26E
        F80925B8C75C0D9B8ED8B40B5E80E817DDD17476325C9502AE82485E62390DC3
        CC94C2A8A403267CDFAFBFCC563BFD01062146410565D5470000000049454E44
        AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxVisualizarClick
      ExplicitLeft = 483
      ExplicitTop = 15
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 615
      Top = 3
      Width = 157
      Height = 83
      Align = alLeft
      Caption = 'Per'#237'odo | Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      ExplicitLeft = 473
      ExplicitTop = 1
      ExplicitHeight = 87
      object btnFiltrar: TBitBtn
        Left = 107
        Top = 22
        Width = 37
        Height = 46
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C00600001E0100001E0100000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA193818C7B65DCD6D0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91816C
          86745D85735C9B907FFCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF91816C86745D84725B6D5E47776852DCD7D1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF91816C86745D84725B6D5E476D5E47847662FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91816C86745D84725B6D5E
          476D5E4780725DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91816C
          86745D84725B6D5E476D5E4780725DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF91816C86745D84725B6D5E476D5E4780725DFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF91816C86745D84725B6D5E476D5E4780725DFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91816C86745D84725B6D5E
          476D5E4780725DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91816C
          86745D84725B6D5E476D5E4780725DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCFC8BF86745D86745D84725B6D5E476D5E476E5F48CAC3BAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE3DFD987755E86745D86745D84725B6D5E476D5E476D5E4770
          614AE0DCD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF1EFEC89786286745D86745D86745D84725B6D5E
          476D5E476D5E476D5E4774654FF0EEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF98F7E6986745D86745D86745D
          86745D84725B6D5E476D5E476D5E476D5E476D5E477D6E59FBFAF9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A8B7886745D86
          745D86745D86745D86745D84725B6D5E476D5E476D5E476D5E476D5E476D5E47
          8B7E6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACA0
          9086745D86745D86745D86745D86745D86745D84725B6D5E476D5E476D5E476D
          5E476D5E476D5E476D5E47A19686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC2B9AD86745D86745D86745D86745D86745D86745D86745D84725B6D5E
          476D5E476D5E476D5E476D5E476D5E476D5E476D5E47BBB3A7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD7D1C987755E86745D86745D86745D86745D86745D86745D
          86745D84725B6D5E476D5E476D5E476D5E476D5E476D5E476D5E476D5E476F60
          49D2CCC5FFFFFFFFFFFFD8D2CE95877976634D77644E77644E77644E77644E77
          644E77644E77644E77644E75624C62523C62523C62523C62523C62523C62523C
          62523C62523C62523C63533D8E8274D6D1CC65513D5E49345E49345E49345E49
          345E49345E49345E49345E49345E49345E49345D49344F3E294F3E294F3E294F
          3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E29594834624D395E4934
          5E49345E49345E49345E49345E49345E49345E49345E49345E49345D48334F3E
          294F3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E2955
          442F624D395E49345E49345E49345E49345E49345E49345E49345E49345E4934
          5E49345D48334F3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E
          294F3E294F3E2955442F624D395E49345E49345E49345E49345E49345E49345E
          49345E49345E49345E49345D48334F3E294F3E294F3E294F3E294F3E294F3E29
          4F3E294F3E294F3E294F3E294F3E2955442F7665535E49345E49345E49345E49
          345E49345E49345E49345E49345E49345E49345D48334F3E294F3E294F3E294F
          3E294F3E294F3E294F3E294F3E294F3E294F3E294F3E296D5E4C}
        TabOrder = 0
        OnClick = btnFiltrarClick
      end
      object maskFim: TMaskEdit
        Left = 18
        Top = 50
        Width = 80
        Height = 21
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
        Left = 18
        Top = 22
        Width = 79
        Height = 21
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
        TabOrder = 2
        Text = '  /  /    '
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 778
      Top = 3
      Width = 121
      Height = 83
      Align = alClient
      Caption = 'F8 | Localizar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      ExplicitLeft = 473
      ExplicitTop = 1
      ExplicitWidth = 458
      ExplicitHeight = 87
      object edtLoc: TEdit
        Left = 14
        Top = 36
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 35
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = edtLocChange
        OnKeyDown = edtLocKeyDown
      end
    end
  end
  object dsCompra: TDataSource
    DataSet = Dados.qryCompra
    Left = 376
    Top = 160
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 320
    Top = 96
  end
  object qryItensCompra: TFDQuery
    MasterSource = dsCompra
    MasterFields = 'ID'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from compra_itens ic'
      'where'
      'ic.fk_compra=:id'
      'order by ic.item')
    Left = 408
    Top = 96
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
    object qryItensCompraALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
      Size = 2
    end
    object qryItensCompraFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qryXML: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'CO.nr_nota,'
      'CO.dtentrada,'
      'CO.chave,'
      'CO.status,'
      'CO.serie,'
      'CO.xml,'
      'CO.total'
      'FROM compra CO'
      'WHERE'
      '(CO.status in ('#39'F'#39')) AND'
      '(CO.dtentrada between :DATA1 AND :DATA2) AND'
      '(CO.empresa=:ID)  and'
      'not((co.xml is null) or(co.chave is null))'
      'ORDER BY co.dtentrada,CO.nr_nota;')
    Left = 160
    Top = 112
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryXMLNR_NOTA: TStringField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Size = 15
    end
    object qryXMLDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      Required = True
    end
    object qryXMLCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryXMLSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 1
    end
    object qryXMLSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object qryXMLXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryXMLTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 6
    end
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail1
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
    Left = 160
    Top = 184
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnMailProcess = ACBrMail1MailProcess
    Left = 496
    Top = 296
  end
  object frxReport: TfrxReport
    Version = '6.8.6'
    DataSetName = 'frxDBCo'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 44118.596261388890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 160
    Top = 272
    Datasets = <
      item
      end
      item
      end
      item
        DataSet = FrmPDV.frxDBItens
        DataSetName = 'frxDBItens'
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
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        OnBeforePrint = 'TituloOnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 24.456710000000000000
          Width = 578.268090000000000000
          Height = 15.118120000000000000
          DataField = 'FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 0.779530000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPRA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 42.913420000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 217.551330000000000000
          Top = 42.913420000000000000
          Width = 480.000310000000000000
          Height = 15.118120000000000000
          DataField = 'VIRTUAL_FORNECE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."VIRTUAL_FORNECE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 129.022140000000000000
          Top = 58.811070000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nr. Nota:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 217.951330000000000000
          Top = 59.590600000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'NR_NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."NR_NOTA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 311.700990000000000000
          Top = 59.590600000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxDBCo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dt Emiss'#227'o:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 415.968770000000000000
          Top = 59.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'DTEMISSAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."DTEMISSAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 533.354670000000000000
          Top = 58.811070000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dt Entrada:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 637.961040000000000000
          Top = 59.590600000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataField = 'DTENTRADA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."DTENTRADA"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 79.370130000000000000
          DataField = 'LOGOMARCA'
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 75.149660000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Chave:')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 220.212740000000000000
          Top = 76.149660000000000000
          Width = 525.354670000000000000
          Height = 15.118120000000000000
          DataField = 'CHAVE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."CHAVE"]')
          ParentFont = False
        end
      end
      object Cabecalho: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 755.905999999999900000
        object Memo57: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.905999999999900000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 1.779530000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 43.086614170000000000
          Top = 1.779530000000000000
          Width = 400.629921260000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 448.251968500000000000
          Top = 1.779530000000000000
          Width = 35.905511810000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 487.937007870000000000
          Top = 1.779530000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929133860000000000
          Top = 1.779530000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 634.960629920000000000
          Top = 1.779530000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 712.062992130000000000
          Top = 2.779530000000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '%IPI')
          ParentFont = False
        end
      end
      object Totais: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Height = 75.590600000000000000
        ParentFont = False
        Top = 298.582870000000000000
        Width = 755.905999999999900000
        OnBeforePrint = 'TotaisOnBeforePrint'
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Base ICMS')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl ICMS')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 30.236240000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Base IPI')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 54.692950000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl IPI')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 195.756030000000000000
          Top = 7.559060000000000000
          Width = 90.708671180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Base SubTrib')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 207.094620000000000000
          Top = 30.236240000000000000
          Width = 79.370081180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl SubTrib')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 577.488560000000000000
          Top = 30.236240000000000000
          Width = 79.370081180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Frete')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 210.874150000000000000
          Top = 52.913420000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Seguro')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 581.268090000000000000
          Top = 7.559060000000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 52.913420000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 7.559060000000000000
          Width = 64.251961180000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 7.559059999999990000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 30.236240000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'BASE_ICM'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."BASE_ICM"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 52.913420000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_ICM'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."TOTAL_ICM"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 30.236240000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'BASE_IPI'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."BASE_IPI"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 52.913420000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."TOTAL_IPI"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 7.559059999999990000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'BASE_ST'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."BASE_ST"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 30.236240000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_ST'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."TOTAL_ST"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 52.913420000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'SEGURO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."SEGURO"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 7.559059999999990000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'DESPESAS'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."DESPESAS"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 30.236240000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'FRETE'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."FRETE"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 7.559059999999990000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."DESCONTO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 52.913420000000000000
          Width = 86.929141180000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCompra."TOTAL"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.905999999999900000
          Height = 75.590600000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Itens: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 755.905999999999900000
        DataSet = FrmPDV.frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ITEM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 43.086614170000000000
          Width = 400.629921260000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 448.251968500000000000
          Width = 35.905511810000000000
          Height = 15.118120000000000000
          DataField = 'CFOP'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."CFOP"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 487.937007870000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'VL_UNITARIO'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VL_UNITARIO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929133860000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'QTD'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 634.960629920000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'VL_ITEM'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VL_ITEM"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 712.062992130000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DataField = 'ALIQ_IPI'
          DataSet = FrmPDV.frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ALIQ_IPI"]')
          ParentFont = False
        end
      end
    end
  end
end
