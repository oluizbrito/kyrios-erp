object frmFechaVenda: TfrmFechaVenda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Forma de Pagamento'
  ClientHeight = 708
  ClientWidth = 671
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Memo1: TMemo
    Left = 120
    Top = -1000
    Width = 65535
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 657
    Height = 694
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    ActivePage = TabFinaliza
    Align = alClient
    TabOrder = 1
    object TabPrecoNormal: TTabSheet
      Caption = 'TabPrecoNormal'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 649
        Height = 666
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel8: TPanel
          Left = 0
          Top = 531
          Width = 649
          Height = 135
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object PnTotais: TPanel
            Left = 0
            Top = 0
            Width = 377
            Height = 135
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object PageControl2: TPageControl
              Left = 0
              Top = 0
              Width = 377
              Height = 135
              ActivePage = Totais
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Totais: TTabSheet
                Caption = 'Totais'
                object Label7: TLabel
                  Left = 102
                  Top = 36
                  Width = 50
                  Height = 25
                  Alignment = taRightJustify
                  Caption = 'Troco:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 7
                  Top = 70
                  Width = 145
                  Height = 25
                  Alignment = taRightJustify
                  Caption = 'F6 - CPF na Nota:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 28
                  Top = 2
                  Width = 124
                  Height = 25
                  Alignment = taRightJustify
                  Caption = 'Valor Restante:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object DBEdit5: TDBEdit
                  Left = 158
                  Top = 70
                  Width = 159
                  Height = 23
                  Color = clWhite
                  Ctl3D = False
                  DataField = 'CPF_NOTA'
                  DataSource = dsVenda
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  MaxLength = 14
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnKeyPress = DBEdit5KeyPress
                end
                object edtTroco: TEdit
                  Left = 158
                  Top = 37
                  Width = 159
                  Height = 23
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                  Text = '0,00'
                end
                object edtVlRestante: TEdit
                  Left = 158
                  Top = 4
                  Width = 159
                  Height = 23
                  TabStop = False
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                  Text = '0,00'
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'Informa'#231#245'es Adicionais'
                ImageIndex = 1
                object DBMemo1: TDBMemo
                  Left = 0
                  Top = 0
                  Width = 369
                  Height = 103
                  Align = alClient
                  DataField = 'OBSERVACOES'
                  DataSource = dsVenda
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = DBMemo1Enter
                  OnExit = DBMemo1Exit
                end
              end
            end
          end
          object btnConcluir: TcxButton
            AlignWithMargins = True
            Left = 380
            Top = 3
            Width = 130
            Height = 129
            Align = alRight
            Caption = 'F10 | Concluir'
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
            OptionsImage.Layout = blGlyphTop
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnConcluirClick
          end
          object btnCancelar: TcxButton
            AlignWithMargins = True
            Left = 516
            Top = 3
            Width = 130
            Height = 129
            Align = alRight
            Caption = 'ESC | Cancelar'
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
            OptionsImage.Layout = blGlyphTop
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton1Click
          end
        end
        object pngeral: TPanel
          AlignWithMargins = True
          Left = 7
          Top = 7
          Width = 635
          Height = 517
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 7
          Margins.Bottom = 7
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object pnTabPreco: TPanel
            Left = 0
            Top = 52
            Width = 635
            Height = 36
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            TabOrder = 1
            object Label17: TLabel
              Left = 90
              Top = 6
              Width = 167
              Height = 25
              Alignment = taRightJustify
              Caption = 'F3 | Tabela de Pre'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 272
              Top = 6
              Width = 258
              Height = 28
              Color = clWhite
              DataField = 'VIRTUAL_TABELA'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ListField = 'DESCRICAO'
              ParentFont = False
              TabOrder = 0
              TabStop = False
              OnExit = DBLookupComboBox4Exit
            end
          end
          object pnSubtotal: TPanel
            Left = 0
            Top = 88
            Width = 635
            Height = 35
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label1: TLabel
              Left = 183
              Top = 4
              Width = 74
              Height = 25
              Caption = 'SubTotal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 272
              Top = 4
              Width = 257
              Height = 19
              TabStop = False
              Color = clWhite
              Ctl3D = False
              DataField = 'SUBTOTAL'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object PnDesconto: TPanel
            Left = 0
            Top = 123
            Width = 635
            Height = 36
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Label10: TLabel
              Left = 142
              Top = 5
              Width = 115
              Height = 25
              Caption = 'F4 | Desconto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
            end
            object edtPercenutal: TDBEdit
              Left = 272
              Top = 2
              Width = 75
              Height = 19
              Color = clWhite
              Ctl3D = False
              DataField = 'PERCENTUAL'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnExit = edtPercenutalExit
            end
            object edtDesconto: TDBEdit
              Left = 349
              Top = 2
              Width = 180
              Height = 19
              Color = clWhite
              Ctl3D = False
              DataField = 'DESCONTO'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = edtDescontoExit
            end
          end
          object pnACrescimo: TPanel
            Left = 0
            Top = 159
            Width = 635
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object Label18: TLabel
              Left = 135
              Top = 1
              Width = 122
              Height = 25
              Alignment = taRightJustify
              Caption = 'F5 | Acr'#233'scimo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI Semilight'
              Font.Style = []
              ParentFont = False
            end
            object edtPercentualAcrescimo: TDBEdit
              Left = 272
              Top = 1
              Width = 75
              Height = 19
              Color = clWhite
              Ctl3D = False
              DataField = 'PERCENTUAL_ACRESCIMO'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnExit = edtPercentualAcrescimoExit
            end
            object edtAcrescimo: TDBEdit
              Left = 349
              Top = 1
              Width = 180
              Height = 19
              Color = clWhite
              Ctl3D = False
              DataField = 'ACRESCIMO'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = edtAcrescimoExit
            end
          end
          object PnTotal: TPanel
            Left = 0
            Top = 230
            Width = 635
            Height = 72
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object Label3: TLabel
              Left = 59
              Top = 6
              Width = 198
              Height = 45
              Caption = 'Total '#224' Pagar:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 272
              Top = 9
              Width = 257
              Height = 19
              TabStop = False
              Color = clWhite
              Ctl3D = False
              DataField = 'TOTAL'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object JVDBGrid1: TDBGrid
            Left = 0
            Top = 302
            Width = 635
            Height = 215
            Align = alClient
            Color = clBtnFace
            DataSource = dsVendasFPG
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 6
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -19
            TitleFont.Name = 'Segoe UI Semibold'
            TitleFont.Style = [fsBold]
            OnColEnter = JVDBGrid1ColEnter
            OnEnter = JVDBGrid1Enter
            OnExit = JvDBGrid1Exit
            OnKeyPress = JvDBGrid1KeyPress
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FLAG'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Tecla'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'VIRTUAL_FORMA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'F8 Forma de Pagamento'
                Width = 300
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VALOR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 160
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VIRTUAL_ATALHO'
                Title.Alignment = taCenter
                Title.Caption = 'Atalho'
                Width = 100
                Visible = True
              end>
          end
          object pnPessoa: TPanel
            Left = 0
            Top = 0
            Width = 635
            Height = 52
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            OnExit = pnPessoaExit
            object Label11: TLabel
              Left = 0
              Top = 0
              Width = 635
              Height = 24
              Align = alTop
              AutoSize = False
              Caption = 'F2 | Selecione o Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitWidth = 637
            end
            object DBEdit27: TDBEdit
              Left = 0
              Top = 24
              Width = 635
              Height = 19
              Align = alTop
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'NOME'
              DataSource = dsVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnChange = DBEdit27Change
              OnKeyDown = DBEdit27KeyDown
            end
            object DBGridPes: TDBGridEh
              Left = 0
              Top = 50
              Width = 635
              Height = 2
              TabStop = False
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsCliente
              DynProps = <>
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              IndicatorOptions = []
              Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghData3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghRecordMoving, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Visible = False
              OnDblClick = DBGridPesDblClick
              OnKeyPress = DBGridPesKeyPress
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'RAZAO'
                  Footers = <>
                  Width = 450
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'CNPJ'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object PnDivisao: TPanel
            Left = 0
            Top = 193
            Width = 635
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 7
            object Label8: TLabel
              Left = 263
              Top = 10
              Width = 124
              Height = 21
              Caption = 'Valor por Pessoa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 28
              Top = 8
              Width = 143
              Height = 21
              Caption = 'Dividir a conta por: '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvSpinEdit1: TJvSpinEdit
              Left = 180
              Top = 6
              Width = 60
              Height = 29
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20')
              MaxValue = 20.000000000000000000
              MinValue = 1.000000000000000000
              Value = 1.000000000000000000
              ImeMode = imDisable
              ImeName = 'Portuguese (Brazilian ABNT)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnChange = JvSpinEdit1Change
            end
            object cxMaskEditPorPessoa: TEdit
              Left = 393
              Top = 6
              Width = 136
              Height = 28
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
    object TabFinaliza: TTabSheet
      Caption = 'TabFinaliza'
      ImageIndex = 1
      object panel: TPanel
        Left = 0
        Top = 0
        Width = 649
        Height = 482
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 649
          Height = 82
          Align = alTop
          Shape = bsBottomLine
          ExplicitTop = 1
          ExplicitWidth = 406
        end
        object Label4: TLabel
          Left = 160
          Top = 9
          Width = 41
          Height = 21
          Alignment = taRightJustify
          Caption = 'Troco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 14
          Top = 9
          Width = 90
          Height = 21
          Alignment = taRightJustify
          Caption = 'N'#186' da Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 159
          Top = 30
          Width = 218
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'TROCO'
          DataSource = dsVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 13
          Top = 30
          Width = 140
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'CODIGO'
          DataSource = dsVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 0
          Top = 82
          Width = 649
          Height = 400
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = True
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 2
          object pnEndereco: TPanel
            Left = 0
            Top = 0
            Width = 649
            Height = 48
            Align = alTop
            TabOrder = 0
            DesignSize = (
              649
              48)
            object chkEntrega: TCheckBox
              Left = 217
              Top = 11
              Width = 273
              Height = 23
              Anchors = []
              Caption = 'Imprimir Endere'#231'o do Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 48
            Width = 649
            Height = 352
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              649
              352)
            object Label9: TLabel
              Left = 71
              Top = 131
              Width = 472
              Height = 100
              Alignment = taCenter
              Anchors = []
              Caption = 'Obrigado pela Prefer'#234'ncia!  Volte Sempre!'
              Color = clWhite
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -37
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              WordWrap = True
              ExplicitLeft = 65
              ExplicitTop = 147
            end
          end
        end
      end
      object PanelBotoes: TPanel
        AlignWithMargins = True
        Left = 7
        Top = 489
        Width = 635
        Height = 144
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 7
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object cxFinalizar: TcxButton
          AlignWithMargins = True
          Left = 469
          Top = 7
          Width = 147
          Height = 130
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'F6 | Finalizar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA79300000173494441545809ED9831
            4EC330188513C8C4C4D21334820131C205DA43F4288CBD0D1760EC1198E0022C
            08090646C6F47B558C42498B9C58B2825EF59EFF38CE6FFF7E769A5F2E0AFFAC
            8015B00256C00A0C50A0699A5BF804EB01EE795D085AC17F6285378AAB5C1155
            B10313EC353E0FF01C0AA71427F007786EC90D11331E6559DE45F7421035D436
            B99133D75DE5A936AF14176ADB27F7D73019F6FBFFB3CEC873F80285778A1594
            C5ECA06BAD466F5F3CB186C9D03B08372B7808673488986246710F033EB858B0
            ACCFD843D8D0F005F301F92EA1B609E61BAAF76E9B7C911E1999B0BB939856F0
            615EED241EB1D3513E041F2CC1FFFAAB0C6DB6566080026C297DD4F491AB07B8
            E7756983772E14B30C7C349D0B39178AD932499EE565EDA611547798563A41C8
            DD494C2BF8B08CED249C0B05416CAD000AF05E38174287D1A8627B40799D44F8
            5C0821A2102B7441EF3E1742359F0B21C238B0959C0B8D933091372BE173A144
            5ABA1B2B6005FE93025BE43AD1204533AF110000000049454E44AE426082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxFinalizarClick
        end
        object cxPedido: TcxButton
          AlignWithMargins = True
          Left = 315
          Top = 7
          Width = 147
          Height = 130
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'F5 | Pedido'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA79300000257494441545809ED97BD
            6E143110C7E74E2940021A9A48042505654AE8AFA1A08F7808241E808AE50978
            1078887D8840CD670FE1A33D7EB35E3BABD50D3BC7F9F6B0E4D1FC3DE3F17CD8
            636F4E11A9543B503B503B70C80E2CACE26BC85A3B847D016DAABBDC642CC956
            FC018E3CDDE6F6CCA7E689FF571F5EF17A2AD675004D42B29588AC2450CBA15A
            6C8DF4C4BC61BE92910FF3C3309B49AC3B60A21B4474DC08D469FDC054501B10
            B9911D29265269A55A5A0BA5D8DD4F8803B5724DAD047A15441A5BB9A65666A0
            855563786DBC6FD3CF8ACF61F7ECC17503C3443936963347F1DF40F107703DA1
            FFE11BB09E5DF137500F605D2D7FB9B2FE2A5B75F672036CFE4C44CE41E4736C
            A771328BA460E26D0A12F414FC0263FE89E162CB5C8404DE26AEF30D6161EC0C
            8E01EFFBE007B0F88A857B8E549D0BBE893BC38621F7137A4C8D5B40F91DC38B
            1EEF91CAB719D4079187731F60B8AB3B4CBE81D7E00D883CCFB790EE0E25569E
            92B81E037D2688C49FD19E831B53F1E37562128FD726E7291265D279E080FB23
            F0158C596D0F07AE93EA30C1A4F3D8619760626F02EDBA761F35F177B4E3712D
            6B8E6F62CB27EB3740B5976B8862BFC15DF0003C035F80B27E174F54C985A35C
            89FA3C9F7AA9E28221BEFB2BF4C8EBA8EC55D2C8C4DE42049C80BFFD0EE8DAC9
            16F94817D81B93FC42581893D1A11051EE2F713C1F8738036F4164D54FE3BA57
            C6609556CCD25AD8C5CE3F401F44E41244BEC4F6314E72CA85956C786A8A9B7E
            567C0EBB670F7BB9811C9BF7E628FE00AEDF81E1557A3B33975FF13750FC01E6
            BAE95AA776A076A076607307FE008B8359E49A50AAB80000000049454E44AE42
            6082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          OnClick = cxPedidoClick
        end
        object cxTransmitir: TcxButton
          AlignWithMargins = True
          Left = 161
          Top = 7
          Width = 147
          Height = 130
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'F4 | NFCe Online Transmitir'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA79300000B0F494441545809ED5879
            7494D515FF7DDFCC2433992C93653293DD84206BD88242120C1029A95414A4B8
            1E5B6BD1DAE568EDB142FF128F6D0DB6A2FED1E339485DA9A5A52816456C5922
            12CBBEC4189690C4EC934C86CC24934C32CBF7F5DE976D326149153C8753E6BC
            BBBEFB96FBDE7DF7BD6F80EBBFEB2B707D05AEE91590AEC6ECB7EEFA2C4BA391
            57429556CA509FBBA3A8E083B18C33F7A5790B00DC6D94034B54C02249D0A5E8
            FAD42509EDDEEF27DACA359037A2B0F775D253355952110EB4B5B9ADB22ED042
            3202929A6D3199AAEDF6EE2449EB6F86045B82292629D886ED8660A09EE53D07
            8FAB69D6444446184854D1E7F5C1D6DEE16AB6778EBB6BD11C07294794F7F6EE
            9F27432A2839B9BA5455A4978C5ABFF91E73ABA120C6E58CD0287F4DD4746FFF
            E9B9E919D5DDE14FA7EA7B5D7F9B5A6106D47DD2FCBE5F0F7624332369959B98
            327C76B8FCDC9A575E2B87362074CECEAEB6352F6F544B8F1D799DEB43A1A6A1
            D9CAF51FEE3B7034677C2662A323E1F678D0EE7421C2A047767A724C54A4F6F8
            DAB56BB5DC76DB9E3275DBDEB2D5CC2B4A60EDDEC61D25063962C753E9758E5D
            D38E051EB5363F347589636A5671C7EF221779CBDF79ECF0F6BE484F517D9F3E
            BDB87CDAF3D46E99BAD7308FA828A253486AAE900865A524E1C89767735CEEEE
            EF982223D0D8DA1E20353253AD5EA615E76A4FEC2C3B3283F941A01DC2CD5326
            CE62991CC1E9DA0684E9B49890998EE2BC5C64265BD3CE4E98E9A3C9B3092D22
            4A367DB2B36473F56B88098BC5F393737C73749F36C3D8778F341B3DFD46C3F8
            E84F8EFAF2D6CF2BE9F4853D4C11F122E4C06354BB9F005A461447430EA45812
            101EA683AAF88BB8AEB6A9359669B2395ED0DAC6D6689679B58DB4C2CC67A7A5
            4096259CAD6B14934F32C7213DC9020DE9AA1B9BD06CEF809D7684FB667BA7F7
            3CFE5EFD67E49A0B708FB9BE638AE64F6BA4C2BE3771899FA2D5EE93FCFE97C9
            FB3590A4A7064DE57E469DC9B4C9EE5035B28C8CA44418C2F4D9AC6B6E73A451
            230F39358EE5A50BE6663DF5C39528CE9F8D3939135905539451D0F2B33508D7
            E9904EE78016058AA2A285264FC700963813F8E475FA9CD85CBD018549DFC5BD
            E63AD71469C3035261EF9BB8CCEFE0E3A58D6412FF894D6FA38E528817454B87
            3519F0A7288AD271BCF26C6CCAFC3CCC9A74A35FAF0F0BF32B0147574F4F7CB4
            31EA0C20CD102D825083AD0D07CA4F216FFA24A175BABBC1E124519A108A0164
            8E8D115C5FA09756FE0DCCB7DE8689A61C54A9393155EA7D3B8002F617E26C50
            E6A290DE1208285B562CBAA54634BC04D2421310E1D3E9EE69AE69B2C592234A
            AA2541CB6D5AECFD892333D5D244F20C675757C5C6F7764E257E440904540A17
            88D5A79D1AAAB3C6C7D1EE44C2E172C176FE3CB6D6BE8549B13904D391483B92
            6A31839DF3FA7CBC39F0FAFC687374E0546D7D2EAD720939B4863B5BB6B0605D
            DEFABC385582AB38DE1B45E7A095F50C5AF25638D0D866F771076E4FEFD96863
            84888D86167B3C1B518C079836D8DA754CF9A027C69B9815C059274E1785DCC9
            E351595D2774117A3D6E48B140ABD1885DFA57CB3F10AD37A1386B29664DCCA6
            6C1525EC82914EABA56491045F20808AAA5A68349A12AEA7C35FD2D2D3807FD6
            6D6E77EA26CE34A9A7CEB19E818E197299A96B6E13FBDCEBE9FB9865069BC3C9
            04C9E6581333F5367B2AD348A381C91034DAEC14EF0A26676560319D0D3EE033
            276489C9979FA9C6BEAF3E85D3EFC0FD531E42E1AC9C0B4E7EA83362D2AC6650
            3410375C5A3DCD4835662494F95EDC744EB9DF3B58C3A1221C68686D4F2365AF
            312E6A23D12709D0EAE820A2D2010E1B4F0C1A6C76A34C2E1BC2C3581C82CEEE
            1EF0018E8D8E066720B6B13B3B71B4B20AC7ABBF440D0EE3C7931E47FE8CA9E0
            55E6860145C131AAA7948D8ECE2E71673CFEC072C8747EC22811B8BABAD96C08
            AA3A4F21277616FC92DEF8A5BAEAB66D7B565144C9F3B409B131C94FAFDF7833
            259F83D4F658467C7C25B5927EF3CAC6A75515EBE8407E413673066DF896251D
            998C2C147A70D0444A8F9C000FCE61101EA6458DEE10F2E316E2D6E979E28C70
            AB6E4F2F367DB41B75CDAD30C7C5203DD9420E845368732DE0EEF6801DEC9700
            9FEA45A3BB167764DC3BA8125485FA5BDE01BCF0AB55874823110C95E79F58F5
            02090C4440AB373996D2A942C240EA252EA4700A1D97963CA43DE53C018D1DB8
            7DF2522425C409BD42ABF2EE8E3D686AB553C8A523CA1821F416BA660617C6E1
            EA844EA7117A46755DD5B01A52102EEB590C02758170204873519666DE4B0F33
            0FA553E3458D822A026A00A5CD3BB13CF341DC98CED1D95FC921F2C88A25FDC2
            4570557D13F4BAE1303D6AFF1C33E2E75CD0FAA2AB196A7D5751FEA70AE4EFD1
            2E8C0CCE50C301F984E3A058B5ECF86CC49BC4E53D50737972AAA61EF4801286
            E7FBEC68EF6DC504D3A8EC4D53C1BA313BC0BDB113CB8AE6452E2BEABF785847
            F97A1DCB0C4226E4577C38D8568A02EBA2A1D021F5984A5D4BAB481EFC28E406
            27DB0F23273E970EF77048B15E8C7B6BC19A31879068148482271CA4166C45C7
            31580CA9483424811280D0317A7F77190E559C66F69210151181087D387AFC6E
            94771CC1C3139E18614FC7E8D9E5B716AC05FDBEB603D47674A1AC45A9643587
            4FBE6591A88F89340ACAA8B6A90559A956BA85291FB0E232B0DFB60BD3E26623
            4A17336C49630C4E9E95FF530871834BC132DAD23AF7B98D9DDE0E64474F10A6
            C14F0B97BB87B2CEB043992956DCB9305FC0D2F973073E844433B47B6CA87255
            621E8561BFA61FF318FD5C3FBEA20E7097EF566F38E3F1F76C58AE59FC9C114D
            4D7D3E1FAB051417CC869142839D9A3C2E0339E3B3849ED1B6BD9F83BEE8E0E9
            EB6311FB6C9F20CFB2103A79381B898A10A40D91BFB12841BE855ED16F43567F
            6155F7BFDCDEB1F00F298909A2DFFCE993050D459F9FACC4E18A33E03796213C
            1C951D27E1A45DBC58EA0C6E2F070B578457D5198AAC1EA70FFAE953F1C69B34
            F919FE00BDCE2ED0B9CF1FC08ECF0E617BE97F60A58B8C1F889D5E17F6346FC7
            EDE97753E61935BD5119E08AEF00CDD35C94D2ECA0241D89055D0EBA5DDB0F7C
            71FAA1B8E8C8B7D22C66997EE00F9CD35FD5D3A76B155C6E3732921329DDC683
            2FBF6D5FBD839B126FA10C367CA3539FA24850B70826085D0D0754835756690C
            BABC0953999B3371D3DB1FFCFBC9F7DAF7CFEAEAF1906F0AF4142AA6A828DC40
            EF203E13F4AEC1C70D5B11176EC61CF37C6A35BAA88AB239547B351C68DDE5B0
            9A9E49AB77A3149CFF9C3C687454C42C02662F08BB9B3E82DBD78995593FBA60
            3D79FDEEB24585FCD01C513F2AC846D47E0D812E99B314F1FC44AF8246CFF492
            BDF8153FB6D76F86CDD38015993F80460AB971456BA9D2E0EB7E54B021E88A3B
            204BEA879485E85F396C87AAAE1C1A8F2EA0217E80E177CE5FCEBD2AA47BB31E
            B958CAF4488A7C5F717171B7300C415288FC8DC5DC9245316161BDA726447B7E
            F6C6F88A572129774A85BE43831DBFBFA76C5B9FDF73E75147198EB71FA08B6A
            31BD346F1EAC1EA6030EAB9254B3BC287FC370C548EE8A3BC0DDCF599FBF98EE
            83B7F3A29D5B9FCBAA594161B5764DF5F83DA77B8DD3C2A4F0077B15DD527A5D
            4AFCD81BF14C003AC8F6097A2ABCC3FD8C05AE8A033C70DE1FF326AAB2E6F714
            A34B6449D12585799169E8557322DDF6EC989B9A5A75BF1C793E246CF16A023F
            BFBBB0D0CEEDC70A57CD81CB4D80FE6950836D2EF5BA0DB60BE569814255575F
            A6FF7B565FA951BE7507E89B602D7D8C945C2907AEC64576D1B9899557F1CC28
            83818C334A3F06C5B7BB030A467FC9D0E443DFF86398F790C9B7EA004F94D2E4
            B383A333CFBA41F99AA1DB7697958466A16B66F28313652706F9EBF4FA0A5C5F
            81FFE315F82F567205DE936E16BC0000000049454E44AE426082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          OnClick = cxTransmitirClick
        end
        object cxOffline: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 7
          Width = 147
          Height = 130
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          Caption = 'F3 | NFCe Offline Conting'#234'ncia'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressDarkStyle'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            8700000006624B474400FF00FF00FFA0BDA79300000B0F494441545809ED5879
            7494D515FF7DDFCC2433992C93653293DD84206BD88242120C1029A95414A4B8
            1E5B6BD1DAE568EDB142FF128F6D0DB6A2FED1E339485DA9A5A52816456C5922
            12CBBEC4189690C4EC934C86CC24934C32CBF7F5DE976D326149153C8753E6BC
            BBBEFB96FBDE7DF7BD6F80EBBFEB2B707D05AEE91590AEC6ECB7EEFA2C4BA391
            57429556CA509FBBA3A8E083B18C33F7A5790B00DC6D94034B54C02249D0A5E8
            FAD42509EDDEEF27DACA359037A2B0F775D253355952110EB4B5B9ADB22ED042
            3202929A6D3199AAEDF6EE2449EB6F86045B82292629D886ED8660A09EE53D07
            8FAB69D6444446184854D1E7F5C1D6DEE16AB6778EBB6BD11C07294794F7F6EE
            9F27432A2839B9BA5455A4978C5ABFF91E73ABA120C6E58CD0287F4DD4746FFF
            E9B9E919D5DDE14FA7EA7B5D7F9B5A6106D47DD2FCBE5F0F7624332369959B98
            327C76B8FCDC9A575E2B87362074CECEAEB6352F6F544B8F1D799DEB43A1A6A1
            D9CAF51FEE3B7034677C2662A323E1F678D0EE7421C2A047767A724C54A4F6F8
            DAB56BB5DC76DB9E3275DBDEB2D5CC2B4A60EDDEC61D25063962C753E9758E5D
            D38E051EB5363F347589636A5671C7EF221779CBDF79ECF0F6BE484F517D9F3E
            BDB87CDAF3D46E99BAD7308FA828A253486AAE900865A524E1C89767735CEEEE
            EF982223D0D8DA1E20353253AD5EA615E76A4FEC2C3B3283F941A01DC2CD5326
            CE62991CC1E9DA0684E9B49890998EE2BC5C64265BD3CE4E98E9A3C9B3092D22
            4A367DB2B36473F56B88098BC5F393737C73749F36C3D8778F341B3DFD46C3F8
            E84F8EFAF2D6CF2BE9F4853D4C11F122E4C06354BB9F005A461447430EA45812
            101EA683AAF88BB8AEB6A9359669B2395ED0DAC6D6689679B58DB4C2CC67A7A5
            4096259CAD6B14934F32C7213DC9020DE9AA1B9BD06CEF809D7684FB667BA7F7
            3CFE5EFD67E49A0B708FB9BE638AE64F6BA4C2BE3771899FA2D5EE93FCFE97C9
            FB3590A4A7064DE57E469DC9B4C9EE5035B28C8CA44418C2F4D9AC6B6E73A451
            230F39358EE5A50BE6663DF5C39528CE9F8D3939135905539451D0F2B33508D7
            E9904EE78016058AA2A285264FC700963813F8E475FA9CD85CBD018549DFC5BD
            E63AD71469C3035261EF9BB8CCEFE0E3A58D6412FF894D6FA38E528817454B87
            3519F0A7288AD271BCF26C6CCAFC3CCC9A74A35FAF0F0BF32B0147574F4F7CB4
            31EA0C20CD102D825083AD0D07CA4F216FFA24A175BABBC1E124519A108A0164
            8E8D115C5FA09756FE0DCCB7DE8689A61C54A9393155EA7D3B8002F617E26C50
            E6A290DE1208285B562CBAA54634BC04D2421310E1D3E9EE69AE69B2C592234A
            AA2541CB6D5AECFD892333D5D244F20C675757C5C6F7764E257E440904540A17
            88D5A79D1AAAB3C6C7D1EE44C2E172C176FE3CB6D6BE8549B13904D391483B92
            6A31839DF3FA7CBC39F0FAFC687374E0546D7D2EAD720939B4863B5BB6B0605D
            DEFABC385582AB38DE1B45E7A095F50C5AF25638D0D866F771076E4FEFD96863
            84888D86167B3C1B518C079836D8DA754CF9A027C69B9815C059274E1785DCC9
            E351595D2774117A3D6E48B140ABD1885DFA57CB3F10AD37A1386B29664DCCA6
            6C1525EC82914EABA56491045F20808AAA5A68349A12AEA7C35FD2D2D3807FD6
            6D6E77EA26CE34A9A7CEB19E818E197299A96B6E13FBDCEBE9FB9865069BC3C9
            04C9E6581333F5367B2AD348A381C91034DAEC14EF0A26676560319D0D3EE033
            276489C9979FA9C6BEAF3E85D3EFC0FD531E42E1AC9C0B4E7EA83362D2AC6650
            3410375C5A3DCD4835662494F95EDC744EB9DF3B58C3A1221C68686D4F2365AF
            312E6A23D12709D0EAE820A2D2010E1B4F0C1A6C76A34C2E1BC2C3581C82CEEE
            1EF0018E8D8E066720B6B13B3B71B4B20AC7ABBF440D0EE3C7931E47FE8CA9E0
            55E6860145C131AAA7948D8ECE2E71673CFEC072C8747EC22811B8BABAD96C08
            AA3A4F21277616FC92DEF8A5BAEAB66D7B565144C9F3B409B131C94FAFDF7833
            259F83D4F658467C7C25B5927EF3CAC6A75515EBE8407E413673066DF896251D
            998C2C147A70D0444A8F9C000FCE61101EA6458DEE10F2E316E2D6E979E28C70
            AB6E4F2F367DB41B75CDAD30C7C5203DD9420E845368732DE0EEF6801DEC9700
            9FEA45A3BB167764DC3BA8125485FA5BDE01BCF0AB55874823110C95E79F58F5
            02090C4440AB373996D2A942C240EA252EA4700A1D97963CA43DE53C018D1DB8
            7DF2522425C409BD42ABF2EE8E3D686AB553C8A523CA1821F416BA660617C6E1
            EA844EA7117A46755DD5B01A52102EEB590C02758170204873519666DE4B0F33
            0FA553E3458D822A026A00A5CD3BB13CF341DC98CED1D95FC921F2C88A25FDC2
            4570557D13F4BAE1303D6AFF1C33E2E75CD0FAA2AB196A7D5751FEA70AE4EFD1
            2E8C0CCE50C301F984E3A058B5ECF86CC49BC4E53D50737972AAA61EF4801286
            E7FBEC68EF6DC504D3A8EC4D53C1BA313BC0BDB113CB8AE6452E2BEABF785847
            F97A1DCB0C4226E4577C38D8568A02EBA2A1D021F5984A5D4BAB481EFC28E406
            27DB0F23273E970EF77048B15E8C7B6BC19A31879068148482271CA4166C45C7
            31580CA9483424811280D0317A7F77190E559C66F69210151181087D387AFC6E
            94771CC1C3139E18614FC7E8D9E5B716AC05FDBEB603D47674A1AC45A9643587
            4FBE6591A88F89340ACAA8B6A90559A956BA85291FB0E232B0DFB60BD3E26623
            4A17336C49630C4E9E95FF530871834BC132DAD23AF7B98D9DDE0E64474F10A6
            C14F0B97BB87B2CEB043992956DCB9305FC0D2F973073E844433B47B6CA87255
            621E8561BFA61FF318FD5C3FBEA20E7097EF566F38E3F1F76C58AE59FC9C114D
            4D7D3E1FAB051417CC869142839D9A3C2E0339E3B3849ED1B6BD9F83BEE8E0E9
            EB6311FB6C9F20CFB2103A79381B898A10A40D91BFB12841BE855ED16F43567F
            6155F7BFDCDEB1F00F298909A2DFFCE993050D459F9FACC4E18A33E03796213C
            1C951D27E1A45DBC58EA0C6E2F070B578457D5198AAC1EA70FFAE953F1C69B34
            F919FE00BDCE2ED0B9CF1FC08ECF0E617BE97F60A58B8C1F889D5E17F6346FC7
            EDE97753E61935BD5119E08AEF00CDD35C94D2ECA0241D89055D0EBA5DDB0F7C
            71FAA1B8E8C8B7D22C66997EE00F9CD35FD5D3A76B155C6E3732921329DDC683
            2FBF6D5FBD839B126FA10C367CA3539FA24850B70826085D0D0754835756690C
            BABC0953999B3371D3DB1FFCFBC9F7DAF7CFEAEAF1906F0AF4142AA6A828DC40
            EF203E13F4AEC1C70D5B11176EC61CF37C6A35BAA88AB239547B351C68DDE5B0
            9A9E49AB77A3149CFF9C3C687454C42C02662F08BB9B3E82DBD78995593FBA60
            3D79FDEEB24585FCD01C513F2AC846D47E0D812E99B314F1FC44AF8246CFF492
            BDF8153FB6D76F86CDD38015993F80460AB971456BA9D2E0EB7E54B021E88A3B
            204BEA879485E85F396C87AAAE1C1A8F2EA0217E80E177CE5FCEBD2AA47BB31E
            B958CAF4488A7C5F717171B7300C415288FC8DC5DC9245316161BDA726447B7E
            F6C6F88A572129774A85BE43831DBFBFA76C5B9FDF73E75147198EB71FA08B6A
            31BD346F1EAC1EA6030EAB9254B3BC287FC370C548EE8A3BC0DDCF599FBF98EE
            83B7F3A29D5B9FCBAA594161B5764DF5F83DA77B8DD3C2A4F0077B15DD527A5D
            4AFCD81BF14C003AC8F6097A2ABCC3FD8C05AE8A033C70DE1FF326AAB2E6F714
            A34B6449D12585799169E8557322DDF6EC989B9A5A75BF1C793E246CF16A023F
            BFBBB0D0CEEDC70A57CD81CB4D80FE6950836D2EF5BA0DB60BE569814255575F
            A6FF7B565FA951BE7507E89B602D7D8C945C2907AEC64576D1B9899557F1CC28
            83818C334A3F06C5B7BB030A467FC9D0E443DFF86398F790C9B7EA004F94D2E4
            B383A333CFBA41F99AA1DB7697958466A16B66F28313652706F9EBF4FA0A5C5F
            81FFE315F82F567205DE936E16BC0000000049454E44AE426082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          OnClick = cxOfflineClick
        end
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 640
        Width = 649
        Height = 26
        Align = alBottom
        TabOrder = 2
        Visible = False
      end
    end
  end
  object qryFPG: TFDQuery
    AfterPost = qryFPGAfterPost
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT * FROM FORMA_PAGAMENTO'
      'ORDER BY 1')
    Left = 56
    Top = 392
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFPGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
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
    object qryFPGINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
    end
    object qryFPGFKCONTADESTINO: TIntegerField
      FieldName = 'FKCONTADESTINO'
      Origin = 'FKCONTADESTINO'
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
    object qryFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryFPGFK_PESSOA: TIntegerField
      FieldName = 'FK_PESSOA'
      Origin = 'FK_PESSOA'
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
    object qryFPGUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Origin = 'USA_TEF'
      Size = 1
    end
    object qryFPGFK_BANDEIRA: TIntegerField
      FieldName = 'FK_BANDEIRA'
      Origin = 'FK_BANDEIRA'
    end
    object qryFPGATALHO: TStringField
      FieldName = 'ATALHO'
      Origin = 'ATALHO'
      Size = 1
    end
  end
  object dsFPG: TDataSource
    DataSet = qryFPG
    Left = 40
    Top = 168
  end
  object qryVendasFPG: TFDQuery
    BeforeOpen = qryVendasFPGBeforeOpen
    BeforeInsert = qryVendasFPGBeforeInsert
    AfterPost = qryVendasFPGAfterPost
    AfterDelete = qryVendasFPGAfterDelete
    OnCalcFields = qryVendasFPGCalcFields
    OnNewRecord = qryVendasFPGNewRecord
    AggregatesActive = True
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from vendas_fpg  fpg'
      'where'
      'fpg.vendas_master=:CODIGO'
      'order by fpg.codigo')
    Left = 216
    Top = 488
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVendasFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasFPGVENDAS_MASTER: TIntegerField
      FieldName = 'VENDAS_MASTER'
      Origin = 'VENDAS_MASTER'
      Required = True
    end
    object qryVendasFPGID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object qryVendasFPGVIRTUAL_FORMA: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORMA'
      LookupDataSet = qryFPG
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA'
      Size = 30
      Lookup = True
    end
    object qryVendasFPGVIRTUAL_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TIPO'
      LookupDataSet = qryFPG
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TIPO'
      KeyFields = 'ID_FORMA'
      Size = 5
      Lookup = True
    end
    object qryVendasFPGFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryVendasFPGSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryVendasFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendasFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendasFPGFLAG: TStringField
      FieldKind = fkCalculated
      FieldName = 'FLAG'
      Size = 1
      Calculated = True
    end
    object qryVendasFPGVIRTUAL_ATALHO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ATALHO'
      LookupDataSet = qryFPG
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ATALHO'
      KeyFields = 'ID_FORMA'
      Size = 1
      Lookup = True
    end
    object qryVendasFPGTROCO: TBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object qryVendasFPGINDICE: TStringField
      FieldName = 'INDICE'
      Origin = 'INDICE'
      Size = 10
    end
    object qryVendasFPGFEZ_TEF: TStringField
      FieldName = 'FEZ_TEF'
      Origin = 'FEZ_TEF'
      Size = 1
    end
    object qryVendasFPGNSU: TStringField
      FieldName = 'NSU'
      Origin = 'NSU'
      Size = 50
    end
    object qryVendasFPGREDE: TStringField
      FieldName = 'REDE'
      Origin = 'REDE'
      Size = 50
    end
    object qryVendasFPGREDECNPJ: TStringField
      FieldName = 'REDECNPJ'
      Origin = 'REDECNPJ'
      Size = 50
    end
    object qryVendasFPGCODIGOAUTORIZACAO: TStringField
      FieldName = 'CODIGOAUTORIZACAO'
      Origin = 'CODIGOAUTORIZACAO'
    end
    object qryVendasFPGBIN: TStringField
      FieldName = 'BIN'
      Origin = 'BIN'
    end
    object qryVendasFPGDONOCARTAO: TStringField
      FieldName = 'DONOCARTAO'
      Origin = 'DONOCARTAO'
      Size = 100
    end
    object qryVendasFPGDATAEXPIRACAO: TStringField
      FieldName = 'DATAEXPIRACAO'
      Origin = 'DATAEXPIRACAO'
      Size = 5
    end
    object qryVendasFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryVendasFPGCODIGOPAGAMENTO: TIntegerField
      FieldName = 'CODIGOPAGAMENTO'
      Origin = 'CODIGOPAGAMENTO'
    end
    object qryVendasFPGVALORPAGAMENTO: TBCDField
      FieldName = 'VALORPAGAMENTO'
      Origin = 'VALORPAGAMENTO'
      Precision = 18
    end
    object qryVendasFPGID_FILA: TIntegerField
      FieldName = 'ID_FILA'
      Origin = 'ID_FILA'
    end
    object qryVendasFPGTIPO_TEF: TStringField
      FieldName = 'TIPO_TEF'
      Origin = 'TIPO_TEF'
      Size = 1
    end
    object qryVendasFPGULTIMOSQUATRODIGITOS: TStringField
      FieldName = 'ULTIMOSQUATRODIGITOS'
      Origin = 'ULTIMOSQUATRODIGITOS'
      Size = 4
    end
    object qryVendasFPGTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object qryVendasFPGTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object dsVendasFPG: TDataSource
    DataSet = qryVendasFPG
    OnDataChange = dsVendasFPGDataChange
    Left = 40
    Top = 120
  end
  object qryProduto: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      'PRO.codigo,'
      'pro.descricao,'
      'pro.unidade,'
      'pro.pr_venda,'
      'pro.tipo,'
      'pro.csticms,'
      'pro.cfop cfop,'
      'pro.csosn,'
      'pro.REDUCAO_BASE,'
      'pro.aliq_icm,'
      'pro.cste,'
      'pro.csts,'
      'pro.cest,'
      'pro.aliq_pis,'
      'pro.aliq_cof,'
      'pro.ncm,'
      'ibpt.nacionalfederal,'
      'ibpt.importadosfederal,'
      'ibpt.estadual,'
      'ibpt.municipal,'
      'pro.codbarra'
      'FROM PRODUTO pro'
      'LEFT JOIN ibpt on pro.ncm = ibpt.codigo'
      'where'
      'pro.codigo=:ID')
    Left = 150
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end>
    object qryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdutoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdutoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdutoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdutoCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdutoCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      Required = True
    end
    object qryProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdutoALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryProdutoALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryProdutoNACIONALFEDERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALFEDERAL'
      Origin = 'NACIONALFEDERAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object qryProdutoIMPORTADOSFEDERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTADOSFEDERAL'
      Origin = 'IMPORTADOSFEDERAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object qryProdutoESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADUAL'
      Origin = 'ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object qryProdutoMUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPAL'
      Origin = 'MUNICIPAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object qryProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdutoREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
  end
  object qrySomaNFCe: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select'
      'SUM(vd.valor_item) TOTAL,'
      'SUM(vd.base_icms) BASE_ICMS,'
      'SUM(vd.valor_icms) VALOR_ICMS,'
      'SUM(vd.base_pis_icms) BASE_PIS_ICMS,'
      'SUM(vd.valor_pis_icms) VALOR_PIS_ICMS,'
      'SUM(vd.base_cofins_icms) BASE_COF_ICMS,'
      'SUM(vd.valor_cofins_icms) VALOR_COF_ICMS,'
      'SUM(vd.base_iss) BASE_ISS,'
      'SUM(vd.valor_iss) VALOR_ISS,'
      'SUM(vd.trib_mun) TOTALMUN,'
      'SUM(vd.trib_fed) TOTALFED,'
      'SUM(vd.trib_est) TOTALEST,'
      'SUM(vd.trib_imp) TOTALIMP,'
      'sum(vd.vdesconto) descontos,'
      'sum(vd.outros) outros'
      'FROM nfce_detalhe vd'
      'where'
      'vd.FKVENDA=:CODIGO')
    Left = 42
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qrySomaNFCeTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_PIS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_PIS_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_COF_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_COF_ICMS'
      Origin = 'BASE_COF_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_COF_ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COF_ICMS'
      Origin = 'VALOR_COF_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeBASE_ISS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeVALOR_ISS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALMUN: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALMUN'
      Origin = 'TOTALMUN'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALFED: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALFED'
      Origin = 'TOTALFED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALEST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALEST'
      Origin = 'TOTALEST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeTOTALIMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALIMP'
      Origin = 'TOTALIMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeDESCONTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaNFCeOUTROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryIBPT: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from IBPT'
      'WHERE'
      'CODIGO=:CODIGO')
    Left = 40
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object qryIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 30
    end
    object qryIBPTEX: TStringField
      FieldName = 'EX'
      Origin = 'EX'
      Size = 6
    end
    object qryIBPTTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryIBPTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryIBPTNACIONALFEDERAL: TStringField
      FieldName = 'NACIONALFEDERAL'
      Origin = 'NACIONALFEDERAL'
      Size = 18
    end
    object qryIBPTIMPORTADOSFEDERAL: TStringField
      FieldName = 'IMPORTADOSFEDERAL'
      Origin = 'IMPORTADOSFEDERAL'
      Size = 19
    end
    object qryIBPTESTADUAL: TStringField
      FieldName = 'ESTADUAL'
      Origin = 'ESTADUAL'
      Size = 11
    end
    object qryIBPTMUNICIPAL: TStringField
      FieldName = 'MUNICIPAL'
      Origin = 'MUNICIPAL'
      Size = 12
    end
    object qryIBPTVIGENCIAINICIO: TStringField
      FieldName = 'VIGENCIAINICIO'
      Origin = 'VIGENCIAINICIO'
      Size = 15
    end
    object qryIBPTVIGENCIAFIM: TStringField
      FieldName = 'VIGENCIAFIM'
      Origin = 'VIGENCIAFIM'
      Size = 13
    end
    object qryIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 12
    end
    object qryIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 11
    end
    object qryIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FONTE'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 128
    object Pedido1: TMenuItem
      Caption = 'Imprimir Pedido'
      OnClick = Pedido1Click
    end
    object FinalizarPedido1: TMenuItem
      Caption = 'Finalizar Pedido'
      OnClick = FinalizarPedido1Click
    end
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 413
    Top = 384
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '2022.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42203.460160023100000000
    ReportOptions.LastChange = 45698.582649780100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var Linha,qtd:Integer; Desconto,total:Double; troco,Recebido:str' +
        'ing;'
      ''
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if linha>49 then begin'
      '  Header1.StartNewPage:=True;'
      ''
      ' end;'
      '   if linha<14 then begin'
      '    qtd:=14-linha;'
      '    footer1.height:=footer1.height+(qtd*16);'
      '  end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'Linha:=0;'
      ''
      'end;'
      ''
      'procedure DetailData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Linha:=Linha+1;'
      'end;'
      ''
      ''
      ''
      ''
      'procedure frxDBEmpresaCNPJOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  ie, cnpj: String;'
      'begin'
      '  if Sender is TfrxMemoView then'
      '  begin'
      ''
      '    cnpj := <frxDBEmpresa."CNPJ">;'
      '    ie := <frxDBEmpresa."IE">;'
      ''
      '    if Length(cnpj) = 14 then'
      '    begin'
      '      // Aplica a m'#225'scara ao CNPJ'
      
        '      TfrxMemoView(Sender).Text := '#39'CNPJ: '#39' + Copy(cnpj, 1, 2) +' +
        ' '#39'.'#39' +'
      '                                   Copy(cnpj, 3, 3) + '#39'.'#39' +'
      '                                   Copy(cnpj, 6, 3) + '#39'/'#39' +'
      '                                   Copy(cnpj, 9, 4) + '#39'-'#39' +'
      
        '                                   Copy(cnpj, 13, 2) + '#39' IE: '#39' +' +
        ' ie;'
      '    end'
      '    else'
      '    begin'
      ''
      
        '      TfrxMemoView(Sender).Text := '#39'CNPJ: '#39' + cnpj + '#39' IE: '#39' + i' +
        'e;'
      '    end;'
      '  end;'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportGetValue
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 232
    Top = 24
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'frxDBCliente'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
      end
      item
        DataSet = frxDBPV
        DataSetName = 'frxDBPV'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Endereco'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COlonna MT'
      Font.Style = []
      HGuides.Strings = (
        '274,65'
        '286,94')
      VGuides.Strings = (
        '280,66')
      PaperWidth = 78.500000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Height = 62.869303540000000000
        ParentFont = False
        Top = 124.724490000000000000
        Width = 283.464750000000000000
        DataSet = frxDBPV
        DataSetName = 'frxDBPV'
        RowCount = 0
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 51.023622050000000000
          Top = 0.220470000000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."ID_CLIENTE"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 158.001670000000000000
          Top = 0.061410000000000000
          Width = 108.170130000000000000
          Height = 11.338590000000000000
          DataField = 'DATA_EMISSAO'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 13.118107800000000000
          Width = 47.697650000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = -2.000000000000000000
          Top = 50.126013540000000000
          Width = 53.518120000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object frxDBPVRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 51.023622050000000000
          Top = 13.118107800000000000
          Width = 214.223500000000000000
          Height = 11.640940000000000000
          DataField = 'NOME'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."NOME"]')
          ParentFont = False
        end
        object frxDBPVNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 51.023622050000000000
          Top = 50.126013540000000000
          Width = 210.443970000000000000
          Height = 11.640940000000000000
          DataField = 'VENDEDOR'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VENDEDOR"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Width = 47.697650000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NUMERO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 26.677180000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 51.023622050000000000
          Top = 26.677180000000000000
          Width = 215.433210000000000000
          Height = 11.338590000000000000
          DataField = 'CPF_NOTA'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CPF_NOTA"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 38.015770000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'END:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 51.023622050000000000
          Top = 38.015770000000000000
          Width = 211.653680000000000000
          Height = 11.338590000000000000
          DataField = 'ENDERECO'
          DataSet = frxDBCliente
          DataSetName = 'frxDBCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCliente."ENDERECO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.599060000000000000
        ParentFont = False
        Top = 211.653680000000000000
        Width = 283.464750000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118110240000000000
          Width = 43.918120000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 115.649105260000000000
          Top = 15.118110240000000000
          Width = 21.240940000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 238.220253150000000000
          Top = 15.118110236220500000
          Width = 31.968382110000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 280.660000000000000000
          Top = 7.559060000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = -2.000000000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPROVANTE DE VENDA')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 36.359060000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 15.118120000000000000
          Height = 11.701410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 15.118120000000000000
          Width = 39.419848420000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DES/ACRE')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 159.631540000000000000
          Top = 15.118110240000000000
          Width = 31.860788420000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 15.118110236220500000
          Width = 22.677170240000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Segoe UI'
        Font.Style = []
        Height = 116.472480000000000000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 283.464750000000000000
        OnAfterCalcHeight = 'Footer1OnAfterCalcHeight'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 38.349660000000000000
          Width = 92.976377950000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 12.174830000000000000
          Width = 92.976377950000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 25.631540000000000000
          Width = 92.976377950000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object frxDBPVSUBTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913385830000000000
          Top = 13.118120000000000000
          Width = 66.141732280000000000
          Height = 11.640940000000000000
          AutoWidth = True
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBItens."PRECO">, DetailData1)]')
          ParentFont = False
        end
        object frxDBPVDESCONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913385830000000000
          Top = 25.754360000000000000
          Width = 66.141732280000000000
          Height = 11.640940000000000000
          AutoWidth = True
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBItens."VDESCONTO">, DetailData1)]')
          ParentFont = False
        end
        object frxDBPVTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913385830000000000
          Top = 37.252010000000000000
          Width = 66.141732280000000000
          Height = 11.640940000000000000
          AutoWidth = True
          DataField = 'TOTAL'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 64.015770000000000000
          Width = 272.125984250000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Obrigado pela prefer'#234'ncia!!! Volte Sempre!!!')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Width = 272.125984250000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTALIZADORES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.231540000000000000
          Width = 92.976377950000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Troco>>>')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913388270000000000
          Top = 48.133890000000000000
          Width = 66.141732280000000000
          Height = 11.640940000000000000
          AutoWidth = True
          DataField = 'TROCO'
          DataSet = frxDBPV
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPV."TROCO"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 81.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 10.118120000000000000
          Width = 56.692950000000000000
          Height = 52.913420000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 63.915090000000000000
          Top = 1.000000000000000000
          Width = 204.094473540000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object frxDBEmpresaCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 22.677180000000000000
          Width = 344.912010000000000000
          Height = 11.338590000000000000
          OnBeforePrint = 'frxDBEmpresaCNPJOnBeforePrint'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:[frxDBEmpresa."CNPJ"] ')
          ParentFont = False
          Formats = <
            item
              Kind = fkBoolean
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 65.226936460000000000
          Top = 35.795300000000000000
          Width = 204.094488190000000000
          Height = 30.538590000000000000
          DataSet = frxDBCliente
          DataSetName = 'frxDBCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEmpres' +
              'a."BAIRRO"] - [frxDBEmpresa."CIDADE"]/[frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 65.226936460000000000
          Top = 64.743290000000000000
          Width = 204.094473540000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692913385800000
        Top = 264.567100000000000000
        Width = 283.464750000000000000
        DataSet = frxDBItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -1.255690000000000000
          Width = 257.008040000000000000
          Height = 11.338590000000000000
          DataField = 'DESCRICAO_SL'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO_SL"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 108.606370000000000000
          Top = 10.082900000000000000
          Width = 34.015770000000000000
          Height = 12.290000000000000000
          DataField = 'QTD'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 163.519790000000000000
          Top = 10.082900000000000000
          Width = 34.015770000000000000
          Height = 12.290000000000000000
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."PRECO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 10.082900000000000000
          Width = 34.015770000000000000
          Height = 12.290000000000000000
          DataField = 'TOTAL'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."TOTAL"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 10.082900000000000000
          Width = 22.677180000000000000
          Height = 12.290000000000000000
          DataField = 'UNIDADE'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."UNIDADE"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 4.754310000000000000
          Top = 10.082900000000000000
          Width = 34.015770000000000000
          Height = 12.290000000000000000
          DataField = 'CODIGO'
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."CODIGO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 10.082900000000000000
          Width = 34.015770000000000000
          Height = 12.290000000000000000
          DataSet = frxDBItens
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VDESCONTO"]')
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
    Left = 232
    Top = 88
  end
  object frxDBPV: TfrxDBDataset
    UserName = 'frxDBPV'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_SAIDA=DATA_SAIDA'
      'ID_CLIENTE=ID_CLIENTE'
      'FK_USUARIO=FK_USUARIO'
      'FK_CAIXA=FK_CAIXA'
      'FK_VENDEDOR=FK_VENDEDOR'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'TIPO=TIPO'
      'NECF=NECF'
      'FKORCAMENTO=FKORCAMENTO'
      'FKEMPRESA=FKEMPRESA'
      'OBSERVACOES=OBSERVACOES'
      'CPF_NOTA=CPF_NOTA'
      'SITUACAO=SITUACAO'
      'RAZAO=RAZAO'
      'NOME=NOME'
      'VIRTUAL_SITUACAO=VIRTUAL_SITUACAO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TROCO=TROCO'
      'DINHEIRO=DINHEIRO'
      'TOTAL=TOTAL'
      'PERCENTUAL=PERCENTUAL'
      'LOTE=LOTE'
      'GERA_FINANCEIRO=GERA_FINANCEIRO'
      'PERCENTUAL_ACRESCIMO=PERCENTUAL_ACRESCIMO'
      'ACRESCIMO=ACRESCIMO'
      'FK_TABELA=FK_TABELA'
      'PEDIDO=PEDIDO'
      'CONTA=CONTA'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'VENDEDOR=VENDEDOR'
      'TTOTAL=TTOTAL')
    DataSet = Dados.qryPV
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 24
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FKVENDA=FKVENDA'
      'ID_PRODUTO=ID_PRODUTO'
      'ITEM=ITEM'
      'COD_BARRA=COD_BARRA'
      'QTD=QTD'
      'E_MEDIO=E_MEDIO'
      'PRECO=PRECO'
      'VALOR_ITEM=VALOR_ITEM'
      'VDESCONTO=VDESCONTO'
      'TOTAL=TOTAL'
      'SITUACAO=SITUACAO'
      'UNIDADE=UNIDADE'
      'QTD_DEVOLVIDA=QTD_DEVOLVIDA'
      'ACRESCIMO=ACRESCIMO'
      'OS=OS'
      'FK_GRADE=FK_GRADE'
      'ID_PRODUTO_SIMILAR=ID_PRODUTO_SIMILAR'
      'ID_SERIAL=ID_SERIAL'
      'FK_MESA=FK_MESA'
      'QTD_RESTANTE=QTD_RESTANTE'
      'OBSERVACAO=OBSERVACAO'
      'PRODUTO=PRODUTO'
      'DESCRICAO_SL=DESCRICAO_SL'
      'UNIDADE_1=UNIDADE_1')
    DataSet = Dados.qryPV_Itens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 16
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
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
      'ALIQ_IPI=ALIQ_IPI')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 448
    Top = 16
  end
  object qrySomaFPG: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select coalesce(SUM(DINHEIRO),0) DINHEIRO, coalesce(SUM(OUTROS) ' +
        ',0) OUTROS, SUM(coalesce(DINHEIRO,0)+coalesce(OUTROS,0)) TOTAL F' +
        'ROM('
      
        'Select SUM(coalesce(VALOR,0)) DINHEIRO, 0 as OUTROS from vendas_' +
        'fpg  fpg'
      'where'
      'fpg.vendas_master=:CODIGO and tipo='#39'D'#39
      'UNION ALL'
      
        'Select 0 AS DINHEIRO, SUM(coalesce(VALOR,0)) OUTROS from vendas_' +
        'fpg  fpg'
      'where'
      'fpg.vendas_master=:CODIGO and tipo<>'#39'D'#39
      ')')
    Left = 120
    Top = 488
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySomaFPGDINHEIRO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySomaFPGOUTROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySomaFPGTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaOS: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select CODIGO, DATA_TERMINO, TOTAL_GERAL, TOTAL_PRODUTOS from OS' +
        '_MASTER'
      'where'
      'codigo=:codigo')
    Left = 128
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryBuscaOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryBuscaOSDATA_TERMINO: TDateField
      FieldName = 'DATA_TERMINO'
      Origin = 'DATA_TERMINO'
    end
    object qryBuscaOSTOTAL_GERAL: TFMTBCDField
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object qryBuscaOSTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
  end
  object frxDBCliente: TfrxDBDataset
    UserName = 'frxDBCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CNPJ=CNPJ'
      'IE=IE'
      'RAZAO=RAZAO'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'UF=UF'
      'MUNICIPIO=MUNICIPIO'
      'COMPLEMENTO=COMPLEMENTO'
      'FONE1=FONE1'
      'CELULAR1=CELULAR1'
      'REFERENCIA=REFERENCIA')
    DataSet = qryCliente
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 8
  end
  object qryVenda: TFDQuery
    BeforePost = qryVendaBeforePost
    AfterPost = qryVendaAfterPost
    AfterDelete = qryVendaAfterDelete
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      
        'select vm.*, Pe.razao as VIRTUAL_CLIENTE, pe.cnpj as VIRTUAL_CNP' +
        'J, ve.nome as VIRTUAL_VENDEDOR, en.nome as ENTREGADOR from VENDA' +
        'S_MASTER vm'
      'left join pessoa pe on pe.codigo=vm.id_cliente'
      'left join vendedores ve on ve.codigo=vm.fk_vendedor'
      'left join entregador en on en.codigo=vm.fk_entregador'
      'where'
      'vm.codigo=:cod')
    Left = 421
    Top = 487
    ParamData = <
      item
        Name = 'COD'
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
      DisplayFormat = '0'
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
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
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
    object qryVendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryVendaFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendaNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
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
    object qryVendaFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00%'
      Precision = 18
      Size = 2
    end
    object qryVendaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryVendaTOTAL_TROCA: TFMTBCDField
      FieldName = 'TOTAL_TROCA'
      Origin = 'TOTAL_TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryVendaFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryVendaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object qryVendaFK_ENTREGADOR: TIntegerField
      FieldName = 'FK_ENTREGADOR'
      Origin = 'FK_ENTREGADOR'
      DisplayFormat = ',0.00'
    end
    object qryVendaVIRTUAL_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_CLIENTE'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryVendaVIRTUAL_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryVendaENTREGADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGADOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryVendaFLAG_NFCE: TStringField
      FieldName = 'FLAG_NFCE'
      Origin = 'FLAG_NFCE'
      Size = 1
    end
    object qryVendaVIRTUAL_TX_ACRESC: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TX_ACRESC'
      LookupDataSet = qryTabelas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ACRESCIMO'
      KeyFields = 'FK_TABELA'
      Precision = 19
      Lookup = True
    end
    object qryVendaVIRTUAL_TABELA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TABELA'
      LookupDataSet = qryTabelas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_TABELA'
      Size = 30
      Lookup = True
    end
    object qryVendaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaVIRTUAL_VENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryVendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryItem: TFDQuery
    AfterPost = qryItemAfterPost
    AfterDelete = qryItemAfterDelete
    AggregatesActive = True
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode, evCache]
    FetchOptions.Mode = fmAll
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select VD.* , pro.DESCRICAO AS DESCRICAO_SL, pro.EFISCAL FROM VE' +
        'NDAS_DETALHE VD'
      'left join produto pro on pro.codigo=vd.id_produto'
      'where'
      'VD.FKVENDA=:CODIGO'
      'ORDER BY VD.ITEM;')
    Left = 331
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryItemITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItemCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 2
    end
    object qryItemACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItemQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      MaxValue = '99999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
    object qryItemE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryItemQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryItemFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
      DisplayFormat = ',0.00'
    end
    object qryItemDESCRICAO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryItemEFISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qryItemID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryItemTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL)'
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    Left = 224
    Top = 328
  end
  object qryCMovimento: TFDQuery
    BeforePost = qryCMovimentoBeforePost
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from contas_movimento'
      'where'
      'fkvenda=:id')
    Left = 40
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCMovimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCMovimentoID_CONTA_CAIXA: TIntegerField
      FieldName = 'ID_CONTA_CAIXA'
      Origin = 'ID_CONTA_CAIXA'
    end
    object qryCMovimentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryCMovimentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCMovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCMovimentoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryCMovimentoFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryCMovimentoLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryCMovimentoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCMovimentoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCMovimentoTROCA: TFMTBCDField
      FieldName = 'TROCA'
      Origin = 'TROCA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCMovimentoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryReferencia: TFDQuery
    Connection = Dados.Conexao
    Transaction = Dados.Transacao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select codigo,  referencia  from pessoa'
      'where'
      'cli='#39'S'#39' AND REFERENCIA>0'
      'order by referencia'
      '')
    Left = 224
    Top = 376
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object IntegerField2: TIntegerField
      FieldName = 'REFERENCIA'
      DisplayFormat = '0'
    end
  end
  object dsReferencia: TDataSource
    DataSet = qryReferencia
    Left = 328
    Top = 376
  end
  object qryTabelas: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from tabela_preco'
      'order by descricao'
      '')
    Left = 136
    Top = 320
    object qryTabelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabelasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryTabelasACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryTabelasFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTabelasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object dsTabelas: TDataSource
    DataSet = qryTabelas
    Left = 224
    Top = 264
  end
  object qryTotalFPG: TFDQuery
    BeforeOpen = qryVendasFPGBeforeOpen
    BeforeInsert = qryVendasFPGBeforeInsert
    AfterPost = qryVendasFPGAfterPost
    OnNewRecord = qryVendasFPGNewRecord
    AggregatesActive = True
    MasterSource = FrmPDV.dsVenda
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select fpg.tipo, sum(vfpg.valor) as valor from vendas_fpg  vfpg'
      'left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma'
      'where'
      'vfpg.vendas_master=:CODIGO and vfpg.valor>0'
      'group by 1')
    Left = 320
    Top = 488
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTotalFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryTotalFPGVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object OpenPicture: TOpenPictureDialog
    Left = 136
    Top = 384
  end
  object qryTicket: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select  vm.data_emissao, vd.codigo as venda, pro.codigo, pro.des' +
        'cricao, vd.qtd from vendas_detalhe vd'
      'left join vendas_master vm on vm.codigo=vd.fkvenda'
      'left join produto pro on pro.codigo=vd.id_produto'
      'where'
      'vm.codigo=:codigo and pro.imprime_ticket='#39'S'#39
      'order by vd.item;')
    Left = 224
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTicketDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryTicketVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'VENDA'
    end
    object qryTicketCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTicketDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryTicketQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
  end
  object qryCliente: TFDQuery
    Connection = Dados.Conexao
    Transaction = Dados.Transacao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      
        'select codigo, cnpj, ie, razao, fantasia, endereco, numero, bair' +
        'ro, cep, uf, municipio, complemento, fone1, celular1, email1, re' +
        'ferencia  from pessoa'
      'WHERE'
      
        '(CLI='#39'S'#39' or PARC='#39'S'#39') AND not(CCF='#39'S'#39') and ((RAZAO LIKE :RAZAO) ' +
        'or (CNPJ LIKE :CNPJ))'
      'ORDER BY RAZAO'
      '')
    Left = 120
    Top = 184
    ParamData = <
      item
        Name = 'RAZAO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryClienteRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 100
    end
    object qryClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
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
    object qryClienteMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryClienteFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClienteCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClienteREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
    end
    object qryClienteEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 424
    Top = 72
  end
  object qryCartao: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select vfpg.codigo, vfpg.tipo, vfpg.valor, vfpg.Indice from vend' +
        'as_fpg vfpg'
      'left join forma_pagamento fpg on fpg.codigo=vfpg.id_forma'
      'where'
      
        '(vfpg.tipo in ('#39'C'#39','#39'E'#39')) and (vfpg.vendas_master=:id) and (vfpg.' +
        'valor>0) and (vfpg.fez_tef='#39'N'#39')and (fpg.usa_tef='#39'S'#39')')
    Left = 112
    Top = 96
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCartaoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCartaoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryCartaoTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
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
    Left = 328
    Top = 72
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 416
    Top = 312
  end
  object ActionList1: TActionList
    Left = 480
    Top = 248
    object actBusca: TAction
      Caption = 'actBusca'
      ShortCut = 113
      OnExecute = actBuscaExecute
    end
    object actSelecionaGrid: TAction
      Caption = 'actSelecionaGrid'
      ShortCut = 119
      OnExecute = actSelecionaGridExecute
    end
    object actTabela: TAction
      Caption = 'actTabela'
      ShortCut = 114
      OnExecute = actTabelaExecute
    end
    object actDesconto: TAction
      Caption = 'actDesconto'
      ShortCut = 115
      OnExecute = actDescontoExecute
    end
    object actAcrescimo: TAction
      Caption = 'actAcrescimo'
      ShortCut = 116
      OnExecute = actAcrescimoExecute
    end
    object actCPF: TAction
      Caption = 'actCPF'
      ShortCut = 117
      OnExecute = actCPFExecute
    end
    object actConcluir: TAction
      Caption = 'actConcluir'
      ShortCut = 121
      OnExecute = actConcluirExecute
    end
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppCustomPos
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 5
    ControlePorta = True
    VerificarImpressora = True
    Left = 413
    Top = 228
  end
  object ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4
    MostraStatus = False
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 5.000000000000000000
    MargemSuperior = 5.000000000000000000
    MargemEsquerda = 5.000000000000000000
    MargemDireita = 5.000000000000000000
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeTributos = trbNenhum
    FormularioContinuo = True
    Left = 575
    Top = 153
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 5.000000000000000000
    MargemSuperior = 5.000000000000000000
    MargemEsquerda = 4.000000000000000000
    MargemDireita = 4.000000000000000000
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiNFCe
    QuebraLinhaEmDetalhamentos = False
    ImprimeNomeFantasia = True
    ImprimeQRCodeLateral = True
    ImprimeLogoLateral = True
    ImprimeEmDuasLinhas = True
    FormularioContinuo = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 568
    Top = 488
  end
  object ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR
    Sistema = 'Sistema ERP Fiscal'
    Site = 'lojadodesenvolvedor.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeQRCodeLateral = True
    FormularioContinuo = True
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 580
    Top = 96
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeTotalLiquido = True
    ImprimeQRCodeLateral = True
    FormularioContinuo = True
    PosPrinter = ACBrPosPrinter1
    Left = 573
    Top = 214
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    MostraStatus = False
    Sistema = 'Sistema ERP Fiscal'
    MargemInferior = 5.000000000000000000
    MargemSuperior = 5.000000000000000000
    MargemEsquerda = 5.000000000000000000
    MargemDireita = 5.000000000000000000
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
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    TipoDANFE = tiNFCe
    ImprimeTributos = trbNenhum
    ExibeCampoFatura = False
    LogoemCima = True
    Left = 573
    Top = 284
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'RN'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 445
    Top = 156
  end
end
