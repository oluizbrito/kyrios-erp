object frmCadRota: TfrmCadRota
  Left = 0
  Top = 0
  Caption = 'frmCadRota'
  ClientHeight = 637
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 565
    Width = 938
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 557
    ExplicitWidth = 936
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 938
    Height = 551
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 936
    ExplicitHeight = 543
    object Label1: TLabel
      Left = 51
      Top = 17
      Width = 41
      Height = 17
      Alignment = taRightJustify
      Caption = 'Ve'#237'culo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 46
      Width = 44
      Height = 17
      Alignment = taRightJustify
      Caption = 'Origem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 111
      Width = 63
      Height = 17
      Alignment = taRightJustify
      Caption = 'Data Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 218
      Width = 76
      Height = 17
      Alignment = taRightJustify
      Caption = 'Observa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 571
      Top = 16
      Width = 35
      Height = 17
      Alignment = taRightJustify
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 36
      Top = 163
      Width = 56
      Height = 17
      Alignment = taRightJustify
      Caption = 'KM Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 190
      Width = 50
      Height = 17
      Alignment = taRightJustify
      Caption = 'KM Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 136
      Width = 83
      Height = 17
      Alignment = taRightJustify
      Caption = 'Data Chegada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 18
      Top = 75
      Width = 74
      Height = 17
      Alignment = taRightJustify
      Caption = 'Destino Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 263
      Top = 111
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Caption = 'Hora Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 243
      Top = 137
      Width = 85
      Height = 17
      Alignment = taRightJustify
      Caption = 'Hora Chegada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dataSaida: TDBEdit
      Left = 107
      Top = 109
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA_SAIDA'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object dataChegada: TDBEdit
      Left = 107
      Top = 135
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA_CHEGADA'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object kmFinal: TDBEdit
      Left = 107
      Top = 188
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'KM_FINAL'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object veiculo: TDBLookupComboboxEh
      Left = 107
      Top = 15
      Width = 94
      Height = 23
      AutoSelect = False
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VEICULO_PLACA'
      DataSource = dsRota
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'PLACA'
      ListField = 'PLACA'
      ListSource = dsVeiculosCavalo
      ParentFont = False
      Style = csDropDownEh
      TabOrder = 0
      Visible = True
      OnChange = veiculoChange
    end
    object EditDescricaoVeiculo: TEdit
      Left = 207
      Top = 15
      Width = 314
      Height = 23
      Enabled = False
      TabOrder = 10
    end
    object horaSaida: TDBEdit
      Left = 343
      Top = 106
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'HORA_SAIDA'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object horaChegada: TDBEdit
      Left = 343
      Top = 135
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'HORA_CHEGADA'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object kmInicial: TDBEdit
      Left = 107
      Top = 161
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'KM_INICIAL'
      DataSource = dsRota
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object observacao: TDBMemoEh
      Left = 107
      Top = 217
      Width = 650
      Height = 62
      AutoSize = False
      DataField = 'OBSERVACAO'
      DataSource = dsRota
      DynProps = <>
      EditButtons = <>
      TabOrder = 9
      Visible = True
      WantReturns = True
    end
    object status: TDBComboBox
      Left = 612
      Top = 15
      Width = 145
      Height = 23
      DataField = 'STATUS'
      DataSource = dsRota
      Items.Strings = (
        'PLANEJAMENTO'
        'PLANEJADO'
        'EM ANDAMENTO'
        'CONCLUIDA')
      TabOrder = 11
    end
    object origem: TDBLookupComboboxEh
      Left = 107
      Top = 44
      Width = 650
      Height = 23
      AutoSelect = False
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'ORIGEM'
      DataSource = dsRota
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ENDERECO_COMPLETO'
      ListField = 'ENDERECO_COMPLETO'
      ListSource = dsOrigem
      ParentFont = False
      Style = csDropDownEh
      TabOrder = 1
      Visible = True
    end
    object destino: TDBLookupComboboxEh
      Left = 107
      Top = 73
      Width = 650
      Height = 23
      AutoSelect = False
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'DESTINO_FINAL'
      DataSource = dsRota
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ENDERECO_COMPLETO'
      ListField = 'ENDERECO_COMPLETO'
      ListSource = dsDestinoFinal
      ParentFont = False
      Style = csDropDownEh
      TabOrder = 2
      Visible = True
    end
    object PageControlDados: TPageControl
      Left = 1
      Top = 296
      Width = 936
      Height = 254
      ActivePage = TabSheetFin
      Align = alBottom
      TabOrder = 12
      ExplicitTop = 288
      ExplicitWidth = 934
      object TabSheetFin: TTabSheet
        Caption = 'Financeiro'
        object PageControlFin: TPageControl
          Left = 0
          Top = 0
          Width = 928
          Height = 224
          ActivePage = TabSheetFinDados
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 926
          object TabSheetFinLista: TTabSheet
            Caption = 'FinLista'
            TabVisible = False
            object panelItens: TPanel
              Left = 0
              Top = 0
              Width = 920
              Height = 43
              Align = alTop
              TabOrder = 0
              object SpeedButtonAddItem: TSpeedButton
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 117
                Height = 31
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Adicionar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  000000000000000000000000000000000000000000000000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = SpeedButtonAddItemClick
                ExplicitTop = 4
              end
              object SpeedButtonRemoverItem: TSpeedButton
                AlignWithMargins = True
                Left = 133
                Top = 6
                Width = 117
                Height = 31
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Remover'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4261D3F94463D8FF4463D8FF4463D8FF4463
                  D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF3751B0D0090D1D22344CA5C34463D8FF4463D8FF3147
                  9BB70B1023293C57BFE14463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4260D0F6080C191E0000000003050B0D344CA5C331479BB70203
                  0607000000000D132A314463D7FE4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF31489DB90304080A0000000003050B0D020306070000
                  000004060D0F354DA9C74463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF31489DB90304080A00000000000000000406
                  0D0F354DA9C74463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF31479BB70203060700000000000000000305
                  0A0C344CA5C34463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF31479BB7020306070000000004050C0E0304080A0000
                  000003050A0C344CA5C34463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4261D3F9090D1C210000000004060D0F354DA9C731489DB90304
                  080A000000000C11262D4362D6FD4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF3A54B7D80B102329354DA9C74463D8FF4463D8FF3148
                  9DB90B11242B3C57BEE04463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463
                  D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ExplicitLeft = 271
                ExplicitTop = 4
              end
            end
            object DBGridEh2: TDBGridEh
              Left = 0
              Top = 43
              Width = 920
              Height = 171
              Align = alClient
              DataSource = dsRotasDespesas
              DynProps = <>
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              OnDblClick = DBGridEh2DblClick
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DESCRICAO'
                  Footers = <>
                  Width = 500
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VALOR'
                  Footers = <>
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DATA_VENCIMENTO'
                  Footers = <>
                  Title.Caption = 'VENCIMENTO'
                  Width = 150
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object TabSheetFinDados: TTabSheet
            Caption = 'FinDados'
            ImageIndex = 1
            TabVisible = False
            object Label8: TLabel
              Left = 9
              Top = 11
              Width = 80
              Height = 17
              Alignment = taRightJustify
              Caption = 'Tipo Despesa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 154
              Top = 11
              Width = 57
              Height = 17
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 129
              Top = 59
              Width = 30
              Height = 17
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 9
              Top = 59
              Width = 67
              Height = 17
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 575
              Top = 11
              Width = 76
              Height = 17
              Alignment = taRightJustify
              Caption = 'Observa'#231#245'es'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object panelFotterAddItens: TPanel
              Left = 0
              Top = 171
              Width = 920
              Height = 43
              Align = alBottom
              TabOrder = 0
              ExplicitWidth = 918
              object SpeedButtonSalvarItem: TSpeedButton
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 117
                Height = 31
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Salvar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000562D
                  4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
                  89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
                  FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
                  FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
                  FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
                  FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
                  000000000000000000000000000000000000000000000000000000000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FF00000000B8824DFFB882
                  4DFF0000000000000000B8824DFFB8824DFF251A0F330000000000000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000B8824DFFB882
                  4DFF0000000000000000251A0F33B8824DFFB8824DFF251A0F3300000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FF00000000B8824DFFB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000AB59
                  89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000003827174DB882
                  4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000AB59
                  89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
                  00000000000000000000251A0F33B8824DFFB8824DFF251A0F33000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000B8824DFFB8824DFF251A0F3300000000}
                OnClick = SpeedButtonSalvarItemClick
                ExplicitLeft = 10
                ExplicitTop = 4
              end
              object SpeedButtonCancelarItem: TSpeedButton
                AlignWithMargins = True
                Left = 133
                Top = 6
                Width = 117
                Height = 31
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Cancelar'
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4261D3F94463D8FF4463D8FF4463D8FF4463
                  D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF3751B0D0090D1D22344CA5C34463D8FF4463D8FF3147
                  9BB70B1023293C57BFE14463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4260D0F6080C191E0000000003050B0D344CA5C331479BB70203
                  0607000000000D132A314463D7FE4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF31489DB90304080A0000000003050B0D020306070000
                  000004060D0F354DA9C74463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF31489DB90304080A00000000000000000406
                  0D0F354DA9C74463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF31479BB70203060700000000000000000305
                  0A0C344CA5C34463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF31479BB7020306070000000004050C0E0304080A0000
                  000003050A0C344CA5C34463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4261D3F9090D1C210000000004060D0F354DA9C731489DB90304
                  080A000000000C11262D4362D6FD4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF3A54B7D80B102329354DA9C74463D8FF4463D8FF3148
                  9DB90B11242B3C57BEE04463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463
                  D8FF4361D5FB4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
                  D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = SpeedButtonCancelarItemClick
                ExplicitTop = 10
              end
            end
            object TipoDesp: TDBLookupComboboxEh
              Left = 9
              Top = 30
              Width = 139
              Height = 23
              AutoSelect = False
              Ctl3D = False
              ParentCtl3D = False
              DynProps = <>
              DataField = 'TIPO_DESPESA_CODIGO'
              DataSource = dsRotasDespesas
              DropDownBox.AutoDrop = True
              EditButtons = <>
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              KeyField = 'CODIGO'
              ListField = 'DESCRICAO'
              ListSource = dsTipoDesp
              ParentFont = False
              Style = csDropDownEh
              TabOrder = 1
              Visible = True
              OnChange = veiculoChange
            end
            object ValorDesp: TDBEdit
              Left = 129
              Top = 79
              Width = 82
              Height = 23
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'VALOR'
              DataSource = dsRotasDespesas
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object VencDesp: TDBEdit
              Left = 9
              Top = 79
              Width = 114
              Height = 23
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'DATA_VENCIMENTO'
              DataSource = dsRotasDespesas
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBMemoEh1: TDBMemoEh
              Left = 575
              Top = 31
              Width = 322
              Height = 101
              AutoSize = False
              DataField = 'OBSERVACAO'
              DataSource = dsRotasDespesas
              DynProps = <>
              EditButtons = <>
              TabOrder = 4
              Visible = True
              WantReturns = True
            end
            object DescDesp: TDBEdit
              Left = 154
              Top = 31
              Width = 391
              Height = 23
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'DESCRICAO'
              DataSource = dsRotasDespesas
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
            end
            object GroupBox1: TGroupBox
              Left = 217
              Top = 60
              Width = 127
              Height = 69
              Caption = 'Comprovante'
              TabOrder = 6
              object SpeedButton1: TSpeedButton
                Left = 15
                Top = 24
                Width = 47
                Height = 42
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000555555BE7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF5B5B5BCC0000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF0000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF0000000000000000239C03FF239C03FF239C03FF239C03FF239C03FF239C
                  03FF239C03FF239C03FF239C03FF239C03FF239C03FF239C03FF727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF0000000000000000239C03FF239C03FF239C03FF239C03FF239C03FF239C
                  03FF239C03FF239C03FF239C03FF239C03FF239C03FF239C03FF727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF0000000000000000239C03FF239C03FF239C03FF239C03FF239C03FF239C
                  03FF239C03FF239C03FF239C03FF239C03FF239C03FF239C03FF727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF0000000000000000239C03FF239C03FF239C03FF239C03FF239C03FF239C
                  03FF239C03FF239C03FF239C03FF239C03FF239C03FF239C03FF727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF000000000000000000000000000000000000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF0000000000000000D77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF000000000000000000000000000000000000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000239C03FF239C
                  03FF239C03FF239C03FF00000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF0000000000000000555555BF555555BF555555BF555555BF555555BF5555
                  55BF555555BF555555BF555555BF555555BF555555BF555555BF555555BF5555
                  55BF0000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000727272FF727272FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF0000000000000000000000000000
                  00000000000000000000000000000000000000000000000000004E4E4EAE7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
                  72FF727272FF727272FF727272FF545454BC0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = SpeedButton1Click
              end
              object SpeedButton2: TSpeedButton
                Left = 69
                Top = 24
                Width = 47
                Height = 42
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F323232703030306B3939397F3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F3939397F101010230D0D0D1C3838387E3939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F3939397F2424244F0000000000000000202020473939
                  397F3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F33333372040404080000000000000000020202053131
                  316D3939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F111111250000000047280655512D0660000000000E0E
                  0E1E3939397E3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F2424244F00000000120A0115C56D10EACA7010EF170D021B0000
                  0000202020473939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F33333372040404080000000090500CAAD77711FFD77711FF98540CB40000
                  0000020202053131316D3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F111111250000000047280655D77711FFD77711FFD77711FFD77711FF512D
                  0660000000000E0E0E1E3939397E3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F2424
                  244F00000000120A0115C56D10EAD77711FFD77711FFD77711FFD77711FFCA70
                  10EF170D021B00000000202020473939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F343434730404
                  040A0000000090500CAAD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FF98540CB400000000020202053131316D3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F121212280000
                  000000000000000000000000000000000000D77711FFD77711FF000000000000
                  00000000000000000000000000000F0F0F203939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F25252552000000000000
                  000000000000000000000000000000000000D77711FFD77711FF000000000000
                  0000000000000000000000000000000000002121214A3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F0000000000000000D77711FFD77711FF000000000000
                  00003939397F3939397F3939397F3939397F3939397F3939397F3939397F3939
                  397F3939397F3939397F00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000D77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
                  11FFD77711FFD77711FF00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = SpeedButton2Click
              end
            end
          end
        end
      end
    end
  end
  object dsRota: TDataSource
    DataSet = Dados.qryRota
    OnStateChange = dsRotaStateChange
    Left = 487
    Top = 471
  end
  object dsVeiculosCavalo: TDataSource
    DataSet = Dados.qryVeiculos_cavalo
    Left = 564
    Top = 471
  end
  object qryOrigem: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT '
      '    CAST('
      
        '    '#9'CAST(CAST(NOME AS VARCHAR(255) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(255) CHARACTER SET ISO8859_1) || '#39' - '#39' ||'
      
        '        CAST(CAST(ENDERECO AS VARCHAR(255) CHARACTER SET ISO8859' +
        '_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(BAIRRO AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(CIDADE AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39'/'#39' ||'
      
        '        CAST(CAST(UF AS VARCHAR(10) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(10) CHARACTER SET ISO8859_1) || '#39'-'#39' ||'
      
        '        CAST(CAST(CEP AS VARCHAR(20) CHARACTER SET ISO8859_1) AS' +
        ' VARCHAR(20) CHARACTER SET ISO8859_1)'
      
        '    AS VARCHAR(512) CHARACTER SET ISO8859_1) AS ENDERECO_COMPLET' +
        'O'
      'FROM TRANSPORTADORA'
      'UNION'
      'SELECT '
      '    CAST('
      
        '    '#9'CAST(CAST(FANTASIA AS VARCHAR(255) CHARACTER SET ISO8859_1)' +
        ' AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39' - '#39' ||'
      
        '        CAST(CAST(ENDERECO AS VARCHAR(255) CHARACTER SET ISO8859' +
        '_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(BAIRRO AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(MUNICIPIO AS VARCHAR(255) CHARACTER SET ISO885' +
        '9_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39'/'#39' ||'
      
        '        CAST(CAST(UF AS VARCHAR(10) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(10) CHARACTER SET ISO8859_1) || '#39'-'#39' ||'
      
        '        CAST(CAST(CEP AS VARCHAR(20) CHARACTER SET ISO8859_1) AS' +
        ' VARCHAR(20) CHARACTER SET ISO8859_1)'
      
        '    AS VARCHAR(512) CHARACTER SET ISO8859_1) AS ENDERECO_COMPLET' +
        'O'
      'FROM PESSOA;')
    Left = 735
    Top = 559
    object qryOrigemENDERECO_COMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO_COMPLETO'
      Origin = 'ENDERECO_COMPLETO'
      ProviderFlags = []
      ReadOnly = True
      Size = 512
    end
  end
  object dsOrigem: TDataSource
    DataSet = qryOrigem
    Left = 810
    Top = 559
  end
  object qryDestinoFinal: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT '
      '    CAST('
      
        '    '#9'CAST(CAST(NOME AS VARCHAR(255) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(255) CHARACTER SET ISO8859_1) || '#39' - '#39' ||'
      
        '        CAST(CAST(ENDERECO AS VARCHAR(255) CHARACTER SET ISO8859' +
        '_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(BAIRRO AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(CIDADE AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39'/'#39' ||'
      
        '        CAST(CAST(UF AS VARCHAR(10) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(10) CHARACTER SET ISO8859_1) || '#39'-'#39' ||'
      
        '        CAST(CAST(CEP AS VARCHAR(20) CHARACTER SET ISO8859_1) AS' +
        ' VARCHAR(20) CHARACTER SET ISO8859_1)'
      
        '    AS VARCHAR(512) CHARACTER SET ISO8859_1) AS ENDERECO_COMPLET' +
        'O'
      'FROM TRANSPORTADORA'
      'UNION'
      'SELECT '
      '    CAST('
      
        '    '#9'CAST(CAST(FANTASIA AS VARCHAR(255) CHARACTER SET ISO8859_1)' +
        ' AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39' - '#39' ||'
      
        '        CAST(CAST(ENDERECO AS VARCHAR(255) CHARACTER SET ISO8859' +
        '_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(BAIRRO AS VARCHAR(255) CHARACTER SET ISO8859_1' +
        ') AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39', '#39' ||'
      
        '        CAST(CAST(MUNICIPIO AS VARCHAR(255) CHARACTER SET ISO885' +
        '9_1) AS VARCHAR(255) CHARACTER SET ISO8859_1) || '#39'/'#39' ||'
      
        '        CAST(CAST(UF AS VARCHAR(10) CHARACTER SET ISO8859_1) AS ' +
        'VARCHAR(10) CHARACTER SET ISO8859_1) || '#39'-'#39' ||'
      
        '        CAST(CAST(CEP AS VARCHAR(20) CHARACTER SET ISO8859_1) AS' +
        ' VARCHAR(20) CHARACTER SET ISO8859_1)'
      
        '    AS VARCHAR(512) CHARACTER SET ISO8859_1) AS ENDERECO_COMPLET' +
        'O'
      'FROM PESSOA;')
    Left = 415
    Top = 567
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO_COMPLETO'
      Origin = 'ENDERECO_COMPLETO'
      ProviderFlags = []
      ReadOnly = True
      Size = 512
    end
  end
  object dsDestinoFinal: TDataSource
    DataSet = qryDestinoFinal
    Left = 514
    Top = 567
  end
  object dsRotaFin: TDataSource
    Left = 664
    Top = 443
  end
  object dsRotasDespesas: TDataSource
    DataSet = Dados.qryRotaDespesas
    Left = 784
    Top = 459
  end
  object OpenDialog: TOpenDialog
    Left = 631
    Top = 565
  end
  object dsTipoDesp: TDataSource
    DataSet = Dados.qryRotaTipoDespesa
    Left = 210
    Top = 463
  end
  object SaveDialog: TSaveDialog
    Left = 632
    Top = 538
  end
end
