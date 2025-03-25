object frmAcerta: TfrmAcerta
  Left = 0
  Top = 0
  Margins.Top = 7
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Lista de Ajustes de Estoque - Para criar um novo ajuste clique n' +
    'o bot'#227'o "Novo"'
  ClientHeight = 589
  ClientWidth = 815
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 1
    Width = 805
    Height = 583
    Margins.Left = 5
    Margins.Top = 1
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = Cadastro
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object Lista: TTabSheet
      Caption = 'Lista'
      TabVisible = False
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 95
        Width = 797
        Height = 411
        Margins.Left = 0
        Margins.Top = 7
        Margins.Right = 0
        Margins.Bottom = 7
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsAcerta
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        GradientEndColor = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = 2894892
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = FormKeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data>>'
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FKPRODUTO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIRTUAL_PRODUTO'
            Title.Caption = 'Produto'
            Width = 558
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_A'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Ajust.'
            Width = 92
            Visible = True
          end>
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 513
        Width = 797
        Height = 57
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 483
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 57
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object CxImprimir: TcxButton
            AlignWithMargins = True
            Left = 325
            Top = 7
            Width = 150
            Height = 45
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
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = CxImprimirClick
          end
          object CxAtualizar: TcxButton
            AlignWithMargins = True
            Left = 165
            Top = 7
            Width = 150
            Height = 45
            Margins.Left = 5
            Margins.Top = 7
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            Caption = 'F5 | Atualizar'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'DevExpressDarkStyle'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000023744558745469746C6500436F6E766572743B5265706561743B4172
              726F773B45786368616E6765762368D20000096949444154785EAD560B7054E5
              15FEEE637793CDE6615E98C0929010C233C8A3BC331110854210B485DAFA0415
              19C60748B5BED1B10DAFD18A55AAB5D5A91541333289A8C8148C0222798A0193
              401E246CD86C7693DD64F7EEDDBBF7BFF7EFE6CEBD99DBA6D3DAB12773E63FF7
              9F93FFFBCEB7E7FEE732F8FFD8BF9E43F1038D37827D47966BA7503AE414548F
              31146B0103AA0EEFEB7BDA031E5B779C293BB8545155FAB138286F7BF18193ED
              00E88B7F5B4C8D5C6DD5F2552D7EFE9EAFCC04A01D7EEFF2FDF8A1661469B7E6
              3300982172AB176C29AD6A38B46CC7DB25BBEBBF72EF7AFAF62F22006838DA46
              A9499CB2BF6E18A9408C3D142A816178FC2773580B9891F28389950FE7B53958
              BF6C4B5C43F3D96759F6F3DBA7CCC97CB86CF3A9A331922A001A925AA886A5A8
              230950150845AF209E1F058EB599AA6490689BC898C08CD8BCB2AA42112521F4
              8B0D9858908B02E7A3795575951F3FF1262A07BC916DAF3F55DBE9B0156A441E
              DFBF908E689E3DE537E097376ED5B6ACDC35C84898FF4FA0BFDEB720C7916459
              4319660E033A0180838229D07BE412050A36FFEC29F4866A00001C1B87245B1E
              BA7BFCA8AAAD8878FB7A77551FEBDE7BEA932B22008D889900761DBA01BF5AF1
              88B63D2679955129FBCC5BC5BFE0ADDCC684F8C4EB73464D44767A3ED292B360
              B5C421C591AE8105823E446411890E0EEEE0197397209E4F85C33A1EF5176A50
              DDF8656B7040DCBAFFC9BACF012800E83081B2F7976A04C6A6943200B858C533
              1DC9D6D746A58D9E3D7DFC22E48D9E02590D211CF542243EC88AA03951A3E0D9
              7858621ED59E23467F42510942D1010891009212B290C8E6A1A6A101975D1D87
              F73D5ABD0E80C20346B23A04CE02609F7C63D17D29498E57674D29E1C66639D1
              17BE8433974F80A8122C5C1C78D60A96E563A0360D2C02410394150944952113
              09128920428461324421F046BCE87479D0D1E6E1FEDD05C202E062E08FA4A7A6
              ED5E3AB71484EDC395401D42913E50CA80672DE0391B3886070B0E60585018F7
              04B47820DC6B7A0638D60A0B138FE60B3E34D4765F1606A2DBAADE737F0A8000
              50797327C7645F939898B47BD9C23508484D70F9CE435622E0591BE278077ABD
              02BA2EF7C0E70D21188C408A2860591676BB0579F9A330797A86A62428C0322C
              E22C76B8BAC2F8E664ABD4EF0DBF2C7A6CAFD61C77FB4D4D485983C08215CE78
              AB9D7B65D18CA508449AD0E96B40541661E512D0DFA3A2E2F077F8A4B2D17DAE
              BE7B5757FBC02DFD3D5271D3D781F473557D993D9DE292407F04E98E71A014E0
              B93848611B8E56B4A2E283F3475B1AFAE77E75C05376E7863F4DBD7FCFD177A6
              16AF8D37BDD25AC06F7D69DE86378EDC4D6BAFECA207EB4BE9DBDF2CA6076A57
              D2A7FF3C8FAE7AD0E959B661F4CF01D801D80058F43B84036005E07870EF1C7A
              B2ED19FA97D33FA50FFDFE3A3A7F7D4647D14D29EB0124DFB6F99EDC7B7756EE
              7EEE9DAF237B0ED5D1BB5E28DFA8FF1FC3EB0438DEC6DC31CE99076FB00D2169
              1016360EAECE30BEAD77B7F8AF46D79E3EEC6907A098E4339BAA2A148DDFB7E3
              C3F27AC9E711F64158BCB7F164A578E773074A53D2B376CE2D1AE39C31310B9D
              EE015CECEABD03C00100841F6E4030D3EC092CBA023DDA55C9F336B45CE88638
              A86C8F817700202660C6145383C0EB7FA83816F62B8FB7578B2D4025BD75DBFE
              E9D76464BF77D7EA2230160B3AFC114458168ACA4E05C0190A401F26692C0F08
              5210AA3EBA422119C7DF75D5E9550300A73BD5D550F498EC7FB2364E2766ECB1
              1DDF55B9329D132081479B5B80ACA848B0719024394DCF05AB070C21B44F080F
              82283278C6864060A801357E4E3DCFB672D3CE49F7EDF9ECF0A6978E4700588C
              4374501940D44480CB2D2A9969B5B01AB0242B50548AC160149214ED836EAC21
              219195F32E970F09D65474348770ACB2EDAA42D8BB01B48C299C9D74C78EF2A7
              27CF5C507DDB8AE9CB894C8C41C68E988C7A634EBB7EDDB58EF49C9D0B67E420
              1C55202B5453B6AF6F001141F85EC7056F101043E4BDB3358D254238447ADDA1
              3F369F75EEEEBCF0B578F3C3AFFD343D6B5C59F1ACBC9CE299395A99B2AC4057
              40364D485607B7ACDCB26F697266EEEE05D373F3B247A7A2CD1B065114F0E070
              A9B91B21BFEF7D4329DE90F0CC67AE0FC7CDB6DFE4ED12F7567FD2DB366FCD5A
              E7825BB7FF7672C1E8E5AB4A26C09E6043B720412688B982159BCAE69E2ADF57
              CF30ACBA68DDA3452C6349B125A6CEE7AD09EB32D2929C4BE7E5233333056DBE
              30FC82AC31ECEBF5A3A3DDEDF9EEF85B1F0120E661C4E915D926CF2A4E2E5CBC
              717376F698AD2B4B0A6D13C6A5C31796634EB426B2F10CFE7EAC11A20284C351
              288A020BC7222D391ED99949C873A6626C760A3CA1283AFB44089256285499E0
              C4A7D5F05E69BDBBF6A3E73E042019C3C890D072E3FD2FDF94919DB773C9BCF1
              E316CECE4158A6B8E80BC756151400544D67DC5A3A03A9760B4001455121AB40
              94A8084A04FE908C331D01842545FBCD399681188CE0F4893AF8DCAE1762E087
              F5865561FAEDAC6B1F3BF841617E76E9EA25936077C4A3478862502450F48F4A
              A250AD8B6559854C5444C91000341214548BB54AF57C76E88F01BA3AAEE2DCD9
              1665C0D3F5C4B9233BDE04201AF29B7B800985444E084BB8E28F20D41F852011
              501D40FF4AD60F0718866AABA26A2BA03FB360B49805E0EEF2A0F97C3B3C2ECF
              85C19EE6AD6DA7DE380B20620687497E1E40FCEC5B76AC4ACA70964D292A185B
              30652C14309AC454AF9252683D10F00BE02D3CE2EC368D9C1014218912FCFD21
              78DD7DB8EAEA85303050130DF7BFDB7C6CE7010DD874474CBD792F3D5FB11DE6
              D79000106B3FDA51919439BE6AB0EFDEED179B3AB74C9F33D13A6A740688AA18
              D26A63F6C467755008E91143C2B59A320A715385F4AB847412229E0BF6345576
              9F2BBFA883464D33045FB606E8A687DE1CF955AC9350077B5B496DF96F9ECFFD
              C96D877AAFF6FC2E677CEE92A23993604B8807512958502844C1E9B737160310
              4C879BAF67A2BBAA3BAA2E05A8964031447E04013A6BFDABA83BF4A0AA77A872
              B9E6FDC698AF0B963CBCBAABCDF5FCA41985CEF1D3F22133D01A124018C0A09E
              6F1E4C66C7171AB0CE8252E3F36FA402244AF04DE7009D9793ACE5180DD3FAE5
              2BE58ECCC22F82FEB55BDB9B2E3F306DFE342B218AA198ACBBD97022060A981B
              98C26CD444803182A9A57BF55749D5D29B8E3C66BEA47800F6CCC9374F49CCBA
              EE85C48CACEBBF3DF8C03500420094FC1B5E1CC2192E5C8BFF8B759C78163FD4
              8CBBC2022001400A80640071C3D3F44718F33FE69901D5E1927F84FD03EF8804
              FDEBAEB9D10000000049454E44AE426082}
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = CxAtualizarClick
          end
          object bbNovo: TcxButton
            AlignWithMargins = True
            Left = 5
            Top = 7
            Width = 150
            Height = 45
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
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = bbNovoClick
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 797
        Height = 88
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Caption = 'F5 | Localizar '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label4: TLabel
          Left = 18
          Top = 25
          Width = 143
          Height = 17
          Caption = 'Per'#237'odo de               at'#233
        end
        object edtLoc: TEdit
          Left = 393
          Top = 46
          Width = 352
          Height = 23
          HelpType = htKeyword
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 35
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TextHint = 'Selecione uma das colunas e pesquise aqui...'
          OnChange = edtLocChange
          OnKeyDown = edtLocKeyDown
          OnKeyPress = edtLocKeyPress
        end
        object DataInicial: TDateTimePicker
          Left = 17
          Top = 44
          Width = 124
          Height = 28
          BevelInner = bvLowered
          Date = 42671.000000000000000000
          Time = 0.908891388891788700
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnFiltrar: TBitBtn
          Left = 279
          Top = 44
          Width = 101
          Height = 29
          Caption = 'Filtrar Per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnFiltrarClick
        end
        object DataFinal: TDateTimePicker
          Left = 147
          Top = 44
          Width = 126
          Height = 28
          BevelInner = bvLowered
          Date = 42671.000000000000000000
          Time = 0.908891388891788700
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CxLimpa: TcxButton
          Left = 755
          Top = 45
          Width = 30
          Height = 25
          Margins.Right = 0
          Colors.NormalText = clWhite
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          LookAndFeel.SkinName = 'MetropolisDark'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000026744558745469746C650046696E643B426172733B5269
            62626F6E3B5374616E646172643B536561726368BB659C080000009549444154
            785EA592C10DC3200C459B7598815118A21324ED0E6C81D299B8C01AAE5DFD5C
            ACDA4AE2C3932CFDAF27C03C8828C46FC8390B0B5398C64C017341660B507831
            6420D9E2090A8A83D99824601EC88A2768286DBA201264CD134C94D21F414236
            C382F015EE3E22811DEB3E30D6E8B31A02F7237DB4440B5C507E6BC9158125A9
            6705D649BA21B04F012AD399E72108F1057CFE2C0C2A4306D60000000049454E
            44AE426082}
          ParentShowHint = False
          PopupAlignment = paCenter
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Transparent = True
          TabOrder = 4
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = CxLimpaClick
        end
      end
    end
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      TabVisible = False
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 791
        Height = 510
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 20
          Top = 15
          Width = 62
          Height = 17
          Caption = 'C'#243'd. Ajust.'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 99
          Top = 15
          Width = 27
          Height = 17
          Caption = 'Data'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 168
          Top = 231
          Width = 68
          Height = 17
          Caption = 'Quantidade'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 21
          Top = 71
          Width = 26
          Height = 17
          Caption = 'Tipo'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 19
          Top = 230
          Width = 80
          Height = 17
          Caption = 'Estoque Atual'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 227
          Top = 123
          Width = 110
          Height = 17
          Caption = 'Informe Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 20
          Top = 174
          Width = 145
          Height = 17
          Caption = 'Selecione pela Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label3: TLabel
          Left = 78
          Top = 125
          Width = 103
          Height = 17
          Caption = 'C'#243'digo de Barras'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label6: TLabel
          Left = 19
          Top = 123
          Width = 48
          Height = 17
          Caption = 'C'#243'd. Int.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 19
          Top = 35
          Width = 63
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = dsAcerta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit2: TDBEdit
          Left = 99
          Top = 35
          Width = 136
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DATA'
          DataSource = dsAcerta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 168
          Top = 251
          Width = 136
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'QTD_A'
          DataSource = dsAcerta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DBComboBoxEh1: TDBComboBoxEh
          Left = 20
          Top = 91
          Width = 136
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'E_S'
          DataSource = dsAcerta
          DynProps = <>
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'ENTRADA'
            'SA'#205'DA')
          KeyItems.Strings = (
            'E'
            'S')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEdit3: TDBEdit
          Left = 20
          Top = 251
          Width = 136
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VIRTUAL_QTD'
          DataSource = dsAcerta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object edtReferencia: TEdit
          Left = 227
          Top = 145
          Width = 128
          Height = 23
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnChange = edtReferenciaChange
        end
        object pnGrade: TPanel
          Left = 21
          Top = 297
          Width = 425
          Height = 191
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object Label44: TLabel
            Left = 297
            Top = 162
            Width = 31
            Height = 17
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 425
            Height = 153
            Align = alTop
            DataSource = dsGrade
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 186
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Caption = 'Quantidade'
                Width = 124
                Visible = True
              end>
          end
          object DBEdit37: TDBEdit
            Left = 336
            Top = 159
            Width = 89
            Height = 25
            BevelInner = bvNone
            BevelOuter = bvNone
            CharCase = ecUpperCase
            Ctl3D = True
            DataField = 'TQTD'
            DataSource = dsGrade
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object DBLookupComboboxEh2: TDBLookupComboboxEh
          Left = 20
          Top = 197
          Width = 426
          Height = 23
          Ctl3D = False
          ParentCtl3D = False
          DynProps = <>
          DataField = 'VIRTUAL_PRODUTO'
          DataSource = dsAcerta
          DropDownBox.AutoDrop = True
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = True
          OnEnter = DBLookupComboboxEh1Enter
          OnExit = DBLookupComboboxEh1Exit
          OnKeyPress = DBLookupComboboxEh1KeyPress
        end
        object edtBarra: TEdit
          Left = 78
          Top = 145
          Width = 136
          Height = 23
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnChange = edtBarraChange
        end
        object DBEdit5: TDBEdit
          Left = 20
          Top = 145
          Width = 47
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'FKPRODUTO'
          DataSource = dsAcerta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 513
        Width = 791
        Height = 57
        Margins.Top = 0
        Align = alBottom
        BevelOuter = bvLowered
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object CxGravar: TcxButton
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 150
          Height = 45
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Caption = 'F5 | Gravar'
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
          OnClick = CxGravarClick
        end
        object CxCancelar: TcxButton
          AlignWithMargins = True
          Left = 166
          Top = 6
          Width = 150
          Height = 45
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Caption = '| Cancelar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F400000021744558745469746C6500436C6F7365486561646572416E64466F6F
            7465723B436C6F73653B4ED38A87000005E849444154785EC5575B6C146514FE
            FE6969BBDD2DBBA5DDDA4A69B92C8246280F1A4DBC84276335DC8AE1D5C448A2
            91187D30EA8BF1F280467DC0C4470DC6843B1A31C08305C5606242AC0423B669
            A8525AA0EDEE76BBDBBDCECCFF7BE6BF30EEAEDDC213D39ECCF9CF3F7BBEEF5C
            FEB3B34C0881BB7959B8CB57BD511863B500CC66EDFDDA762145EB26F3F535C0
            FC7BED3D235840671A9893B8248ED6852450113D3BBD61C3E6482CF6514338FC
            B030C485C21252177E182A14CF81B24B9176E35FAF05B2C9E4C5BF2E5F7EE7F5
            F1F11F00940853D0559D81B6FB1F38B0FEAD373B833D3D0A8C73ED85932E00CE
            8DDDDFE31EB05E4B7B85EEBA488D8E6EAA3F74E80B8C8FAFF5B3505D02C62CD6
            19ECEE863D320291CD49F6BA5E1244254194450C18DD1754E86E2A05CBB2A200
            96FCB7343E016D744B2508C7019F9DAD76061F1C3500CB6C5CE96E3E07D7B601
            A04E63E17F3340E08A403EAFA387025B0094CBD4CBEC54ECF332024E8EFC5170
            067C2102966B970062CA0B0505606A0E81CCC424A67E1F4278F51AB4AEBD0F80
            EA0BAE01E3C323888F8EA2B3AF0F2D5D5DB2FE86909BCBC129D5C880365ACE7C
            16C22390CBF9519224868731323888254F3D8B1BE77EC2B24B9710EBEFF740E4
            FED89933B836711D8D8F6FC6B50387107BF411746DDC08A1493AB92CDC5271D1
            0C20FBF7189C44026E3A4D5CEB74841C574E9D44F3DE7D6888C5B072F76E0CBF
            F83C0A470E63DDD3FD183B7F1ED713B368FDF47304A351ACD93980A15DDB116A
            8DA0311291A7C14ECD2177F3A6CC72AD1EB0BCA8792683FCD010100AC20A87C1
            0201948A453492FE60AC17CD4D0DE8F8E63BFCB86D0B2E7CB51FC5481B221FEE
            4388C037AD5F099E8AE03730A4AEFE8348A60D85A929A4498AC9A42180054B20
            B3EE382AB5C4DA4EA64877115DBE1C33EFBE0D71EC3844633B9A962DC313DF9E
            C0F93DAF20F2D26B3E78268DC1811D68EDE8903E32543AEEF9726C00A2AA07AC
            AA312C201FE69C4B2170A9B71340733A8573CF0D201B8F830B48124FEEFF1AED
            2BBA09BC57816FDB069198411BD9AC6C0EAEE34278E27270518D695564A04EF6
            BBED80BBAE26E192AE1C74D3806A4ACDE2ECC076E46693B42760519FAC5ED105
            4ECD3BB87D2B814F23DADB0BE635F1FC3C8470E10AE9CB64C0AA95015A0B3507
            3857243CE6DC977A12A754C2F0D8246CC7B3810080F9A20BC78B5480C0F34026
            2347B0F121B8DCAB45C0F40093134B036A021405399ABC368E99E620C2741A18
            DD1BEA2D73CCC082213C74F038B28120A6262724A82BB3284C1066A45797C030
            F24B604BF624BA041C37AF4F221E0821B2F733B4443BD0B7AE17C8A671F1D597
            51F0CA21049684DBF0D8D113985FDA8A78360BA1B328B82222705B1910E044C0
            F5D32E1B696A3A8EC8079FA0A5238A3E6A38319F9135BF71EA147EDEB905F978
            4292686A8FE299EF4F22994A012DA1F23E122AC8459A10928064ED9A0894B0CC
            1C36AEED91E0B2DB6766D0DBB7018DD498BFECDA0A64928834D7A3148F830942
            8A442429E947709071F14104930197AB14EA3ADE4BB3FDEA1B7BF0C79F2FE0C6
            E993C0DC1C3A567A65C8E29EE600A692719CDDDA8FD88E015CD9FF253AD7AC02
            84DFD0EA4B09B50791C980B04BAAFE42370F9169A174AE6A6AC4F4B1C3680987
            11207046E0622E2D01DA02CD0811C2F49183E8EEED41432080C2C4A489DE7C31
            2DDE038080AB7BC09C7F5797A3110C1DD4ED41CB024B24C13538D7D9AA2FE4B1
            94D511B11C726363B0D3E9B26126503B0330A398976C09EC7F58E813A1232916
            A48D1B92CAAED676D6EB11FF59E113342F973547B147C02D9564E7AAF35F3E90
            845C0B6533E07ACFEF783F6A6EF6CADF56B92161326036EC22E7895C32D95628
            50947EF43A620568A2734948912475B4E605C54C3E3380A4BD00A400E4155675
            091C92CC05BBF49E7BF4E8FB0D8C45F4539ABD9C79D0FFCA29A402F5C7AADE1D
            4D589C091405D2BF3ACEC70012242543829907196316800692A524619200495D
            45D7B20A41D55EB50E9DF2AC064F92E40997579540339B2599AF0046858E3BB4
            732DB612BF0455BF8E195DB8B3EB369FD715AB00BCEB3FCFFF05A0D02BCB235F
            04BF0000000049454E44AE426082}
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = CxCancelarClick
        end
      end
    end
  end
  object dsAcerta: TDataSource
    DataSet = qryAcerta
    Left = 520
    Top = 344
  end
  object frxReport: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 43221.464076712960000000
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
    OnGetValue = frxReportGetValue
    Left = 650
    Top = 115
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBAcerta
        DataSetName = 'frxDBAcerta'
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
        Height = 0.960000000000000000
        ParentFont = False
        Top = 362.834880000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'TotaisOnBeforePrint'
        object Memo12: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 0.960000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
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
        Top = 196.535560000000000000
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
            'DATA')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 109.120000000000000000
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
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
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
            'PRODUTO')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 431.040000000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 609.600000000000000000
          Top = 2.599999999999994000
          Width = 134.400000000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE REAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 438.720000000000000000
          Top = 3.000000000000000000
          Width = 134.400000000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE FISCAL')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 597.120000000000000000
          Height = 23.040000000000000000
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
        Height = 24.000000000000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        DataSet = frxDBAcerta
        DataSetName = 'frxDBAcerta'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 756.480000000000000000
          Height = 24.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 2.879999999999996000
          Width = 95.395300000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = frxDBAcerta
          DataSetName = 'frxDBAcerta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAcerta."DATA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 609.600000000000000000
          Top = 2.879999999999996000
          Width = 134.400000000000000000
          Height = 15.118120000000000000
          DataField = 'QTD_A'
          DataSet = frxDBAcerta
          DataSetName = 'frxDBAcerta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAcerta."QTD_A"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 107.520000000000000000
          Top = 0.959999999999979500
          Height = 22.080000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 431.040000000000000000
          Top = 0.959999999999979500
          Height = 22.080000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 115.200000000000000000
          Top = 2.879999999999996000
          Width = 296.995300000000000000
          Height = 15.118120000000000000
          DataField = 'VIRTUAL_PRODUTO'
          DataSet = frxDBAcerta
          DataSetName = 'frxDBAcerta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAcerta."VIRTUAL_PRODUTO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 597.120000000000000000
          Top = 1.000000000000000000
          Height = 22.080000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 438.720000000000000000
          Top = 3.000000000000000000
          Width = 134.400000000000000000
          Height = 15.118120000000000000
          DataField = 'QTD_F'
          DataSet = frxDBAcerta
          DataSetName = 'frxDBAcerta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAcerta."QTD_F"]')
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
        Height = 153.600000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Width = 756.480000000000000000
          Height = 153.600000000000000000
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
          Top = 49.599999999999990000
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
          Top = 71.400000000000000000
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
            'ACERTA ESTOQUE')
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 1.600000000000000000
          Top = 128.800000000000000000
          Width = 746.880000000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PARAMETRO]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.800000000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 5.600000000000000000
          Top = 3.000000000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Top = 3.600000000000023000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
      object SysMemo2: TfrxSysMemoView
        AllowVectorExport = True
        Left = 875.600000000000000000
        Top = 367.400000000000000000
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
    Left = 650
    Top = 43
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
    Left = 736
    Top = 104
  end
  object frxDBAcerta: TfrxDBDataset
    UserName = 'frxDBAcerta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FKPRODUTO=FKPRODUTO'
      'E_S=E_S'
      'QTD_F=QTD_F'
      'QTD_A=QTD_A'
      'DATA=DATA'
      'VIRTUAL_PRODUTO=VIRTUAL_PRODUTO')
    DataSet = qryAcerta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 738
    Top = 35
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 672
    Top = 408
  end
  object qryProdutos: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, CODBARRA, QTD_ATUAL FROM('
      'SELECT codigo, descricao,codbarra, qtd_atual FROM produto'
      
        'UNION SELECT (0) AS CODIGO, ('#39'<Todos os produtos'#39') AS descricao,' +
        ' '#39#39' AS CODBARRA, 0 as qtd_atual  from RDB$DataBase'
      ')'
      'where '
      'codigo like :codp or'
      'codbarra like :cod '
      ''
      'order by DESCRICAO')
    Left = 672
    Top = 280
    ParamData = <
      item
        Name = 'CODP'
        ParamType = ptInput
      end
      item
        Name = 'COD'
        DataType = ftWideString
        ParamType = ptInput
        Value = ''
      end>
    object qryProdutosCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object qryProdutosDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 672
    Top = 344
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select codigo,descricao, qtd_atual, grade, qtd_fiscal from produ' +
        'to')
    Left = 744
    Top = 280
    object qryProdCODIGO: TIntegerField
      Alignment = taLeftJustify
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
    object qryProdQTD_ATUAL: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdQTD_FISCAL: TBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
    end
  end
  object dsProd: TDataSource
    DataSet = qryProd
    Left = 744
    Top = 344
  end
  object qryAcerta: TFDQuery
    BeforeOpen = qryAcertaBeforeOpen
    BeforePost = qryAcertaBeforePost
    AfterPost = qryAcertaAfterPost
    BeforeDelete = qryAcertaBeforeDelete
    AfterDelete = qryAcertaAfterDelete
    Connection = Dados.Conexao
    SQL.Strings = (
      'select ae.*, pro.descricao from acerta_estoque ae'
      'left join produto pro on pro.codigo=ae.fkproduto'
      'where'
      'data between :data1 and :data2'
      '/*where*/')
    Left = 522
    Top = 286
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
      end>
    object qryAcertaCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAcertaFKPRODUTO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FKPRODUTO'
      Origin = 'FKPRODUTO'
      OnValidate = qryAcertaFKPRODUTOValidate
    end
    object qryAcertaE_S: TStringField
      FieldName = 'E_S'
      Origin = 'E_S'
      Size = 1
    end
    object qryAcertaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryAcertaVIRTUAL_PRODUTO: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FKPRODUTO'
      Size = 100
      Lookup = True
    end
    object qryAcertaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryAcertaVIRTUAL_QTD: TFloatField
      Alignment = taLeftJustify
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_QTD'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QTD_ATUAL'
      KeyFields = 'FKPRODUTO'
      Lookup = True
    end
    object qryAcertaQTD_F: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTD_F'
      Origin = 'QTD_F'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
    object qryAcertaQTD_A: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTD_A'
      Origin = 'QTD_A'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
    object qryAcertaVIRTUAL_QTD_FISCAL: TExtendedField
      Alignment = taLeftJustify
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_QTD_FISCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QTD_FISCAL'
      KeyFields = 'FKPRODUTO'
      Precision = 19
      Lookup = True
    end
  end
  object qryReferencia: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo,descricao, qtd_atual from produto'
      'where'
      'referencia=:ref')
    Left = 744
    Top = 440
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object qryReferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryReferenciaQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
  end
  object qryGrade: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_grade pg'
      'where'
      'pg.fk_produto=:id'
      'order by 1')
    Left = 584
    Top = 288
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryGradeCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryGradeFK_PRODUTO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryGradeQTD: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = '0'
      Precision = 18
      Size = 3
    end
    object qryGradePRECO: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryGradeTQTD: TAggregateField
      FieldName = 'TQTD'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(QTD)'
    end
  end
  object dsGrade: TDataSource
    DataSet = qryGrade
    Left = 584
    Top = 336
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
    Left = 736
    Top = 176
  end
end
