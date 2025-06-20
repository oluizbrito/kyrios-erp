object frmCadDevolucao: TfrmCadDevolucao
  Left = 0
  Top = 0
  ActiveControl = DBEdit3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Devolu'#231#227'o de Venda'
  ClientHeight = 675
  ClientWidth = 1047
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 563
    Width = 1033
    Height = 33
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label14: TLabel
      Left = 11
      Top = 7
      Width = 58
      Height = 21
      Caption = 'TOTAL  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 78
      Top = 7
      Width = 84
      Height = 23
      DataField = 'TOTAL'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 1033
    Height = 109
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 232
      Top = 54
      Width = 70
      Height = 17
      Caption = 'Observa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 307
      Top = 2
      Width = 39
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 891
      Top = 54
      Width = 27
      Height = 17
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 851
      Top = 4
      Width = 57
      Height = 17
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 4
      Width = 53
      Height = 17
      Caption = 'Venda n'#186
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 53
      Width = 110
      Height = 17
      Caption = 'Tipo de Devolu'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit5: TDBEdit
      Left = 232
      Top = 73
      Width = 653
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'OBS'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 891
      Top = 73
      Width = 89
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 307
      Top = 23
      Width = 537
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VIRTUAL_CLIENTE'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 852
      Top = 23
      Width = 158
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VIRTUAL_VENDEDOR'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 11
      Top = 23
      Width = 70
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'FK_VENDA'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 11
      Top = 73
      Width = 215
      Height = 23
      Ctl3D = False
      DataField = 'TIPO_DEVOLUCAO'
      DataSource = dsDevolucao
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'TROCA MERCADORIA'
        'DEVOLVE DINHEIRO'
        'ESTORNA PARCELA')
      KeyItems.Strings = (
        'TROCA MERCADORIA'
        'DEVOLVE DINHEIRO'
        'ESTORNA PARCELA')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Visible = True
    end
    object btnImporta: TBitBtn
      Left = 86
      Top = 22
      Width = 105
      Height = 25
      Caption = 'Importar Venda'
      TabOrder = 1
      OnClick = btnImportaClick
    end
    object Button1: TButton
      Left = 201
      Top = 22
      Width = 97
      Height = 25
      Caption = 'Pesq. Produto'
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 123
    Width = 1033
    Height = 433
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label18: TLabel
      Left = 1
      Top = 1
      Width = 1031
      Height = 17
      Align = alTop
      Caption = '     Clique nas teclas CTRL + Delete para excluir ITEM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 309
    end
    object DBGridEh1: TDBGridEh
      AlignWithMargins = True
      Left = 4
      Top = 21
      Width = 1025
      Height = 408
      Align = alClient
      DataSource = dsItens
      DynProps = <>
      EvenRowColor = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleParams.Font.Charset = ANSI_CHARSET
      TitleParams.Font.Color = clBlack
      TitleParams.Font.Height = -13
      TitleParams.Font.Name = 'Segoe UI Semibold'
      TitleParams.Font.Style = [fsBold]
      TitleParams.ParentFont = False
      OnEnter = DBGridEh1Enter
      OnExit = DBGridEh1Exit
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ITEM'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 45
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FK_PRODUTO'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 55
        end
        item
          AlwaysShowEditButton = True
          AutoDropDown = True
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DESCRICAO'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Produto'
          Width = 448
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRECO'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 80
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTD_VENDIDA'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Vendida'
          Width = 90
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTD'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Devolvida'
          Width = 100
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRECO'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 80
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TOTAL'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total Dev.'
          Width = 90
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 603
    Width = 1033
    Height = 65
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Shape1: TShape
      Left = 752
      Top = 18
      Width = 201
      Height = 33
      Brush.Color = 16382457
    end
    object DBText1: TDBText
      Left = 816
      Top = 22
      Width = 67
      Height = 25
      Alignment = taCenter
      AutoSize = True
      DataField = 'VIRTUAL_SITUACAO'
      DataSource = dsDevolucao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
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
      Caption = 'F2 | Gravar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000B744558745469746C6500536176653BF9E8F9090000006749444154
        785EEDD7CD0980300C4061D7748BAED1599C229B6493F462403D1489A6FEF002
        8FD24BF920A74E66F668BB0B803A2F36A22EC0CF9BE73CC0DB0E001189C40A58
        C14701000024150700B838FF021C71290000007400407B80E2888CD6B7CBABBE
        66001ABBA7C010E7C5D9FA0000000049454E44AE426082}
      TabOrder = 2
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
      Left = 321
      Top = 7
      Width = 150
      Height = 51
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      ParentCustomHint = False
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'F12 | Sair'
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
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxSairClick
    end
    object cxFinalizar: TcxButton
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
      Caption = 'F3 | Finalizar'
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
      OnClick = cxFinalizarClick
    end
  end
  object dsItens: TDataSource
    DataSet = qryItens
    Left = 288
    Top = 280
  end
  object qryItens: TFDQuery
    BeforeInsert = qryItensBeforeInsert
    BeforePost = qryItensBeforePost
    AfterPost = qryItensAfterPost
    BeforeDelete = qryItensBeforeDelete
    AfterDelete = qryItensAfterDelete
    OnNewRecord = qryItensNewRecord
    MasterSource = dsDevolucao
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from devolucao_detalhe dd'
      'where'
      'dd.fk_devolucao=:codigo'
      'order by ITEM ')
    Left = 288
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      DisplayFormat = '0'
    end
    object qryItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryItensFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
    end
    object qryItensFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
    end
    object qryItensDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_PRODUTO'
      Size = 60
      Lookup = True
    end
    object qryItensFK_DEVOLUCAO_ITEM: TIntegerField
      FieldName = 'FK_DEVOLUCAO_ITEM'
      Origin = 'FK_DEVOLUCAO_ITEM'
    end
    object qryItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensQTD_VENDIDA: TFMTBCDField
      FieldName = 'QTD_VENDIDA'
      Origin = 'QTD_VENDIDA'
      Precision = 18
      Size = 3
    end
    object qryItensPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 5
    end
    object qryItensFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 488
    Top = 312
  end
  object qryClientes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select  P.CODIGO, P.RAZAO  from Pessoa P'
      'order by Razao')
    Left = 160
    Top = 216
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 336
    Top = 320
  end
  object qrySoma: TFDQuery
    MasterSource = dsDevolucao
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT sum(total) as total FROM devolucao_detalhe CI'
      'WHERE'
      'CI.fk_devolucao=:CODIGO')
    Left = 344
    Top = 218
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qrySomaTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 5
    end
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select  CODIGO, DESCRICAO  from Produto PRO'
      'order by descricao')
    Left = 96
    Top = 216
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 88
    Top = 288
  end
  object qryVendasFPG: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select distinct(fpg.geracr) as tipo from vendas_fpg  vfpg'
      'left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma'
      'where'
      'vfpg.vendas_master=:CODIGO')
    Left = 352
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object qryCR: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from creceber'
      'where'
      'FK_VENDA=:VENDA AND VL_RESTANTE>0'
      'ORDER BY 1 desc')
    Left = 400
    Top = 216
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCRDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCRFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryCRDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
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
    object qryCRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryCRFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCRFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCRFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCRNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object qryCRID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryCRVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
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
    object qryCRVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
      DisplayFormat = ',0.00'
    end
    object qryCRVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryVdd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select *   from vendedores'
      'order by nome')
    Left = 408
    Top = 280
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object StringField2: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryVddCMA: TFMTBCDField
      FieldName = 'CMA'
      Origin = 'CMA'
      Precision = 18
      Size = 2
    end
    object qryVddCMP: TFMTBCDField
      FieldName = 'CMP'
      Origin = 'CMP'
      Precision = 18
      Size = 2
    end
  end
  object qryQtdDevolvida: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select sum(VD.qtd) QTD_VD, sum(VD.qtd_devolvida) QTD_DEV FROM ve' +
        'ndas_detalhe VD'
      'where'
      'VD.fkvenda=:ID AND SITUACAO='#39'F'#39)
    Left = 89
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryQtdDevolvidaQTD_VD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_VD'
      Origin = 'QTD_VD'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qryQtdDevolvidaQTD_DEV: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_DEV'
      Origin = 'QTD_DEV'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object qryVenda: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from VENDAS_MASTER'
      'where'
      'codigo=:codigo')
    Left = 160
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryVendaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryVendaFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendaFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryVendaFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryVendaCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryVendaDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryVendaOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryVendaFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryVendaPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryVendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendaNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryVendaFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendaLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryVendaGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryVendaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryVendaFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryVendaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
  end
  object qryDevolucao: TFDQuery
    AfterOpen = qryDevolucaoAfterOpen
    BeforePost = qryDevolucaoBeforePost
    AfterPost = qryDevolucaoAfterPost
    AfterDelete = qryDevolucaoAfterPost
    OnCalcFields = qryDevolucaoCalcFields
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from Devolucao_Master'
      'where'
      '(Codigo=:codigo)')
    Left = 224
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDevolucaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDevolucaoFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryDevolucaoFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryDevolucaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryDevolucaoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qryDevolucaoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryDevolucaoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryDevolucaoFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryDevolucaoTIPO_DEVOLUCAO: TStringField
      FieldName = 'TIPO_DEVOLUCAO'
      Origin = 'TIPO_DEVOLUCAO'
    end
    object qryDevolucaoVIRTUAL_CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'FK_CLIENTE'
      Size = 50
      Lookup = True
    end
    object qryDevolucaoVIRTUAL_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDEDOR'
      LookupDataSet = qryVdd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_VENDEDOR'
      Size = 50
      Lookup = True
    end
    object qryDevolucaoVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object qryDevolucaoVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryPesqEmp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 60
      Lookup = True
    end
    object qryDevolucaoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsDevolucao: TDataSource
    DataSet = qryDevolucao
    Left = 216
    Top = 276
  end
  object qryItensV: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from vendas_detalhe'
      'where'
      'fkvenda=:id and qtd_restante>0')
    Left = 224
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryItensVFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryItensVID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryItensVITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      DisplayFormat = '0'
    end
    object qryItensVCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItensVQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryItensVE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItensVUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItensVQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryItensVACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensVOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryItensVFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
  end
end
