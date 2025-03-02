object FrmListaPreVenda: TFrmListaPreVenda
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'Lista de Pr'#233'-Vendas'
  ClientHeight = 645
  ClientWidth = 1067
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object PnBarraCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1067
    Height = 52
    Align = alTop
    BevelKind = bkSoft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1009
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 1055
      Height = 40
      Margins.Left = 5
      Margins.Top = 5
      Align = alClient
      Alignment = taCenter
      Caption = 'Lista de Pr'#233'-Vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 251
      ExplicitHeight = 37
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 565
    Width = 1067
    Height = 80
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 454
    ExplicitWidth = 1009
    object Label3: TLabel
      AlignWithMargins = True
      Left = 888
      Top = 16
      Width = 173
      Height = 58
      Margins.Left = 5
      Margins.Top = 15
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Alignment = taCenter
      Caption = 'CTRL + Delete para apagar a Pr'#233' venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 893
      ExplicitTop = 1
      ExplicitHeight = 78
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 319
      Top = 4
      Width = 166
      Height = 72
      Margins.Left = 7
      Align = alLeft
      Caption = 'Informe o Per'#237'odo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object btnFiltrar: TBitBtn
        Left = 107
        Top = 18
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
        Top = 43
        Width = 80
        Height = 21
        Alignment = taCenter
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
        Top = 18
        Width = 79
        Height = 21
        Alignment = taCenter
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
      Left = 491
      Top = 4
      Width = 393
      Height = 72
      Align = alLeft
      Caption = 'F8 | Localizar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object edtLoc: TEdit
        Left = 18
        Top = 32
        Width = 359
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
        OnKeyPress = edtLocKeyPress
      end
    end
    object cxAlterar: TcxButton
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 147
      Height = 64
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
        F400000020744558745469746C6500456469743B426172733B526962626F6E3B
        5374616E646172643B3013C3DB0000079A49444154785E9D970B8C15571D87BF
        7366E6DE659FE8429147178AB08020B4F2541AC01A6A1FA2A9C286D4C4DA6A6C
        7DD44668EDC36509BBC44628182435B1910AC4B2B4E5514D6BD19A822C658B20
        B085EE4257D9D2C0020BBB7497BB77EF9D3B738EDC9399CC756F80C673EFC93D
        672699EFF77F9E3B426B8D10821B0C11CD609F3FAEF7100DA860926586C3EE4F
        5AFBE20104026D3EB0F4A1990290AB7ED750535C5C54A305A075F4D8681BAC15
        10920C0E5FA93D4B1E9C351FD0C1BCB600CFF3B967CE2D8066D2F86106BE72FD
        EEE5B36E1BB94CE0513EB090C2C21803E236B1984DFCEA2C883B81DC68E46E7F
        B3F99FF3000B5037149076BDAC62A67C6EB800AC9AB56FD54C9B52B1ECF66937
        B366C35EEE9A5B692CF611F85AE3FA0A3F9D893CA1341A01985F0AE3165AE9BC
        105D53809BF6B27009C8A79E7D63F9CC2F8CAA9E3DAD221097414A81E3481C5B
        625B16524A03CEF540B4D318B14A7D6201A26EE91DC6F225757FAE993DFDB3D5
        73668CC2B22446409F0B5A6059B611202D092A172D72132C5CA3220F881B0A00
        AC9FD66CAF9933736CF5BC2F8DC1B604961400F4A55D84CC0A1008CBB8368285
        C070A70D2FB8FEC93C2000F9C3A7B7D6CC9B3DBEFAAB73C71ACBA51048014240
        3A9D894CF0B56110307564362ABA6244E97E2110425CD303B272DCA8EA742AC5
        4F9EA90784012330B1BF6950A9C97C898CCA4C830A856461E40FDF8F049C7AFC
        07D7F780529AC1E5C554DD3703475AC41C896D5B14C41C0A8BE20C2888216C61
        AC12421AB2F9462E88DA8400A561F8674A012420473FF78291DAF2E877355AE7
        E780569A1143CBF014C46D1BC7B1B06C8963590829B16C810414021551D190DF
        9C34083415C34AD9FDEDFB9E2E8BC59ECC685D3B73E32B7513D66F5480CE13A0
        94A2B478009EAF711C1BDB249C0C6367325A198E0EB23E58F5EF888025356805
        FB77317CECA827473FF2635AD7ACAA79EB9BF7C8F93BFE520BF832171E7A201E
        73B01DDB582E6DCB80858105220C4CA07404D541E26B40F90A0B905AD3B86317
        433A4F32FAE11FD1B36B2723EEBD9302C7AEDEFE95B9CB0199EF01E5E3C4241E
        202D99175B2D0C25F441647A90675A688CD7F0D9F9C6612EF614F1C0CF57D3FD
        A7E74934B7109325944CFE3CC75EDAF60BA02E5F805626DEAE45008FEA4C230C
        2CBC84022DFFB7F1489115EA7370CF9B9CEE28E6FB0FCEE7C889B394A5CAA818
        319686E7D6D3D3E7D2914CAECACF01E33E1D58EE47ECC80791F561ED2900F055
        D672407B741CDACC84D8BFB8E39167D975E8345D1F279093BFCCD65F2EA3B027
        C9BF7B7A9EFB7557672DA0FA97A1F09532969819061711259A32AB901BB65A2C
        A9D0BECFC5439B284A1FA2E2AE15A44FAD6750F22664E95D6CDAF236E76313F0
        52EFAF6DE86A5B01B8809F1F025F117281101EF6FC001C643712A57D2C017819
        CE1FDC4471FA2023EFAE25D5F25BDCEE134C18328D35F51B39DD263879FCE8BA
        CEF3C76A43F8C3B1C2FC32F47D850E9E1F1EAA061A72C32512E57BD812B47F15
        FEEE468AFB0E70CBD7EA48B76D277DE918FEC069BCBFFD156E7715EF9C912F74
        7ED4BC124801DE8C81954A25CF9027C0E0028A6FEA2ED807D0F0BE52CA249CF2
        5CCE375E85F73632FA1B2BB9D2B48E4CE709C4A0E91CDFF62A8984A6E35377B2
        E7BDE7D70069C003F47167245E5C21F33CE02914845D0EAD4D290633074E169E
        E26CC3068ABAF73166C10AAE1C5A4BA6BD093DF0568EBEBA8DCB973DAC710B19
        30F57E027806D00F2CDDA8415176739CBC24544A199A461978FFE3562B8DC4C7
        F3D29C6B7891922BFB19B3B08EEE036BF02E35A387CEA2E9E51D2492E04C5CC4
        C46F3DC6969D4708E1801E57F411D3CBDB5930F822F94968E03AE8E52A8A7976
        AD41EA2CBC8FF67F6CA0A4FB1D2AABEAF878FF6AD2175AB06E9EC191FAD7B892
        D23893AA98B0F0312C3B4E6B5B67AE1DCC4E6EC629EFC273A3C348E45681CE6D
        B118AB8DF5161AD74D7266CFEF29BBBC8FCAC5B57436ACC6BDD08C533183835B
        5F27D10BB1C9554C5AF4332CBB002D2C233E97E3BB3E998C422BF23DE0850288
        CE54B3CA5AEEA7F8CFDFB650D07B9EF18B96D1B5FB57B81D2D38A3667060EB2E
        7A931A7BCA5578D555B81327A32C6242A2FAFD292D8DFBF8198D82BC1C206C44
        982F46BDF215427B5C687D8FEEA63DCC5FFF3AED7FFC3A6E7B33F698A934D6FF
        95449FC0B9B58A298B97E0140CC0D3E60F2B02617A45EE28295084864602029E
        CA0A004A8B62686DAA01D775C9A432741E6D60C4D479747C7084E4E963C4C7DE
        46E34BBB49A4213EB58AE9DF799C82C262100E314B22826A52D1BB0A009EEB9B
        96AFC917E0BAA9BEBD4FD46D9B23B44005593F747021C306C738D3F4214FAC5C
        CE95B646CE7D7A311FEE6BA5478F2031643C832A1750FFDA615ADBBA1012B416
        611EE1A67AF785DD0F80AC80E05EEEBBA1041CA02098329836503C69FADD0FCD
        9BFDC525CFDC3F9193EF36F2C1C1C374775CA2A5FDE2963F1C3BB70EE80E6A5D
        41747404D0149004DCA647CB15C0CB7F4F41BE07C8042AFB00114C07D04525E5
        F75AC5157CAFBA1ECE35A7C6C57BDF3ED995A87FF354E75E2011C0FDEBBC98FA
        80D6993012791E88AEF55BDBC0C0CAC9F32F745E3CDB9A492776241397B67B6E
        F21CD01B5897092DE71AE3E9F145E1BD7C01D71AC228430621290AC4B8403A8C
        69087E6A5CA1E6FF18FF05EE11264630DDE5080000000049454E44AE426082}
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxAlterarClick
      ExplicitTop = 32
      ExplicitHeight = 40
    end
    object cxImp: TcxButton
      AlignWithMargins = True
      Left = 162
      Top = 8
      Width = 150
      Height = 64
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
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxImpClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 52
    Width = 1067
    Height = 513
    ActivePage = TabSheet1
    Align = alClient
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    MultiLine = True
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollOpposite = True
    TabOrder = 2
    TabPosition = tpRight
    object TabSheet1: TTabSheet
      Caption = 'Pr'#233'-Venda'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 23
        Width = 1030
        Height = 482
        Align = alClient
        DataSource = dsPreM
        GradientEndColor = 15529196
        GradientStartColor = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO'
            Title.Caption = 'Cliente'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR'
            Title.Caption = 'Vendedor'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_EMISSAO'
            Title.Caption = 'Dt. Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            Title.Caption = 'Sub Total'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 90
            Visible = True
          end>
      end
      object TabSet1: TTabSet
        Left = 0
        Top = 0
        Width = 1030
        Height = 23
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        SoftTop = True
        Style = tsSoftTabs
        Tabs.Strings = (
          'Todas'
          'Aberta'
          'Finalizada'
          'Cancelada'
          'Importada')
        TabIndex = 0
        TabPosition = tpTop
        OnClick = TabSet1Click
        ExplicitWidth = 981
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1030
        Height = 505
        Align = alClient
        DataSource = dsPreD
        GradientEndColor = 15529196
        GradientStartColor = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Caption = 'Item'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'C'#243'd.'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 420
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quantidade'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Und.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ITEM'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VDESCONTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desconto'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 102
            Visible = True
          end>
      end
    end
  end
  object qryPreM: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT P.RAZAO, V.NOME VENDEDOR,'
      'PVM.*,'
      'CASE PVM.SITUACAO'
      '    WHEN '#39'X'#39' THEN '#39'ABERTA'#39
      '    WHEN '#39'F'#39' THEN '#39'FINALIZADA'#39
      '    WHEN '#39'C'#39' THEN '#39'CANCELADA'#39
      '    ELSE '#39'N'#195'O IDENTIFICADO'#39
      'END STATUS'
      'FROM PRE_VENDA_MASTER PVM'
      'LEFT JOIN PESSOA P ON PVM.ID_CLIENTE = P.CODIGO'
      'LEFT JOIN VENDEDORES V ON PVM.FK_VENDEDOR = V.CODIGO'
      'WHERE PVM.FKEMPRESA = :EMPRESA'
      '/*WHERE*/')
    Left = 204
    Top = 232
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPreMRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 50
    end
    object qryPreMVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 40
    end
    object qryPreMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPreMDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryPreMID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      DisplayFormat = ',0.00'
    end
    object qryPreMFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryPreMFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
      DisplayFormat = ',0.00'
    end
    object qryPreMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryPreMSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPreMFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryPreMPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 16
    end
  end
  object dsPreM: TDataSource
    DataSet = qryPreM
    OnDataChange = dsPreMDataChange
    Left = 220
    Top = 328
  end
  object qryPreD: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT P.DESCRICAO PRODUTO, PVD.*'
      'FROM PRE_VENDA_DETALHE PVD'
      'LEFT JOIN PRODUTO P ON PVD.ID_PRODUTO = P.CODIGO'
      'WHERE FK_PREVENDA = :VENDA'
      'ORDER BY ITEM')
    Left = 301
    Top = 208
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPreDPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object qryPreDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPreDFK_PREVENDA: TIntegerField
      FieldName = 'FK_PREVENDA'
      Origin = 'FK_PREVENDA'
      DisplayFormat = ',0.00'
    end
    object qryPreDID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qryPreDITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      DisplayFormat = ',0.00'
    end
    object qryPreDQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryPreDPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDPVDESCONTO: TFMTBCDField
      FieldName = 'PVDESCONTO'
      Origin = 'PVDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPreDUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryPreDSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsPreD: TDataSource
    DataSet = qryPreD
    Left = 300
    Top = 288
  end
end
