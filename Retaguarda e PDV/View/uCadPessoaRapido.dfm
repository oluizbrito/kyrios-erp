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
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
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
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 631
    ExplicitHeight = 287
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
      Height = 19
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
    ExplicitLeft = -189
    ExplicitTop = 318
    ExplicitWidth = 820
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
      ExplicitTop = 0
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
