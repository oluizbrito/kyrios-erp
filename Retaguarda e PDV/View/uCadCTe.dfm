object frmCadCTe: TfrmCadCTe
  Left = 0
  Top = 0
  Caption = 'Emissao de CTe'
  ClientHeight = 704
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 220
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 4
      Width = 37
      Height = 15
      Caption = 'N'#186' CTe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 84
      Width = 63
      Height = 15
      Caption = 'Destinat'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 47
      Width = 74
      Height = 15
      Caption = 'Transportador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 436
      Top = 9
      Width = 158
      Height = 15
      Caption = 'Natureza de Opera'#231#227'o / CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 547
      Top = 84
      Width = 89
      Height = 15
      Caption = 'Tomador Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 546
      Top = 48
      Width = 86
      Height = 15
      Caption = 'Data de Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 11
      Top = 124
      Width = 57
      Height = 15
      Caption = 'Remetente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 752
      Top = 45
      Width = 77
      Height = 15
      Caption = 'Placa Principal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 649
      Top = 47
      Width = 83
      Height = 15
      Caption = 'Data de Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 11
      Top = 167
      Width = 136
      Height = 15
      Caption = 'Origem do Carregamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 471
      Top = 167
      Width = 164
      Height = 15
      Caption = 'Destino Final do Carregamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 728
      Top = 124
      Width = 24
      Height = 15
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 89
      Top = 9
      Width = 47
      Height = 15
      Caption = 'Emitente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 19
      Width = 72
      Height = 27
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 67
      Top = 101
      Width = 474
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_DESTINATARIO'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 11
      Top = 62
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FKTRANSPORTADOR'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 67
      Top = 62
      Width = 474
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FKTRANSPORTADOR'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsTransp
      ParentFont = False
      TabOrder = 4
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBComboBoxEh4: TDBComboBoxEh
      Left = 547
      Top = 101
      Width = 175
      Height = 21
      Ctl3D = False
      DataField = 'TOMADOR'
      DataSource = dsCTE_M
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'REMETENTE'
        'DESTINAT'#193'RIO')
      KeyItems.Strings = (
        '0'
        '1')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Visible = True
    end
    object DBEdit10: TDBEdit
      Left = 546
      Top = 62
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DATA'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 436
      Top = 24
      Width = 70
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CFOP'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'CODIGO'
      ListSource = dsCFOP
      ParentFont = False
      Style = csDropDownEh
      TabOrder = 1
      Visible = True
      OnEnter = DBLookupComboboxEh4Enter
      OnExit = DBLookupComboboxEh4Exit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit26: TDBEdit
      Left = 512
      Top = 24
      Width = 474
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'VIRTUAL_CFOP'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 752
      Top = 62
      Width = 104
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_PLACA'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = True
      OnChange = DBLookupComboboxEh3Change
      OnExit = DBLookupComboboxEh3Exit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 11
      Top = 101
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FK_DESTINATARIO'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 649
      Top = 62
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'DATA_ENTREGA'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DBCheckBox1: TDBCheckBox
      Left = 733
      Top = 99
      Width = 132
      Height = 32
      Caption = 'Informar Documentos Avulso'
      DataField = 'DOCUMENTO'
      DataSource = dsCTE_M
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      WordWrap = True
    end
    object DBLookupComboboxEh5: TDBLookupComboboxEh
      Left = 67
      Top = 183
      Width = 398
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNINI'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsOrigem
      ParentFont = False
      TabOrder = 17
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBLookupComboboxEh9: TDBLookupComboboxEh
      Left = 528
      Top = 183
      Width = 328
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CODMUNFIM'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO;UF'
      ListSource = dsDestino
      ParentFont = False
      TabOrder = 19
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 11
      Top = 183
      Width = 51
      Height = 21
      Ctl3D = False
      DataField = 'UFINI'
      DataSource = dsCTE_M
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
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
      TabOrder = 16
      Visible = True
    end
    object DBComboBoxEh3: TDBComboBoxEh
      Left = 471
      Top = 183
      Width = 51
      Height = 21
      Ctl3D = False
      DataField = 'UFFIM'
      DataSource = dsCTE_M
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
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
      TabOrder = 18
      Visible = True
    end
    object DBEdit3: TDBEdit
      Left = 11
      Top = 142
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FK_REMETENTE'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object DBComboBoxEh6: TDBComboBoxEh
      Left = 729
      Top = 142
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FINALIDADE'
      DataSource = dsCTE_M
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'NORMAL'
        'COMPLEMENTAR')
      KeyItems.Strings = (
        '0'
        '1')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      Visible = True
    end
    object DBLookupComboboxEh6: TDBLookupComboboxEh
      Left = 68
      Top = 142
      Width = 655
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_REMETENTE'
      DataSource = dsCTE_M
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 13
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 89
      Top = 24
      Width = 342
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 16053492
      Ctl3D = False
      DataField = 'VIRTUAL_EMPRESA'
      DataSource = dsCTE_M
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 220
    Width = 1000
    Height = 305
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    TabStop = False
    ExplicitHeight = 313
    object TabSheet5: TTabSheet
      Caption = 'Itens'
      object Label37: TLabel
        Left = 0
        Top = 0
        Width = 992
        Height = 15
        Align = alTop
        AutoSize = False
        Caption = '     Clique nas teclas [CTRL + Delete] para excluir ITEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 988
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 15
        Width = 992
        Height = 257
        Hint = 'D'#234' Duplo Click para Alterar os Dados Produto'
        Align = alClient
        DataSource = dsCTE_D
        DynProps = <>
        EvenRowColor = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleParams.Font.Charset = ANSI_CHARSET
        TitleParams.Font.Color = clBlack
        TitleParams.Font.Height = -12
        TitleParams.Font.Name = 'Segoe UI'
        TitleParams.Font.Style = []
        TitleParams.ParentFont = False
        OnEnter = DBGridEh1Enter
        OnExit = DBGridEh1Exit
        OnKeyDown = DBGridEh1KeyDown
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NUMERO'
            Footers = <>
            Title.Caption = 'Documento'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRICAO'
            Footers = <>
            Title.Caption = 'Descri'#231#227'o'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHAVE'
            Footers = <>
            Title.Caption = 'Chave Documento'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRECO'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Width = 71
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd.'
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 88
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Informa'#231#245'es do Fisco'
      ImageIndex = 1
      object DBMemoEh1: TDBMemoEh
        Left = 0
        Top = 0
        Width = 992
        Height = 272
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBS_FISCO'
        DataSource = dsCTE_M
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Flat = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        OnEnter = DBMemoEh1Enter
        OnExit = DBMemoEh1Exit
        ExplicitHeight = 280
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Informa'#231#245'es do Contribuinte'
      ImageIndex = 2
      object DBMemoEh2: TDBMemoEh
        Left = 0
        Top = 0
        Width = 992
        Height = 272
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBS_CONTRIBUINTE'
        DataSource = dsCTE_M
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Flat = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        WantReturns = True
        OnEnter = DBMemoEh2Enter
        OnExit = DBMemoEh2Exit
        ExplicitHeight = 280
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Seguradora'
      ImageIndex = 3
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 992
        Height = 272
        Align = alClient
        DataSource = dsCTe_Seguradora
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 19
        TitleRowHeight = 19
        Columns = <
          item
            Expanded = False
            FieldName = 'RESPONSAVEL'
            PickList.Strings = (
              'Emitente do CT-e'
              'Tomador de Servi'#231'o')
            Title.Caption = 'Respons'#225'vel'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 387
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_SEGURADO'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APOLICE'
            Title.Caption = 'Apolice'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVERBACAO'
            Title.Caption = 'Averba'#231#227'o'
            Width = 189
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Chave Referenciada'
      ImageIndex = 4
      object DBEdit4: TDBEdit
        Left = 25
        Top = 25
        Width = 703
        Height = 21
        Ctl3D = False
        DataField = 'CHAVE_REFERENCIADA'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 864
    Top = 57
    Width = 124
    Height = 149
    Ctl3D = False
    DataSource = dsReboque
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PLACA'
        Width = 100
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 525
    Width = 1000
    Height = 76
    ActivePage = TabSheet2
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 533
    object TabSheet2: TTabSheet
      Caption = 'Totais / Impostos'
      ImageIndex = 1
      object Label27: TLabel
        Left = 3
        Top = 6
        Width = 62
        Height = 15
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 71
        Top = 6
        Width = 44
        Height = 15
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 189
        Top = 6
        Width = 76
        Height = 15
        Caption = 'Valor da Carga'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 575
        Top = 6
        Width = 67
        Height = 15
        Caption = 'Base Calculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 671
        Top = 6
        Width = 45
        Height = 15
        Caption = 'Al'#237'quota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 309
        Top = 6
        Width = 84
        Height = 15
        Caption = 'Valor do Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 408
        Top = 6
        Width = 78
        Height = 15
        Caption = 'Valor Recebido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 767
        Top = 6
        Width = 57
        Height = 15
        Caption = 'Valor ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 863
        Top = 6
        Width = 82
        Height = 15
        Caption = 'Outros Tributos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 527
        Top = 6
        Width = 21
        Height = 15
        Caption = 'CST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit28: TDBEdit
        Left = 3
        Top = 21
        Width = 61
        Height = 21
        Ctl3D = False
        DataField = 'QTD'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit30: TDBEdit
        Left = 189
        Top = 21
        Width = 115
        Height = 21
        Ctl3D = False
        DataField = 'VALOR_CARGA'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit31: TDBEdit
        Left = 575
        Top = 21
        Width = 90
        Height = 21
        Ctl3D = False
        DataField = 'BASE_ICMS'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnExit = DBEdit31Exit
      end
      object DBEdit32: TDBEdit
        Left = 671
        Top = 21
        Width = 90
        Height = 21
        Ctl3D = False
        DataField = 'ALIQUOTA_ICMS'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = DBEdit32Exit
      end
      object DBComboBoxEh1: TDBComboBoxEh
        Left = 71
        Top = 21
        Width = 112
        Height = 21
        Ctl3D = False
        DataField = 'METRAGEM'
        DataSource = dsCTE_M
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'M3'
          'KG'
          'TON'
          'UNIDADE'
          'LITROS')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
      object DBEdit11: TDBEdit
        Left = 310
        Top = 21
        Width = 92
        Height = 21
        Ctl3D = False
        DataField = 'VALOR_SERVICO'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 408
        Top = 21
        Width = 115
        Height = 21
        Ctl3D = False
        DataField = 'RECEBIDO'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit13: TDBEdit
        Left = 767
        Top = 21
        Width = 90
        Height = 21
        Ctl3D = False
        DataField = 'VALOR_ICMS'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 863
        Top = 21
        Width = 90
        Height = 21
        Ctl3D = False
        DataField = 'OUTROS_TRIBUTOS'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit16: TDBEdit
        Left = 527
        Top = 21
        Width = 45
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CST_ICMS'
        DataSource = dsCTE_M
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnExit = DBEdit16Exit
      end
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 608
    Width = 986
    Height = 89
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = 0
    ExplicitTop = 615
    ExplicitWidth = 1000
    object cxTransmitir: TcxButton
      AlignWithMargins = True
      Left = 114
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F3 | Transmitir'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000027744558745469746C6500526566726573683B5265706561743B4261
        72733B526962626F6E3B52656C6F6164CD4DF6E90000091349444154785EC597
        6950545716C72F8B46D151474D3431EEA3A351A3E306384649D4382A91C50430
        C8441425A0B8B3AF028ADA54005101111A9C068128342E40836C02DAB23468AB
        C8DEA06C0DCD4E3774379E39AF7DCFE9E2CBD4D45815AA7E75EF8577CEF99FE5
        5DEA1100F843F9C305FC3F3F1AA31965F0519DAB07D5A4D11A0DF3B7FF498C5F
        5239F1FB1DC1D5176182F82494C4BBC43C4E5473A8793A8C37C723F6F1714F4E
        31CF9B535CE61557A2F4E494283DFEF554E07E93CF73892A3871E437EE5C3531
        1A6EB14F896B0C059FB8B2F9C485FD8438472351D4FA9810DF440191BD7BF701
        CAD09D5DB4FB667E0D44F25E814368A611E5F05060C631BF448132E569033C6B
        EA82FACE01908E8C50E0BE1F7F27813B4FEAC137BE54E918591075D03F6E3623
        6470E41D516780E674642121DEB74A89140F882AFB1F8F058CF7892FA97BD323
        0351F7209C0CCFAFFBBB89DD04330FCE92331179F2AE612534CB95201A5242A5
        4C012FA40AA8C6953AB7C947A003CF778B45E016FD64E06850DA6EF43906D11C
        5062D0519C087B440896F0437044D325BAC8FD415913B463908621052414D4C0
        41569A073A196BE6798715975F0DD518E4F980029E0DC8DFD32F870A9A677D72
        689229E1554B1F78C53E8523C13C4746449FE21D51C7E14A3E21D8235539A8E0
        76812973CF270906C498D1EB410554A0B3C6FE6138793577D0F048C8023D6387
        E9163EC92D5558997A1421A2A9C5672B514879CF309422253D4320EC1B863A89
        143C629E286D0292CD68111A4CF05EC508B10FC92138147C267B6DC7C8C23481
        A80B4428A0B41B9DA1A3E72822FF552B587827A7A383715BEDAE9B183B2580A9
        4B02E81DB80E7ABF448089F32D3817FF044A9B7B5522F89221E077CAA0AC6B08
        044DDD384779BDA6274217D233A14105EF416C7F7B4898E05A0E213CE388F497
        D03A3C02020CCC97C86886A006CBED135304BB8E45995222D6595E76586BC1DA
        3673E9B79328D6FC747EBBAEE5E5886F6D6F0CC7E4544209062F144BA1A05D0A
        CFD00727B71A0E5E78C046DB4F10CD6EF908A1B0B9944954A5DFB4C77E024E6E
        7D0D4EF60B2C5D111AABE89051603652A878DB0D468E09F5B3577C37992EA796
        1ADA94F355465E1B36FC12DE12935D098FD13EB76510725B0740281E84A32139
        CA9DB6AC25F4B31A926125D91F90815B34B60FE279DE2EAA8306EC25A53ABF75
        F03FB4BD4780995CBE530A9B6DC2BDA88164DE7306FA3C76E56E37BD2DB691F2
        426C65F6DB7EC86CEA87A2B601B8765F083F7BDDF6A16D353A8794E478682E21
        56DE715FE1B4CA9A7088F81D52788846D96F07E02192DD8C50677AFFAA4B0666
        2E09F255BBDD56309930E5645A898CD3DF171C791167A2102BF0A0A10F45F441
        AAE02DECF5E66244321ED16C4701478373080E42567AD68B3610E2C094A18032
        318255C868EC43FAA114CF0C6548CA935A586711924165C29492A90023608DE9
        D97F98BB24AAFCA5D6F4A8C8AEEB0273AFD456B4F9935A0B3589B17312ECC6A9
        363C1D0F3B4FC4830D2B13F858FA7B75BD70AFBE57B5C75EC1C65FC241DFEA1A
        E85A5E81B5162130AA0D5AF480E9209326CFF8CB175B6CA3E1392675FB751724
        5576412E2663E6C995A3CDA7C86464225D0D54A3666CE89C325CD93B0C2955DD
        9052DD0D8FB0059480493316CDA4D5EBD0C1B4D432FF64FFB974784F1AEC3F9F
        063F7972A10205DC7A218138A104D26A7BC0D43519ACCF67C081008A743888AB
        7AF9B4119D6D276FB71463E9125F4A20F19504B21A7AA909869DF657B651E545
        B499CC5BA50AC208303CC1E1F1CADF408B5401CD34027C1D632B3A805DDE015C
        AC82105B5887C955E21D139F5F05AB4C5999C4E07014A9EE19661C8DDB6C1FFF
        282CB70E420B5B20AAAC1D92D13084FB0CF638DF8AA004329963008230098C59
        67E2F237CBB35CC5FDEA2E600BC4108DB651A562B851DA0E9125ED10FAB805FC
        788DE079BF01021F36C126EB70C53CBD036BC837D611A4AA7B98713456FF60B4
        8F4358A1CAD83FB31102F3DEC23DA118FEE97B5FBED5FAD2064A242382813E4F
        D8B43FF4A26F7C31702AC410F1B40DC2F8AD1054D0ACF2E3F9A001DC3138B5B7
        F4BF0F8BB7BAB2281BA26B194A2ABB871801DA5F197A2E3770F85D19572E86B3
        3C11F866882028AF19D839B560E69EDC6A60E5BF9132A487509B82DEEB4CF962
        E90C039B1BA2C8A22608C86A5205F5A003BBDDAB070F5CDD6FBF84A53BFC1A75
        A62E98A1B25B63164C5E750D51306D18BFCAEA46ECF1483EB072DE80575A0378
        A78920024B18935B0B963E77E546A739D7BFB709FE010DA6506CB509DA61E8C0
        3E81FBA95FEF72DF67E59B0ABFE5BD010F0CEA86B8DCAD07E7D43AF0C364B6D8
        DE80D9EB6DF731F7015969C22242C910798130FD9C67706CC91A6BCE008B574B
        0547470D2A67D7702EB25E4B201867E2308B8715E182991B170E5DCC80431778
        A06B1E4039FE6CB56960B6EF9DE7D8EFF7819DB8B5E076B70E0E5F2D80B91B9D
        B2E9D7708C2ADE32C300F2BC73089191E712D987615C6CC4B2DC609704E7D21B
        548EDC300B57C40705C59688E1115E54E56219083B65AA8B2BB3AA13BE77E0BC
        F96CA1DEC22F57EDD13338705D7AF1A1089C52EAC0311905706BE0EB1F02A4D3
        161BE9D273A4395BDF999025DBFD494587EC3D288299054467917188BBDEAF49
        E098F012BC1F88C005B371E632D482333AA770C2B33F96D7FB6631E8595EBE8A
        B633177DE776E1606086AAEFAE686778FA16CC5CFD6B00759730D7F8E7EBCF10
        B2ED683C29C7E002A49C464DC484793BCF5B2DB3BC39687E311F3C536BC18B76
        E88241CFA4D4C219CCCE891675ED5133FC702A49B168938DFEC4E9F3672FDDE1
        DF78F65E151C6597C02CDD538D6327CEFA9CBEC4348ADBA464C66A1C9B2D761C
        22104B3F5046A32662FC8CF536CB16985C8B5F6EC551EE0DC88223D1A5702A4E
        08DE28C60BA7FC2447087691A560E6CF834D8762956BCC825CD1EECFB3D6D95A
        ED381603BA7B4360EA929FADA8849857988F023E5DE940C8E6C3379158F2578B
        18B2D81C3163934514E66C32EA9E9FF8E95AEBE5737705BACF330ECF9B6F725D
        38FF4736CCDBC386B9C611C2394661795F6EBFE4316DB5F5723AD03864F21C7D
        A7B4E9CB0FF3703F8919BC692BECC9B41547C8545CFFEB8FFA7F3AE67DA7FB38
        05994A41EF27A9DD0F5A1474401D0A7AAFF931BE961831DAEAA87F8CA833FA6B
        E9A3F1D1BE0B01E00FE5DFFF3B6B594FDCD6290000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxTransmitirClick
    end
    object cxImportar: TcxButton
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Importar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000013744558745469746C65005461626C653B466F726D6174
        3BEEACCAE30000066F49444154785E8D966D6C55C711869F3DF7C32618E24F1C
        F3514394804AA07C9A7E016D1D11431243BE48D336FC68ABAA4A55292A52A994
        A4A8EAA7D246AA2AB56AD3A469FB03B52212690D4E031149B149487013709328
        09D47680020E14480CD8BEF79E9D697ACF6AB747A6AE57B67C767634F3EECC3B
        EF3A0BE4EEFAFE73CF62329F5240455155FC378A2A659BA8A2823B57C4F9E27C
        05A0EC072AA5AEAE9FDEB6068801717E63561688FE937CD3868500496214F7C3
        A9772FD2D43805209D1038716A88194D5313DFC4DF837DFC0F0757031920669C
        95058C0BC8E1E3431002014A7FDFBBCC1E11823D24E93B3AC89C518560438145
        CD57A3068008301303A0E1D6A08955F1C1131FB70FC6903CB1E2BF147CF28956
        2044346E1FA284E0CE0513B812C00106714E1306A0C0C9C12106FACF02A19446
        C11878A7FF0C2A8A150742151100E83F32E8FD514550A6469689AE2CC08A9A98
        2FAD9CC917564C1FE3B073EF216EBD713106E35B64DCDD3A761F667DDB625734
        77A250918BC80DFE932E3013E240C2EE101CC2A8A935AEBCEA9280AAC1E0C650
        C4DB3092B44F052B36D50263CCFF06604540C1A8A6B8502E7B6C29158B6926B8
        5D292E512CC56EAFDEC71011976280C8FFA6964FA35900110114018C036DAD20
        629931ED2A0AA317112B8E8261CD6E9AC4F0A50B6E173016328685736B002A9C
        0E64D2C911C002E25B70B0F718EF1C3F47504361CEAC29F4F49E6077779F2F66
        E4C64F0C440ACF741F0B71D38B9F3DD17D1A08B5711B91B86BF3573EB30650DF
        82E58B9AF9C8FC59E4B3062B8A887071E8029D7B8FF0C3076E43815C04D6DA72
        3F9588D7DE1EE486EBAF195301E083B3532C9C371D2B42264A77E0D16D2F7A95
        CC3A1DF742938960F72BBFA06DE97DE54482A2028592209998AF3FBE9455D76D
        64C3C7EFA7664A9E92B588E09A17D8F08F81B3CCBBF61A1488AD786415B90CAA
        EA55D2B7C0290AD6C63CFFDAEF68AE5BC2DC99CB58B66026C62461AD154AB648
        9C39CDF7B6B5B36EC9161A1BDAC864B3C436C837806AE04C82CB84330922E55B
        E03020AA5455D4F154CF56AE3FD6CA8CA695140BC3A030323A8A5A61E5D23534
        36D5F3EC819FD0DBDFC9E75A1FA2A6BA81289BA358F4B2ED9712264C50AC8A07
        E0A7E099E7DEE0C2FB97F9644B33B3AA5750597D81E1521F9DBD3BF9EDF3A7C3
        63A3206AB9688FB37A750B674E5E66CB63AB985DDFC2976FF93997872D6F0FFC
        0B11A5634F6F0A08C09C0FD5A1A26385686DEB7C0A45A1226FB8A5EAAB3CB2E3
        766EBF79230B3EBC8029150DE4335785C71A219612E7864F51595FC13D777C96
        975E7E85C776DDC717D77D97F61BE7B37DD761D6DF7465957CA16780C41038E0
        FB5788A1BEA689B58BBFC1DEAE27B861C175642BDF2AF7DE4A8C84070A4429CA
        08E7CD008B3F7A2DC3E7337CE7F777F1EB6F1EF2EA09801A306118654C0BFCAB
        664094520CAB16DD493E33891DFB1E66E6EC5A1AA6D5505B5B0328285C1A3D8F
        A26432796C31E2A98EFD541466B1E5DE6D65522631C35CA006486C62D32D5075
        4A98CF1920725A1ED132BF8DC9D9B9F41EFB23AFF7BCC8C973FB5055EEBEA71D
        3590CF4EE6CDBF9FE0E5AE3E36ADFB16EDADF792AF9844B114FEB50B4310DE1B
        494F01A542B1F0D7AD3FFEF3A7D5EB49F206AC6C99CEF08861DDAACDB42DBF9F
        F7DE7F8F1FFD690DF31A3FC181379FA6A3B39B69954BF8C1D776525BDDC88143
        27397D6608A30645D9F1F4AB681803009A67D422926E41E1D18737AD07F269CD
        26FB4B98FCED473A8F34D4D7522C0955937388287FD9B387EE175EE7F3376DE5
        D6D63BC8E527518C958FD5D500065CF23B6F5E46287610A2FD07FB520062C002
        A3CE08E0AB9352C94C0655C3F0D91A7EF5E01E460A39A24C39B9235A101D15FF
        4F4A8A87A2B80A809B02C42516D24B8138A824545555F19BCD6F94819828CF93
        BB5E65C3DA3A875A5D2E03AA0909D36A848382FD6F0E3827252C8C31DE165412
        2E8D08984A4481588963F148C3909170201821FD89A63830EE4AABA486ABF874
        4FEEFC1BF80A04BD47617B470FEA52BB13A63756BB0AC0FF036048ABA4CB190E
        B77F907C63FBF27035C2F9F68E83DCBDBE054D927B9F5C36627FCFD1095720A8
        64B88B6B33E009EAE33B9F30F340CAC70032F116A45512D5506A4050343568C6
        9331105013BB8230869C263B4EF9B9824AA6E8D4D87075B9A4C184FF98563F35
        9C0576837A251440C7AB805C5925030605BA5E7A8B74030241F71F3C1A9CC35F
        4AC5C23EA0341E0005741C95F458FC9AF899058A4EF8E4DF58671F2874D235CB
        0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxImportarClick
    end
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 863
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F12 | Sair'
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
      Width = 100
      Height = 75
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
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxGravarClick
    end
    object cxImprimir: TcxButton
      AlignWithMargins = True
      Left = 221
      Top = 7
      Width = 100
      Height = 75
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
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxImprimirClick
    end
    object cxPessoas: TcxButton
      AlignWithMargins = True
      Left = 435
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F6 | Destinat.'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001C744558745469746C65005465616D3B50656F706C653B47726F7570
        3B55736572937B60490000089549444154785EE596798C5D551DC73FF7DDB7CF
        9BCEFA66EB6C6DA7D396ADCB60B55A50084B4B2D145C82261844310A31460984
        188D8D1A8D09891AF748C410051411810A8281D2D28DB6D376DA326D677D336F
        DE9B7D7BEB5DCEE2F3659A8C6D64E02FFFF026DF9CDF4BCEF77C3FE79CFCEEBB
        86D69AFFE5E301FEBF018CDDBB775F66D86EBE56A635DB95521F964A6F9452B7
        29A9EA0A639F2BD51BD2553FEDACBAB37BD17C80253DAED4DDA76BEE62F1E3BD
        34FC66FD8FA8247830D2B87675A02C4A596B0781D26AB416CC0D75B78D9F7FBB
        6DA4E79DCF34F73F75434D89D9A99546D497470DEFD29E743A75033574BEEB15
        6473EE1722AD1DAB5BB67E0A3B97C51F0A61CF2799397F989193FB99880DE23A
        BA747E3EFFA8CFE7C5E7F7BE2F0FF0EE27904A5B9B1B4BAA891D7F8333FBDE64
        6C7088924810379F6762620E470530CBAA585EBF71DD2DBB7F7B17C0C9A7BFB7
        ABBC752D53F11843BDC34C0C3F412864163D89A11166A767B02D9B74C6A95BB2
        0BE652B67F3C3ECC913D7FA5FDC69D4CCD66387AA093F8AC07CA5712A96E2064
        58945BBD8D07BFB5F5577B1F5AFFDCD4B1BF6D3AF7C22F39F3EAB3ACDABA1D5F
        4D3BC78F9C66FFEB07E9EF1F219553CC659C02803DB3E409CCCEDBB1BED3A731
        0365B45EB391B68E6B716D456E7C80C4C13D68C7A271E307304A2ACBC275ABF0
        9556921E1DF44DF67432FC4E17479F7C8C1BBFFA5DD66DF92053A75FC230431C
        DD7B8263074FE02ADD5DBA14C04C5AEC49A5071EBCF2DA4D842361028100DA8C
        30BCF74F042BAAA85CB99A81F3FD6CBAA10389412679A1003084959E23100AC2
        D414879E7E9CBBBEF9033CB5D5E08DA094008F69D986FFB925AFE054C986BDE1
        EAFA3FF8037EEDD112296C949D2576F60CA1F24AE2A78E3372B68BD8813DCCF5
        9F209DEC273516673619676A68183B9B67A4F702CA4AA39546B92ED9544657B7
        34FF2C59B7A17BC92B98989870DFA8AC7AB83693EF981AEC5B57551F45BA9AA9
        C959DC6C9673A77A30AA9A39D3D945F9B25E502EE9548EB9F91CD2B5D11808C3
        C09919013C4C244699CFDABD6FE596FF7C6E6EDACED7BE88100A25254ACBCB4F
        60E7CE9D056837139FCE3FDF7D602FD9A1932857200890880D336F79D87CC72E
        2A377C94AE8114874E26E9EC9DA56F5231939364F292AAFA3AA42B50CA28009F
        632C6FBC28A59CEBECEC94B6E5E03A0E8E5B90232E0700482693F69B93D65FCE
        2427E4F143E7480C8F6284CB191A1C2512ADA5B1B981EB6FBF957BBFFD30F73C
        743F77DF7B3BB7EEBA89D9AC87BCA35956D742BC6F90C3AF1FA26B745C1E7702
        CFC662310B60D76D3BB8E3B66D14211CFB3F010AAF654F41FE6DF7D4AFDD716F
        DDE357DCBCC51CB57D9CEAEA25D4D04E6C789AC6D66622253EC20193DADA721A
        9757515F5B494B6B0395D565389E0065EDEB3974A48BEE911CAABCCCBCEAE6FC
        2FDB3F62AF01821F5BF323D3127671F78EEBE0BD180CF81E79ECA64D350DE16F
        2C2B2DBDB32EDA6C2606FB59B5B90D331F24ADBCE0B1F079C0540ECA92082B83
        9349A195201229A5AA2282B7BE81AAD60A3CEE2A9C4141DFF469DA56B6758442
        9E53D54DE60B9349FBC73BAEFE452760DDFD68541980E7CE2FAD6EF8D0F56B7E
        5D5559B56345433B35D15A525682A1C410DDE72F108F27A9AEA86143DB16CC7D
        3D6CFBE42D04FC26767A86DCF42C4A7BB1A58767FFF83CED0FDCC3D9C43E0663
        0384C3419A5694D1D8544BD01761243EC6F99E01A6C753AFF774E63E7FE6AD7C
        D200FC5F7B6CFD53D76DD9FA89B6E66BC83A5364AD29A4920539B84A2084CD7C
        6E9ACAC055CCBCD2C3FA6861D1E628C2B611AEC0575ACD3B27CF727A32CDC6FB
        6E25CD8505CF14B6C8A395444A8DE90DE037FDC487C6E93CDCFBCCCBBF49DFE7
        05BCCA70B786C23ECE8EBC8ADF0C619A7E500A4BE4B1DC3C592B855002AF1E47
        AFAEE2DCE13E6AEB6BC00CE20B86B02D8BAE93DDD47EFA36326E92E9FC3839BB
        E82986ABA234D2CE61A0092F0BE031D5F580CF0B18AE234A84CE93CACE20B5A6
        D8A314A414BA20211525C128A627845D2E38675AA49F7B8DBA869AE2DCFE9E01
        FAA321A2E536966BE0D8825C3EB3B08646690D5A2217EAA0CF40A32A00D30B68
        C7B153878E1C8D68AF8D2F68E0F39BC5706FC0A42CDC40B4B409AFE1677C629C
        C9B1513EF7D9FB3977F018DD878F235C077F692D6B7D1E8E1EDDC78AD56B6858
        DE46C0AC673637C87426899D73D168ECBC5390C0CE4A00094803301BDB8315D7
        5C57B2DD17A0C3E3D56B0C43B7D457B7F9EA6B56348227987766C9B853B434B4
        521A2E653A91A4A3E60A827983F15882C9D40417D404D12B9A4965E6898F8C11
        2D6FA4A2AC0E216C2B393998484EF4B9D2D5C3C261C0CEEB63E78FB8AFCC24D5
        64F193AC2003F002E62279BFF89DABEE5F561178A47DE5DACA8E2B3B0885FDCC
        A4C6E91B1C24361427319A4008457565194D4DF5AC5AD94420E4233196A0EB54
        0FBD3D89D1F48CF8C5FE3F677E07D8805824F7E30F86F4E26F42166A03301FF8
        E1D50F5EB96EF54F366FD882613AE49C5984B2F16060183E6C37872D2C0C3C08
        E962BB16192B45DEC9E051265E6F18C7929C3ED1C7F933A35FD9FF4CFEF78003
        E8428EFEAF7F4617010C93AFB7B456139F7B1BD313C0347C2825B1854DCE4961
        3B79A45248B9484A2FFA3D8F8197FAE66A067A925F069E025C4003BC1B008047
        49D1E2F39B4CCCCE1483D4C5C595BC58230A52B2582FC0E88B50A8228445D817
        0183E50B591E40BD1700434889655B64F3D6C2CE8A6D89145084901AA18A410B
        C19A42BD085617E79B5A80410060D1EE970450B625DEFAFBCB07AEF3870CBCFE
        82021E4CAF510CD106987EE3E2EE515A175B4D38AA08E2586E41A2283B3B8E14
        1C0204C07B01D08078F2FB03DBB6ECAC6C8C36FA6F328C426B9ABA0D5493D4D2
        40528AA15A945668A98B00FF6EB1C298D65AA3A41E91827EE1D0373620FF39D8
        2546001B50807E2F0012B00FBF3413039E003C8009188067F178A97791E482C4
        C57AE92BB81C42016251907149A87189C75804702910EF0700804B8DEF5F4B7B
        FF05FE0B53014353D0E70000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxPessoasClick
    end
    object cxVeiculo: TcxButton
      AlignWithMargins = True
      Left = 649
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F8 | Ve'#237'culos'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65005472616E7369743B4175746F
        3B4361723B4275733BC9635F1F000005BE49444154785EC5956D889C5715C77F
        779E79D9EE26D990A454DB549A903436C4088D2496264BDBC4089668C417042B
        8A7EB115C4502854EAA7FAF2450908DA8FA6E207BF0842C1D634A5896DA4318D
        C5A6495FA209D198DDD96EB6BB3BBBB333F33CF7FC6DC3612E339965413F78E0
        702FE772CEF9DFFFB9E7DC2089FFA79401420800C4B9936E16D9AADD811B25F0
        DF89F26B2F0889CABA7DC928512609381BD9E8EE307EE2D07D9572F990CCEE96
        749B4492B44788812290B84A0867F2A2385C59BBF7847B8A24FD008C6CF55898
        7CF9D1C7632BFE88D18D8CAC5B4F756425A82FBB9400F49FB9AD333F7BEBFCD4
        D55B63FDAD03FF3CFADD273EB2FFE73FE9BF4290D42D0170FDE6C542E7F99BB7
        7F3ACB98C68A79B00E08F67EE71CCB0B1C3BBC09212855A03C8CB2755C7EE568
        ACAC1CDABBE9C15FBC04D8E0124050BBF56475EDE62C742E11AD2020943073D3
        F08AA52947B49AF3981520C00AE834519861E5873666F3F50B4F02F703C12326
        006E0C8DF1ABDB6EDFF0311417F0A01E5DBCF8F481BE3280BA9B642FA6DE0084
        0CC0904556AF59C185E3173FDEF7906F64206F36474B342146BEFDE3B39C3E37
        931E1A7F4AF993D56D221DA6E51377ADE4A9C7B6000D16671BAB960380150556
        740812FFA857D971CFBE944C028484AF4A2C019291CE40127FBF781EC58828C8
        DB39CB322001169144A552C32C7AC094D87BD801789164099C845CCB952AB208
        3230E192DEC0E7BFF6030E3EF404BFFFCD0F3D30EE0092613122599701D19F58
        2921BD7B09CC0CC5021066F2E43032BA7E10039EC40C64E4799BA2C8130338E5
        83127A79646E9761E27A0C62440900834AF0010BC74E9D7CB12401458182682D
        36999999A256AB5DA712E1098C04C448C0CC6DA2D36E93775AB45B4DE46594C1
        8EDD5F7CEEADB3AF0878A09F81072078800826CC22CDF9599A0DC82A65CA5985
        2CCB08A532A10481001251462C72621129624ECC3B1479EEB7B604404608E1BE
        1E064E9D3CCEAE7B930D8162EC9622160542D703B7AC098844FDA0CE48B303F3
        52783CC5254A30F3DE34C01F4141D27EC50808931163E1F5C5574F8E6F31A797
        DE76751F3303730082C6DC7BCF03D603E0EDF3AF337EE9E5CF0055696C515624
        06A2EFBD472D8D3F6F3DFA668408380607DD8D17C5DB7F3B76106877BBE0EAC5
        977A3E23BA7300766E1DE5CC3B4D4F01E6B493BAE1C64F59C204C1AD9FDCBA0A
        C5E847A90D1766AF2C3588E47D0B3F7BF80E427908CF96E84F09DC4E02850869
        5E40BE48D1A8238169E936EC2293532F84CD8DA7E0A674536FC3C4421F38B709
        A5A320645A7E1477BB00515EBD85E13BBF0C40F39DDFD2B9F626C1FB99E0F556
        1F1332CA6BB73272D74300CC9FFF35F9D4393090B12C00D22816D50DFBC88673
        00AA77ECA733F9461AC9FD7F0209CCD0E60729AF88000CDD79804EFDF5D4B649
        58FA0D5881245EFDD561EEFEFAC300FCF5E9A7D8F2D138E0019A2FC21CDCE9F7
        FD767CE31100CE1CF9259B371AA10B94E0BA5C0960DDE81CCF1CFA1600DBC736
        205B415C6C212B125DD6AD36A114C86A35D68CD479E67BDF0460DB3DEB91DD04
        2CFF065243F96FB8E69661EEFFD2B634E962C46287DBBE7A944172E5C85EA856
        587BF310630737119C296F6B58BE0488F41DF78C5DBC8D288CFAF40266252F80
        A5F71763F29521429A9A88B4190C40407CED85B3A77E77E4D55DF3AD3E4797C5
        28E263A3B8607252055980A1526258F44A14A78002D05200F2478E373E058C6C
        DFF5B9F19DBBF7F0EED4347F39FE2CE3975FBB1D5804224B4B0032A0B67DE767
        AFECDCB387C977A7397DE2B90FFCD7030D20EFF90B7C0C07482080BC889DF1A9
        FAC487E76666908A49A096009301FD7E383801E54EDEAE4F4E4CDCD268CC019A
        00DA40919213DE17953D08BE967CAF897F5D78FC5AFDDF3F6D2D4CD7161766FF
        007CC50164BE965C01CCB5708D97DEFCF3B3E397CF7FA136B2BA9D2F2E7C1F90
        6B29ED0929795A33D7AADF3AC3252525EBEB67B9C60406A533DAAED1B57B1624
        E1D2FB2B0E4EA0F4AB25F95FFCFF03B7B981BCE2006CF60000000049454E44AE
        426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxVeiculoClick
    end
    object cxTransp: TcxButton
      AlignWithMargins = True
      Left = 542
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F7 | Transp.'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000B744558745469746C650053616C653BE859DFAF000008
        8449444154785EC5977B8C54D51DC73F776667DFCBEEB2AB0B2BC222F22CAB82
        6262E29A3454052D6DD36A1BB49AB4468BD498264DB5B4B48996D826B44953B5
        1893FE63B42A882D2AA0881585C5450A280FD95D960516E4B18FD999D979DCB9
        F79CDFAF2BF78E43B60FDA344D4FF2CDC9FC73BF8FDFF79CC9715495FFE772FE
        87DFB9A83355A58470ED7D6611AA828A147751C45A4404B19F41B15658B7B6DB
        9933B7617CE3F8B26F9744B8371271C65BAB1B3DDF6CFD74C87BFFD1F5279280
        8E15B2EA9609BA72CBD97FAC7CCF9A5B99B1E487FCABF5C8A23B2337DF327981
        8A2EAF696AF8D6845973CB2AEBAF2432BC9DDAC66A86075274FEF50467FB12DB
        DDBC6E1BC99B7757BC766A07C112408B1893C03FEB828A61DB533FA98DC52277
        2FBEBDE5FECBAF9E7B4DDD84664AAB6BC9E784C4B04BBE6F10352EE595A52CF8
        E23470226D99B4DFF669EFD0CF9EAC8C65E2FDD90ED797F752AE5DFBF4EE784F
        510C4501A88C75EBDC71C7AC6B2D76595D53E3D28973665656D5375252564E26
        95E5E49153B859C5F3CB70E31122353544D24269799458490414265E7119974D
        6BAE8A44620B6391ECC26757B73F0E94037E51C09804763CBBB2B6A23CBAF41B
        DF9CF940E3F4E9F3C64D68A26A5C1D4E348A08E45D38772ACD550B97207E16F5
        92586F32E2A6B1EE30E2E510DF458D45D503E32154D2D7B10FDFB70051C0005C
        28C0C97B66DEFE97577DAFA1A9E1AEA6B9D75697D736535ED78C0338D152AC75
        F0722E6E364E3A3B80F839FC6427924F62F329C47343621FAC41558894D432DC
        7D88FC509C5C2A28301001280A20E08845D8D372F37D444B2F213FD4893B749C
        CCD92EAC9744AC921F89934B24480CA4919A69886945BC11C464102F8FF8F902
        3991F24652473E22D7BF07F514F51535802805BEB1094414A8AE3F833186F269
        0B416310DF06C95D88CDE3D79492ADAA2182C554D79D772E7E1A710B917B9454
        3491EEDB4FEECC3EAC67510511C5AAA23818117E7ADBAC771D389AF1CC771CC7
        C97D3E0254899538C42267C1BE0E91F14427B71189DD851D78875CDF9BF8DE39
        4A62512A1B6A113719907BB951E209B8033D24BA36A1AE16EE10D453C4286A01
        15AC8067EC7B11C7E9A9288DFE1EB8BF3082888A802AA0A858D4F663075F02A7
        9292DA9BA8BEEE37949EDB452AF31CA5F5B5D85C1CA20D0879929FBC81E64D18
        B12236205504550D2020AA9C4DE5DF184C7BBDD74DA97B0278A83802151083A8
        822A6AFDC0891D267FFA555C6703B1BA1BB9A46D25FED96D487A88D4D1D751CF
        A2D622BEA21E58D1C0BD51C457308055C48008FCF9A3D3DD574DAA8DA93A5120
        76410285A368512B21B9098E1382588FFCD9CD544EBA94533DBF0B88B5E0568B
        778995827B50023116083B38E21AAE68AC9AE789F4148E0481800BC94D402E3E
        4AF01BDFA09E0FD62D36DB17542DEA69000A8482F88A580A2211090400950D55
        A577C733F90D80574C400509C91113F4C0806A28C6B7A082983C18413F830D88
        218098D0BD01F56197379F17735FC158C51A1F3B23CFBC9AF6872BCB7ADA9EDF
        757205E07EDE0191A00345F716B116AC41AD057CACB1A89F45349CB35A54C3D9
        ABA0A6E056D8E5CFE7ED71CB59705D2B8EE320E2934DC589B6773C746860FC9B
        83E9CE61C0460A09880DDBEF17E6680341A10831262C5B16ACA221300A04BB68
        B07764E7B3A566395367B492CE0B1FEF3FC0CECD6BE9FF701D15E5651C60FEA2
        9A89AD158053105012FCF7FB80C18A0D4E81350572C408622CE2658B25F50211
        D604EE31D09EBD86B7AA973365DA6C122339CE0D26499E3EC24D23AF30A7A497
        23F5B7821343D1322E2CA148E05C8C01EB854958C406C4EA179043C3B410050B
        8467BD3D730D5B2A9733A9653AD61DA6A526CB8C7A97962953F84BF9573958DE
        46FDA5CD88086A4C14A03802D180C84A10AB04C50B0409E20B22167B3E018B7A
        61D944B046D9911A25AF78F0BC73BC11962D6AE1BEC5D359BDEC0666B73431A5
        F5461AAE98472A1B7C5355280850405495E4E0086A7C54FC805C0A732F9E04F5
        72E1F1535405EB2BED23A3B1972DA379CA950C0CC599DA18A3BEBA9CAF3FB28E
        8CEB3163F2388653598E9D49D073701F9978DF6FB383DD670A020470F71E4D3D
        BC67E3DEA1A37B4FE0BB3E624211BE0992F12C1883F83954001FD428DBD357B3
        A57419974F9DC9D43AC3634B67B075F7099A1AAAB9BE7512EFEC3ECEB36F1C06
        310C1E3BC4C0918E27873A5F7F02C8A8AA46000B6457BC74ECC5C7D7F62EFEE0
        BD9E0DBB371E64E84C2A1C89225E583A5FB0F91C10B837567833D946F3E4698C
        E43C2EAB8F515516259148F249EF39E6B434F0EB75FB89C6620C1E3FCC40F707
        4F0D766E5C05C41BBFB0D45E38021F48ED3D9E3EF2D073BD3F58BFE3F4033B36
        1E3E7DA0A38FFC4870F1881716D2CDA31E601563E0EED2E7E8DDFB36F14496AE
        9329263456F3CA2FBFC6B8EA727677F6E34422E7C9FB8FEC7C7AB06BD32A60E8
        9EC75EB300179E823054D240FF1FDEEF7FED91F57D5F7EB7FDE40BDB3677DB4F
        4F0E239E604721C64345C8640537AB38C921261F7832D7DFB93DD77B2ECB8F9E
        7E9F67FEF431CB56BFC3D13359E2273AE9EFFAE0F7435D9B7F010C16C8C70AE0
        D5876729600117181E4C9B63AB369FF9F90BEDE7EE7DEBAD63DD1D1D7D64D31E
        F94C8E91B492CEC1BE6ECBD603FEEEAD874FDDD9FBE1867B0EEDD999F8F8F808
        ED5D095C1B257EAA8BFEEE9D6B86BA378D25FF7BACFBFE4CBAD67E99CE176FA3
        70390195C004E0AAEF2EA85FB37A49737ED38F6FD0F5F737E9CAB6F1E9DBA755
        FD0A68059A80BA862B6FFAD2EC452B126DCB5FD6D94B5669C3F4C56B80894074
        949C0B31DA0154158770AD7D7006BE6F31464721DCF7FC71678C9086D6A6B2D6
        852D958FFA46D97C34F3786FC2EF02E240264CAFA276F2F56DD54DAD2FB8C9D3
        2F0D756F5E05F4170A37160307FFF86FBFFBA2A1884B8029211A4361857F54C2
        BD02B814A8034A2EF63674FEC3C7673404800D70D187E8C51FA7174591C08C21
        FDAFD7DF002A723C39F3E6D8CC0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxTranspClick
    end
    object cxRemetente: TcxButton
      AlignWithMargins = True
      Left = 756
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F9 | Remet.'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C65004465706172746D656E743B97
        2A9DC10000081849444154785EAD976B4C9DE501C77FEFB9713D70B81C0E58DA
        02B594B6140A58D4D2B4DE8A7573C9AA4EABEB976DC6CC694CCCB2C4C539B765
        5934714BE68739B765FA6159BCD5195DE374D5B54553A8D01B50689182402987
        CB81737BEF973DBE02D96A29EDE69BFCF33CE7BCC9FBFF3D3CBFC3738ECF711C
        96BA24497287F97800EFFC1CC09A8FBDF433968F6FA9F2B6DFDD0D20FDF1B11B
        2A03927DAFA31BAD86A6D7AB8ACE5C523D3D9BD00E9E9B545F7FAB3FD12F400D
        E77FA4F05D66E59E971EDFBA231C2EFA69D99AB53795ACA9A6B06C057222C170
        F7E96D67BB4E6CCB38D6DB6A1BD6336F0FA6DF1510AA60F86A0000E9370F6D59
        130E173E5DDF7AC78EF29A4A1CF92C96FC3EEADC20E1CC14FE0D997859DD1C4F
        284F3627F5F1A393C631C0F8AA00BC41BFB3A76C4DF517E5A983D8A933588A8A
        A3A6305519233E496186C68AB0BF69F8BC672F70FAAB04F0794C6367C9B5D5A0
        0FE22803D886296260E906B62646D3C2322C42391A018FB303C8132EE8979274
        A972A1CD92007E5337371595AFC2513FC43645F942B16621EE618BD1326D7282
        99D4AECF5AB7ABB5E00DAF6D565F4A52C0009CABDA02F170EF4B3F7C1CDBB231
        0D1343B7D045A9262054C5202DE6D9B9596C6C5CCBEEEF360784A4375C4E5240
        BD1A00C71FF064D63485091579098624723221E03130532AB1A8CCD88846D22A
        A7E11BF772F5922E0F207FD01BDB3D2567BF535D51240DF60FA08A6225ADA1EB
        16862351BAB2905DF737F2FF4AEA5B420E430875EC9AD28A993D3B5B8B376E6D
        A1BBEB38AA2C63993AAA28F23B0A572A69862B293940F24A1D0030132965F8FC
        68B478636D2579C11B397BBA8FE989288E6463CE26584652D79FDC1C2F995EA9
        0AC802B81A002D964C750E9C19BAAEA666251216151565E489070E0E8E30336D
        73394965CD7D8D69DA48125E10B94A0075642AFE56C7D19E5DA525C18ADA8D2B
        45914A4640225292477CDC43CDF5C59794747652666A5CE6C298C2C8984667B7
        EC03F425011EFDF1B3EE4A6CDBE6C55FFF44023280DCCE7353135E9CF78B0E9F
        7C68263A495545019A2AD3DBFB19274F4F3395CE722E25A98584E4F1E0F1FB98
        49799CAE19F341606A49004714FFE289470817E5FB8170D5BA4D7B6B5AF63EED
        0BE467DB66123BF6260951F0EAAB6D188641282F93993985EC922C4948CAC592
        5A86886520CB2A174E8C27FAE2D611405912C0B61D4479209857B0BEA9E5B677
        9B9AB7960D4C65B3B9A181A3EDED442AD751B5DA4F437D15D3D128FDFD9F516C
        0499512484A45C2CA969480244221E4F9350F5F3807AD9B3E0F7CF3DE9014AAF
        DBB6F3BDC71E7D24D2B4793D0FFF7C1FE075B7A5EEB67B18E83CC4505B3BBAA2
        10AEDCC496E6065EDFF71E42522E96343A7E015D450028C465F318202F7718E5
        D6366E7D66E7ED7744B6346CC0B42C1C91A4AC60D916452BD792575641FDAEBD
        E8A681619AA88ACC8CD3C9E1CE414A4B8E73B1A49F7446E91F9E393F91D2FF06
        A496049024C9038457AFD970D78E1B9BB045A12DCA2DDB269954E6E72296ED82
        996EB94232912465F9E99ECEE59AC327F94F49FBFB46E8EE1EA53F2A1FFA3466
        5C000A813940BD7BD7EDB6B85CEF161C0854AEADBD6FFD86DA8C55E51151E096
        0B10938428B1C5DC3D7A2D134D53999E99A6ABE30891AE8FF8914761B6208318
        FE2F491A4FAADC5C52F9406B56E281598F5739A09ACF8D4D4CBCBCEF1FEF8DBF
        F2CA2BEA5FFFF0E222407641716477C5AA726CCB76CBFBCEC530A40286862705
        500EDFFBD9014C5D414B4DB02E67886DCD9B09A90A753B5B69DFFF0EA59B1B85
        A481FF92549642787AC685A0EB3876EA74D6EDB7DCFAD4A99E9E87BBCF9CFDE6
        9E3D7BBAEEBC6987BA009093130C5595951661DA8E0BF1C21B3DDC744B13C150
        88946CB8ABBB30324AFAF89FF8C1F71FA6B6BE9EFD07DEC1EBF7B992D6DFBA5B
        48DAC6A1B60E34452552B991EBB7DF40C7A95F826361D90E5FBFE75BACA9A929
        765E7BEDEDCE9EDE96BF1F3C3400583EC0971D0C058B0B43EEFE5B22B3719550
        A880AEF68F49C41314556C227AE24DEEBEB985BA8606D70303074578601826E1
        55D7122A5B4DE3D7EE47D775771B842B988E83A228D88EED8256AEADA6A9B1B1
        707A76F6D9E1F3E3DF01623E20151D1BEA3BD173A62E525C8065596ED28A4E2A
        9920159FC33B3949243047734B8B7B6FC10B2595C4B4ED85F7DCD2C5FBF3226B
        862A4667F1FDEADA4DF49CEABE43005C2349D29C0F983BD1F1E17D7F96BCFB3F
        68EBACB22D87228FC541B10DC207F764FB6CF003EEDA793D652B562C021A964D
        323E8B355F365FBE3077E358366959C1C159BC57505C4C79F90A7F6464644F34
        16FB956FFEEC3F77B2FD9FDB458A810020B17891B7B579CBF32B57AD5ABFB0B2
        D9FE5E42F9F9440707096667F1AF07BF8D6E98E8A65B82FE39B828CF0CF8999C
        4C929599456CE02CB9AB2B5C678A4A22047373EE1400CFFB0004840E9C77F3E5
        1F292B0BF2439170A41401E0A6EF85DF52B7A98EBC80172D1E47152EA8A9B888
        8C9C4EA1A4555268C89A49CA3088EB2A3D7F79992D4F3CE502E41716929D91B9
        1AC8F5B1FCE50B8ACF494161E1A21FCAEC2CF9B5014E9DEA657A66965A21B0AA
        A8A25841550D145343D30DD29919A4BC1E9C64CA0515E588C5929B9747564620
        07F05E09406AF4C2785F5F4F4F5D51383C2F97859E4C128B2748C869B460267A
        2A8D6A68A89A8AAC9B626E92C62360DCEDC081C5BFE0D8F01033F1C459207125
        00731F771CBDCF2349FB8FB41DAE726C9BCD96CD81F64FDCBD36443E1A9B4077
        BF1959188E181D0F96C78FFB5FD571B08427A2977D2FBFE4028C4E44873E1D1D
        BD17882D0BB020695B7BC776914B49CAC2EB6533D50EA00353C0A470CFF8378C
        EBA5445BE33D750000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxRemetenteClick
    end
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 544
    Top = 312
  end
  object qryCTE_M: TFDQuery
    AfterOpen = qryCTE_MAfterOpen
    BeforePost = qryCTE_MBeforePost
    AfterPost = qryCTE_MAfterPost
    AfterDelete = qryCTE_MAfterDelete
    OnCalcFields = qryCTE_MCalcFields
    OnNewRecord = qryCTE_MNewRecord
    AggregatesActive = True
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select * from CTE_MASTER'
      'where'
      'codigo=:cod')
    Left = 53
    Top = 304
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCTE_MCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTE_MFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryCTE_MNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCTE_MCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryCTE_MCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qryCTE_MMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryCTE_MSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object qryCTE_MCODMUNENVIO: TIntegerField
      FieldName = 'CODMUNENVIO'
      Origin = 'CODMUNENVIO'
    end
    object qryCTE_MMUNICIPIOENVIO: TStringField
      FieldName = 'MUNICIPIOENVIO'
      Origin = 'MUNICIPIOENVIO'
      Size = 40
    end
    object qryCTE_MUFENVIO: TStringField
      FieldName = 'UFENVIO'
      Origin = 'UFENVIO'
      Size = 2
    end
    object qryCTE_MTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSERVICO'
    end
    object qryCTE_MCODMUNINI: TIntegerField
      FieldName = 'CODMUNINI'
      Origin = 'CODMUNINI'
    end
    object qryCTE_MMUNICIPIOINI: TStringField
      FieldName = 'MUNICIPIOINI'
      Origin = 'MUNICIPIOINI'
      Size = 40
    end
    object qryCTE_MUFINI: TStringField
      FieldName = 'UFINI'
      Origin = 'UFINI'
      Size = 2
    end
    object qryCTE_MCODMUNFIM: TIntegerField
      FieldName = 'CODMUNFIM'
      Origin = 'CODMUNFIM'
    end
    object qryCTE_MMINICIPIOFIM: TStringField
      FieldName = 'MINICIPIOFIM'
      Origin = 'MINICIPIOFIM'
      Size = 40
    end
    object qryCTE_MUFFIM: TStringField
      FieldName = 'UFFIM'
      Origin = 'UFFIM'
      Size = 2
    end
    object qryCTE_MDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Origin = 'DESCRICAOSERVICO'
      Size = 120
    end
    object qryCTE_MRESPSEG: TIntegerField
      FieldName = 'RESPSEG'
      Origin = 'RESPSEG'
    end
    object qryCTE_MXSEG: TStringField
      FieldName = 'XSEG'
      Origin = 'XSEG'
      Size = 50
    end
    object qryCTE_MNAPOLICE: TStringField
      FieldName = 'NAPOLICE'
      Origin = 'NAPOLICE'
    end
    object qryCTE_MTAF: TStringField
      FieldName = 'TAF'
      Origin = 'TAF'
    end
    object qryCTE_MNROREGESTADUAL: TStringField
      FieldName = 'NROREGESTADUAL'
      Origin = 'NROREGESTADUAL'
    end
    object qryCTE_MTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCTE_MSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCTE_MFKTRANSPORTADOR: TIntegerField
      FieldName = 'FKTRANSPORTADOR'
      Origin = 'FKTRANSPORTADOR'
    end
    object qryCTE_MFK_DESTINATARIO: TIntegerField
      FieldName = 'FK_DESTINATARIO'
      Origin = 'FK_DESTINATARIO'
    end
    object qryCTE_MFK_REMETENTE: TIntegerField
      FieldName = 'FK_REMETENTE'
      Origin = 'FK_REMETENTE'
    end
    object qryCTE_MFK_VEICULO: TStringField
      FieldName = 'FK_VEICULO'
      Origin = 'FK_VEICULO'
      Size = 7
    end
    object qryCTE_MPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryCTE_MXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryCTE_MDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCTE_MHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryCTE_MFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
    end
    object qryCTE_MDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 1
    end
    object qryCTE_MDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCTE_MTOMADOR: TStringField
      FieldName = 'TOMADOR'
      Origin = 'TOMADOR'
      Size = 15
    end
    object qryCTE_MMETRAGEM: TStringField
      FieldName = 'METRAGEM'
      Origin = 'METRAGEM'
      Size = 3
    end
    object qryCTE_MVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 25
      Calculated = True
    end
    object qryCTE_MOBS_FISCO: TMemoField
      FieldName = 'OBS_FISCO'
      Origin = 'OBS_FISCO'
      BlobType = ftMemo
    end
    object qryCTE_MOBS_CONTRIBUINTE: TMemoField
      FieldName = 'OBS_CONTRIBUINTE'
      Origin = 'OBS_CONTRIBUINTE'
      BlobType = ftMemo
    end
    object qryCTE_MVIRTUAL_CFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CFOP'
      LookupDataSet = qryCFOP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CFOP'
      Size = 100
      Lookup = True
    end
    object qryCTE_MVIRTUAL_PLACA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PLACA'
      LookupDataSet = qryVeiculo
      LookupKeyFields = 'PLACA'
      LookupResultField = 'PLACA'
      KeyFields = 'FK_VEICULO'
      Lookup = True
    end
    object qryCTE_MVIRTUAL_DESTINATARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_DESTINATARIO'
      LookupDataSet = qryDestinatario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_DESTINATARIO'
      Size = 50
      Lookup = True
    end
    object qryCTE_MVIRTUAL_ORIGEM: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ORIGEM'
      LookupDataSet = qryESOrigem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODMUNINI'
      Size = 50
      Lookup = True
    end
    object qryCTE_MVIRTUAL_DESTINO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_DESTINO'
      LookupDataSet = qryESDestino
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODMUNFIM'
      Size = 50
      Lookup = True
    end
    object qryCTE_MVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 50
      Lookup = True
    end
    object qryCTE_MCHAVE_REFERENCIADA: TStringField
      FieldName = 'CHAVE_REFERENCIADA'
      Origin = 'CHAVE_REFERENCIADA'
      Size = 44
    end
    object qryCTE_MVIRTUAL_REMETENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_REMETENTE'
      LookupDataSet = qryRemetente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FK_REMETENTE'
      Size = 50
      Lookup = True
    end
    object qryCTE_MFKTOMADOR: TIntegerField
      FieldName = 'FKTOMADOR'
      Origin = 'FKTOMADOR'
    end
    object qryCTE_MNAVERBACAO: TStringField
      FieldName = 'NAVERBACAO'
      Origin = 'NAVERBACAO'
    end
    object qryCTE_MCNPJ_SEGURADORA: TStringField
      FieldName = 'CNPJ_SEGURADORA'
      Origin = 'CNPJ_SEGURADORA'
    end
    object qryCTE_MTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Origin = 'RECEBIDO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVINSS: TFMTBCDField
      FieldName = 'VINSS'
      Origin = 'VINSS'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVIR: TFMTBCDField
      FieldName = 'VIR'
      Origin = 'VIR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVCLSS: TFMTBCDField
      FieldName = 'VCLSS'
      Origin = 'VCLSS'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVTOTTIRB: TFMTBCDField
      FieldName = 'VTOTTIRB'
      Origin = 'VTOTTIRB'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryCTE_MVALOR_SERVICO: TFMTBCDField
      FieldName = 'VALOR_SERVICO'
      Origin = 'VALOR_SERVICO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVALOR_CARGA: TFMTBCDField
      FieldName = 'VALOR_CARGA'
      Origin = 'VALOR_CARGA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MALIQUOTA_ICMS: TFMTBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'ALIQUOTA_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryCTE_MOUTROS_TRIBUTOS: TFMTBCDField
      FieldName = 'OUTROS_TRIBUTOS'
      Origin = 'OUTROS_TRIBUTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_MPESOL: TFMTBCDField
      FieldName = 'PESOL'
      Precision = 18
      Size = 4
    end
    object qryCTE_MPESOB: TFMTBCDField
      FieldName = 'PESOB'
      Precision = 18
      Size = 4
    end
  end
  object dsCTE_M: TDataSource
    DataSet = qryCTE_M
    OnDataChange = dsCTE_MDataChange
    Left = 56
    Top = 392
  end
  object dsCTE_D: TDataSource
    DataSet = qryCTE_D
    Left = 120
    Top = 392
  end
  object qryCTE_D: TFDQuery
    BeforeInsert = qryCTE_DBeforeInsert
    AfterInsert = qryCTE_DAfterInsert
    AfterEdit = qryCTE_DAfterEdit
    AfterPost = qryCTE_DAfterPost
    AfterDelete = qryCTE_DAfterDelete
    OnNewRecord = qryCTE_DNewRecord
    AggregatesActive = True
    MasterSource = dsCTE_M
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM CTE_DETALHE CD'
      'WHERE'
      'CD.FK_CTE_MASTER=:CODIGO'
      'order by 1'
      '')
    Left = 123
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCTE_DCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCTE_DFK_CTE_MASTER: TIntegerField
      FieldName = 'FK_CTE_MASTER'
      Origin = 'FK_CTE_MASTER'
    end
    object qryCTE_DNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCTE_DDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryCTE_DCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryCTE_DUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryCTE_DFK_DESTINATARIO: TIntegerField
      FieldName = 'FK_DESTINATARIO'
      Origin = 'FK_DESTINATARIO'
    end
    object qryCTE_DTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCTE_DQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      OnValidate = qryCTE_DQTDValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryCTE_DPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      OnValidate = qryCTE_DQTDValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
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
      'pro.CEST,'
      'pro.aliq_icm,'
      'pro.aliq_ipi,'
      'pro.CSTIPI,'
      'pro.cste,'
      'pro.csts,'
      'pro.aliq_pis,'
      'pro.aliq_cof,'
      'pro.fcp,'
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
    Left = 198
    Top = 328
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
    object qryProdutoPR_VENDA: TBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
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
    object qryProdutoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
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
    object qryProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
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
    object qryProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      Required = True
    end
    object qryProdutoALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryProdutoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdutoFCP: TBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
  end
  object qryTransp: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from TRANSPORTADORA'
      'order by nome')
    Left = 296
    Top = 392
    object qryTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryTranspCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTranspIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qryTranspAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 40
    end
    object qryTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTranspNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTranspCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qryTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 45
    end
    object qryTranspUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTranspCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryTranspPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      EditMask = 'LLL-0000;0;'
      Size = 7
    end
    object qryTranspUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      Size = 2
    end
    object qryTranspRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 10
    end
    object qryTranspATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTranspEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
  end
  object qryCFOP: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cfop'
      'WHERE'
      'ATIVO='#39'S'#39' AND'
      'TIPO='#39'S'#39)
    Left = 376
    Top = 336
    object qryCFOPCODIGO: TIntegerField
      DisplayWidth = 20
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryCFOPTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCFOPMOV_ES: TStringField
      FieldName = 'MOV_ES'
      Origin = 'MOV_ES'
      Size = 1
    end
    object qryCFOPATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 376
    Top = 392
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 448
    Top = 376
  end
  object qryPesquisaCTE: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo from cte_master'
      'where'
      'numero=:numero and'
      'codigo<>:codigo and'
      'fkempresa=:empresa')
    Left = 200
    Top = 392
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryPesquisaCTECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryVeiculo: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select vc.* from veiculos_cavalo vc'
      'order by vc.placa')
    Left = 640
    Top = 312
    object qryVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryVeiculoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryVeiculoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryVeiculoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryVeiculoRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
    object qryVeiculoRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 8
    end
    object qryVeiculoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryVeiculoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryVeiculoCARROCERIA: TIntegerField
      FieldName = 'CARROCERIA'
      Origin = 'CARROCERIA'
    end
    object qryVeiculoTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 3
    end
    object qryVeiculoPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
  end
  object qryVeiculo_Reboque: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select vc.* from veiculos_reboque vc'
      'where'
      'placa_cavalo=:placa'
      'order by vc.codigo')
    Left = 640
    Top = 376
    ParamData = <
      item
        Name = 'PLACA'
        DataType = ftString
        ParamType = ptInput
        Size = 7
        Value = Null
      end>
    object qryVeiculo_ReboqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVeiculo_ReboquePLACA_CAVALO: TStringField
      FieldName = 'PLACA_CAVALO'
      Origin = 'PLACA_CAVALO'
      Required = True
      Size = 7
    end
    object qryVeiculo_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryVeiculo_ReboqueMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryVeiculo_ReboqueUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryVeiculo_ReboqueRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 8
    end
    object qryVeiculo_ReboqueRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 10
    end
    object qryVeiculo_ReboqueTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryVeiculo_ReboqueCARROCERIA: TSmallintField
      FieldName = 'CARROCERIA'
      Origin = 'CARROCERIA'
    end
    object qryVeiculo_ReboquePESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
    object qryVeiculo_ReboqueTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 3
    end
  end
  object dsReboque: TDataSource
    DataSet = qryVeiculo_Reboque
    Left = 840
    Top = 296
  end
  object qryESOrigem: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO,DESCRICAO, UF from cidade'
      'order by descricao')
    Left = 712
    Top = 312
    object qryESOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryESOrigemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryESOrigemUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object qryESDestino: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO,DESCRICAO, UF from cidade'
      'order by descricao')
    Left = 720
    Top = 376
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryESDestinoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object qryUFOrigem: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO,DESCRICAO, UF from cidade'
      'order by descricao')
    Left = 544
    Top = 376
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryUFOrigemUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object dsTransp: TDataSource
    DataSet = qryTransp
    Left = 288
    Top = 328
  end
  object dsVeiculo: TDataSource
    DataSet = qryVeiculo
    OnDataChange = dsVeiculoDataChange
    Left = 888
    Top = 200
  end
  object qryDestinatario: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cte_destinatario'
      'order by nome')
    Left = 904
    Top = 320
    object qryDestinatarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDestinatarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryDestinatarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryDestinatarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryDestinatarioID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object qryDestinatarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryDestinatarioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryDestinatarioUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryDestinatarioPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryDestinatarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryDestinatarioIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryDestinatarioFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 12
    end
    object qryDestinatarioFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryDestinatarioFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryDestinatarioATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object qryDestinatarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
  end
  object qryRemetente: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cte_remetente'
      'order by nome')
    Left = 240
    Top = 248
    object qryRemetenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRemetenteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryRemetenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryRemetenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryRemetenteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object qryRemetenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryRemetenteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryRemetenteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryRemetentePESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryRemetenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryRemetenteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryRemetenteFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 12
    end
    object qryRemetenteFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryRemetenteFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryRemetenteATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object qryRemetenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryRemetenteCONTRIBUINTE: TStringField
      FieldName = 'CONTRIBUINTE'
      Origin = 'CONTRIBUINTE'
      Size = 1
    end
  end
  object dsOrigem: TDataSource
    DataSet = qryESOrigem
    Left = 776
    Top = 320
  end
  object dsDestino: TDataSource
    DataSet = qryESDestino
    Left = 808
    Top = 368
  end
  object dsCTe_Seguradora: TDataSource
    DataSet = qryCte_Seguradora
    Left = 376
    Top = 288
  end
  object qryCte_Seguradora: TFDQuery
    BeforeInsert = qryCte_SeguradoraBeforeInsert
    BeforePost = qryCte_SeguradoraBeforePost
    AfterPost = qryCte_SeguradoraAfterPost
    AfterDelete = qryCte_SeguradoraAfterDelete
    OnNewRecord = qryCte_SeguradoraNewRecord
    MasterSource = dsCTE_M
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cte_seguradora'
      'where'
      'fk_cte=:codigo')
    Left = 376
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCte_SeguradoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCte_SeguradoraFK_CTE: TIntegerField
      FieldName = 'FK_CTE'
      Origin = 'FK_CTE'
    end
    object qryCte_SeguradoraRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 100
    end
    object qryCte_SeguradoraNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryCte_SeguradoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '##.###.###/####-##;0;'
    end
    object qryCte_SeguradoraAPOLICE: TStringField
      FieldName = 'APOLICE'
      Origin = 'APOLICE'
      Size = 100
    end
    object qryCte_SeguradoraAVERBACAO: TStringField
      FieldName = 'AVERBACAO'
      Origin = 'AVERBACAO'
      Size = 100
    end
    object qryCte_SeguradoraVALOR_SEGURADO: TBCDField
      FieldName = 'VALOR_SEGURADO'
      Origin = 'VALOR_SEGURADO'
      Precision = 18
    end
  end
end
