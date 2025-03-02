object frmCadNFe: TfrmCadNFe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emissao de NFe'
  ClientHeight = 739
  ClientWidth = 1011
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 997
    Height = 162
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 832
      Top = 9
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
    object Label4: TLabel
      Left = 865
      Top = 9
      Width = 29
      Height = 17
      Caption = 'CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 8
      Top = 106
      Width = 59
      Height = 17
      Caption = 'Finalidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 678
      Top = 58
      Width = 79
      Height = 17
      Caption = 'Data Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 789
      Top = 57
      Width = 63
      Height = 17
      Caption = 'Data Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 239
      Top = 105
      Width = 66
      Height = 17
      Caption = 'Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 571
      Top = 58
      Width = 61
      Height = 17
      Caption = 'N'#186' Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 407
      Top = 106
      Width = 87
      Height = 17
      Caption = 'Forma de Pgto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 682
      Top = 105
      Width = 80
      Height = 17
      Caption = 'Meio de Pgto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 8
      Top = 57
      Width = 134
      Height = 17
      Caption = 'Natureza da Opera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 49
      Height = 17
      Caption = 'N'#186' Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 832
      Top = 29
      Width = 26
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Color = 16053492
      Ctl3D = False
      DataField = 'VIRTUAL_UF_CLIENTE'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 865
      Top = 29
      Width = 121
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Color = 16053492
      Ctl3D = False
      DataField = 'VIRTUAL_CNPJ'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBComboBoxEh4: TDBComboBoxEh
      Left = 8
      Top = 126
      Width = 222
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FINALIDADE'
      DataSource = dsVenda
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'NORMAL'
        'COMPLEMENTAR'
        'AJUSTE'
        'DEVOLU'#199#195'O')
      KeyItems.Strings = (
        '0'
        '1'
        '2'
        '3')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Visible = True
      OnKeyPress = DBComboBoxEh4KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 678
      Top = 77
      Width = 100
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'DATA_EMISSAO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit27: TDBEdit
      Left = 789
      Top = 77
      Width = 100
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'DATA_SAIDA'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object DBComboBoxEh5: TDBComboBoxEh
      Left = 239
      Top = 126
      Width = 162
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'MOVIMENTO'
      DataSource = dsVenda
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
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
      TabOrder = 10
      Visible = True
      OnKeyPress = DBComboBoxEh4KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 572
      Top = 77
      Width = 100
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'NPEDIDO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DBCheckBox1: TDBCheckBox
      Left = 894
      Top = 60
      Width = 90
      Height = 48
      TabStop = False
      Caption = 'Cliente '#233' Consumidor Final'
      DataField = 'CONSUMIDOR_FINAL'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      WordWrap = True
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 407
      Top = 126
      Width = 269
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'INDPAG'
      DataSource = dsVenda
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        #192' VISTA'
        #192' PRAZO'
        'OUTRAS'
        'NENHUM')
      KeyItems.Strings = (
        '0'
        '1'
        '2'
        '3')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      Visible = True
      OnKeyPress = DBComboBoxEh4KeyPress
    end
    object DBComboBoxEh3: TDBComboBoxEh
      Left = 682
      Top = 126
      Width = 304
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TPPAG'
      DataSource = dsVenda
      DynProps = <>
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE'
        'CART'#195'O CR'#201'DITO'
        'CART'#195'O D'#201'BITO'
        'CR'#201'DITO LOJA'
        'VALE ALIMENTA'#199#195'O'
        'VALE REFEI'#199#195'O'
        'VALE PRESENTE'
        'VALE COMBUST'#205'VEL'
        'DUPLICATA'
        'BOLETO'
        'SEM PAGAMENTO'
        'OUTROS')
      KeyItems.Strings = (
        '0'
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
        '12')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      Visible = True
      OnKeyPress = DBComboBoxEh4KeyPress
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 70
      Top = 77
      Width = 495
      Height = 23
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'CFOP'
      DataSource = dsVenda
      DropDownBox.AutoDrop = True
      DropDownBox.ShowTitles = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsCFOP
      ParentFont = False
      TabOrder = 5
      Visible = True
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit38: TDBEdit
      Left = 8
      Top = 77
      Width = 57
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'CFOP'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 29
      Width = 72
      Height = 23
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object pnPessoa: TPanel
      Left = 85
      Top = 9
      Width = 743
      Height = 46
      Align = alCustom
      BevelOuter = bvNone
      TabOrder = 1
      OnExit = pnPessoaExit
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 743
        Height = 17
        Align = alTop
        Caption = 'Raz'#227'o Social ou CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 126
      end
      object DBGridPessooa: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 49
        Width = 737
        Height = 0
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsClientes
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        IndicatorOptions = []
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghData3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnDblClick = DBGridPessooaDblClick
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
      object DBEdit40: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 737
        Height = 23
        Align = alTop
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NOME'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = DBEdit40Change
        OnKeyDown = DBEdit40KeyDown
        OnKeyPress = DBEdit40KeyPress
      end
    end
  end
  object PageControl2: TPageControl
    AlignWithMargins = True
    Left = 7
    Top = 176
    Width = 997
    Height = 347
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnChange = PageControl2Change
    object TabSheet5: TTabSheet
      Caption = 'Itens'
      object Label37: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 983
        Height = 17
        Align = alTop
        Caption = '     Clique na tecla [DELETE] para excluir ITEM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 265
      end
      object DBGridEh1: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 26
        Width = 983
        Height = 225
        Hint = 'D'#234' Duplo Click para Alterar os Dados Produto'
        Align = alClient
        DataSource = dsItem
        DynProps = <>
        EvenRowColor = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleParams.Font.Charset = ANSI_CHARSET
        TitleParams.Font.Color = clBlack
        TitleParams.Font.Height = -13
        TitleParams.Font.Name = 'Segoe UI Semibold'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        OnColEnter = DBGridEh1ColEnter
        OnDblClick = DBGridEh1DblClick
        OnEnter = DBGridEh1Enter
        OnExit = DBGridEh1Exit
        OnKeyDown = DBGridEh1KeyDown
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_PRODUTO'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.'
            Width = 60
          end
          item
            AutoDropDown = True
            CellButtons = <>
            DropDownBox.ColumnDefValues.AutoDropDown = True
            DropDownBox.ColumnDefValues.DropDownShowTitles = True
            DropDownBox.Columns = <
              item
                FieldName = 'CODIGO'
                Title.Caption = 'C'#243'digo'
              end
              item
                FieldName = 'DESCRICAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Descri'#231#227'o'
                Width = 550
              end
              item
                Alignment = taRightJustify
                FieldName = 'QTD_ATUAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd.'
                Width = 80
              end
              item
                Alignment = taRightJustify
                FieldName = 'PR_VENDA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Caption = 'Pre'#231'o'
              end>
            DropDownBox.ListFieldNames = 'DESCRICAO'
            DropDownBox.ListSource = dsProduto
            DropDownBox.ListSourceAutoFilterType = lsftContainsEh
            DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
            DropDownShowTitles = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRICAO'
            Footers = <>
            LimitTextToListValues = False
            LookupParams.LookupCache = False
            Title.Caption = 'Pesquisar por C'#243'digo ou Descri'#231#227'o'
            Width = 500
            OnUpdateData = DBGridEh1Columns2UpdateData
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CFOP'
            Footers = <>
            Title.Alignment = taCenter
            Width = 50
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CST'
            Footers = <>
            Title.Alignment = taCenter
            Width = 50
          end
          item
            Alignment = taCenter
            CellButtons = <>
            CellDataIsLink = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CSOSN'
            Footers = <>
            Title.Alignment = taCenter
            Width = 50
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTD'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 50
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
            Width = 50
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UNIDADE'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Und.'
            Width = 35
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 50
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NPEDIDO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 257
        Width = 983
        Height = 55
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object grpSelecao: TGroupBox
          Left = 0
          Top = 0
          Width = 321
          Height = 55
          Align = alLeft
          Caption = 'F11 | Passe o C'#243'digo de Barras para Adicionar Item'
          Color = clWhite
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object EdtProduto: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 22
            Width = 296
            Height = 25
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnChange = EdtProdutoChange
            OnEnter = EdtProdutoEnter
            OnExit = EdtProdutoExit
            OnKeyPress = EdtProdutoKeyPress
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Impostos  / Outros'
      ImageIndex = 2
      object DBText2: TDBText
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 983
        Height = 17
        Align = alTop
        DataField = 'VIRTUAL_PRODUTO'
        DataSource = dsItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 464
        ExplicitTop = 120
        ExplicitWidth = 65
      end
      object DBGridEh3: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 26
        Width = 983
        Height = 286
        Align = alClient
        DataSource = dsItem
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
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_PRODUTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cod.'
            Width = 60
          end
          item
            AutoDropDown = True
            CellButtons = <>
            DropDownBox.ColumnDefValues.AutoDropDown = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRICAO_COMPLEMENTAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Informa'#231#245'es Adicionais do Produto'
            Width = 440
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SEGURO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Seguro'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FRETE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Frete'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OUTROS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Outros'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCONTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CST_IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'CST IPI'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COD_ENQ_IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Cod.Enq.IPI'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALIQ_IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Aliq.IPI'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALOR_IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Valor IPI'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CST'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BASE_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALIQ_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Aliq.ICMS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALOR_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Valor ICMS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALIQ_PIS_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Aliq.PIS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALOR_PIS_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Valor PIS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALIQ_COFINS_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Aliq.COF'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALOR_COFINS_ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Valor COFINS'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BASE_ICMS_ST'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Base ST'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = '% MVA'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALOR_ICMS_ST'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Valor Icms ST'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VIRTUAL_MOTIVO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Motivo da Desonera'#231#227'o'
            Width = 170
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BASE_DESONERACAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Base Deson'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALIQ_DESONERACAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Desc. Deson'
            Width = 90
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VICMSDESON'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Valor Deson.'
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 12
        Top = 2
        Width = 450
        Height = 271
        ActivePage = TabSheet7
        TabOrder = 0
        OnChange = PageControl3Change
        object TabSheet7: TTabSheet
          Caption = #192' Prazo'
          object Label26: TLabel
            Left = 18
            Top = 8
            Width = 80
            Height = 17
            Caption = 'Total da Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 140
            Top = 8
            Width = 48
            Height = 17
            Caption = 'Parcelas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 151
            Top = 214
            Width = 105
            Height = 17
            Caption = 'Total das Parcelas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit25: TDBEdit
            Left = 18
            Top = 29
            Width = 115
            Height = 23
            TabStop = False
            Color = 16053492
            Ctl3D = False
            DataField = 'TOTAL'
            DataSource = dsVenda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtParcela: TEdit
            Left = 140
            Top = 28
            Width = 64
            Height = 23
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumbersOnly = True
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '1'
          end
          object cxGerar: TBitBtn
            Left = 226
            Top = 23
            Width = 95
            Height = 30
            Caption = 'Gerar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = cxGerarClick
          end
          object cxBoleto: TBitBtn
            Left = 327
            Top = 23
            Width = 95
            Height = 30
            Caption = 'Boleto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = cxBoletoClick
          end
          object DBGridEh2: TDBGridEh
            Left = 18
            Top = 58
            Width = 402
            Height = 143
            DataSource = dsFatura
            DynProps = <>
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            IndicatorOptions = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 4
            TitleParams.Font.Charset = ANSI_CHARSET
            TitleParams.Font.Color = clWindowText
            TitleParams.Font.Height = -13
            TitleParams.Font.Name = 'Segoe UI Semibold'
            TitleParams.Font.Style = [fsBold]
            TitleParams.ParentFont = False
            OnKeyPress = DBGridEh2KeyPress
            Columns = <
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC'
                Footers = <>
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Width = 125
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DTVENCIMENTO'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Width = 125
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VALOR'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 125
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object DBEdit9: TDBEdit
            Left = 305
            Top = 209
            Width = 115
            Height = 25
            TabStop = False
            Color = 16053492
            Ctl3D = True
            DataField = 'TVALOR'
            DataSource = dsFatura
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object TabSheet9: TTabSheet
          Caption = #192' Vista'
          ImageIndex = 1
          object Label54: TLabel
            Left = 26
            Top = 16
            Width = 49
            Height = 17
            Caption = 'Valor R$'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit44: TDBEdit
            Left = 26
            Top = 38
            Width = 155
            Height = 25
            Ctl3D = True
            DataField = 'DINHEIRO'
            DataSource = dsVenda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Volumes'
      ImageIndex = 3
      object Label27: TLabel
        Left = 76
        Top = 42
        Width = 44
        Height = 17
        Caption = 'Esp'#233'cie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 82
        Top = 65
        Width = 37
        Height = 17
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 53
        Top = 118
        Width = 68
        Height = 17
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 47
        Top = 145
        Width = 75
        Height = 17
        Caption = 'Peso L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 58
        Top = 172
        Width = 63
        Height = 17
        Caption = 'Peso Bruto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 52
        Top = 92
        Width = 68
        Height = 17
        Caption = 'Numera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit28: TDBEdit
        Left = 126
        Top = 38
        Width = 203
        Height = 23
        Ctl3D = False
        DataField = 'ESPECIE'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit29: TDBEdit
        Left = 126
        Top = 65
        Width = 203
        Height = 23
        Ctl3D = False
        DataField = 'MARCA'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit30: TDBEdit
        Left = 126
        Top = 119
        Width = 115
        Height = 23
        Ctl3D = False
        DataField = 'QVOL'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit31: TDBEdit
        Left = 126
        Top = 146
        Width = 74
        Height = 23
        Ctl3D = False
        DataField = 'PESOL'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit32: TDBEdit
        Left = 126
        Top = 173
        Width = 75
        Height = 23
        Ctl3D = False
        DataField = 'PESOB'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit45: TDBEdit
        Left = 126
        Top = 92
        Width = 203
        Height = 23
        Ctl3D = False
        DataField = 'NUMERACAO'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Informa'#231#245'es do Fisco'
      ImageIndex = 4
      object DBMemoEh1: TDBMemoEh
        Left = 0
        Top = 0
        Width = 989
        Height = 315
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBSFISCO'
        DataSource = dsVenda
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Flat = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        WantReturns = True
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Informa'#231#245'es do Contribuinte'
      ImageIndex = 5
      object DBMemoEh2: TDBMemoEh
        Left = 0
        Top = 0
        Width = 989
        Height = 315
        Align = alClient
        AutoSize = False
        Ctl3D = False
        DataField = 'OBSCONTRIBUINTE'
        DataSource = dsVenda
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Flat = True
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        WantReturns = True
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Transportadora'
      ImageIndex = 6
      object Label9: TLabel
        Left = 38
        Top = 29
        Width = 92
        Height = 17
        Caption = 'Frete por Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 46
        Top = 60
        Width = 84
        Height = 17
        Caption = 'Transportador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 100
        Top = 88
        Width = 30
        Height = 17
        Caption = 'Placa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 115
        Top = 117
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
      object DBComboBoxEh1: TDBComboBoxEh
        Left = 135
        Top = 29
        Width = 234
        Height = 23
        Ctl3D = False
        DataField = 'TIPO_FRETE'
        DataSource = dsVenda
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'EMITENTE'
          'DESTIN'#193'RIO'
          'TERCEIRO'
          'REMETENTE'
          'SEM FRETE')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '5')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
      end
      object DBEdit5: TDBEdit
        Left = 135
        Top = 58
        Width = 52
        Height = 23
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_TRANSPORTADOR'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 135
        Top = 87
        Width = 106
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'PLACA'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 135
        Top = 116
        Width = 34
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'UFPLACA'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object DBLookupComboboxEh2: TDBLookupComboboxEh
        Left = 190
        Top = 58
        Width = 404
        Height = 23
        Ctl3D = False
        ParentCtl3D = False
        DynProps = <>
        DataField = 'VIRTUAL_TRANSP'
        DataSource = dsVenda
        DropDownBox.AutoDrop = True
        DropDownBox.ShowTitles = True
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = True
        OnKeyPress = cbEmpresaKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Refer'#234'ncia'
      ImageIndex = 7
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 989
        Height = 315
        Align = alClient
        DataSource = dsReferencia
        DynProps = <>
        TabOrder = 0
        TitleParams.Font.Charset = ANSI_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -13
        TitleParams.Font.Name = 'Segoe UI Semibold'
        TitleParams.Font.Style = [fsBold]
        TitleParams.ParentFont = False
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CODIGO'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FK_NFE'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REFERENCIA'
            Footers = <>
            Title.Caption = 'Refer'#234'ncia'
            Width = 350
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Conting'#234'ncia'
      ImageIndex = 8
      object Label42: TLabel
        Left = 17
        Top = 21
        Width = 203
        Height = 17
        Caption = 'Motivo de Entrada em Contig'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit35: TDBEdit
        Left = 17
        Top = 42
        Width = 757
        Height = 23
        Color = clWhite
        Ctl3D = False
        DataField = 'MOTIVO_CONTIGENCIA'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cart'#227'o de Cr'#233'dito'
      ImageIndex = 9
      object Label44: TLabel
        Left = 20
        Top = 20
        Width = 213
        Height = 17
        Caption = 'Tipo de Integra'#231#227'o para pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 20
        Top = 114
        Width = 197
        Height = 17
        Caption = 'Bandeira da operadora de cart'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 235
        Top = 67
        Width = 140
        Height = 17
        Caption = 'N'#250'mero de Autoriza'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 20
        Top = 67
        Width = 198
        Height = 17
        Caption = 'CNPJ da Credenciadora de cart'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBoxEh6: TDBComboBoxEh
        Left = 20
        Top = 39
        Width = 469
        Height = 23
        Ctl3D = False
        DataField = 'TPINTEGRA'
        DataSource = dsVenda
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'Pagamento integrado com o sistema de automa'#231#227'o da empresa '
          'Pagamento n'#227'o integrado com o sistema de automa'#231#227'o da empresa')
        KeyItems.Strings = (
          '0'
          '1')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        OnKeyPress = DBComboBoxEh4KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 20
        Top = 85
        Width = 198
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'CNPJ_CARTAO'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBComboBoxEh7: TDBComboBoxEh
        Left = 20
        Top = 135
        Width = 221
        Height = 23
        Ctl3D = False
        DataField = 'TPBANDEIRA'
        DataSource = dsVenda
        DynProps = <>
        EditButtons = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'Visa'
          'Mastercard'
          'American Express'
          'Sorocred'
          'Diners Club'
          'Elo'
          'Hipercard'
          'Aura'
          'Cabal'
          'Outros')
        KeyItems.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Visible = True
        OnKeyPress = DBComboBoxEh4KeyPress
      end
      object DBEdit37: TDBEdit
        Left = 235
        Top = 85
        Width = 254
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'NUMERO_AUTORIZACAO'
        DataSource = dsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'ANP'
      ImageIndex = 10
      object Label49: TLabel
        Left = 78
        Top = 75
        Width = 54
        Height = 17
        Caption = 'vBCSTRet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 66
        Top = 100
        Width = 69
        Height = 17
        Caption = 'vICMSSTRet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 72
        Top = 129
        Width = 61
        Height = 17
        Caption = 'vBCSTDest'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 59
        Top = 154
        Width = 76
        Height = 17
        Caption = 'vICMSSTDest'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit39: TDBEdit
        Left = 141
        Top = 73
        Width = 115
        Height = 23
        Ctl3D = False
        DataField = 'VBCSTRET'
        DataSource = dsItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit41: TDBEdit
        Left = 141
        Top = 100
        Width = 115
        Height = 23
        Ctl3D = False
        DataField = 'VICMSSTRET'
        DataSource = dsItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit42: TDBEdit
        Left = 141
        Top = 127
        Width = 115
        Height = 23
        Ctl3D = False
        DataField = 'VBCSTDEST'
        DataSource = dsItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit43: TDBEdit
        Left = 141
        Top = 154
        Width = 115
        Height = 23
        Ctl3D = False
        DataField = 'VICMSSTDEST'
        DataSource = dsItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 643
    Width = 997
    Height = 89
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object cxTransmitir: TcxButton
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
      Caption = 'F4 | Transmitir'
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
      Left = 435
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F6 | Importar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA79300000262494441545809ED97BF
        6B154110C7E7C283FC09A611432060E7034D27E459586BA1B111D24508626D11
        306225A4782049C0EA42B079AD6D2027A4B430754208C1D222D61A369FD9DC9D
        97E3EE7637EF0E2CDE30DFFD313B33FBDDB9BDE33D91894C2A305E05A2BA7063
        CC1C6B2B605C3D89A2E8B32621E7BA5C498CED544284E0016843F7B37D0BC906
        5223BD1A7BD9BC573604CC0F037CC58B10E57D1C92741CDFA97182BB889D1072
        55F5BFAB90D7A5E6751DB94E96AEEFF3026CEB989879FA0FA0EAD0EF8C31ABAC
        65BA4BDCD76C52D91370D3EFD05A96901C4BE00F68D24F2CE61F68AF0AB181FD
        D2D2FBE86D3698E7C44760C45863BED054EDB589FD0D7E86BE59499457A8D9D3
        BD4AAE17E02F28EA2693BC32CE2C38B746483723DFB231E602A86ED15492A92A
        A3C6B70E1ECB4E4A6281E4AF99BB1F138EB912DC6A85F2C48E41D52BE908F15F
        E650CFC02938284761DB00BAB6515CEB15276D8CD964489E3E509DA1B90366B0
        27725DEE32BD055EB2F680DEAA17210246D6BBA1E14E2CA5CB4A66311D67DD34
        83B20D935525A5B0132F42783E07A1FA8D8073F004FC064350D4A74CEE8143F0
        032C03BFDF4338867C1871B79A88C81E3807BFA8E0BA1484AAFF64FA101C8063
        E04F8864AF0808D559117BE05810080CE4BA2809855AFBDA287ADA74043DB122
        287DA7AF7D1093D4B94B42EF234F81CB2360B54B427683D0C6EB0E7121BFBB12
        538CFCE3E6F225DF109F3ED03F8CB114C48B10FEF7419BAA6416499848499A08
        9DE0FB1674A1B188247205BA7F5A4B88477086DB47D0BA923B961AA92554E31F
        629EE5AE0CC44FF411FA79867A41220137D6A9D00DBBF6BF04DED1C41C40BDED
        EE0000000049454E44AE426082}
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
      Left = 328
      Top = 7
      Width = 100
      Height = 75
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alLeft
      Caption = 'F5 | Imprimir'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000001C9494441545809ED9431
        4BC36010862FD2A120623B59B4A08B082E75B1B80A22E2E2EA989FA093FE0541
        C19FE0E8A88B501C5C051D04A58B432388080A3AE8A04B7C0EDB2AB1A9D7AF69
        E990E37DF25D92BBEB7D973422A9A513E86E029E353D0CC32D62F3E0A217CFF3
        765C12637368A816BA5B2DB670E44626726E39AD12F400168D13340BC98BE1D4
        C26FF3C56884FBA0324F68C858BB6F616943FF8D7AE02614FB1DE24D5C6137CB
        5004D52A8761B880406C362522F3F00E27A0BAE750E1BB5461B58966F6A0D7DA
        6DD5CD9F09D14599C073D07B67ACB790A4A629B608219499D4256BBC68681354
        D71A8533A1A89F04D4F2E006541BD19A99E805CE4741F54CC6084E1570C322BB
        79C3EF4AD4D05A4FF522B9FADA5C5A35D4BC89F3018188E878D5C7EDADDA36C4
        6E3EF9F912F44D03F71D6A3BA1DF63E1C11F725E00173D32ED754BA2B9218A2D
        C024B8E8CE9AD449438D9AC7385760D11C416B60964B43478CFF400CC663F645
        24B186F2145CA26043D986E3B06623B5F27135327137B85E82534842631431D5
        1AB8BF3D8DDBC4C80350F96234827D500562B4819B50BB77286E4FDB6CD9179B
        156C613F512E0DCD90AEB024AF4E1ADAE7E773E0A25797A434279D80CB04BE00
        86063B53632587430000000049454E44AE426082}
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
    object cxProdutos: TcxButton
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
      Caption = 'F8 | Produtos'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002DE494441545809ED974D
        6B134118C76783AD0926B037DF2E5EFA7232A78817A5062D68557CA9370F7E03
        C14FD0BBDF43BC545AAAD0E69288474F1EABE0CD102D9220829112C7DF7FBBD3
        A6696D27EB6E28E2F2FC9FB79DD9E79F6766278931FFAF213A60AD2D80A921A6
        6437142245F00674C085EC2A793E191213E00B906CA0CE7B4ECD6E182426C127
        2039329DEA27D586D948972F70FDA6F019FC8D200836F127F11BC698D3E01B78
        648C79079CB41927B205121A63883FE21BE6EA3979F931BADC6BCAE7DE39B375
        B5C87589434241635AF83BC2CDBAB576118C298B9D013DB09F2C182E6E680CC6
        5AC24808EA76F7558F6EA0FAD233868B7801481A26BE72B175E61ECE63A04FDC
        30C628FE851D990C1252E1A294405B97B173A0074622FB118A0AD3C753200FA9
        5512F7417FA7CE1267227F2444B5695083D40948A95337885DA71E92AF10A72E
        071152B14BA8258A1720B586EF962F8F5F03D32055398C908A5D452D0F90EA90
        0BC15390AAF81052C16BA8E7901A8F3B75915867CBF60B409C8AF81252B1DBA8
        154869A3AFE35F015F4124E453D953C31052E159D4338A8FD1A9F7F80F807BFB
        F4025488FF4A8625A4627751EEF0D4297C8758A4426C0D944062494248C5B6F7
        0E9D5A21A1E56C6245AA8C4D2C49094505593A7778BE22510522750C9B587289
        676E4DD439F40262C7E994367A95F44F9058728967EE4CBC8EBB08F485BC8E9D
        07DA5398484A91F654691052A93929814EBDC4F67FCD94E960859C97A4456857
        3148AD91B8097A407BCAFB48489D10DD780274A2AF42661E7481DE3E1D09B807
        4BEA8428770BB88DBE847F19E8ED0BB1874A168454547B4ACB5464F9DE92A802
        91C244A2B733720655E012B4B984AFF5D60FEE1FC4F29523BD47F68CA1705BA3
        98A7399AABF03BF94D39E4F58FF835FE49D001B3E00308819ED7C28E56440AB8
        FF7D6D7CEFB72F33A69098024D203932A4CAB0D1DF758CFD8C9AC8AC03BE0F86
        84EB947E228FFBCECB745C4CAA9069917FEEE1BF0121EBA3022313747A000000
        0049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxProdutosClick
    end
    object cxPessoas: TcxButton
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
      Caption = 'F9 | Pessoas'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002F2494441545809ED944D
        48545114C7DF3863500E9A4D06D1A2C5445414D4B2CF65109650B40C09535A04
        6D13A9AD15B8E86B61B418CA3E288C01C145350542A4410841840B5D485F3342
        6DAC0974F4F6FBBFF7EEEBA93331A08B164FFEBF73CE3DE7DC737DF7CD8CE344
        7FD10D443710DD4074032B7303C69838B4C308FCF019C69F81F8CA9C52E5140E
        4CC24BA8A41714EAAA1CB7FC360EBB0FD23C26638C69F6C9186394C399BBCB3F
        89094C6A840EB80197E000E940AC77833DF45C50F0036AE74152CF2E3FED3A92
        874033AFE375C65AB750C9D0B41F3E4158F32C7AC1FD5CE02F82F411135B3C4B
        391803A94B758204DC81C59A24B1573D4BA0D0047990BE63B2F001ACECF0DB7E
        E2E192217E82FA23907A9522D0ADE05C8D6007611AA4AF9894FA1640B20BA402
        66B38AF818F480F41313872B200DA9A71C145F83D48D494011A4ABB69F451AA6
        40BA60F38127DB0FD2CD204940A209AC76101C01690EB38F9605227710F49A71
        E630662758A5C2CD246F81F4C4E66B6C80FF0552BD4C8886505C247E06A3A0BD
        034C6B8714AC830EF25988C13BC8819D4BE8D4CB8468F0E3708F97D230906631
        C795C537C22B902695132CB6C214545281C216BF57AFFD336B298771BF59F893
        A0B370A64DBD0B209B80B760354D5002AB666D60A13E7D8E66882B49B5CB1413
        FE9E16622BCDD46CBB1E2670FBD41B042C36400D58256D802FC12636EAAB9F25
        3E0AD2382603EF41DA8339ED384E1A3A613B7B4EE037C21CC47D92782BE5D6B3
        C8832736D5C228487A827B0467A113C6419AC73C07AB6E825A6FC25F4B6E15E8
        0671AE06B1DA8B339AA5999ADD47620EA43718FD63DE20166D2095302D5ED6B3
        ACEB6008C2EAF1AA952DCDD7202C3D4C5D7807C563300B526B5063A5A7C099BE
        20190A286C03AB2F04AB43E5B2213D6BE01B48BAA174B9468A0F401A50DD7E66
        F4FE722482DF03E240B1586C8C4501A47ED6BF15FC0B7A8AD49F8294673DA1A0
        0C8FC9E9EC02BE7AF1087A6D13F853D5EEA2B715B467A8DA3D515F7403D10D44
        3710DDC0FF7E037F009D2D0617AED547B00000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxPessoasClick
    end
    object cxTransp: TcxButton
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
      Caption = 'F10 | Transp.'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002A6494441545809ED954D
        68134114C7B375A568A10ACDA988E24541A9229E8A05450BA2908BF5A0203D0A
        5EBC7850C18337A5944A291E84225204EB41043F0ABDF420C183872254239462
        A528A815A1F8016D63D6DF3F6464BA8CD998CD060F1BFEBFD9F7DEBC796F3299
        24994CFA4A4F203D81269E40100487E115F483DFC4D6EE566C62128C5E639C74
        676632CCB5C02138F8B79CD8718AEF85FBF00B8C06EDC204F7C120BC07E9993D
        9F884D979D300E5291E1285C8102845522B02D918DD84569E2C11B706986E045
        F800D2257B6D62369D2E83B4CA300BDAC49FD3C01F00A990D826ECC274DA0A25
        907AED39D904F78351976282C03AD82EBBE150380FD26D5771266640D269F562
        8CC157588016D79A58318A9E0369896143B818B12190BE6B0871209C1FDBA741
        165640EA53418C0ED046F33CCD478A59D61CA3B9EC3795DF7068F004A4170C8F
        60196C7DC219816ED0B753971F33F8CCB03E890D9DA670588B0486A107D6DC15
        FC4E2882944B62431BA9FC0DA4E70C3968ADD688F92990EE55CBAB7B8ECA7741
        9AAAA508896741D21B69AB65CD3FE550F91848FA9FDB12B598C476F809D21957
        3E139B21EB9A8B8CB1D0878F205D885C4002890F409AC02D0B471BD5E9E5B175
        CF06CA13F50C14180169BA96F5249E00497F3DA730EEC012D82AD452CB994395
        6E30DAED4CAA0449F2A10F5620AC1F04C62007AD9525F53D28300BD22D8676BB
        0ABE7E837A780E83F971C42C4BA7F418AB1F36D9EB62D9149B04235DF01B38BB
        E03ACC076B5F25DC3CE8CE74C46AEC5A4CE1E3E0921ADBF17738D7A0CB55A761
        311A8C8334C1908521307A8B7115AADEADA8CDF85109A1F9B68ABFE079DE179A
        CF55FC459E3B881579364F6CE03C18BDC4580669B479BBB03AD1D98787606B1A
        A76117D6B3FAD56CB2812324EF817978CA47B5CA33557A02FFC509FC060EC1E1
        6D6CC690420000000049454E44AE426082}
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
    object cxPreview: TcxButton
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
      Caption = 'F3 | Preview'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000024000000240806000000E10098
        9800000006624B474400FF00FF00FFA0BDA793000002BC494441545809ED973D
        68144114C767358A1AD09060348541080A7EC63204C40DA8984241B0B2B0B0B2
        5144144B410BD30976B9460B8B20011541B13222F8058224A612512F0AC6281E
        8972F930597F6FDD59CEDB9DBDD9BB6C21DEF2FFCDBC99F7E6EDCBBB4DF6A254
        FDFAC73AE098EAF53C6F1BBE0B508DE63874DE719C8FCC8B230A72A1168D73B8
        236D350D9607729671127690A10D5AE10145F5388E33865D9B481476284D26CE
        0D81684606C843876D8E25B68155C4DDE0CC146C80879EE75915956541631472
        0026C1BAA82C0B523C3B4F28A6175215457C54B4D8055F51AF79870343202A30
        BC0FF8CCBC00A20F0CEB4C191A4C8E45D85F430E81E92FB5B3DA02E310511605
        F57197EB2AFEBA16BF6DB14B5B5DF065116E15E227FB33B8CA7065FA501BEE99
        B85D2F28B13D38EB1DA20989AA7728B13D38FFFB0E0DD38405302A8B5787F166
        BCFD3BF943DD44C03CC42AB382B87123775C0B2D300D5F6182A20ACCE945C2D4
        EF32CE34C319780CF3502EF9E29F63D355692F3904BE2A9D2568255C8629B0D5
        5302BB2BE50EFD045B7588B8ED300A5A52543F8B93F01A66E008EC8013F012B4
        7E615C84CABFED04552C88985E9804D12C431FAC8656F802A291F0A70C0C36F7
        789E37025A77305604EEF88980C482F0EF862288E46B69A7CEC4C659D0FA86D1
        223EE65DB034B097615F01ADDB18BE4FFC1170860561DF0C38AA0359DF07AD63
        7A5F6636AF42A93EB1B80B05689618017B15E88F5BBE7377C97E2C049616C4D2
        D74FC6AD7280B90DDE82483EAE5318FEB3C07C1CE2F44ECE0A3837C173D03A27
        FB4688DA0CFD319CD687F0B5C32BD07A81B10F96C33328D51C8B43B01E2E4111
        44F260873975EEAA673236420E4AF586853C1FA3CCD33001033008B3A095C7E8
        A9FAE6490749BC171E818DBE13245D6A2ACFE9946FD4BAE6463BC97118F6C346
        A594FC535864CEC330DC827BBC427E3047F41B769DC2909C72088F0000000049
        454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      TabOrder = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxPreviewClick
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 530
    Width = 997
    Height = 106
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label18: TLabel
      Left = 858
      Top = 5
      Width = 29
      Height = 17
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 12
      Top = 52
      Width = 42
      Height = 17
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 253
      Top = 5
      Width = 70
      Height = 17
      Caption = 'Valor Cofins'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 107
      Top = 52
      Width = 39
      Height = 17
      Caption = 'Outras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 577
      Top = 52
      Width = 83
      Height = 17
      Caption = 'Valor de ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 12
      Top = 5
      Width = 50
      Height = 17
      Caption = 'SubTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 374
      Top = 5
      Width = 48
      Height = 17
      Caption = 'Base PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 495
      Top = 5
      Width = 51
      Height = 17
      Caption = 'Valor PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 481
      Top = 52
      Width = 80
      Height = 17
      Caption = 'Base de ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 672
      Top = 52
      Width = 79
      Height = 17
      Caption = 'Base ICMS ST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 764
      Top = 52
      Width = 48
      Height = 17
      Caption = 'ICMS ST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 376
      Top = 52
      Width = 77
      Height = 17
      Caption = 'Desonera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 276
      Top = 52
      Width = 74
      Height = 17
      Caption = 'Desconto R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 737
      Top = 5
      Width = 66
      Height = 17
      Caption = 'Valor de IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 203
      Top = 52
      Width = 70
      Height = 17
      Caption = 'Desconto %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 858
      Top = 52
      Width = 28
      Height = 17
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 132
      Top = 5
      Width = 67
      Height = 17
      Caption = 'Base Cofins'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 616
      Top = 5
      Width = 63
      Height = 17
      Caption = 'Base de IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit13: TDBEdit
      Left = 616
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'BASE_IPI'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 737
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'TOTAL_IPI'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit18: TDBEdit
      Left = 858
      Top = 24
      Width = 115
      Height = 25
      Ctl3D = True
      DataField = 'FRETE'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit18Exit
    end
    object DBEdit19: TDBEdit
      Left = 12
      Top = 71
      Width = 91
      Height = 25
      Ctl3D = True
      DataField = 'SEGURO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit14: TDBEdit
      Left = 577
      Top = 71
      Width = 89
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'TOTALICMS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 12
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'SUBTOTAL'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit16: TDBEdit
      Left = 374
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'BASEICMSPIS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit17: TDBEdit
      Left = 494
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'TOTALICMSPIS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit12: TDBEdit
      Left = 481
      Top = 71
      Width = 90
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'BASEICMS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit33: TDBEdit
      Left = 672
      Top = 71
      Width = 86
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'BASE_ICMS_ST'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit34: TDBEdit
      Left = 764
      Top = 71
      Width = 88
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'VALOR_ICMS_ST'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit26: TDBEdit
      Left = 376
      Top = 71
      Width = 101
      Height = 25
      Ctl3D = True
      DataField = 'TOTAL_DESONERACAO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit36: TDBEdit
      Left = 276
      Top = 71
      Width = 95
      Height = 25
      Ctl3D = True
      DataField = 'DESCONTO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      OnExit = DBEdit36Exit
    end
    object DBEdit21: TDBEdit
      Left = 132
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'BASEICMSCOF'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit23: TDBEdit
      Left = 253
      Top = 24
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'TOTALICMSCOFINS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit20: TDBEdit
      Left = 107
      Top = 71
      Width = 91
      Height = 25
      Ctl3D = True
      DataField = 'OUTROS'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit22: TDBEdit
      Left = 203
      Top = 71
      Width = 68
      Height = 25
      Ctl3D = True
      DataField = 'PERC_DESCONTO'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      OnExit = DBEdit22Exit
    end
    object DBEdit24: TDBEdit
      Left = 858
      Top = 71
      Width = 115
      Height = 25
      TabStop = False
      Color = 16053492
      Ctl3D = True
      DataField = 'TOTAL'
      DataSource = dsVenda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
  end
  object qryVenda: TFDQuery
    AfterOpen = qryVendaAfterOpen
    AfterInsert = qryVendaAfterInsert
    AfterEdit = qryVendaAfterEdit
    BeforePost = qryVendaBeforePost
    AfterPost = qryVendaAfterPost
    AfterDelete = qryVendaAfterDelete
    OnCalcFields = qryVendaCalcFields
    OnNewRecord = qryVendaNewRecord
    AggregatesActive = True
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    SQL.Strings = (
      'select * from NFE_MASTER'
      'where'
      'codigo=:cod')
    Left = 61
    Top = 272
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
    object qryVendaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryVendaCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryVendaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object qryVendaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryVendaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryVendaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryVendaHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
    end
    object qryVendaID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qryVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      OnValidate = qryVendaID_CLIENTEValidate
    end
    object qryVendaID_TRANSPORTADOR: TIntegerField
      FieldName = 'ID_TRANSPORTADOR'
      Origin = 'ID_TRANSPORTADOR'
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
    object qryVendaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
      Size = 30
    end
    object qryVendaOBSFISCO: TMemoField
      FieldName = 'OBSFISCO'
      Origin = 'OBSFISCO'
      BlobType = ftMemo
    end
    object qryVendaOBSCONTRIBUINTE: TMemoField
      FieldName = 'OBSCONTRIBUINTE'
      Origin = 'OBSCONTRIBUINTE'
      BlobType = ftMemo
    end
    object qryVendaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qryVendaXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryVendaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryVendaFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryVendaFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryVendaFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryVendaFKNOTA: TIntegerField
      FieldName = 'FKNOTA'
      Origin = 'FKNOTA'
    end
    object qryVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 40
    end
    object qryVendaMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 40
    end
    object qryVendaNVOL: TStringField
      FieldName = 'NVOL'
      Origin = 'NVOL'
      Size = 40
    end
    object qryVendaQVOL: TIntegerField
      FieldName = 'QVOL'
      Origin = 'QVOL'
    end
    object qryVendaPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryVendaUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      Size = 2
    end
    object qryVendaRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 8
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
    end
    object qryVendaVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 50
      Calculated = True
    end
    object qryVendaTIPO_EMISSAO: TStringField
      FieldName = 'TIPO_EMISSAO'
      Origin = 'TIPO_EMISSAO'
      Size = 1
    end
    object qryVendaFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
      Size = 1
    end
    object qryVendaMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
      Size = 1
    end
    object qryVendaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      OnValidate = qryVendaCFOPValidate
    end
    object qryVendaVIRTUAL_CFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CFOP'
      LookupDataSet = Dados.qryCFOP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CFOP'
      Size = 100
      Lookup = True
    end
    object qryVendaVIRTUAL_CLIENTE: TStringField
      DisplayWidth = 120
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CLIENTE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ID_CLIENTE'
      Size = 120
      Lookup = True
    end
    object qryVendaVIRTUAL_UF_CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UF_CLIENTE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'ID_CLIENTE'
      Size = 2
      Lookup = True
    end
    object qryVendaVIRTUAL_TRANSP: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TRANSP'
      LookupDataSet = qryTransp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TRANSPORTADOR'
      Size = 60
      Lookup = True
    end
    object qryVendaVIRTUAL_PLACA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PLACA'
      LookupDataSet = qryTransp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PLACA'
      KeyFields = 'ID_TRANSPORTADOR'
      Size = 7
      Lookup = True
    end
    object qryVendaVIRTUAL_RNTC: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_RNTC'
      LookupDataSet = qryTransp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RNTC'
      KeyFields = 'ID_TRANSPORTADOR'
      Size = 10
      Lookup = True
    end
    object qryVendaVIRTUAL_UFPLACA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UFPLACA'
      LookupDataSet = qryTransp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UFPLACA'
      KeyFields = 'ID_TRANSPORTADOR'
      Size = 2
      Lookup = True
    end
    object qryVendaVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryPesqEmp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 60
      Lookup = True
    end
    object qryVendaVIRTUAL_EMAIL: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMAIL'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'EMAIL1'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object qryVendaCHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'CHAVE_NFE_REFERENCIADA'
      Origin = 'CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object qryVendaNPEDIDO: TStringField
      FieldName = 'NPEDIDO'
      Origin = 'NPEDIDO'
    end
    object qryVendaCONSUMIDOR_FINAL: TStringField
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
      Size = 1
    end
    object qryVendaVIRTUAL_ISENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ISENTO'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ISENTO'
      KeyFields = 'ID_CLIENTE'
      Size = 1
      Lookup = True
    end
    object qryVendaMOTIVO_CONTIGENCIA: TStringField
      FieldName = 'MOTIVO_CONTIGENCIA'
      Origin = 'MOTIVO_CONTIGENCIA'
      Size = 100
    end
    object qryVendaTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      OnChange = qryVendaDESCONTOChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      OnChange = qryVendaDESCONTOChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      OnChange = qryVendaDESCONTOChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnChange = qryVendaDESCONTOChange
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
    object qryVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      OnChange = qryVendaDESCONTOChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASEISS: TFMTBCDField
      FieldName = 'BASEISS'
      Origin = 'BASEISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaTOTALISS: TFMTBCDField
      FieldName = 'TOTALISS'
      Origin = 'TOTALISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      Origin = 'VFCPUFDEST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      Origin = 'VICMSUFDEST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      Origin = 'VICMSUFREMET'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      OnChange = qryVendaDESCONTOChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaPESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      Precision = 18
      Size = 3
    end
    object qryVendaPESOL: TFMTBCDField
      FieldName = 'PESOL'
      Origin = 'PESOL'
      Precision = 18
      Size = 3
    end
    object qryVendaTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryVendaTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryVendaVFCP: TFMTBCDField
      FieldName = 'VFCP'
      Origin = 'VFCP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaINDPAG: TSmallintField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
      DisplayFormat = '0'
    end
    object qryVendaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryVendaTPINTEGRA: TSmallintField
      FieldName = 'TPINTEGRA'
      Origin = 'TPINTEGRA'
      DisplayFormat = '0'
    end
    object qryVendaCNPJ_CARTAO: TStringField
      FieldName = 'CNPJ_CARTAO'
      Origin = 'CNPJ_CARTAO'
    end
    object qryVendaNUMERO_AUTORIZACAO: TStringField
      FieldName = 'NUMERO_AUTORIZACAO'
      Origin = 'NUMERO_AUTORIZACAO'
      Size = 50
    end
    object qryVendaTPBANDEIRA: TSmallintField
      FieldName = 'TPBANDEIRA'
      Origin = 'TPBANDEIRA'
      DisplayFormat = '0'
    end
    object qryVendaTPPAG: TSmallintField
      FieldName = 'TPPAG'
      Origin = 'TPPAG'
      DisplayFormat = '0'
    end
    object qryVendaTOTAL_DESONERACAO: TFMTBCDField
      FieldName = 'TOTAL_DESONERACAO'
      Origin = 'TOTAL_DESONERACAO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryVendaCNF: TStringField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
    object qryVendaVIRTUAL_CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CNPJ'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object qryVendaIMPORTOU: TStringField
      FieldName = 'IMPORTOU'
      Origin = 'IMPORTOU'
      Size = 1
    end
    object qryVendaPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      DisplayFormat = '0.00%'
      Precision = 18
      Size = 3
    end
    object qryVendaVIRTUAL_REGIME: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_REGIME'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'REGIME_TRIBUTARIO'
      KeyFields = 'ID_CLIENTE'
      Size = 10
      Lookup = True
    end
    object qryVendaBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Precision = 18
      Size = 2
    end
    object qryVendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qryVendaNUMERACAO: TStringField
      FieldName = 'NUMERACAO'
      Origin = 'NUMERACAO'
      Size = 15
    end
    object qryVendaGERA_ES: TStringField
      FieldName = 'GERA_ES'
      Origin = 'GERA_ES'
      Size = 1
    end
    object qryVendaTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    OnDataChange = dsVendaDataChange
    Left = 64
    Top = 344
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 136
    Top = 288
  end
  object qryItem: TFDQuery
    BeforeInsert = qryItemBeforeInsert
    AfterInsert = qryItemAfterInsert
    BeforeEdit = qryItemBeforeEdit
    AfterEdit = qryItemAfterEdit
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    BeforeDelete = qryItemBeforeDelete
    AfterDelete = qryItemAfterDelete
    OnNewRecord = qryItemNewRecord
    AggregatesActive = True
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = Dados.Conexao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode, evCache, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * FROM NFE_DETALHE VD'
      'where'
      'FKNFE=:CODIGO'
      'ORDER BY ITEM'
      '')
    Left = 131
    Top = 224
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
    object qryItemFKNFE: TIntegerField
      FieldName = 'FKNFE'
      Origin = 'FKNFE'
      Required = True
    end
    object qryItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
      OnChange = qryItemID_PRODUTOChange
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
    object qryItemFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryItemGERA_ES: TStringField
      FieldName = 'GERA_ES'
      Origin = 'GERA_ES'
      Size = 1
    end
    object qryItemVITUAL_CODBARRA: TStringField
      FieldKind = fkLookup
      FieldName = 'VITUAL_CODBARRA'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemVIRTUAL_ALIQ_COF: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ALIQ_COF'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ALIQ_COF'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_ALIQ_PIS: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ALIQ_PIS'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ALIQ_PIS'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_CST_S: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CST_S'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CSTS'
      KeyFields = 'ID_PRODUTO'
      Size = 3
      Lookup = True
    end
    object qryItemVIRTUAL_ALIQ_ICMS: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ALIQ_ICMS'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ALIQ_ICM'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_CSOSN: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CSOSN'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CSOSN'
      KeyFields = 'ID_PRODUTO'
      Size = 4
      Lookup = True
    end
    object qryItemVIRTUAL_CST: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CST'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CSTICMS'
      KeyFields = 'ID_PRODUTO'
      Size = 3
      Lookup = True
    end
    object qryItemVIRTUAL_NCM: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_NCM'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NCM'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemVIRTUAL_UN: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UN'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UNIDADE'
      KeyFields = 'ID_PRODUTO'
      Size = 3
      Lookup = True
    end
    object qryItemVIRTUAL_CFOPI: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CFOPI'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CFOP'
      KeyFields = 'ID_PRODUTO'
      Size = 10
      Lookup = True
    end
    object qryItemVIRTUAL_CFOPE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CFOPE'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CFOP_EXTERNO'
      KeyFields = 'ID_PRODUTO'
      Size = 10
      Lookup = True
    end
    object qryItemVIRTUAL_PRECO: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRECO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_VENDA'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_FCP: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FCP'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FCP'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 50
      Lookup = True
    end
    object qryItemVIRTUAL_MVA: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_MVA'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'MVA'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_REDUCAO: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_REDUCAO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'REDUCAO_BASE'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItemVIRTUAL_MOTIVO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_MOTIVO'
      LookupDataSet = Dados.qryDesoneracao
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MOTDESICMS'
      Size = 30
      Lookup = True
    end
    object qryItemVIRTUAL_DIFERIDO: TFloatField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_DIFERIDO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ICMS_DIFERIDO'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemVIRTUAL_MVA_NORMAL: TFloatField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_MVA_NORMAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'MVA_NORMAL'
      KeyFields = 'ID_PRODUTO'
      Lookup = True
    end
    object qryItemDESCRICAO_COMPLEMENTAR: TStringField
      FieldName = 'DESCRICAO_COMPLEMENTAR'
      Origin = 'DESCRICAO_COMPLEMENTAR'
      Size = 300
    end
    object qryItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryItemVIRTUAL_COMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_COMBUSTIVEL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMBUSTIVEL'
      KeyFields = 'ID_PRODUTO'
      Size = 1
      Lookup = True
    end
    object qryItemBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryItemINFO_ADICIONAIS: TStringField
      FieldName = 'INFO_ADICIONAIS'
      Origin = 'INFO_ADICIONAIS'
      Size = 100
    end
    object qryItemFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object qryItemSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryItemDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      Precision = 18
      Size = 2
    end
    object qryItemNPEDIDO: TIntegerField
      FieldName = 'NPEDIDO'
      Origin = 'NPEDIDO'
    end
    object qryItemEVENDA: TStringField
      FieldName = 'EVENDA'
      Origin = 'EVENDA'
      Size = 1
    end
    object qryItemE_S: TStringField
      FieldName = 'E_S'
      Origin = 'E_S'
      Size = 1
    end
    object qryItemCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryItemMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryItemCOD_PROD_ANP_COMB: TStringField
      FieldName = 'COD_PROD_ANP_COMB'
      Origin = 'COD_PROD_ANP_COMB'
      Size = 9
    end
    object qryItemUF_CON_COMB: TStringField
      FieldName = 'UF_CON_COMB'
      Origin = 'UF_CON_COMB'
      Size = 2
    end
    object qryItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object qryItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryItemCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qryItemCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 4
    end
    object qryItemTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryItemQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItemE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryItemBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 2
    end
    object qryItemBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'BASE_COFINS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VALOR_COFINS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 2
    end
    object qryItemBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryItemTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryItemFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qryItemSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object qryItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qryItemVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qryItemVBCUFDEST: TFMTBCDField
      FieldName = 'VBCUFDEST'
      Origin = 'VBCUFDEST'
      Precision = 18
      Size = 2
    end
    object qryItemVFCP: TFMTBCDField
      FieldName = 'VFCP'
      Origin = 'VFCP'
      Precision = 18
      Size = 2
    end
    object qryItemPICMSUFDEST: TFMTBCDField
      FieldName = 'PICMSUFDEST'
      Origin = 'PICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object qryItemPICMSINTER: TFMTBCDField
      FieldName = 'PICMSINTER'
      Origin = 'PICMSINTER'
      Precision = 18
      Size = 2
    end
    object qryItemPICMSINTERPART: TFMTBCDField
      FieldName = 'PICMSINTERPART'
      Origin = 'PICMSINTERPART'
      Precision = 18
      Size = 2
    end
    object qryItemVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      Origin = 'VFCPUFDEST'
      Precision = 18
      Size = 2
    end
    object qryItemVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      Origin = 'VICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object qryItemVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      Origin = 'VICMSUFREMET'
      Precision = 18
      Size = 2
    end
    object qryItemCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 2
    end
    object qryItemOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object qryItemALIQ_ICMS_ST: TFMTBCDField
      FieldName = 'ALIQ_ICMS_ST'
      Origin = 'ALIQ_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qryItemBASE_DESONERACAO: TBCDField
      FieldName = 'BASE_DESONERACAO'
      Origin = 'BASE_DESONERACAO'
      Precision = 18
    end
    object qryItemALIQ_DESONERACAO: TFMTBCDField
      FieldName = 'ALIQ_DESONERACAO'
      Origin = 'ALIQ_DESONERACAO'
      Precision = 18
      Size = 2
    end
    object qryItemMOTDESICMS: TSmallintField
      FieldName = 'MOTDESICMS'
      Origin = 'MOTDESICMS'
    end
    object qryItemVICMSDESON: TFMTBCDField
      FieldName = 'VICMSDESON'
      Origin = 'VICMSDESON'
      Precision = 18
      Size = 2
    end
    object qryItemCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 8
    end
    object qryItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object qryItemPICMSDEFERIDO: TBCDField
      FieldName = 'PICMSDEFERIDO'
      Origin = 'PICMSDEFERIDO'
      Precision = 18
    end
    object qryItemVICMSDEFERIDO: TBCDField
      FieldName = 'VICMSDEFERIDO'
      Origin = 'VICMSDEFERIDO'
      Precision = 18
    end
    object qryItemVALOR_ICMS_ST_RET: TBCDField
      FieldName = 'VALOR_ICMS_ST_RET'
      Origin = 'VALOR_ICMS_ST_RET'
      Precision = 18
    end
    object qryItemVL_OPERACAO: TFMTBCDField
      FieldName = 'VL_OPERACAO'
      Origin = 'VL_OPERACAO'
      Precision = 18
      Size = 3
    end
    object qryItemVBCSTRET: TBCDField
      FieldName = 'VBCSTRET'
      Origin = 'VBCSTRET'
      Precision = 18
    end
    object qryItemVICMSSTRET: TBCDField
      FieldName = 'VICMSSTRET'
      Origin = 'VICMSSTRET'
      Precision = 18
    end
    object qryItemVBCSTDEST: TBCDField
      FieldName = 'VBCSTDEST'
      Origin = 'VBCSTDEST'
      Precision = 18
    end
    object qryItemVICMSSTDEST: TBCDField
      FieldName = 'VICMSSTDEST'
      Origin = 'VICMSSTDEST'
      Precision = 18
    end
    object qryItemPESO_L: TBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
    end
    object qryItemPESO_B: TBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
    end
    object qryItemTPESO_L: TFMTBCDField
      FieldName = 'TPESO_L'
      Origin = 'TPESO_L'
      Precision = 18
      Size = 7
    end
    object qryItemTPESO_B: TFMTBCDField
      FieldName = 'TPESO_B'
      Origin = 'TPESO_B'
      Precision = 18
      Size = 7
    end
    object qryItemDESC_ANP_COMB: TStringField
      FieldName = 'DESC_ANP_COMB'
      Origin = 'DESC_ANP_COMB'
      Size = 95
    end
    object qryItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.000'
      MaxValue = '9999999'
      MinValue = '0'
      Precision = 18
      Size = 3
    end
  end
  object qrySoma: TFDQuery
    MasterFields = 'ID'
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT '
      'sum(nfe.total) SUBTOTAL, '
      'SUM(nfe.base_ipi) BIPI, '
      'SUM(nfe.base_icms)BICMS, '
      'SUM(nfe.base_pis_icms) BPIS, '
      'SUM(nfe.base_cofins_icms)BCOFINS,'
      'SUM(nfe.valor_ipi) VLIPI, '
      'SUM(nfe.valor_icms) VLICMS,  '
      'SUM(nfe.valor_pis_icms) VLPIS, '
      'SUM(nfe.valor_cofins_icms) VLCOF,'
      'SUM(NFE.desconto) DESCONTO, '
      'SUM(NFE.despesas) DESPESAS, '
      'SUM(NFE.frete) frete, '
      'SUM(NFE.VICMSDESON) DESONERACAO,'
      'SUM(NFE.seguro) SEGURO,'
      'SUM(NFE.trib_mun) TMUN, '
      'SUM(NFE.trib_est) TEST, '
      'SUM(NFE.trib_fed) TFED, '
      'SUM(NFE.trib_imp)TIMP,'
      'SUM(NFE.vFCPUFDest)vFCPUFDest,'
      'SUM(NFE.vICMSUFDest)vICMSUFDest,'
      'SUM(NFE.vICMSUFRemet)vICMSUFRemet,'
      'SUM(NFE.BASE_ICMS_ST)BASE_ICMS_ST,'
      'SUM(NFE.VALOR_ICMS_ST)VALOR_ICMS_ST,'
      'SUM(TPESO_B) AS PESO_B,'
      'SUM(TPESO_L) AS PESO_L'
      'FROM nfe_detalhe nfe'
      'WHERE'
      'NFE.fknfe=:ID')
    Left = 136
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySomaSUBTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrySomaBIPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BIPI'
      Origin = 'BIPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaBICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BICMS'
      Origin = 'BICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaBPIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BPIS'
      Origin = 'BPIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaBCOFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BCOFINS'
      Origin = 'BCOFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVLIPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLIPI'
      Origin = 'VLIPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVLICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLICMS'
      Origin = 'VLICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVLPIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLPIS'
      Origin = 'VLPIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVLCOF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLCOF'
      Origin = 'VLCOF'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaDESPESAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaFRETE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaDESONERACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESONERACAO'
      Origin = 'DESONERACAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaSEGURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaTMUN: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TMUN'
      Origin = 'TMUN'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaTEST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TEST'
      Origin = 'TEST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaTFED: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TFED'
      Origin = 'TFED'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaTIMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TIMP'
      Origin = 'TIMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVFCPUFDEST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VFCPUFDEST'
      Origin = 'VFCPUFDEST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVICMSUFDEST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VICMSUFDEST'
      Origin = 'VICMSUFDEST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVICMSUFREMET: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VICMSUFREMET'
      Origin = 'VICMSUFREMET'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaBASE_ICMS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaVALOR_ICMS_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaPESO_B: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 7
    end
    object qrySomaPESO_L: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 7
    end
  end
  object dsFatura: TDataSource
    DataSet = qryCR
    Left = 264
    Top = 168
  end
  object qryProduto: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      'PRO.codigo,'
      'pro.descricao,'
      'pro.unidade,'
      'pro.pr_venda,'
      'pro.qtd_atual,'
      'pro.tipo,'
      'pro.csticms,'
      'pro.cst_externo,'
      'pro.cfop cfop,'
      'pro.cfop_externo cfop_externo,'
      'pro.csosn,'
      'pro.csosn_externo,'
      'pro.CEST,'
      'pro.aliq_icm,'
      'pro.aliq_icms_externo,'
      'pro.aliq_ipi,'
      'pro.CSTIPI,'
      'pro.cste,'
      'pro.csts,'
      'pro.aliq_pis,'
      'pro.aliq_cof,'
      'pro.fcp,'
      'pro.COD_ENQ_IPI,'
      'pro.ncm,'
      'pro.cod_beneficio,'
      'pro.motivo_desoneracao,'
      'ibpt.nacionalfederal,'
      'ibpt.importadosfederal,'
      'ibpt.estadual,'
      'ibpt.municipal,'
      'pro.codbarra,'
      'pro.PESO_L,'
      'pro.PESO_B'
      'FROM PRODUTO pro'
      'LEFT JOIN ibpt on pro.ncm = ibpt.codigo'
      'where'
      'pro.codigo=:ID and pro.ativo='#39'S'#39)
    Left = 198
    Top = 176
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
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
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
    object qryProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdutoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdutoCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdutoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdutoCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdutoCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdutoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdutoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdutoALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryProdutoALIQ_IPI: TFMTBCDField
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
    object qryProdutoFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryProdutoCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdutoCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object qryProdutoMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
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
    end
    object qryProdutoPESO_L: TBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
    end
    object qryProdutoPESO_B: TBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
    end
  end
  object qryClientes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, razao, cnpj, endereco, numero, bairro, municipio,' +
        ' uf, cep, fone1, celular1, email1, isento, regime_tributario  FR' +
        'OM pessoa'
      'where'
      '(cli='#39'S'#39' or forn='#39'S'#39') and'
      '((razao like :razao) or (cnpj like :cnpj))'
      'order by razao')
    Left = 200
    Top = 228
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
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClientesMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClientesFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClientesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClientesEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryClientesISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 1
    end
    object qryClientesREGIME_TRIBUTARIO: TStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = 'REGIME_TRIBUTARIO'
      Size = 10
    end
  end
  object qryTransp: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from TRANSPORTADORA'
      'order by nome')
    Left = 456
    Top = 152
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
    object qryTranspRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
    object qryTranspMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'MOTORISTA'
      Size = 50
    end
    object qryTranspCPF_MOTORISTA: TStringField
      FieldName = 'CPF_MOTORISTA'
      Origin = 'CPF_MOTORISTA'
    end
  end
  object qryCFOP: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from cfop'
      'WHERE'
      'ATIVO='#39'S'#39
      'ORDER BY CODIGO')
    Left = 264
    Top = 224
    object qryCFOPCODIGO: TIntegerField
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
    object qryCFOPOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
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
    Left = 464
    Top = 208
  end
  object qryPesquisaNFe: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo from nfe_master'
      'where'
      'numero=:numero and'
      'codigo<>:codigo and'
      'fkempresa=:empresa and'
      'serie=:serie')
    Left = 456
    Top = 280
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
      end
      item
        Name = 'SERIE'
        ParamType = ptInput
      end>
    object qryPesquisaNFeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryIBPT: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select ibpt.codigo,ibpt.nacionalfederal, ibpt.importadosfederal,' +
        ' ibpt.estadual, ibpt.municipal from ibpt'
      'where '
      'codigo=:cod')
    Left = 256
    Top = 288
    ParamData = <
      item
        Name = 'COD'
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
  end
  object qryProd: TFDQuery
    Active = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select PRO.*, (PRO.QTD_ATUAL * PRO.PR_CUSTO) TOTAL_COMPRA, (PRO.' +
        'QTD_ATUAL * PRO.PR_VENDA) TOTAL_VENDA from Produto PRO'
      'where'
      'pro.empresa=:ID and pro.ativo='#39'S'#39
      ''
      'order by pro.descricao')
    Left = 200
    Top = 288
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      DisplayFormat = '0'
      Precision = 18
      Size = 6
    end
    object qryProdQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryProdATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryProdULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryProdCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryProdEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryProdCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryProdPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryProdCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object i: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryProdAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryProdREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryProdMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryProdFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryProdDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryProdTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
    end
    object qryProdCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryProdFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
    end
    object qryProdPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryProdFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
    end
    object qryProdREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryProdTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryProdCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdETQ: TStringField
      FieldName = 'ETQ'
      Origin = 'ETQ'
      Size = 1
    end
    object qryProdCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryProdORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryProdANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object qryProdCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qryProdFK_LCP: TStringField
      FieldName = 'FK_LCP'
      Origin = 'FK_LCP'
      Size = 10
    end
    object qryProdTIPO_TRIBUTACAO: TStringField
      FieldName = 'TIPO_TRIBUTACAO'
      Origin = 'TIPO_TRIBUTACAO'
      Size = 10
    end
    object qryProdID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryProdDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
    object qryProdTRIBUTACAO_MONOFASICA: TStringField
      FieldName = 'TRIBUTACAO_MONOFASICA'
      Origin = 'TRIBUTACAO_MONOFASICA'
      Size = 1
    end
    object qryProdID_MENU: TIntegerField
      FieldName = 'ID_MENU'
      Origin = 'ID_MENU'
    end
    object qryProdTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object qryProdSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object qryProdIMPRIME_TICKET: TStringField
      FieldName = 'IMPRIME_TICKET'
      Origin = 'IMPRIME_TICKET'
      Size = 1
    end
    object qryProdCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryProdALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryProdALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryProdPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryProdALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryProdPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryProdPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryProdFK_TECIDO: TDateField
      FieldName = 'FK_TECIDO'
      Origin = 'FK_TECIDO'
    end
    object qryProdGLP: TBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
    end
    object qryProdGNN: TBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
    end
    object qryProdGNI: TBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
    end
    object qryProdPESO_LIQ: TBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
    end
    object qryProdVALOR_PEQUENA: TBCDField
      FieldName = 'VALOR_PEQUENA'
      Origin = 'VALOR_PEQUENA'
      Precision = 18
    end
    object qryProdVALOR_MEDIA: TBCDField
      FieldName = 'VALOR_MEDIA'
      Origin = 'VALOR_MEDIA'
      Precision = 18
    end
    object qryProdVALOR_GRANDE: TBCDField
      FieldName = 'VALOR_GRANDE'
      Origin = 'VALOR_GRANDE'
      Precision = 18
    end
    object qryProdALIQ_DESON: TBCDField
      FieldName = 'ALIQ_DESON'
      Origin = 'ALIQ_DESON'
      Precision = 18
    end
    object qryProdMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
    end
    object qryProdCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object qryProdFABRICADO: TStringField
      FieldName = 'FABRICADO'
      Origin = 'FABRICADO'
      Size = 1
    end
    object qryProdPESO_L: TBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
    end
    object qryProdPESO_B: TBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
    end
    object qryProdCHATBOOT: TStringField
      FieldName = 'CHATBOOT'
      Origin = 'CHATBOOT'
      Size = 1
    end
    object qryProdSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qryProdCODIGO_AUX: TIntegerField
      FieldName = 'CODIGO_AUX'
      Origin = 'CODIGO_AUX'
    end
    object qryProdUSA_IMEI: TStringField
      FieldName = 'USA_IMEI'
      Origin = 'USA_IMEI'
      Size = 1
    end
    object qryProdCONTROLA_ESTOQUE_GRADE: TStringField
      FieldName = 'CONTROLA_ESTOQUE_GRADE'
      Origin = 'CONTROLA_ESTOQUE_GRADE'
      Size = 1
    end
    object qryProdUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object qryProdISSQN: TBCDField
      FieldName = 'ISSQN'
      Origin = 'ISSQN'
      Precision = 18
    end
    object qryProdQTD_FISCAL: TBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
    end
    object qryProdMVA_NORMAL: TBCDField
      FieldName = 'MVA_NORMAL'
      Origin = 'MVA_NORMAL'
      Precision = 18
    end
    object qryProdICMS_DIFERIDO: TBCDField
      FieldName = 'ICMS_DIFERIDO'
      Origin = 'ICMS_DIFERIDO'
      Precision = 18
    end
    object qryProdQTD_SABORES: TIntegerField
      FieldName = 'QTD_SABORES'
      Origin = 'QTD_SABORES'
    end
    object qryProdTOTAL_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMPRA'
      Origin = 'TOTAL_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryProdTOTAL_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object qryNatureza: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'select first 1 nfd.cfop, cfop.descricao, count(nfd.codigo) qtd f' +
        'rom nfe_detalhe nfd'
      'left join cfop on  cfop.codigo=nfd.cfop'
      'where'
      'nfd.fknfe=:id'
      'group by 1,2'
      'order by 3 desc')
    Left = 552
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryReferencia: TFDQuery
    AfterPost = qryReferenciaAfterPost
    OnNewRecord = qryReferenciaNewRecord
    MasterSource = dsVenda
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from nfe_referencia'
      'where'
      'fk_nfe=:codigo'
      'order by codigo')
    Left = 552
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryReferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReferenciaFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
    object qryReferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
  end
  object dsReferencia: TDataSource
    DataSet = qryReferencia
    Left = 552
    Top = 200
  end
  object qryCR: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from CRECEBER'
      'where'
      'fk_nfe=:id'
      '')
    Left = 56
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
      EditMask = '!99/99/0000;1;_'
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
    object qryCRVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
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
    object qryCRNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object qryCRID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryCRCARTAO: TStringField
      FieldName = 'CARTAO'
      Origin = 'CARTAO'
      Size = 1
    end
    object qryCRFPG_VENDA: TIntegerField
      FieldName = 'FPG_VENDA'
      Origin = 'FPG_VENDA'
    end
    object qryCRREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      FixedChar = True
      Size = 1
    end
    object qryCRREMESSA_REENVIAR: TStringField
      FieldName = 'REMESSA_REENVIAR'
      Origin = 'REMESSA_REENVIAR'
      FixedChar = True
      Size = 1
    end
    object qryCRID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Origin = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
    object qryCRREMESSA_ARQUIVO: TStringField
      FieldName = 'REMESSA_ARQUIVO'
      Origin = 'REMESSA_ARQUIVO'
      Size = 200
    end
    object qryCRFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
    object qryCRTVALOR: TAggregateField
      FieldName = 'TVALOR'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
  end
  object qryCRBoleto: TFDQuery
    AggregatesActive = True
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'cr.*,'
      'pessoa.razao,'
      'pessoa.cnpj,'
      'pessoa.endereco,'
      'pessoa.numero,'
      'pessoa.cnpj,'
      'pessoa.bairro,'
      'pessoa.uf,'
      'pessoa.municipio,'
      'pessoa.cep,'
      'pessoa.email1,'
      'pessoa.complemento'
      'from CRECEBER CR'
      'left join pessoa on pessoa.codigo=cr.fkcliente'
      'where'
      'cr.fk_nfe=:id')
    Left = 128
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsProduto: TDataSource
    DataSet = qryProd
    Left = 56
    Top = 176
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 200
    Top = 352
  end
  object qryCaixa: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from caixa'
      'where'
      'FK_NFE=:venda')
    Left = 264
    Top = 352
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object qryCaixaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object qryCaixaFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCaixaFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCaixaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object qryCaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
    object qryCaixaFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryCaixaFKCOMPRA: TIntegerField
      FieldName = 'FKCOMPRA'
      Origin = 'FKCOMPRA'
    end
    object qryCaixaFKPAGAR: TIntegerField
      FieldName = 'FKPAGAR'
      Origin = 'FKPAGAR'
    end
    object qryCaixaFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryCaixaTRANSFERENCIA: TIntegerField
      FieldName = 'TRANSFERENCIA'
      Origin = 'TRANSFERENCIA'
    end
    object qryCaixaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCaixaFK_CONTA1: TIntegerField
      FieldName = 'FK_CONTA1'
      Origin = 'FK_CONTA1'
    end
    object qryCaixaFK_PAI: TIntegerField
      FieldName = 'FK_PAI'
      Origin = 'FK_PAI'
    end
    object qryCaixaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryCaixaECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryCaixaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCaixaFK_FICHA_CLI: TIntegerField
      FieldName = 'FK_FICHA_CLI'
      Origin = 'FK_FICHA_CLI'
    end
    object qryCaixaVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryCaixaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object qryCaixaFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
      Origin = 'FK_DEVOLUCAO'
    end
    object qryCaixaFK_CARTAO: TIntegerField
      FieldName = 'FK_CARTAO'
      Origin = 'FK_CARTAO'
    end
    object qryCaixaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Size = 2
    end
    object qryCaixaID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
    end
    object qryCaixaFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object qryCaixaFPG: TIntegerField
      FieldName = 'FPG'
      Origin = 'FPG'
    end
    object qryCaixaRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      Origin = 'RESUMO_CAIXA'
      Size = 1
    end
    object qryCaixaFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
  end
  object dsCaixa: TDataSource
    DataSet = qryCaixa
    Left = 328
    Top = 352
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 536
    Top = 320
  end
end
