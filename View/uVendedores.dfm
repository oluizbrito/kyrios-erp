object frmVendedor: TfrmVendedor
  Left = 0
  Top = 0
  ActiveControl = DBGrid1
  BorderStyle = bsDialog
  Caption = 'Sistema ERP - Vendedores'
  ClientHeight = 398
  ClientWidth = 728
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 714
    Height = 384
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    ActivePage = Lista
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 710
    ExplicitHeight = 372
    object Lista: TTabSheet
      AlignWithMargins = True
      Caption = 'Lista'
      TabVisible = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 70
        Width = 700
        Height = 226
        Align = alClient
        DataSource = dsVendedor
        GradientEndColor = 16447733
        GradientStartColor = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = FormKeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = '>>C'#243'digo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 350
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMA'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'#227'o AV'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CMP'
            Title.Alignment = taCenter
            Title.Caption = 'Comis'#227'o AP'
            Width = 90
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'F6 | Localizar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 696
        object edtLoc: TEdit
          Left = 12
          Top = 28
          Width = 669
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 35
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = edtLocChange
          OnKeyDown = edtLocKeyDown
          OnKeyPress = edtLocKeyPress
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 303
        Width = 700
        Height = 65
        Margins.Left = 0
        Margins.Top = 7
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 291
        ExplicitWidth = 696
        object cxNovo: TcxButton
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
          Caption = 'F2 | Novo'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001B744558745469746C65004164643B506C75733B426172733B526962
            626F6E3B9506332F000008F449444154785E8D570B7055C5F9FFED9E739FB909
            E40121E4C13320963A80888DA47F4450B41D915AA0481D6B6BA7B5159D3E9CFE
            517CD4D13AB66594DA426BB55AB1A530814A5B194B41D1227104E4116C54484C
            02216F929BFB3CE79E7376BB67F79CE44A8769BF99DFFDF6EEDDB3BFEFFB7DDF
            6E4EC8435B1B410801A104D4F5181D43780200EEBC87076E9D437069C3E30DC7
            38631C5C407AAE3CE30C8E333AEF30079BEE5E04DD5D70CFEA05504CAE237963
            65E541CD1F928B906F5C000FAF9AE77A896EC3E1DCFB490C140019D4D3AF344A
            0EDD9F24F2237F9C4F0C2A40D63FBFEF8A6861D10AA20596504A2294D02B00C0
            B6ED53E0C8E672C69BC9A1C1DD9BEEBBB90900AB086B0C003F9FB5392E322F32
            E80E93A33C620E0E820A45EE427BF0A5B7BF142A2878626C41B8765A55312AC7
            C510D435948E09CB2517868D39A665E35C5FB2AEB5B368C323DB0E9FC924861F
            DB78F7F53B013895119D75666DC5E4ABE0F1522EEBE4FFA07C454892D3754FEF
            9AF2C81FDF3B585359BE63F9C2DADAD54B2FC3ECDAF188C44220111DE7333901
            1324AC212CE63E3BA31C6BAE9F85158B66D64E9D5CF587F52F1D3AB876FDE6E9
            00F4AA884EABA33AE123E5E0172BA03E26467499F5F77FF5FAE2C231C53BEAE7
            5417CF9A3A0E71D34647C28046FC1E21C271F95CDA71C038306C0A2F06D17000
            5FFCFC7434B7F65FF54F90C6BB7EB2FDF6DF6D58F30600ABA62080F694C5D9A8
            020C9CAB8D2A3DF275CFFCEDBAB12565AFDD7CEDCCE29AAA12740C1B4898B68C
            5C042CC15CCF213C94E7A35D3F6C38681DCCA2AAB218B72CBEACB8BC72D2EE3B
            1EDBB60440C06FDE91001C47915729727AE78F5F9E1E1B5BB24D6410A4A1207A
            53A6DC5C40914BEF13FAC17881F8417145D09530C10241AC587C59A0AC7CE22B
            CBD76D9C01409F1C0B505F796A598ECCCC6FB8B1E3AB5FFCBF79934A1D5DC390
            9193646E90CC7149946F69EDC3A6CDFBF0C307B6E3FE07B7E3D92DFF406B5B9F
            DCC776B85C6F7BC15D48E760100D8BAE9A565231F58AE7010405E86F7FB0542A
            41932243511799FD379F7A75D5B892C2BA4A21DD60C6F636637098DAD0F7DB76
            3462E1F4623CF8952BB161CD955834B30C0DBBDE0330AA0473A45252B1BE540E
            1515C5282F1B73F59A07B6AE02A0FBA5D0B38635927D20147BF49AB935E88C1B
            EA5832B58C7001E19977309329034B16D4624A751902411DE98C813F37B6A9CC
            051863AA648E07316EBB9045FDBC4938DB39B001C02E015B80D39D4FAC90D9AF
            FAFF9717971517D406A311983906CB7BD8F260BBB0D59C6BB158087A50934405
            D130745DF308D9C85A4B2926BFE72C061209A37CDC98695FF8EEB3D702D00488
            0E6534C702CB26579608B94C494601700210AAB2A7E0A0848C5E611C5ED713B9
            2610A01E1983707014B1AF84FCDE3D640AD54AD1DC3CE606006F08D87E2D28E3
            FA021A0CA23F6E898C34689C836A045D670770F06033BABB872EBEF82521DC75
            946260308DC79FDC09DF264C28467DFD67306E4289EA1F9B216D31140AB54083
            F33D0530A2000399C902010C244C24321A4A8A748483147BF61CC5B23995987A
            CD2468BA065DA30808CF38918DC641609B0E7E7DFF4D48650C2910A540477702
            BFDFFB3EEEB873A92C692A6B833B0C05B10038D56AF34B405C70C68A723691B5
            1363F40EE6100E6948A74D2C9C3B05D595A508057559062200019B01E04CDD23
            134BC0F22EA4DA2913B065F77124330E12691B8CA9D3643AF291429F97421971
            9B2769E4E426B6B7D8301CD570D110344DF38E21BC9A3209C605F28E29938008
            3E0000B2F9DCBDFDDF52394B7E1F3986F0CCB659226BE44A1D682A4B4EC12950
            5010C6997383A8A92A050154F600D2860D65EAFA2D8804DC215451084E7CDC8D
            68414836A24FCE094336CB0497938467BAFFF2E058B9D366DAACA3D1286CB913
            0301455DFD6C6CF9EB096C6A382CEBAF09E89A86171EBAC54F02B1888E5B7FB4
            1D94C22F910C7CE9757391356DF9F6C3993A5556C680651AAD0064017D0558CE
            CC1E4DC5537585E12818E1B0E5F60EA2454558B97A3174AAEAEEDA8B2FECC170
            228B582CACB2E69035FEFA376E829163E05C653D94B290CBD9925C7CCA6C5343
            49E4B2C963009C4F05904DF4EFEFECE8BB77D6C471702C064EA894326D3AC8E4
            32D04080D11854B339AEACA38DD73D682065A82E63720D6430FE5A4DA738D7D1
            874CBCEF801F00F54AE01C7FF5D1B77B7A2E7C32D4979033B2C16CE6351B8725
            BC7FABB9A6530A47122BD90589FA9D3158729DFFAC24972C83FDC3E8EE1E683F
            F9DA930746AEE2ABEF78817BF5B0D2F1EEA7DA3F6A03A8CACA71617B70A03CE3
            8846C368E9BC80B1B1104A0A433879A60791481896ED28E2FCF56E120E97CAB5
            7FD48E647FC746008617007436F2A606EBE4EE871B026BB77CABABAD67FEF8EA
            09F23E00A1A0840302C45B39FFEACBF18B8623F8E9D643702D1C09A26EE16C64
            0C47F60207469A8E73F5DCF9F61EF476F59DFC60CF130D004CBF09A9FBC0BBE7
            53DCAB8939D871ECDE96532D4389E1041854296C019677CEB5C2186E5C5E8F95
            B72DC1CAB54B70D32DF5704251E4A4ECFE5F40E9A592897812679A5AE27D67DE
            B90F404665AF8CCCBBED37D8FCF3DBE15A5D554C07109EB1F4FE65A5D597FF69
            E6FC5981A29222990A910A788D887C53133CEFAD86E5BD66272F24F0E1D166AB
            BFEDC4D75ADEFAE5EB00D202F6BC35CFF163DBBF0DCA18C0A1E0AB707AFFC67D
            FDEDA7BEDA74A869B8E76C6FFE8B8602870097F06F42FF1AF65502077A3A7A71
            E29DA6446FEBB13B05F95E3FFB773B539C7901EB7EE43E3C79B22D079EF9FBC4
            392B6FB0CDEC7362A33993674D86AB06710908C77F9AAF1047623089F6E6760C
            F5F636F59F3EF09DEE537F69F6C82D5F1C9F97BA033916683C97E2F941749DD8
            F9AFA65DDFBBA1EBE3E3EB8EBF75F4EC91FD87F1C987ED880FC4918AA7C1D55B
            B01827111747ACADB90D47F61FC5F1370F9F3BFFD1FBF789679709F2534A7645
            7E48707CEAFF02D7939112A820AEA98E11008E7F5C5ADEF8D92B0076D67CEEAE
            05F19E4937EAA1583D40C2540FCD90E5B1CDD300376C23792833D8BEF7DCE197
            0E03C8E61D37C727271E992F3C99FDE5CDB8947DB0EB9EFCFF0D3581401E3439
            AF8C79B0F2E07880E0E097D81F04FF9B913C4FA5F7A18CE78149EFCFFF17FB37
            66AFE935F6829A2E0000000049454E44AE426082}
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxNovoClick
        end
        object cxImprimir: TcxButton
          AlignWithMargins = True
          Left = 321
          Top = 7
          Width = 150
          Height = 51
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'F4 | Imprimir'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
            54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
            6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
            A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
            FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
            F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
            1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
            C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
            8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
            22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
            571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
            05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
            1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
            39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
            4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
            2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
            6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
            3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
            BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
            00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
            CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
            DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
            C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
            FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
            87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
            ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
            6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
            30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
            4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
            C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
            A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
            909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
            55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
            55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
            D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
            D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
            254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
            45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
            CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
            081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
            63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
            C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
            C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
            18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
            500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
            81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
            1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
            7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
            F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
            609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxImprimirClick
        end
        object cxAlterar: TcxButton
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
          Caption = 'F3 | Alterar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000013744558745469746C65005461626C653B466F726D6174
            3BEEACCAE3000006D349444154785EB5970D6C955719C77FE7BD6F8B7C9442BF
            2883C256A04029D851568D6C4310269239323744B3294171E2A28B6E8EC93231
            2A660CC42C5B98CE459C891B4E1499043F866C82D88FD1B550A08CB66B9950DA
            D242BBD25B7AEF7DDFF3D8E69E9C1CD75450E33FF7E4E4DCFB9EF3FF3FCFF37F
            4EDEABB040D9F9FF0371671101C00794199E1943455D1BEA3AC835109A5930F0
            CD1CB967F3EB07941759C4FF805B733D940D11949125023A0C0E3FFCC0E26586
            DC1160A21F24FFEA678B190EE72FF43069E2588643594D0B0FAC2860383CFF52
            D9ED862FC481EFA61081BAB6284301F5A72FD2A33C10F3A81267ABD07EB98F58
            C264D7852846A47A8888E519568036E6408112E51C25682D88D8B5F9384B2D20
            26EF4852A81240CCFE6B0810117308882844B90CA0451B01820BB381506B2479
            1002B80AB5D9EF0A504A81DB05A2E1ECB92EEACE746061091520D49D386FD726
            A5F66711D877E0B811E942B8714A3612FEFB0C20087993C611F553DF97CAA4DA
            BADA7F307B6E9EABCD0575C7CF71E7B279468D3515028C48F1283BDA84D3EE7A
            4809B416B46023438B8D0C11B4061BB40DDB4A416BB7EECA3E635C4018866C2C
            9A37656176CECE88520B42CDCF4FBED7F5A015A045181C68B351013AE97625A0
            B546BBF9752D6A4D6644187A2B4E1491DE6E164DC8796DDAFCFCDCC95F58CB6F
            3EF7B5B58569E97818884E46A905B431A48880895C878208CE103B230AADAD49
            116B7E2135451174B633E7C8CB142E2BC99DBC660D7BD73F46E9EC1C44CB679C
            0C681A1A3B38313070CDE5447DA2FAACD3850E4410147BFE506DAB9292A29871
            53365E4F17579EDB4AC9923964DCF1715E7FFC494AF246D2DDD347535B5BA5ED
            02ADE1A6FC2CF498910EB95167C88BE6DF6805381A41416D553377AFB8C5F6FD
            A0F1FADADA39FED436E67C681AE33FB694BF7FFF69666641CFA53E2A4FB5379D
            8F5EFDBC07B60626F5E6088D3599160843734798928821D2B67C623221A44614
            D1D6366A1EFD26B36F9EC2F8C58B29FBC133E48F83AED64EDE3876BEE964D77B
            4BB6B79EBBF0AF26D462386D6C20C99ED7A2D1C8100F5A292EF9C576AA1F7984
            A2E2C903912FA6E2C91D4CCB49A5BDB199436F5F6C6E88F62DF959F7A51640BB
            6D684C284E0F3B424C8422666D9B4D2553EE7BA444A0B7AD8DEA6F3CCCDC0FE6
            92B97490FC39A64F1E434B6D1D071B3A9AAB7AA3CBF745AF5C00F4E3E373C477
            BBA0A2B289F64B5137380B016A2A9B186210E003A9116E9B3B816365B5746EDF
            CCFC7939642E5B4AF9961F33636A3AEF561DE760A7C781AEEE5515F1FEF380AE
            B96D8EDE75FC02D684C56931BE7D5F31B1B8060538061405BB7F5FC5AABB160C
            2D81D28369E768E5292E6DDB4CF1CC74B296DF41F940E405F9193497BF45B5A4
            D17DD77A2A9E5EDF0A848084B1388920C4734B60FBD8B25B1F8276FBDB4C12E2
            7BD0D1D9C59F8ED43073F54AB2EF5C4EC5969F5030752C4D478E529918C5BDBF
            FE2D323A1DE70A96A03F4E180656005A8C991C5611CB87C6B227D73A49DE3940
            FEFC8B7B59BD6A39455F5CC7CE67F7307DD228EA8F5451168E66F5EE3DA4E74E
            04E561E503613C41A035BEBD4AB4069237177880DB09909335969488872078A6
            2E411067C70BBB58B97205A545797C6BCBABDCB2712B7BB76EA057C670FFEFF6
            0E90DF40606E45F77D3088C5D146800612B178ECAF9BB6BEFA515B5AAC06DB9A
            7FAB3C3320248D79B37289BFFB26A7CADEE274176CFDDE4383E4149614F0DAA1
            A35C1C9DC73D9B1EA4BCAE93AA5F1D231E0404B1D821206E339008094530E1E2
            032380542032CC1BAF7DF68945192B3F529CF94CC1DC5CD26FFF34DF79319382
            E2E954D7D4D0F8E6C1A68693E5F775B49F6B0502E76D3806F40389BF4C48D300
            BB2E46F18DA2C03CD46F0987C203521E2A4D2F2D9A95F9C3856B6E25925542CB
            2B3BB9B9BA97170ECF9030111C6E6B6DFECA00790B9070530E6833240C42500A
            91EBFF0FA000BF302B25FD4B25632B566D589A3F2EBF94AEB23F72FAC0494E37
            5EA1AC67DACE576A6B1F05FA0CB99861B13F63A4789646D87DB91F5F64C8B5E3
            BEB3B9A94F2D2CF9C48639F3CFE68FCD9DCDE501F2F6FA369A1ABBE888F941EF
            9533CF62C8EF7EECA590F761DD4FD78180465C163CAE0593FA59CB372E8C16DD
            FFF5FC555FA6FDC07EDE39524FCD1BEFD0D2AB688D864FED6F8E35DA9A5F273C
            A5F0191E36FA79F7FEE85319B9B93B3EB9F2C3FE776B3AC938B68F8975B503C4
            D09D90EDBFA88F6F330E0F37CDF2E5865FAE25AF2FC2B590396A1C3ED78178FF
            D5ABADCD2D75DB37BF3C3D4804D941FF82FAA9D1DEB7D3BA2B76FCB925A830E6
            0D001AFB85063FC4D709543FF8317BA1BB36C3F722CCC81C87723CC0100F3825
            302DEA3BA785C66CAEDB85FF0CD755023124A11382B8C37EF75FE09F0C8BDFE6
            08A3DC930000000049454E44AE426082}
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxAlterarClick
        end
      end
    end
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      TabVisible = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 302
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 76
          Top = 38
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
          Left = 83
          Top = 75
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
          Left = 21
          Top = 110
          Width = 98
          Height = 17
          Caption = 'Comiss'#227'o '#224' vista'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 145
          Width = 106
          Height = 17
          Caption = 'Comiss'#227'o '#224' prazo'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 128
          Top = 37
          Width = 63
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = dsVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 128
          Top = 73
          Width = 438
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NOME'
          DataSource = dsVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 128
          Top = 180
          Width = 97
          Height = 17
          TabStop = False
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = dsVendedor
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit3: TDBEdit
          Left = 128
          Top = 109
          Width = 182
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CMA'
          DataSource = dsVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 128
          Top = 145
          Width = 182
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CMP'
          DataSource = dsVendedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 309
        Width = 706
        Height = 65
        Margins.Left = 0
        Margins.Top = 7
        Margins.Right = 0
        Margins.Bottom = 0
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
    end
  end
  object dsVendedor: TDataSource
    DataSet = Dados.qryVendedor
    Left = 80
    Top = 224
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
    ReportOptions.LastChange = 43056.687464884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure TotaisOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frxDBCo."AJUSTA_PC"> ='#39'S'#39'then ckAjustaPC.checked:=true;'
      ' if <frxDBCo."AJUSTA_PV"> ='#39'S'#39'then ckAjustaPV.checked:=true;'
      ' if <frxDBCo."GERA_CP">   ='#39'S'#39'then ckGeraCP.checked:=true;'
      ' if <frxDBCo."GERA_ES">   ='#39'S'#39'then ckGeraES.checked:=true;'
      'end;'
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      'end.')
    Left = 202
    Top = 139
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBVendedor
        DataSetName = 'frxDBVendedor'
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
      object Totais: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Height = 9.599999999999990000
        ParentFont = False
        Top = 343.937230000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'TotaisOnBeforePrint'
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 755.520000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Cabecalho: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 755.906000000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.959060000000000000
          Top = 4.779529999999994000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 73.133890000000000000
          Top = 4.779529999999994000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 69.120000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 756.200000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 22.199999999999990000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.080000000000000000
        Top = 260.787570000000000000
        Width = 755.906000000000000000
        DataSet = frxDBVendedor
        DataSetName = 'frxDBVendedor'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 2.779530000000022000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDBVendedor
          DataSetName = 'frxDBVendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendedor."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 73.974830000000000000
          Top = 2.779530000000022000
          Width = 534.500990000000000000
          Height = 15.118120000000000000
          DataField = 'NOME'
          DataSet = frxDBVendedor
          DataSetName = 'frxDBVendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendedor."NOME"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 69.120000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 755.800000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 134.400000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Width = 756.480000000000000000
          Height = 134.400000000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 121.304020000000000000
          Top = 6.856710000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBEmpresaENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 49.599999999999980000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 121.200000000000000000
          Top = 71.399999999999990000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object frxDBEmpresaRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 120.600000000000000000
          Top = 28.800000000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          DataField = 'RAZAO'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.200000000000000000
          Top = 13.200000000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 19.200000000000000000
          Top = 106.379530000000000000
          Width = 725.367100000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE VENDEDORES')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 101.600000000000000000
          Width = 756.480000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object SysMemo2: TfrxSysMemoView
        AllowVectorExport = True
        Left = 875.600000000000000000
        Top = 357.800000000000000000
        Width = 96.000000000000000000
        Height = 19.200000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'P'#225'g.[PAGE#]')
        ParentFont = False
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 377.953000000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 4.000000000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio emitido em [DATE]- [TIME]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 658.400000000000000000
          Top = 4.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
    end
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
    Left = 266
    Top = 139
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
      'EMAIL=EMAIL'
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
      'OBSFISCO=OBSFISCO')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 136
  end
  object frxDBVendedor: TfrxDBDataset
    UserName = 'frxDBVendedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'CMA=CMA'
      'CMP=CMP'
      'EMPRESA=EMPRESA'
      'ATIVO=ATIVO')
    DataSet = Dados.qryVendedor
    BCDToCurrency = False
    DataSetOptions = []
    Left = 354
    Top = 75
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 368
    Top = 200
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 160
    Top = 216
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
    Left = 464
    Top = 176
  end
end
