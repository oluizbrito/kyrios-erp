object frmFPG: TfrmFPG
  Left = 0
  Top = 0
  ActiveControl = DBEdit2
  BorderStyle = bsDialog
  Caption = 'Formas de Pagamento'
  ClientHeight = 411
  ClientWidth = 626
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
    Width = 612
    Height = 397
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    ActivePage = Cadastro
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 607
    ExplicitHeight = 410
    object Lista: TTabSheet
      Caption = 'Lista'
      TabVisible = False
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 67
        Width = 598
        Height = 245
        Margins.Bottom = 0
        Align = alClient
        DataSource = dsFpg
        GradientEndColor = 15529196
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
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = FormKeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = '>>C'#243'digo'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 480
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 598
        Height = 58
        Align = alTop
        Caption = 'F6 | Localizar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 1037
        object edtLoc: TEdit
          Left = 18
          Top = 26
          Width = 270
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 35
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = edtLocChange
          OnKeyDown = edtLocKeyDown
          OnKeyPress = edtLocKeyPress
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 319
        Width = 598
        Height = 65
        Margins.Top = 7
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 592
        ExplicitWidth = 1037
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 61
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object CxImp: TcxButton
            AlignWithMargins = True
            Left = 325
            Top = 7
            Width = 150
            Height = 49
            Margins.Left = 5
            Margins.Top = 7
            Margins.Right = 5
            Margins.Bottom = 5
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
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = CxImpClick
          end
          object CxAlterar: TcxButton
            AlignWithMargins = True
            Left = 165
            Top = 7
            Width = 150
            Height = 49
            Margins.Left = 5
            Margins.Top = 7
            Margins.Right = 5
            Margins.Bottom = 5
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
            OnClick = CxAlterarClick
          end
          object cxNovo: TcxButton
            AlignWithMargins = True
            Left = 5
            Top = 7
            Width = 150
            Height = 49
            Margins.Left = 5
            Margins.Top = 7
            Margins.Right = 5
            Margins.Bottom = 5
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
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = cxNovoClick
          end
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
        Width = 604
        Height = 316
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        ExplicitTop = 2
        ExplicitWidth = 1043
        ExplicitHeight = 589
        object Label2: TLabel
          Left = 107
          Top = 36
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
        object Label5: TLabel
          Left = 74
          Top = 128
          Width = 69
          Height = 17
          Caption = 'Taxa Cart'#227'o'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 67
          Top = 159
          Width = 76
          Height = 17
          Caption = 'Prazo Cart'#227'o'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 42
          Top = 66
          Width = 101
          Height = 17
          Alignment = taRightJustify
          Caption = 'Conta de Destino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label6: TLabel
          Left = 117
          Top = 97
          Width = 26
          Height = 17
          Alignment = taRightJustify
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label1: TLabel
          Left = 5
          Top = 190
          Width = 138
          Height = 17
          Alignment = taRightJustify
          Caption = 'N'#186' M'#225'ximo de Parcelas'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label7: TLabel
          Left = 7
          Top = 222
          Width = 136
          Height = 17
          Alignment = taRightJustify
          Caption = 'Intervalo entre Parcelas'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label9: TLabel
          Left = 106
          Top = 252
          Width = 37
          Height = 17
          Alignment = taRightJustify
          Caption = 'Atalho'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object DBEdit2: TDBEdit
          Left = 148
          Top = 34
          Width = 441
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'DESCRICAO'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 148
          Top = 126
          Width = 151
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'TAXA'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBCheckBox4: TDBCheckBox
          Left = 205
          Top = 291
          Width = 126
          Height = 17
          Caption = 'Aparece na Venda'
          DataField = 'USAVD'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 359
          Top = 291
          Width = 193
          Height = 17
          Caption = 'Aparece no Contas '#224' Receber'
          DataField = 'USACR'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 50
          Top = 291
          Width = 57
          Height = 17
          Caption = 'Ativo'
          DataField = 'ATIVO'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit3: TDBEdit
          Left = 148
          Top = 157
          Width = 151
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'DIAS'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupComboboxEh1: TDBLookupComboboxEh
          Left = 148
          Top = 64
          Width = 441
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'FKCONTADESTINO'
          DataSource = dsFpg
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsContas
          ParentFont = False
          TabOrder = 2
          Visible = True
        end
        object DBComboBoxEh1: TDBComboBoxEh
          Left = 148
          Top = 95
          Width = 441
          Height = 23
          DataField = 'TIPO'
          DataSource = dsFpg
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'DINHEIRO'
            'CHEQUE'
            'CR'#201'DITO LOJA'
            'DEP'#211'SITO'
            'CART'#195'O DE CR'#201'DITO'
            'CART'#195'O DE D'#201'BITO'
            'BOLETO BANC'#193'RIO'
            'VALE REFEI'#199#195'O'
            'VALE COMBUSTIVEL'
            'VALE PRESENTE'
            'CONV'#202'NIO'
            'OUTROS'
            'CART'#195'O TEF'
            'PAGAMENTO INSTANT'#194'NEO')
          KeyItems.Strings = (
            'D'
            'Q'
            'F'
            'X'
            'C'
            'E'
            'B'
            'R'
            'O'
            'P'
            'V'
            'T'
            'A'
            'I')
          ParentFont = False
          TabOrder = 3
          Visible = True
          OnChange = DBComboBoxEh1Change
        end
        object DBEdit1: TDBEdit
          Left = 148
          Top = 188
          Width = 151
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'PARCELAS'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit5: TDBEdit
          Left = 148
          Top = 220
          Width = 151
          Height = 23
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'INTERVALO'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 312
          Top = 124
          Width = 277
          Height = 149
          Caption = 'Tipo de Movimento'
          Columns = 2
          Ctl3D = True
          DataField = 'GERACR'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Caixa'
            'Contas '#224' Receber'
            'Ficha Cliente'
            'Troca'
            'Dep'#243'sito'
            'Nenhum')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'X'
            'R'
            'C'
            'T'
            'D'
            'N')
        end
        object DBCheckBox1: TDBCheckBox
          Left = 117
          Top = 291
          Width = 81
          Height = 17
          Caption = 'Usa TEF'
          DataField = 'USA_TEF'
          DataSource = dsFpg
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBComboBoxEh2: TDBComboBoxEh
          Left = 148
          Top = 250
          Width = 151
          Height = 23
          DataField = 'ATALHO'
          DataSource = dsFpg
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I'
            'J'
            'K'
            'L'
            'M'
            'N'
            'O'
            'P'
            'Q'
            'R'
            'S'
            'T'
            'U'
            'V'
            'W'
            'X'
            'Y'
            'Z')
          KeyItems.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I'
            'J'
            'K'
            'L'
            'M'
            'N'
            'O'
            'P'
            'Q'
            'R'
            'S'
            'T'
            'U'
            'V'
            'W'
            'X'
            'Y'
            'Z')
          ParentFont = False
          TabOrder = 12
          Visible = True
        end
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 319
        Width = 598
        Height = 65
        Align = alBottom
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 332
        ExplicitWidth = 593
        object cxSair: TcxButton
          AlignWithMargins = True
          Left = 164
          Top = 7
          Width = 150
          Height = 47
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
          TabOrder = 0
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
          Height = 47
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
          TabOrder = 1
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
  object dsFpg: TDataSource
    DataSet = Dados.qryFPG
    OnDataChange = dsFpgDataChange
    Left = 816
    Top = 200
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
    Left = 514
    Top = 387
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
      'NTERM=NTERM')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 320
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 43009.416865775460000000
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
    Left = 410
    Top = 387
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBFPG
        DataSetName = 'frxDBFPG'
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
        Top = 345.600000000000000000
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
        Top = 172.800000000000000000
        Width = 755.906000000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.959060000000000000
          Top = 2.779529999999994000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
          Top = 2.779529999999994000
          Width = 275.300990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 480.000000000000000000
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
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 549.120000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 488.200000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 558.400000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 619.200000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 626.200000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INTERVALO')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 686.400000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 693.400000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TAXA')
          ParentFont = False
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
        Top = 259.200000000000000000
        Width = 755.906000000000000000
        DataSet = frxDBFPG
        DataSetName = 'frxDBFPG'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 2.779530000000022000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 73.974830000000000000
          Top = 2.779530000000022000
          Width = 390.500990000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."DESCRICAO"]')
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
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 480.000000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 549.120000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 485.160000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'ENTRADA'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."ENTRADA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 555.360000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELAS'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          DisplayFormat.FormatStr = '%2.0f x'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."PARCELAS"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 619.200000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 623.160000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'INTERVALO'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."INTERVALO"]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 686.400000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 690.360000000000000000
          Top = 3.000000000000000000
          Width = 56.995300000000000000
          Height = 15.118120000000000000
          DataField = 'TAXA'
          DataSet = frxDBFPG
          DataSetName = 'frxDBFPG'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFPG."TAXA"]')
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
        Height = 134.400000000000000000
        Top = 19.200000000000000000
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
            'LISTAGEM DE FORMA DE PAGAMENTO')
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
        Top = 374.400000000000000000
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
  object frxDBFPG: TfrxDBDataset
    UserName = 'frxDBFPG'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'GERACR=GERACR'
      'GERACH=GERACH'
      'ECARTAO=ECARTAO'
      'USAVD=USAVD'
      'USACR=USACR'
      'ATIVO=ATIVO'
      'PARCELAS=PARCELAS'
      'INTERVALO=INTERVALO'
      'TAXA=TAXA'
      'ENTRADA=ENTRADA')
    DataSet = Dados.qryFPG
    BCDToCurrency = False
    DataSetOptions = []
    Left = 338
    Top = 371
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 136
    Top = 360
  end
  object qryContas: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao from contas'
      'where'
      'tipo<>'#39'S'#39
      'order by descricao')
    Left = 736
    Top = 56
    object qryContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
  end
  object dsContas: TDataSource
    DataSet = qryContas
    Left = 736
    Top = 120
  end
  object qryPessoa: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CODIGO,RAZAO,CLI FROM('
      
        'SELECT (0) AS CODIGO, ('#39' <todos os clientes>'#39') AS RAZAO, '#39'S'#39' as ' +
        'CLI from RDB$DataBase'
      ')'
      'UNION '
      'SELECT CODIGO,RAZAO,CLI FROM('
      
        'SELECT pe.codigo, (pe.razao||'#39' | '#39'||pe.cnpj) as razao, pe.cli FR' +
        'OM PESSOA pe'
      'where CODIGO>=0 and ADM='#39'S'#39
      ')'
      'order by 2')
    Left = 648
    Top = 48
    object qryPessoaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPessoaRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPessoaCLI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI'
      Origin = 'CLI'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object dsPessoa: TDataSource
    DataSet = qryPessoa
    Left = 648
    Top = 112
  end
  object qryBandeira: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao from bandeira'
      'order by descricao')
    Left = 824
    Top = 56
    object qryBandeiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBandeiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object dsBandeira: TDataSource
    DataSet = qryBandeira
    Left = 824
    Top = 120
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
    Left = 256
    Top = 368
  end
end
