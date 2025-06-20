object frmCadOrcamento: TfrmCadOrcamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de Or'#231'amento'
  ClientHeight = 739
  ClientWidth = 1018
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 1004
    Height = 194
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
    TabStop = True
    object Label1: TLabel
      Left = 11
      Top = 5
      Width = 48
      Height = 17
      Caption = 'N'#250'mero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 52
      Width = 55
      Height = 17
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 598
      Top = 52
      Width = 48
      Height = 17
      Caption = 'N'#250'mero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 672
      Top = 52
      Width = 35
      Height = 17
      Caption = 'Bairro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 106
      Top = 97
      Width = 41
      Height = 17
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 11
      Top = 97
      Width = 22
      Height = 17
      Caption = 'CEP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 779
      Top = 5
      Width = 55
      Height = 17
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 484
      Top = 96
      Width = 55
      Height = 17
      Caption = 'Fone Fixo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 421
      Top = 96
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
    object Label27: TLabel
      Left = 589
      Top = 97
      Width = 60
      Height = 17
      Caption = 'WhatsApp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 712
      Top = 95
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
    object Label11: TLabel
      Left = 11
      Top = 140
      Width = 126
      Height = 17
      Caption = 'Forma de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 849
      Top = 140
      Width = 50
      Height = 17
      Caption = 'Validade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 926
      Top = 161
      Width = 24
      Height = 17
      Caption = 'dias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 24
      Width = 59
      Height = 25
      TabStop = False
      CharCase = ecUpperCase
      Color = 16053492
      Ctl3D = True
      DataField = 'CODIGO'
      DataSource = dsOrcamento
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
    object DBEdit5: TDBEdit
      Left = 11
      Top = 71
      Width = 582
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ENDERECO'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 598
      Top = 71
      Width = 70
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUMERO'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 672
      Top = 71
      Width = 281
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'BAIRRO'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 104
      Top = 115
      Width = 311
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CIDADE'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 11
      Top = 115
      Width = 89
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CEP'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit10: TDBEdit
      Left = 483
      Top = 115
      Width = 100
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TELEFONE'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 421
      Top = 115
      Width = 58
      Height = 23
      Ctl3D = False
      DataField = 'UF'
      DataSource = dsOrcamento
      DynProps = <>
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
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
      TabOrder = 8
      Visible = True
    end
    object DBEdit28: TDBEdit
      Left = 589
      Top = 115
      Width = 116
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CELULAR'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 712
      Top = 115
      Width = 241
      Height = 23
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_VENDEDOR'
      DataSource = dsOrcamento
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = True
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 779
      Top = 24
      Width = 174
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'CNPJ'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 847
      Top = 159
      Width = 73
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'VALIDADE'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnExit = DBEdit11Exit
    end
    object DBEdit4: TDBEdit
      Left = 11
      Top = 159
      Width = 830
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'FORMA_PAGAMENTO'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object pnPessoa: TPanel
      Left = 76
      Top = 5
      Width = 697
      Height = 52
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = pnPessoaExit
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 697
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
        Width = 691
        Height = 0
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsCliente
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
        TabOrder = 0
        Visible = False
        OnDblClick = DBGridPessooaDblClick
        OnKeyPress = DBGridPessooaKeyPress
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
      object DBEdit27: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 691
        Height = 23
        Align = alTop
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CLIENTE'
        DataSource = dsOrcamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = DBEdit27Change
        OnKeyDown = DBEdit27KeyDown
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 619
    Width = 1004
    Height = 41
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label14: TLabel
      Left = 813
      Top = 11
      Width = 46
      Height = 17
      Caption = 'TOTAL  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 863
      Top = 10
      Width = 84
      Height = 23
      DataField = 'TOTAL'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 202
      Top = 13
      Width = 82
      Height = 17
      Caption = 'DESCONTO %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 9
      Top = 11
      Width = 68
      Height = 17
      Caption = 'SUBTOTAL  |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 83
      Top = 11
      Width = 84
      Height = 20
      DataField = 'SUBTOTAL'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 362
      Top = 10
      Width = 15
      Height = 17
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit12: TDBEdit
      Left = 288
      Top = 8
      Width = 68
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'PERCENTUAL'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit12Exit
    end
    object DBEdit13: TDBEdit
      Left = 388
      Top = 8
      Width = 105
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'DESCONTO'
      DataSource = dsOrcamento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit13Exit
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 208
    Width = 1004
    Height = 404
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1004
      Height = 404
      ActivePage = TabSheet2
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Itens'
        ImageIndex = 1
        object Label18: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 990
          Height = 17
          Align = alTop
          Caption = '     Clique na tecla [DEL] para excluir ITEM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 244
        end
        object DBGridEh1: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 990
          Height = 287
          Hint = 'D'#234' Duplo Click para Alterar os Dados Produto'
          Align = alClient
          DataSource = dsItens
          DynProps = <>
          EvenRowColor = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
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
              FieldName = 'FK_PRODUTO'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.'
              Width = 60
            end
            item
              AutoDropDown = True
              CellButtons = <>
              DropDownBox.Columns = <
                item
                  FieldName = 'CODIGO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Caption = 'C'#243'd.'
                end
                item
                  FieldName = 'DESCRICAO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Caption = 'Descri'#231#227'o'
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
                  Title.Caption = 'Pr.Venda'
                end>
              DropDownBox.ListFieldNames = 'DESCRICAO'
              DropDownBox.ListSource = dbProduto
              DropDownShowTitles = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRICAO'
              Footers = <>
              Title.Caption = 'Pesquisar por C'#243'digo ou Descri'#231#227'o'
              Width = 500
              OnUpdateData = DBGridEh1Columns2UpdateData
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'QTD'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'Quant.'
              Width = 70
              OnUpdateData = DBGridEh1Columns2UpdateData
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIRTUAL_UNIDADE'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Un.'
              Width = 30
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
              Width = 70
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
              Title.Caption = 'Total'
              Width = 70
            end
            item
              Alignment = taLeftJustify
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIRTUAL_GRADE'
              Footers = <>
              Title.Caption = 'Grade'
              Width = 150
            end
            item
              Alignment = taLeftJustify
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIRTUAL_LOCAL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Local'
              Visible = False
              Width = 250
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 316
          Width = 996
          Height = 56
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object grpSelecao: TGroupBox
            Left = 0
            Top = 0
            Width = 329
            Height = 56
            Align = alLeft
            Caption = 'F11 | Passe o C'#243'digo de Barras para Adicionar Item'
            Color = 11299390
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            object EdtProduto: TEdit
              AlignWithMargins = True
              Left = 6
              Top = 22
              Width = 316
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
          object DBEdit2: TDBEdit
            Left = 922
            Top = 16
            Width = 70
            Height = 25
            DataField = 'QTD'
            DataSource = dsItens
            TabOrder = 1
            Visible = False
            OnChange = DBEdit2Change
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Observa'#231#245'es'
        object DBMemoEh1: TDBMemoEh
          Left = 0
          Top = 0
          Width = 996
          Height = 372
          Align = alClient
          AutoSize = False
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'OBS'
          DataSource = dsOrcamento
          DynProps = <>
          EditButtons = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = True
          WantReturns = True
        end
      end
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 667
    Width = 1004
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object cxSair: TcxButton
      AlignWithMargins = True
      Left = 635
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
    object cxProdutos: TcxButton
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
      Caption = 'F8 | Produtos'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C65004F726465723B92D3121E0000
        082549444154785EC5977B8C55D515C6BF735FF37EC08CF3C2415A5EC3432CB1
        B44D5AA4966024D598A6D214AB8546AC1429DA4A6C448D25B531B14F8935A9D1
        DA601A1F581F156AAD944050D4F21833C86B6418668079DC79DECB9D7BCF397B
        AFB5BAEFD967664081FEC94E7E59B377EEBDDFB71E674F8E2322B89C2B82CBBC
        620634FF79294418C23C1E59C044606613F308C8C42DAFB43A0BAEADA92C2E8D
        DF1175644524E24C6496ADA4E95DAD6497D29CD2C4503E436B3110F27B5F091E
        7AA7FBC2064404336E5E8F4BAD076E5C165972C3E4054B9634FEA4B4A6EAFB75
        4D730B8A274C436468372AAA4BD70EF5A5D71EDDD781E4A9E15DACB1834476AC
        7D71DF7B4EE28A3131C77102AD0B1AB8D012D6D8F9D4868A783CF283A5DF9E72
        57E33573BF5459D780446905BC1C6378C885D7D90FD12E0A8B135870FD54C089
        2C1AC9A845674E0C6C7C7AC5573383FDB90F7CC53B321EFD1DC071837CCE0084
        3F9BAD73EBAD4DD7126875656DF5F2FAD9338B4B265423565088917416A73E3D
        0D372BF05501DCC10822656588641889C228E2B1482051FFC5499834B5A13412
        892F8947B24B9EF9CDFB8F034818D47906F265D9FBD4E260F3DE330F57141546
        977FF77B337F5C3D7DFAFCF2BA5A949457C28946C10C782ED07B3A83798B6F06
        AB2CC44F81FCC96037037287C07E0EAC5C882688F880F6C12846E787CD508A00
        20FA39030610D1FC96971F5B5D555B755BEDDC6B4B0B2B1A5058D9000730E209
        1039F073AEC97A10996C1F58E5A05247C15E0AE4A5C1BE1B0A2B803444189158
        05865A0FC11B18442E6D071840E48243E8881C9876E39D889A81F1068EC21D38
        89919E6320932193C03B6B7E647818C37D1970D954B0BE1AEC9F3571C4440FAC
        BC31F1486135D29F7E8C5C723FC417883268002C17372086D209DDD05AA370EA
        6240E2C0E04E20F511983CA8B204B225A6CF20E8D2CA20735619B03B5A721FB1
        A25A643A5B90EB6E06F90411805940221038D0CCB60517320011C4630EE2911E
        80DE022213119DBC1091F86DA0BEFF20D7F92F28BF17B17814C55515603765C5
        FD9C11AE83DB771CC3C7FE097165F40E09B2676D22D92127C6252AC01C980004
        C204A124A8FF25C02946ACE23A947EF97748F47E84F4C86624265480728340B4
        0A0C0FA9C35B219E0E4B2C60B2A2028688581860B9540B824F68FB218390B299
        D010BCAED7E03A6F225EF90D5CB1F061A89E9DE0CC00D26D6F417C8210819540
        7C80586CF65A823368002460139971F116088F5E4604210EC5B57D9CC060F2E1
        F5BC8DE22B6B70FAF8262B2C61B686B1BB84782C7B08AC19B2422C976CC1B9E2
        DA8AB38240823D9486F80A20777CB2154384F27B0B460539C89E09E326D98188
        AD806356A85B6090987D0A191C8AC310CC81064442338A820C597B8066481EB2
        C280858333D8EF29008CB1EC03F5F10AC4AEFAFA5D77248A263E47A4111860B6
        33309E3D8189ECA5928F50204D1095054BD8672143D87B61DB773230879A02B0
        58A3E280C60D24A2B1A295A4FDAC76B37B6300A2B64C149415CC10266B2834C1
        065BDA2C4002098136C046161B4501120A9B100091B116181222CE7C6FA4FFAF
        5DFB5E78243060FFF7DBBA1113406A5C5C1B884D24B09F1D1F52DF8A68C5501E
        437B02E5136C17195A014A09722EE09AE86A0680F28AC6058DC454941D38F932
        80B4AD00DB0966D281B8AD048D094B1E952767B367B2A91140C4F845C71A0CF9
        25E0E03B16211D440ADB480D1A536AA99999405E2E39DCBEFB08008A0188318B
        1562B665653B78D61083958109145480207E386CCC2012CC88B4025F5985594D
        336CFF21609631035A9341830C875A5AB0FBDFFFD803C01391D1A74090EA3F8B
        B2F2F8B8783803A2C2A80D7E2E7CFCC4C0602D8808303BD18AB73B3A513DE90B
        488DE8C0AC561ACAA0B532D1E0FB505AE3E8A163502383DB01F8A353E9ED6F4B
        DFBB7FDBFEC1B6031D50AE026B654D280D0E8409D01A9C6F01035006B2D7AC63
        E2B478277A3A4FA020C24196CA5716E5C3F70D9E1744D7CDE26CF28C9FE93D98
        37A0C60C6C78A9FDB9275EEFB8FEFD9DC7B7EEDDF60906BAD3569804EC8743A7
        38DF3B00367B220303395702831373C791EC3E054D3AC8D8FF8CB8320CF776C1
        CB0D1F5423C9C1EA39CB29302012E494DDF369FAC8BA174EDCF9EAEEAED53BDF
        3A923CF86127BCB3F6E2613F1C48D783F8367BA5814C867136071C6C27E47ADB
        7BDBDBDA1077085E5ED8F746C50DB60DC33DA7406E7A1700F7BCABF8CDFB66C9
        ECEB67A9E9B7BCD6FF97DDC9BF6DFD78E8FD955FCB3E7ABA7DE83BB3AFAE89D6
        56958099E124FCA01A235986EF0A7AFA18FF6DD56E7397F7CC419DDA5175A0F9
        8D967DFB4044103698C8F9C862F722F04792DBCE35101CBEB6AE09ADAFDF8263
        5B6EC29117970240DC50F7AD19652B1EBDA1BEE3957B9AE4F09F164ADBE665B2
        6743836CFF599D3C7953B5FC704EF9275795C76E02506D2834541A6A0CB5867A
        4383E14A43A3617278563C3AF806FBC7AB6B9B306FD1747BDB85133F67E5F608
        802243E3EDF32B37CC9B54B47CEEDC29B1DCC009EC3FA2BCBDA7DD67DF3D99DD
        04E094C17DE74713E5A767EE5EC44C4FB0CDFC01D17A17D94A2C9273CE7B3FDE
        BC0B7659035BD6CC845214BEC9309481948924B8EF8D33310055B36B0AAEFBE6
        E4E2477CCDCEF6F6EC432753EA030043EBAEA9D09AEDBDB4BDFEEEEE75AB6FAF
        6316FCFEC9677B7EFBF883F5C484FBEFDFD87DCF9A15754C844D9B9EED49B6BC
        507FDE0C2C7BFA182EB6EE05B4E338C9C3496F9B610FEC1A32E4E4336F345317
        AFA7B2D2121C684B419868EC66644DA5252578AFA50B10A6CFBD98FC3F42A1AC
        E5E24B8857FDF2577F7C3E1CC0553F5FBF311F0DB2EAB15FFFE179304344569D
        2B70D95FCFFF07C73CE48747EBB5DF0000000049454E44AE426082}
      TabOrder = 2
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
      Left = 478
      Top = 7
      Width = 150
      Height = 51
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
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C6500506572736F6E3B5F31C58F00
        00081949444154785EAD96096C5CD5D9869F593CF678C68E8D1D8F1D3B244E82
        812C76C0095917684C202CA16909049C38A1050205D1A2AA506829524B55A4B2
        48942E14B54850B5550BED8FF8599A92C42431AE4321C40E90D58EED8997B1C7
        9E7D3B5BC75723A84A08ADCC27BD9AD119CD7D9FEFFD8ECEB936630C67AB1FAE
        2EC618D01A14D41ACD466D4CA3329C0F60A00B7801D80DF0D38E28FF4BD9397B
        59E6DB9F7C1669B8B3A8B4BC7B6153D3E3576CFFDACDCDF7DFDF78F37DDF695C
        B765CB765FEDEC5D19C5D38F1D88D9B2F5C5014C3C4C6B78F69EDB36CCAA5FF8
        F4B61F7C9F254D6BA8F2B9B127FBD1E34798EA8EF0A5F54B983177EE5D773478
        EE009C59087B8E64F20928C3D4028FF7F74D9B6FB24747FAE8EF7895C10FDA08
        1CED24D87392FEE347E86ADF4FBE2D84CDF0D4EDF30BDFDF72BE7B079067414C
        1EC0DC72DEE24B3C5A2618E8DA47381824343CCED87090017F8053DD430C0E8C
        D337A0A8AC2C7236CC2D9B57E271FEE2BADA824D8073B200360C5BCFAB9F4FC8
        7F9CE0C030C3FE20FEACBAFBC6F00F84E83F1D47E45771C3ADCD84C329743285
        4D6B9C76B6022ECE5A9F4F6853D86617161571BCB3356B3CCEE87882685C914A
        2BE20216AF59CE8DDBBF8AC361A37ED54ADEDBD54A262DB1616F04DC407C5209
        18CC783818C2DF3BC0682885A7A6818BD6AEE7EA6DCD3CF0D8436CB97D73D61C
        B44AD374D54A2AEA2EB0C00C940079931E81D6F404068789443394D52DE79E47
        1FE5BA2D1B59D9B482CAAAA91825D1328316196C46B064653D3ADF2D9446038E
        C902988C323BFD274E121C4B7345CB37D0220E5A6226A4244AA673006932A938
        2E7B06B7A7C029941903F46401F4A18078E6D8E1C34399B4C053526A19EB0949
        815296394AA42C25625122A12842EA584C989D4072D209ECF367C607C693DFB3
        DBED0C9D3A81C1FE49EC99F484B1D5BDCA2A9905088E8489A744DF5B83E94780
        E8A40072F784F8D3D1E4CB29A9FB3F3CF03676473E466BB44CA372D1EB89EEA3
        116291180383414249D1058C1963E46413E0BB4BBC0688FBD3798F9CF8A82B78
        E2480FD89CD60874AEFB543C46687C8CFEBE0027BA0391D1B8F838FE4903FCE4
        1F5180CC2B1F8CBE78F8C8B1FFDBFBFAEBF40F449012D2A904A1B131460341FC
        59F3AEC3A7F9C83FBEF35020FD06909A3CC027A3D04064FFC9F15F0F1C3BC8AB
        7F7E857DFB3FE4C4C961FA7A031C3CD4435BFB490687A2748D8A678060EE3F9F
        5B677D1F98B8D50017E0CEA9EEF196C57B6A2F388F831D9DD9C8079142E2F516
        5054E4269AB0F3ABB6EE8D402790006240D218A3FEAB04B67DEBC7E434619E07
        F81A575DD97CC5F55FFFEDC66DF7EEB9FED6FBFE9AB47B59B4B4811BB65E45CB
        2DD770CD8615342EAAA3A6BA9C8CD3CBAA6BB7BFB0B869D39E794B2EFF5DF5EC
        053B8099D9460A2E5EBB9985975ECFFC955FF954BC1FABE59B8F100A4700F2CF
        A998567FCDCD77ED7FF8B1DF98BFBCBED7BCF0E26BE6FE1F3D691E7CE041F3D2
        53F79ABDCFDE6D0E3CB7C3BCF9C466F3DCB7D799875B2E339B6E6836BF7CEE8F
        E6ADB7DF35CF3CFF9269B9FB2173E125EBDECF2F2C5A05140E0C0598BBFCBA7F
        F7FCF4655432A5D80154AF597FE31FEED9B175EEF2450B1042924AA7995D5B43
        6FFF69BAFD43B4FB470985C2389C3E3C9E42CAAB4BB9D2574E95AF82B4483167
        56350DF3EB38B4A4A1E1C99FF1FC91033BBF3CADB2E2C30B976D109FB907722F
        10E75C766DF313DBB76D6DD9BC612DE1488C643285340AA5410985521AA90552
        28841408A190429251828CC820D3829412C88C2499CED071A0939D7F7BED65FF
        D17FDE090C996C7DD639E02CF3555F3073CE859BAE5EBB8C4422452299461B4D
        DFE908DDBD212B366D24466B4EF9C31C3B15466A8530D202EAF14739DA1BC308
        8D166AA243AAABCB29F34D5F9F1DC502C075B673A078DEC52B6E5BB5E422B7B7
        D04D2C9104634865246DEF0DB0B77D88444AA28CC982497677F8D9B53740222E
        3152914C0B5A3B46D8D316229A1208A35059957A8B995E33CD754EE5ACDB8092
        3302E4E22F2BF3D5AC5BDA388F642A8D520A85E69DCE41A2114124ABBFEF1D40
        0BCDDB07FD8443D25A7BA33540466BDA0F0E13094BC261C5AED6184A1BB4D638
        F31C54FACA28F0965E0A54585E6748C03563CEBC05E7CE9C51357B46B5050080
        3664D20621EC28A931D2608C2695D4586BCAA027D695249D34888C03AD0C322B
        A30446289456F8CAA750525A56EE9932B51EC83F134061D5B9B32FAF9B39DDA2
        CE648435678D6151BD0F3B769C794E562D2B4328C9D2851538B0E1743858B3BC
        04A1148B171663071C0E27AB971558A31259E9AC9CAE3CA64CF1E22E2E6F023C
        677A27F416959435CEA9AD213D616E401A6375989F6767C5E27294D00C8D4549
        A524D37D6E562F2D259D56B8F22527FB6224D392958BBC168CCB25514259CD28
        2DC9733A292D2D222FDFBD10F002C1FF4CA0A0D05334ADAAA2CCEA5E1B65911B
        65AC086B67145235CD45DB3B43B4B68D104D64A89D5E905DCF279914B4BD3BC6
        BEF628BE4A3BB535768C3008A551466019D9ED783D85389CF95580FB4C23B0B9
        F2DD9E29C51EA49C0000B4B6E6AD26240D1DEF0F128A64AC8DB67BDF1872C240
        490E748D118EC8ECBAA2757F1C8542180D00B98F783C4141810BBBD3E9FEACD7
        F2717FCFD1FF7FEDCDF6E6E9D3CA88C5E368AB7B8DD6D6E14377779891614922
        A1B19B18478E05904A71DA9FCC9ADB49C535E363297A7B5316B456008A5C71FC
        441FF1D0C8ABC0D8A74EC2DCE5336BF5D537FDBC7A46DD5A6D3D60C2D820A5CC
        4128ABEBDC779494B9DFB4F5A9A4B5E3D12A979C52581BD992CA9A0FEF1EEEE9
        BC0B38698C11673A8A5D4005500EE4F3C55606180102C6980CB9FA17031CF8B8
        BC35483E0000000049454E44AE426082}
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxPessoasClick
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
        F4000004DC49444154785E95565D88555514FEF63EF7CE383A334A1395106809
        5194155A241441249AD98FF62208D98B3F28DA0F3933A09695485358F6346109
        5186F5982195D2938104E9432F6121680FFDC080A6A532F79CFDAD3CEB2CCEBE
        C7EB65EE5D87C5DA7B9F73F9D6FABEB5D8D78908CCE09CC3F56CE8B1518D977E
        3DE2E13C9219430EBE06DFD3EFB28B7FF0CAD9E382AA09DA98E195566B03EE9A
        E3859307DC91D90387FC00960B05E4458420986CE0C82A377B25800CD12419BA
        537CFF4D92FE7E8C98C26A6835F7EED767886820057E74196EDFBC1912029805
        48C870EAC3F1A5A363FB2F27B504220041FCF9F7B9DD9FEC1979DBF70DA5F539
        8F666BB6EE2129C8FDD357167596401E869F9E0B330412C74644C1CF1F3F0EA6
        A97A08C4AB57BFEB9FDE0B338C1CF865FBEA1777F77CF1F1DE31D73B78F9B33D
        C38DD52FBF43CAF555F1ADE0D1C49C923BC12C2BC125CD4006A4814849347249
        32A25EF378E8EE5B87573EBFF17597F40EFAE943BD073F18F542762E8188B434
        0E494816C0460A662924CB90056A2F401C44A0EE1387C5F36F04202F65D93A7F
        F8CBFD636EDACC0B9F6F7DF83200E92C01548D220814088D812C553902A9EF14
        DC1E06C1DC9B67603180461AB634D2176A470F1D1C033009203897D7276D2488
        88D52D0B06980603CF94814022134B02000B50D413AF493CB9E0163C72FFBC8D
        8F2F5FB51D402F8004809B92010A5A12080C1006055629181042005502EB1802
        13E7FEC39ABD3F16490B21040666DDB07EC56B87CF7FB5EBA93700D058689B80
        52D99A804E8156CF408D81B4F10384457C7FED025C69141322AED053E0F0DEA1
        D3A300760348BB6A42B109602818F867624213189C391359082A8D80A0381082
        2471983EAD07B4AEA400246053E0A792C05525D085767A46E2AF1327C165CFA9
        1CFFFEF0BD82D3BA1F10534174AF875206500FE1BB1A43D1F152411474F29E85
        58B86D9BCAF1D39B029E3A0538577EA71EB141C0CECB04D0490210B1A80F50AF
        2798BD7E13EE1A1EC1405F9F023DB073277EAE7B4CEBA9E9DEC6313A60E7B077
        91E1CE7B400AEFADD5B070C70E244902EF9CEA3DD8DF87456FED42E25D1CC302
        D012A882B3D0D5752341A9AFF30E3DBE564C8395E71DD0534F4A7A8525B04962
        F49731266051DA3721A522C14747CF2A5020ADF1040C792CF6C16E3B3D670009
        3DDFB2623EC41913ECBC070C366AB976C91CADD0A8B675ECF8C88280463DEC9C
        741021049D4B10195040877DDF9D0125561A4888566E6C3433432929DFFCEC7D
        9586ECB8094963028596EB96DCA6C91065B5B1725AE3C124B8567B6389822E18
        881228F0F8B7A7215639C52AA798B35235CD9133F0CCBD10675275D503524D60
        C3D279B1E272BE6395A188D603888C10EA5509A2B59D02CB16142AC8F837BF15
        DA8700DA3488441628B404AA17D9C6AB0CC024EB4E822A5DD8F0C41D5A46002D
        31672C54D920351A23F63ED2DA4D0FA009A8D8C5FBA6021AAB2BF711B5E55C6D
        EA29B08689DD4C23D62A32F01895E6F85DD43C4E04D095049A6D954661756F00
        F1CCBC4C4C1F57B919D53A6B429614DA1C9BDB1A0EACECE33A46ED93082EEC88
        0131056C67D4C3C60A0EE2AAB71EA43541F5086EEC019DFE2DCF28C486F113B1
        2273DA3E6659BD7E21CD8D27808B49993500B05D02CE5E4EEEDBF4E02C007500
        49E5BDC58ECEAA6B1AF82500A1ED1F5077D50CC05B74686F0EDD190D5C2482E2
        7F5631F6D30A05E4E60000000049454E44AE426082}
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxFinalizarClick
    end
  end
  object dsOrcamento: TDataSource
    DataSet = qryOrcamento
    Left = 496
    Top = 408
  end
  object dsItens: TDataSource
    DataSet = qryItensO
    Left = 760
    Top = 400
  end
  object qrySoma: TFDQuery
    MasterSource = dsOrcamento
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT sum(TOTAL) TOTAL FROM ORCAMENTO_ITEM OI'
      '       WHERE'
      '       OI.fk_ORCAMENTO=:CODIGO')
    Left = 669
    Top = 414
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySomaTOTAL: TFMTBCDField
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
  object qryOrcamento: TFDQuery
    BeforeOpen = qryOrcamentoBeforeOpen
    AfterOpen = qryOrcamentoAfterOpen
    BeforePost = qryOrcamentoBeforePost
    AfterPost = qryOrcamentoAfterPost
    OnCalcFields = qryOrcamentoCalcFields
    OnNewRecord = qryOrcamentoNewRecord
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from orcamento'
      'where'
      'codigo=:CODIGO')
    Left = 496
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryOrcamentoFKVENDEDOR: TIntegerField
      FieldName = 'FKVENDEDOR'
      Origin = 'FKVENDEDOR'
    end
    object qryOrcamentoFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryOrcamentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qryOrcamentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(##) ####-####;0;'
      Size = 13
    end
    object qryOrcamentoCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '(##) # ####-####;0;'
      Size = 13
    end
    object qryOrcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryOrcamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryOrcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryOrcamentoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '##.###-###;0;'
      Size = 8
    end
    object qryOrcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryOrcamentoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryOrcamentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 60
    end
    object qryOrcamentoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qryOrcamentoOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryOrcamentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryOrcamentoVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Calculated = True
    end
    object qryOrcamentoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryOrcamentoVIRTUAL_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDEDOR'
      LookupDataSet = Dados.qryVdd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'FKVENDEDOR'
      Size = 40
      Lookup = True
    end
    object qryOrcamentoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryOrcamentoVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryPesqEmp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'FKEMPRESA'
      Size = 60
      Lookup = True
    end
    object qryOrcamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      OnValidate = qryOrcamentoDESCONTOValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnValidate = qryOrcamentoDESCONTOValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoNCONTROLE: TIntegerField
      FieldName = 'NCONTROLE'
      Origin = 'NCONTROLE'
      DisplayFormat = '0'
    end
    object qryOrcamentoFK_TRANSP: TIntegerField
      FieldName = 'FK_TRANSP'
      Origin = 'FK_TRANSP'
      DisplayFormat = ',0.00'
    end
  end
  object qryItensO: TFDQuery
    BeforeOpen = qryItensOBeforeOpen
    BeforeInsert = qryItensOBeforeInsert
    BeforePost = qryItensOBeforePost
    AfterPost = qryItensOAfterPost
    AfterDelete = qryItensOAfterDelete
    OnNewRecord = qryItensONewRecord
    Connection = Dados.Conexao
    Transaction = Dados.Transacao
    UpdateTransaction = Dados.Transacao
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evCache]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = -1
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from orcamento_item'
      'where'
      'fk_orcamento=:CODIGO'
      'order by item')
    Left = 760
    Top = 336
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensOFK_ORCAMENTO: TIntegerField
      FieldName = 'FK_ORCAMENTO'
      Origin = 'FK_ORCAMENTO'
      Required = True
    end
    object qryItensOFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      OnChange = qryItensOFK_PRODUTOChange
    end
    object qryItensOQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensOPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      OnValidate = qryItensOPRECOValidate
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensOTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensOITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensOVIRTUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_PRODUTO'
      Size = 50
      Lookup = True
    end
    object qryItensOVIRTUAL_UNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UNIDADE'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UNIDADE'
      KeyFields = 'FK_PRODUTO'
      Size = 3
      Lookup = True
    end
    object qryItensOVIRTUAL_PRECO: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRECO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_VENDA'
      KeyFields = 'FK_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItensOVIRTUAL_ESTOQUE: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_ESTOQUE'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QTD_ATUAL'
      KeyFields = 'FK_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryItensOVIRTUAL_REFERENCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_REFERENCIA'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'REFERENCIA'
      KeyFields = 'FK_PRODUTO'
      Size = 30
      Lookup = True
    end
    object qryItensOVIRTUAL_LOCAL: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_LOCAL'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'LOCALIZACAO'
      KeyFields = 'FK_PRODUTO'
      Size = 30
      Lookup = True
    end
    object qryItensOFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
      OnChange = qryItensOFK_GRADEChange
      DisplayFormat = ',0.00'
    end
    object qryItensOVIRTUAL_GRADE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_GRADE'
      LookupDataSet = qryGrade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_GRADE'
      Size = 30
      Lookup = True
    end
    object qryItensOVIRTUAL_PRECO_GRADE: TFloatField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_PRECO_GRADE'
      LookupDataSet = qryGrade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRECO'
      KeyFields = 'FK_GRADE'
      Lookup = True
    end
    object qryItensODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select codigo, descricao, unidade, pr_venda, qtd_atual, referenc' +
        'ia, localizacao from produto'
      'where'
      'descricao like :descricao'
      'order by descricao')
    Left = 936
    Top = 336
    ParamData = <
      item
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
  end
  object qryTransp: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, nome from transportadora'
      'order by nome')
    Left = 584
    Top = 344
    object qryTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
  end
  object dsTransp: TDataSource
    DataSet = qryTransp
    Left = 584
    Top = 416
  end
  object qryGrade: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao, preco, fk_produto from PRODUTO_GRADE'
      'order by descricao')
    Left = 672
    Top = 344
    object qryGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryGradePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryGradeFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
  end
  object qryClientes: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      
        'SELECT codigo, razao, cnpj, endereco, numero, bairro, municipio,' +
        ' uf, cep, fone1, celular1  FROM pessoa'
      'where'
      '((razao like :razao) or '
      '(cnpj like :cnpj))  and'
      '(cli='#39'S'#39')'
      'order by razao'
      '')
    Left = 848
    Top = 332
    ParamData = <
      item
        Name = 'RAZAO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = ''
      end>
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
  end
  object dsCliente: TDataSource
    DataSet = qryClientes
    Left = 848
    Top = 400
  end
  object dbProduto: TDataSource
    DataSet = qryProd
    Left = 936
    Top = 400
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 296
    Top = 200
  end
end
