object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 560
  ClientWidth = 870
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 78
    Width = 856
    Height = 403
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 14
      Top = 51
      Width = 76
      Height = 13
      Caption = 'Tipo de Produto'
    end
    object Label3: TLabel
      Left = 524
      Top = 53
      Width = 51
      Height = 13
      Caption = 'F2 | Grupo'
    end
    object Label13: TLabel
      Left = 493
      Top = 9
      Width = 82
      Height = 13
      Caption = 'C'#243'digo de Barras'
      FocusControl = DBEdit12
    end
    object Label1: TLabel
      Left = 751
      Top = 9
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
      FocusControl = DBEdit1
    end
    object Label17: TLabel
      Left = 751
      Top = 51
      Width = 61
      Height = 13
      Caption = 'F2 | Unidade'
    end
    object Label7: TLabel
      Left = 691
      Top = 95
      Width = 54
      Height = 13
      Caption = 'Localiza'#231#227'o'
    end
    object Label8: TLabel
      Left = 16
      Top = 137
      Width = 74
      Height = 13
      Caption = 'Estoque Min'#237'mo'
    end
    object Label9: TLabel
      Left = 179
      Top = 137
      Width = 67
      Height = 13
      Caption = 'Estoque Atual'
    end
    object Label10: TLabel
      Left = 506
      Top = 97
      Width = 59
      Height = 13
      Caption = 'Comiss'#227'o %'
    end
    object Label11: TLabel
      Left = 571
      Top = 97
      Width = 59
      Height = 13
      Caption = 'Desconto %'
    end
    object Label14: TLabel
      Left = 346
      Top = 137
      Width = 22
      Height = 13
      Caption = 'NCM'
    end
    object Label25: TLabel
      Left = 97
      Top = 137
      Width = 69
      Height = 13
      Caption = 'Estoque Inicial'
    end
    object Label26: TLabel
      Left = 18
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label5: TLabel
      Left = 766
      Top = 137
      Width = 25
      Height = 13
      Caption = 'CEST'
    end
    object Label30: TLabel
      Left = 263
      Top = 137
      Width = 47
      Height = 13
      Caption = 'Peso (KG)'
    end
    object Label15: TLabel
      Left = 15
      Top = 96
      Width = 67
      Height = 13
      Caption = 'Pre'#231'o Compra'
    end
    object Label4: TLabel
      Left = 223
      Top = 97
      Width = 40
      Height = 13
      Caption = '% Lucro'
    end
    object Label6: TLabel
      Left = 287
      Top = 97
      Width = 60
      Height = 13
      Caption = 'Pre'#231'o Venda'
    end
    object Label34: TLabel
      Left = 363
      Top = 96
      Width = 62
      Height = 13
      Caption = 'Qtd.Atacado'
    end
    object Label35: TLabel
      Left = 427
      Top = 97
      Width = 54
      Height = 13
      Caption = 'Pr.Atacado'
    end
    object Label12: TLabel
      Left = 57
      Top = 7
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label40: TLabel
      Left = 92
      Top = 97
      Width = 47
      Height = 13
      Caption = '% Custos'
    end
    object Label41: TLabel
      Left = 142
      Top = 97
      Width = 58
      Height = 13
      Caption = 'Pre'#231'o Custo'
    end
    object Label46: TLabel
      Left = 291
      Top = 52
      Width = 51
      Height = 13
      Caption = 'F2 | Marca'
    end
    object Label56: TLabel
      Left = 626
      Top = 9
      Width = 95
      Height = 13
      Caption = 'C'#243'd. Barras (Caixa)'
      FocusControl = DBEdit48
    end
    object Label60: TLabel
      Left = 576
      Top = 180
      Width = 151
      Height = 13
      Caption = 'Dois cliques para alterar a foto.'
    end
    object DBImage1: TDBImage
      Left = 576
      Top = 197
      Width = 149
      Height = 203
      DataField = 'FOTO'
      DataSource = dsProdutos
      Proportional = True
      Stretch = True
      TabOrder = 29
      OnClick = DBImage1Click
    end
    object DBEdit12: TDBEdit
      Left = 492
      Top = 24
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODBARRA'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit12Exit
    end
    object DBEdit1: TDBEdit
      Left = 751
      Top = 24
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'REFERENCIA'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnExit = DBEdit1Exit
    end
    object DBEdit6: TDBEdit
      Left = 631
      Top = 112
      Width = 213
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'LOCALIZACAO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit7: TDBEdit
      Left = 15
      Top = 152
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'QTD_MIN'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit9: TDBEdit
      Left = 179
      Top = 152
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'QTD_ATUAL'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object DBEdit10: TDBEdit
      Left = 508
      Top = 112
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'COMISSAO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit13: TDBEdit
      Left = 571
      Top = 112
      Width = 59
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DESCONTO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object DBComboBox1: TDBComboBox
      Left = 15
      Top = 66
      Width = 270
      Height = 23
      Style = csDropDownList
      AutoDropDown = True
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'TIPO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        '00-MERCADORIA PARA REVENDA'
        '01-MAT'#201'RIA PRIMA '
        '02-EMBALAGEM'
        '03-PRODUTO EM PROCESSO'
        '04-PRODUTO ACABADO'
        '05-SUBPRODUTO'
        '06-PRODUTO INTERMEDI'#193'RIO'
        '07-MATERIAL DE USO/CONSUMO'
        '08-ATIVO IMOBILIZADO'
        '09-SERVI'#199'OS'
        '10-OUTROS INSUMOS'
        '99-OUTROS')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit23: TDBEdit
      Left = 15
      Top = 24
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CODIGO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit24: TDBEdit
      Left = 97
      Top = 152
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'ESTOQUE_INICIAL'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
      OnExit = DBEdit24Exit
    end
    object btnGrupo: TBitBtn
      Left = 724
      Top = 67
      Width = 22
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 26
      TabStop = False
      OnClick = btnGrupoClick
    end
    object btnUnidade: TBitBtn
      Left = 822
      Top = 67
      Width = 22
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 27
      TabStop = False
      OnClick = btnUnidadeClick
    end
    object DBEdit2: TDBEdit
      Left = 768
      Top = 153
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CEST'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 7
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 25
    end
    object DBEdit3: TDBEdit
      Left = 263
      Top = 152
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PESO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
    object DBEdit11: TDBEdit
      Left = 16
      Top = 112
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PR_CUSTO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnExit = DBEdit11Exit
    end
    object DBEdit4: TDBEdit
      Left = 223
      Top = 112
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'MARGEM'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 287
      Top = 112
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PR_VENDA'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnExit = DBEdit5Exit
    end
    object GroupBox6: TGroupBox
      Left = 731
      Top = 180
      Width = 123
      Height = 220
      Caption = 'Par'#226'metros'
      TabOrder = 28
      object DBCheckBox1: TDBCheckBox
        Left = 6
        Top = 17
        Width = 65
        Height = 21
        TabStop = False
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 6
        Top = 53
        Width = 91
        Height = 17
        TabStop = False
        Caption = 'Paga Comiss'#227'o'
        DataField = 'PAGA_COMISSAO'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 6
        Top = 37
        Width = 90
        Height = 15
        TabStop = False
        Caption = #201' Fiscal'
        DataField = 'EFISCAL'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 6
        Top = 70
        Width = 90
        Height = 15
        TabStop = False
        Caption = 'Pre'#231'o Variavel'
        DataField = 'PRECO_VARIAVEL'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 6
        Top = 85
        Width = 90
        Height = 15
        TabStop = False
        Caption = 'Composi'#231#227'o'
        DataField = 'COMPOSICAO'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox5Click
      end
      object DBCheckBox6: TDBCheckBox
        Left = 6
        Top = 101
        Width = 90
        Height = 15
        TabStop = False
        Caption = 'Servi'#231'o'
        DataField = 'SERVICO'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox5Click
      end
      object DBCheckBox7: TDBCheckBox
        Left = 6
        Top = 149
        Width = 90
        Height = 15
        TabStop = False
        Caption = 'Combust'#237'vel'
        DataField = 'COMBUSTIVEL'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox7Click
      end
      object DBCheckBox8: TDBCheckBox
        Left = 6
        Top = 117
        Width = 90
        Height = 15
        TabStop = False
        Caption = 'Grade'
        DataField = 'GRADE'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox8Click
      end
      object DBCheckBox9: TDBCheckBox
        Left = 6
        Top = 197
        Width = 105
        Height = 21
        TabStop = False
        Caption = 'Mostrar no App'
        DataField = 'RESTAUTANTE'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 6
        Top = 133
        Width = 101
        Height = 15
        TabStop = False
        Caption = 'Usar Tab. Pre'#231'o'
        DataField = 'USA_TAB_PRECO'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox10Click
      end
      object DBCheckBox11: TDBCheckBox
        Left = 6
        Top = 164
        Width = 90
        Height = 18
        TabStop = False
        Caption = 'Usa IMEI'
        DataField = 'USA_IMEI'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox7Click
      end
      object DBCheckBox12: TDBCheckBox
        Left = 6
        Top = 181
        Width = 105
        Height = 18
        TabStop = False
        Caption = 'Contr. Est. Grade'
        DataField = 'CONTROLA_ESTOQUE_GRADE'
        DataSource = dsProdutos
        DragCursor = crDefault
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox7Click
      end
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 525
      Top = 68
      Width = 198
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_GRUPO'
      DataSource = dsProdutos
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyDown = DBLookupComboboxEh3KeyDown
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 412
      Top = 152
      Width = 350
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'NCM'
      DataSource = dsProdutos
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsIBPT
      ParentFont = False
      TabOrder = 24
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBLookupComboboxEh4: TDBLookupComboboxEh
      Left = 751
      Top = 68
      Width = 69
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'VIRTUAL_UNIDADE'
      DataSource = dsProdutos
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyDown = DBLookupComboboxEh4KeyDown
      OnKeyPress = cbEmpresaKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 364
      Top = 112
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'QTD_ATACADO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      OnExit = DBEdit5Exit
    end
    object DBEdit25: TDBEdit
      Left = 426
      Top = 112
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PRECO_ATACADO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
      OnExit = DBEdit5Exit
    end
    object DBEdit8: TDBEdit
      Left = 57
      Top = 24
      Width = 429
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'DESCRICAO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit32: TDBEdit
      Left = 93
      Top = 112
      Width = 47
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'PERC_CUSTO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      OnExit = DBEdit32Exit
    end
    object DBEdit33: TDBEdit
      Left = 143
      Top = 111
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      DataField = 'PR_CUSTO2'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnExit = DBEdit33Exit
    end
    object DBLookupComboboxEh2: TDBLookupComboboxEh
      Left = 291
      Top = 68
      Width = 207
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      DynProps = <>
      DataField = 'FK_MARCA'
      DataSource = dsProdutos
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsMarca
      ParentFont = False
      TabOrder = 6
      Visible = True
      OnEnter = cbEmpresaEnter
      OnExit = cbEmpresaExit
      OnKeyDown = DBLookupComboboxEh2KeyDown
      OnKeyPress = cbEmpresaKeyPress
    end
    object btnMarca: TBitBtn
      Left = 502
      Top = 68
      Width = 20
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 30
      TabStop = False
      OnClick = btnMarcaClick
    end
    object DBEdit40: TDBEdit
      Left = 345
      Top = 152
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NCM'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 8
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
    end
    object DBEdit48: TDBEdit
      Left = 625
      Top = 24
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'COD_BARRA_ATACADO'
      DataSource = dsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = DBEdit48Exit
    end
    object PageControl1: TPageControl
      Left = 13
      Top = 179
      Width = 557
      Height = 221
      ActivePage = TabSheet1
      TabOrder = 31
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Impostos'
        object Label63: TLabel
          Left = 144
          Top = 158
          Width = 98
          Height = 13
          Caption = 'C'#243'd. Benef'#237'cio Fiscal'
          FocusControl = DBEdit35
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 3
          Width = 129
          Height = 174
          BiDiMode = bdLeftToRight
          Caption = 'ICMS Interno'
          ParentBiDiMode = False
          TabOrder = 0
          object Label16: TLabel
            Left = 16
            Top = 28
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'CFOP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label18: TLabel
            Left = 23
            Top = 84
            Width = 19
            Height = 13
            Caption = 'CST'
          end
          object Label19: TLabel
            Left = 8
            Top = 113
            Width = 34
            Height = 13
            Caption = 'CSOSN'
          end
          object Label20: TLabel
            Left = 8
            Top = 143
            Width = 35
            Height = 13
            Caption = 'Al'#237'q. %'
          end
          object SpeedButton3: TSpeedButton
            Left = 89
            Top = 80
            Width = 23
            Height = 22
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
            OnClick = SpeedButton3Click
          end
          object Label55: TLabel
            Left = 10
            Top = 55
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Origem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object DBEdit15: TDBEdit
            Left = 48
            Top = 25
            Width = 35
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CFOP'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 48
            Top = 81
            Width = 35
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CSTICMS'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 3
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnKeyDown = DBEdit16KeyDown
          end
          object DBEdit18: TDBEdit
            Left = 48
            Top = 140
            Width = 60
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ALIQ_ICM'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 48
            Top = 111
            Width = 60
            Height = 21
            Ctl3D = False
            DataField = 'CSOSN'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'CODIGO'
            ListSource = dsCsoSn
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            OnEnter = DBLookupComboBox2Enter
          end
          object DBEdit47: TDBEdit
            Left = 48
            Top = 52
            Width = 35
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ORIGEM'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 248
          Top = 3
          Width = 136
          Height = 142
          Caption = 'PIS/COFINS'
          TabOrder = 2
          object Label21: TLabel
            Left = 16
            Top = 28
            Width = 60
            Height = 13
            Caption = 'CST Entrada'
          end
          object Label22: TLabel
            Left = 28
            Top = 55
            Width = 48
            Height = 13
            Caption = 'CST Sa'#237'da'
          end
          object Label23: TLabel
            Left = 25
            Top = 84
            Width = 51
            Height = 13
            Caption = 'Aliq. Pis %'
          end
          object Label24: TLabel
            Left = 8
            Top = 113
            Width = 68
            Height = 13
            Caption = 'Aliq. Cofins %'
          end
          object DBEdit21: TDBEdit
            Left = 86
            Top = 81
            Width = 44
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ALIQ_PIS'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit22: TDBEdit
            Left = 86
            Top = 110
            Width = 44
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ALIQ_COF'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 86
            Top = 25
            Width = 44
            Height = 21
            Ctl3D = False
            DataField = 'CSTE'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'CODIGO'
            ListSource = dsCSTE
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = DBLookupComboBox3Enter
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 86
            Top = 52
            Width = 44
            Height = 21
            Ctl3D = False
            DataField = 'CSTS'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'CODIGO'
            ListSource = dsCSTE
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnEnter = DBLookupComboBox4Enter
          end
        end
        object GroupBox5: TGroupBox
          Left = 389
          Top = 3
          Width = 121
          Height = 64
          Caption = 'IPI'
          TabOrder = 3
          object Label29: TLabel
            Left = 31
            Top = 17
            Width = 19
            Height = 13
            Caption = 'CST'
          end
          object Label31: TLabel
            Left = 11
            Top = 42
            Width = 39
            Height = 13
            Caption = 'Al'#237'quota'
          end
          object DBEdit29: TDBEdit
            Left = 57
            Top = 37
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ALIQ_IPI'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 57
            Top = 12
            Width = 50
            Height = 21
            Ctl3D = False
            DataField = 'CSTIPI'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'CODIGO'
            ListSource = dsCSTIPI
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = DBLookupComboBox5Enter
          end
        end
        object GroupBox4: TGroupBox
          Left = 389
          Top = 68
          Width = 121
          Height = 109
          Caption = 'Outros'
          TabOrder = 4
          object Label27: TLabel
            Left = 18
            Top = 24
            Width = 33
            Height = 13
            Caption = '% FCP'
          end
          object Label38: TLabel
            Left = 19
            Top = 51
            Width = 35
            Height = 13
            Caption = '% MVA'
          end
          object Label39: TLabel
            Left = 10
            Top = 70
            Width = 44
            Height = 26
            Caption = '% Base Reduzida'
            WordWrap = True
          end
          object DBEdit28: TDBEdit
            Left = 57
            Top = 21
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'FCP'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 57
            Top = 48
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'MVA'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit31: TDBEdit
            Left = 57
            Top = 76
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'REDUCAO_BASE'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox7: TGroupBox
          Left = 137
          Top = 3
          Width = 107
          Height = 142
          BiDiMode = bdLeftToRight
          Caption = 'ICMS Externo'
          ParentBiDiMode = False
          TabOrder = 1
          object Label45: TLabel
            Left = 11
            Top = 28
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'CFOP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label52: TLabel
            Left = 16
            Top = 55
            Width = 22
            Height = 13
            Caption = ' CST'
          end
          object Label53: TLabel
            Left = 4
            Top = 84
            Width = 34
            Height = 13
            Caption = 'CSOSN'
          end
          object Label54: TLabel
            Left = 3
            Top = 113
            Width = 35
            Height = 13
            Caption = 'Al'#237'q. %'
          end
          object SpeedButton4: TSpeedButton
            Left = 78
            Top = 52
            Width = 23
            Height = 22
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
            OnClick = SpeedButton3Click
          end
          object DBEdit39: TDBEdit
            Left = 41
            Top = 25
            Width = 35
            Height = 21
            BiDiMode = bdLeftToRight
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CFOP_EXTERNO'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit45: TDBEdit
            Left = 41
            Top = 52
            Width = 35
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CST_EXTERNO'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit16KeyDown
          end
          object DBEdit46: TDBEdit
            Left = 41
            Top = 110
            Width = 60
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ALIQ_ICMS_EXTERNO'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 41
            Top = 81
            Width = 60
            Height = 21
            Ctl3D = False
            DataField = 'CSOSN_EXTERNO'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            KeyField = 'CODIGO'
            ListField = 'CODIGO'
            ListSource = dsCsoSn
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            OnEnter = DBLookupComboBox2Enter
          end
        end
        object DBEdit35: TDBEdit
          Left = 248
          Top = 154
          Width = 135
          Height = 23
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'COD_BENEFICIO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TextHint = 'cBenef'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Grade'
        ImageIndex = 1
        TabVisible = False
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 549
          Height = 193
          Align = alClient
          DynProps = <>
          TabOrder = 0
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Composi'#231#227'o'
        ImageIndex = 3
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 549
          Height = 193
          Align = alClient
          DataSource = dsComposicao
          DynProps = <>
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghExtendVertLines]
          TabOrder = 0
          OnEnter = DBGridEh2Enter
          OnExit = DBGridEh2Exit
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_PRODUTO'
              Footers = <>
              Title.Caption = 'C'#243'd.'
              Width = 35
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VITUAL_PRODUTO'
              Footers = <>
              Title.Caption = 'Descri'#231#227'o'
              Width = 267
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'QUANTIDADE'
              Footers = <>
              Title.Caption = 'Qtd'
              Width = 41
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PRECO'
              Footers = <>
              Title.Caption = 'P.Venda'
              Width = 59
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total'
              Width = 62
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Grade'
        ImageIndex = 5
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 549
          Height = 160
          Align = alClient
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
          OnEnter = DBGridEh2Enter
          OnExit = DBGridEh2Enter
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTD'
              Title.Alignment = taCenter
              Title.Caption = 'Quant.'
              Width = 50
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PRECO'
              Title.Caption = 'Pre'#231'o'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_ATACADO'
              Title.Caption = 'Atacado'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TAMANHO'
              PickList.Strings = (
                'PP'
                'P'
                'M'
                'G'
                'GG')
              Title.Alignment = taCenter
              Title.Caption = 'Tamanho'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 160
          Width = 549
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label44: TLabel
            Left = 7
            Top = 8
            Width = 66
            Height = 22
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 269
            Top = 10
            Width = 206
            Height = 13
            Caption = 'CTRL + DEL para excluir um item da grade.'
          end
          object DBEdit37: TDBEdit
            Left = 76
            Top = 5
            Width = 80
            Height = 30
            BevelInner = bvNone
            BevelOuter = bvNone
            CharCase = ecUpperCase
            Ctl3D = True
            DataField = 'TQTD'
            DataSource = dsGrade
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Promoção: TTabSheet
        Caption = 'Promo'#231#227'o'
        ImageIndex = 2
        object Label28: TLabel
          Left = 110
          Top = 96
          Width = 98
          Height = 13
          Caption = 'Pre'#231'o Venda Varejo:'
        end
        object Label32: TLabel
          Left = 142
          Top = 39
          Width = 66
          Height = 13
          Caption = 'Data de '#236'ncio:'
        end
        object Label33: TLabel
          Left = 146
          Top = 68
          Width = 61
          Height = 13
          Caption = 'Data do Fim:'
        end
        object Label36: TLabel
          Left = 101
          Top = 123
          Width = 107
          Height = 13
          Caption = 'Pre'#231'o Venda Atacado:'
        end
        object DBEdit14: TDBEdit
          Left = 214
          Top = 93
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PRECO_PROMO_VAREJO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 214
          Top = 38
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'INICIO_PROMOCAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit19: TDBEdit
          Left = 214
          Top = 65
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'FIM_PROMOCAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit26: TDBEdit
          Left = 214
          Top = 120
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PRECO_PROMO_ATACADO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Adicionais'
        ImageIndex = 6
        object Label37: TLabel
          Left = 14
          Top = 13
          Width = 45
          Height = 13
          Caption = 'Aplica'#231#227'o'
          FocusControl = DBEdit27
        end
        object DBEdit27: TDBEdit
          Left = 14
          Top = 29
          Width = 474
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'APLICACAO'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Balan'#231'a'
        ImageIndex = 7
        object GroupBox9: TGroupBox
          Left = 12
          Top = 5
          Width = 357
          Height = 179
          Caption = 'Somente quando quer ler etiquetas no PDV'
          TabOrder = 0
          object Image2: TImage
            Left = 183
            Top = 32
            Width = 150
            Height = 130
            AutoSize = True
            Center = True
            Picture.Data = {
              0A544A504547496D6167655B220000FFD8FFE000104A46494600010100000100
              010000FFE201D84943435F50524F46494C45000101000001C800000000043000
              006D6E74725247422058595A2007E00001000100000000000061637370000000
              000000000000000000000000000000000000000000000000010000F6D6000100
              000000D32D000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000964657363000000
              F0000000247258595A00000114000000146758595A0000012800000014625859
              5A0000013C000000147774707400000150000000147254524300000164000000
              2867545243000001640000002862545243000001640000002863707274000001
              8C0000003C6D6C756300000000000000010000000C656E555300000008000000
              1C007300520047004258595A200000000000006FA2000038F50000039058595A
              2000000000000062990000B785000018DA58595A2000000000000024A000000F
              840000B6CF58595A20000000000000F6D6000100000000D32D70617261000000
              0000040000000266660000F2A700000D59000013D000000A5B00000000000000
              006D6C756300000000000000010000000C656E5553000000200000001C004700
              6F006F0067006C006500200049006E0063002E00200032003000310036FFDB00
              43000302020302020303030304030304050805050404050A070706080C0A0C0C
              0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17181614181214
              1514FFDB00430103040405040509050509140D0B0D1414141414141414141414
              1414141414141414141414141414141414141414141414141414141414141414
              14141414141414FFC00011080082009603012200021101031101FFC4001D0000
              02020203010000000000000000000000070106050802030409FFC40046100001
              030303020403060108060B000000010203040506110007122131081322411451
              611516233271814217182733345275C12426376591B509253645465574A1B4D1
              D3FFC4001A010101010101010100000000000000000000010203040506FFC400
              34110002010302010A0405050000000000000001020311210431410512141551
              529293D1D22253718106133261F0334262A1B1FFDA000C03010002110311003F
              00FA8EA8E17D874D726E236839E20ABE646BBF503DB40181F21A388F90D4EA34
              0181F21A5578AA7DD89E1C771DE8CE2997D143925B71B3C5493C0E0823A8D35B
              555DD3B27F948DBAB86D712FE04D5A1B913E27873F2F90C678E467F4CEA3DB00
              F9B5B657556B692D9DCCB8ECA89B851E3FD82D446D57A3495A054A44C699616C
              2520255C52B7081DFB67B8D65B6EAAB5ADE3B269BB3F3AAB785BF4BFBE50E319
              B574791555C2720CA905B52B27A79D15641EA38A93DF1AFA11B97607F2836BC4
              A47C588618A953EA05C2DF3E4234A69FE18C8FCDE571CFB673D71A56EF4F85C9
              FB9D5CAB57A917949B56BCEC9A6CDA74D8CC15188EC56E4B449C2D25416894B1
              8C8C63AE474D61B691A49327C2259CEEDB41DC3B23EDBA85C14FB76E531614AA
              A2C38FA5A5C28AF94957BE16F2BFE3DB5AD1E2CA8749B9FC56CFA75697B84632
              A0D31868D8E94AD11FCC2E052DF0A0703A8238FB0567DB5B8BE1E7672A3B336A
              54E1D6EE89178D7EAD5272A750AC496FCB53CE29086D23895288010D20773DBA
              60600B3502C3345DC4BAEE832C3BF6EB3099F8708C795F0E9706739EB9F33E43
              18D55B119F3137CA3C7A5F888BAADBA4556FA997BC29D062D0D9A3CB6CB0AE11
              23042DE4A8732A2B0A2A28E98EBD3AEAFF002B7FEE573C66A6B7C6E614C8F732
              2CF4C24C4028C60F986338A5B817D5F324870123A00075EC36C2EBF08F6F5E35
              6B92B72E5BB0AE79B5C456E955FA724B33298E263C768202C1FC44131F2527A1
              0B2300F5D6706C2ABEE0AADB3574F23777DE7323C8EE3ED5F8FF00271CBE5E8E
              5FBE3DB59F8B62D93349AC0DDDBAA1DB56659770D41F66AADD6D77050E607565
              73296E44A81214BECA2D3C800A4F60A47438CEB290BC24CCDBAF0DF57DD78DB9
              775556A952B165C9A8D3AA327CC65D54889CD21BEC51C1679024ABB0EDADAB7F
              C2C53E65A1B6B49915042A6D9CA7D22A08630B7D97A3BAD3AD81CBD3953885F5
              CFF563E7A59DB7E05AED8946A8D22E1DE3A9D7E909A04AA0D269EE455A588697
              5B0D871482F1E65281803A7B75E9ABCE971B92C96C6AFED559946A9787DDD0B9
              2C29DB8B26B08830E04A85365A1D5961D96D2E4791E5A07AC36D383DFD2AFAF4
              D8FF00FA3B21D2614BBEE3D2E65DCC242612D745BBDB4F9CD125EC486D49F494
              AF1C31C4105AEA48C62C113C1B6E04EB4AE6A05CBBE558B82254E1B2D43E70D4
              DFC0C86A434F36FA72F28923CAE3805270A3D7206AFF00E1A7C3755363275C95
              3AF5F33EFAABD6511D83327873934CB25C284E5C71C51EAEAFF8B1DB03BEA293
              6F88B7F3F887A9031DB4711A93A35D4874ADB05385007AE8D762FB0D1A027A0F
              7D40230353FB8D297C525D558B3366AA353A0CC9B06A626C08EDBD4C65B76571
              76632DAD2D21C4A92A594AD41208EE46806D67EBA3F7D6AFDAFE24AA3B57B7F4
              346E153EBD50ADCF6EAB5068D41B8B126986C4B4A194B8D726D25E536F358436
              9C9C1E9A64C9F105062DFD715B2BB7EA6DA6850973E54F75D8CDA56D25A0E153
              6CA9D0F388EBC39A5B28E5919E99D4B8D86BFEFA30067AF7D5076A777A2EEA0A
              9258A4CDA43D05A88F2DB9A5B572448612F36416D6A1F955D47CF57E27EBAA00
              FEBA3F7D19CE7A8D19FA8D007EFA3E5D7467EA347CBAE803F7D07F5D19FA8D07
              F5D0119EBDF53FBEB57B79B702F3A4EFA88947BAA4D2E8D4D7AD86D748662C75
              B533E3EA2FB0FF0098A5B6A707E1B631C149C1D38F746FAA6D2ED0BC1B6AEC6E
              D99D478289332A2DC74C9769EDB9C8A1C0D2810A52821612083920743D8CB82F
              B9FAE8C8CF7D6ACD6AEFDD1B47C38B75D915E71AAA3D7046F264D7186054114B
              7A5B6DA1B712CA12D25F2958CFA7D29247E61D331785D1789DF69CC5B378CB99
              4BA332A955AA49871934FA7C7F825969A2E16CBAE4A5BDC1DC256025BFCC0653
              CA5C86C79FD7474F9EB5C766BC58C7BEF6569171B749AD5CB518FF0067D36A92
              A2C14B0CB939D6905F520A8A4796DA8FA940048C8033ECE7DB2BF636E758947B
              A22457A147A933E7223C8292E20722304A4919E9EC756E52CABEDA342FB68D50
              72FDB543DEAB86DEB5EC8151B9E972EB34E6EA104350E0B65C79C92653423F14
              F24E487BCB38CFB7BF6D5F74BADF7DB791BB162376EB0E8650ED4E04890BF396
              CA830D4A69C7782D1EA4AF8215C48C75C751DF5183AE802D0DFBA2516ED34C96
              8721BEFB719524B9125C671B7BCB75B5F05038F3191941252788C838D6564ED1
              DA33AE89170CAA58995779A7A3A9E9325D75296DD4043A9436A59420292003C4
              0E9FA9D55EDFD87A7DAD745019A7321567D32972D810264975F71531D92DBC1F
              2564F250C3DEB27902B38E8754F67C3B5C2EEEB5D95B76A4DC187504545506A9
              05F22536B94CB4D0438D96F2A0D797C9243B8040E9D7A671D80765A764D06C76
              1D6E8B0910D2F25A4B8B2EA9C52C36D86DB054B249094242475E806B9DD17A52
              6D06E9AAA9C90D2AA535AA7C36D092B5BEFB87094A523A9E80A89EC129513800
              E91D1F62EE05D9369D2645BB6EC24D0AAEDCA91020CC71C62A4DA213B1C38BE6
              D009595ADB5F12158E1F989D5936CF632A56FBDB7D22E4A8B3513675B8D53214
              567929026A9011225152BA93C121B474040539FDEE96F60336D0BCE937D50FED
              7A3BE5F8064488DE6290A6CF98CBCB65C185007A2DB50CFBE33ACDA541432307
              F4D6A85A3E162F1B76837DD2EA95E7ABB4EB863C81169EDD55D8CD53D4E4E71F
              5B6DA7CB523D695A49714827905248295674E8D81DB99BB5D62C8A3CF536A75C
              AACF9C84B6527834F485B8DA4F14A52084292084A4241E83A6AA77271193AA66
              E96E8D3F69EDF8D55A853EA5541266B30188749603F21D79D38404A0919EC7DF
              573D297C49ECD4ADF3B26996DC7A83B4A6455A34B933233BE5BED34DF324B478
              9F5E4A719FAF51ABB14EAA3F89DB62E03687D994AB827A6E3653212A8F4C5AC4
              06D4A7109549C7E4056CBA9E9CBF2289E833A6F673D75AC34FF0E971D2683B4F
              4E854DA6449B6CB2D352AB10AB532338C1429456436124494AF928F0748092B5
              8EA1475B3D8C6A27716B14AB87666CEBAAF48375D528C9955D87E4F9527CF752
              92595A96C95B695042CA14B52925493824E3595B976FEDEBC69558A6D6A931AA
              10EB0D2589ED3A9FED0DA7F2A54460903AE3AF4C9F9EAC3A0E8D27B835FF0071
              F6AB64AC5B16816756AD18F2A8CF54CB94AB7E2871C71C92A07CC7529E6084A5
              2A5296B51094A7A923A6ADB5AD8CDB3A6DCB50DC59B6B45FB7A3C45A9FA902B2
              E16931CB4A18E583F8438F6EDAC1F896F0FCF6F9D1A348A3DC536875C8316542
              8EB8AFA5B65E6A41683CDBC7829453868744E3AF7D316A747A84AAF47322A483
              6C8A63F125D31F6D27E2DE5A9BE0B2BC6404A12E820743E6F6E9ACD937B16EFB
              4D7DA36F56D654ACF912E9FB77715357F1B498ACD2E1C44C69B256E47E509D68
              B6F0180CA48E4560F14F13D3034F9D9CAC5BF5FDAFB6AA36AC1729B6FC984872
              1C3791C16CA0FF000A864FA81CE7A9C9C9C9EFA4552FC1CD3691B3D7550188F0
              9550AFCE666B0D393A498D4A0D10863CA78283CBF2DBC9FCC9E44948E09381B0
              3B656341DB3DBEA05AD4E79D930A930DB8AD3CF1056E048C7238F73DFF007D48
              EFB0FB9645F6D1A95F61A35D0872D5077DEBB71DABB4B72D72D593062D629509
              C9E85D463A9E694869256B4F14A927914A480738048241D5FB58ABA6DC8778DB
              355A15402CC0A9C476148F295C55E5B8828560FB1C13D7501AE77DEF5EE458F4
              CB6D2B9941953D9A122BB5770535D089895CC6194B2C8F38792425E24ACF3C91
              F940E9A60DA1735F93BC405D96F54AA7477AD6A6418D3588EC415A24F190A792
              D24B85C2094F90BE478E0F24E00C1D672F0D8BB6EF7994991503351F67C74C22
              DC791C112A3A5C6DC0CBC31EA4F3690AE983D0F5C123515FAC5B5B79B85F694A
              44B35BB8E3468854D0E682DB3290CB791918FC4A80C9F967E5D73964C2C8C51A
              857E53A5D5037D6DFB84CA11D89CD98D599D43579AD0197E2B6B71D50C28FA0A
              507893D4F4E83584ADF8A1B4A88CDC6EBF1AA8A6A876EC5B96429B61079C5905
              41B4A32B195FA3A8380323AEB604D6DD78A1BF2EE957E474C9A5D49DA44271E4
              A21D1246698B1394C8F30074993863F1B0DF027894F7C9D6C7ECBDD926F7DB8A
              3D5E6552156653CD90ECD8115C8ADB8A4920E59709536A04105249C107487B3A
              66D4D136FE65D5429773D2A0D4A9C1B7DD8CA0CC93CD976AA874F0C02EA50560
              289231841C8CEADDB6FBD762D8FB3FB7D5084BAECBA55D331C8B0E4D49087263
              920875C71C918212325A5FE5E9D46001DB2AFC46380D7A95D52E9F70D5192C05
              D369D4F4CC70A5B1CD64F9B9485A9C094FF563BA71DFA8D6311BBF4F7A14A9B1
              E995291123B0A7D6EA19E980C9792092404F2471FCC4614A093839C51EEFF10B
              B73455DAD5AA8D11F9B26E1AA376FC49629ED2DD6D6B09202D4A5021BFC51D89
              EE7A6BC557F133B654AAEDAF15DA1C97A65CD3D1478EF229ED7A56FA5A77F109
              503C1464A09C6724ABA1D7171AB7C48FB10AFA1E6AFCCA4DBB2DB19E3F5BEF7C
              7FA19CBDC9F23087E8B3197D6EF90D365D68F98B12131D5D42B0005388393DC1
              3D3231AF3B7BA085B6B7C4075D6D4CA6436CA5484AD080D95B854A2AE2718C0C
              1EB9F9648A6D477C2C1B877169FB7F2E8D364CE9ADCA969757111F0C3E1643C1
              C4AD5CB3D5C88B563042B09CF7D744BF107B732E893DF7E86FC8814CA85269EA
              6D701A29F36636D2A329292AC612979209E85382003EF1C6ADFF0051A8EA341C
              DF8A93BB7DAF0B16B67D3EB9C3C5879325869E46783890B4E460E08CEBC77053
              1CAD50AA34F6A73F4D765477184CC8A407582A49485A0904724E72323B8D29AD
              AF15F67DCD6FD76B2D45AAC68947AA48A4BE1E611CD4E32C2DF529212B3E9286
              D58CE0E71D06B21BABBC30291B1F74DD50E54FA7A2329EA6372E3C7438FC791E
              7FC28752DAD494A825C215824640FDB5E83E371C150F0334F6EDCD8010D7294F
              350AB55568CA90BCA961131D056B27DCE327EA4EB13E2536DE83E24AF9DACB56
              7D6652AD4A845A9D592F51A43653216DA2386961452B4A9387978207F177D513
              675E8BB2B45DD2DB4B82EBA9DD8DB524B056BA52186585C986ECA74A425F2A58
              58E44E4A7D5DBA1CE99F7BF8475D56C1B0283685F157B36A167B0E458B588FC9
              6F3CCB8948752BE0B6FF00329085743818C6358BE0BC4D43DC7BD6F3A46D4DB5
              B3F6DC6AED5EDB88E553ED276971D72A7BF099ABCB8CD32A2DA78A1010C7B801
              4703F2820FD11D947282F6D0D9ABB5DB7D9B755498C69EDCA24BA967CB4F00BC
              FF00163BFD7486A8F81FAA314EB7136DEEBD7EDCAA4080EC2A84F610A2AA9172
              4BB256E2F8BA920975F74E0A943047CB276376F2CD8FB77625BF6BC479C911A8
              F05982DBCEE39B81B404851C7B9C67556E0CFAFB0D1A17D868D6C872D40D1FBE
              81FAE809CE913E2013CAFF00B14E703D1FF38A469EBFBE919BFEE7957DD8EAFA
              A0671F3ABD247F9EA302BB6B0283F5CE44FF00B45B9FA7D3E09FC6963B9E169A
              1EEE928FC3FE48E83850F73CDCD35F6BD2048AEF50AFE912E50719E9FE84FE96
              5B9484FD83BAC410A5AB69285947D39AF1AC9AE279ED9E63C2F46591C4FC1304
              64641FF551ED7451D24F85AF0BE11803EF13C709C007F0677CBA7BEBD968369F
              E6C1113C86150A38EBD7FF000ABE31AE5428A947860F0CAD8C2929B89DC1F90F
              2A76B37C95188DDEE4E5ADB23C09C0DC48D9C83D4708DEDFA7EBAC4DD2DA517D
              EC72944287DED818E9DC9894CC7BEAC9BC4CA3EEBECB9070137FC5E233D7FAA8
              DAABDE8E29BBE3638600FF005C69E3BF6FF46A66B4D845D29F3CABC6B5B2CA56
              70695709523270AC4FAA81EDF43EFAC2B2F01665F2538C7DEFB2C75231FD9616
              BDB4F70FF3E6B5D07279522E2008F7FF00AC2AFD3FF6D6162A8A2C8BF8A92164
              5DB639EBFF00A583FE7A964C877ED0A94BD9CDCE0A20E2F6AA241C6063ECA95F
              3D3A77ADA27C18DF081D49B8DEE89C7FE763E7A49ECFAFFA1FDD504F5FBED540
              4018FF00BAE569D9BC6FF97E0DAF75E7053713C4127FDF4355EC5FEE29376C52
              77AB78165B242AAD10856319C509DFF8EB7CC1E9AD09BD6A39DE6DDD4648F2EA
              913B7D684F1FF2D6FB7EFAA8CB03A9D41FD747EFAD10E2BEC34685F6D1A039E8
              1DB51D3542DEDDC795B5761395C814D6AAD3952E343622BCF1690A5BCEA5B054
              A0090072CF6D73A938D2839CB647AF49A5ABAED453D2D0579CDA4B2965E165E1
              7DCBF690DE2214517BD8C463F3B7FF0038A46B23F7B77CF38FB836A67FC7DCFF
              00F1D28B7B2E1DD77EE7B4DCABDA16FC37D0A4FC3A23D5D6EA567ED2A711C896
              C71FC44B29F7E8B51FE1C1F33D547BB2F0BF43ED750D7F9D47CEA7EE3B36B14B
              F8FB812A04FF00493722413F2F817CF4D2C3710668DBABC813FD0ED0D440E84E
              16E698F69589BD9419B527458D432645D151AE10ED6801990C38D903093E8F5F
              4270A2719481D7550B9F64F7A6B106ED6BEE5528A6AD63C2B61418ABB64F160A
              C828CE32E9E5D52AC23B6147DB9F4A8DBF4CBC2FD0D2E41AF7FEB51F3A9FB8F0
              58ACF3F0CB4D414F787146076FFB32F8D765BCE793E183C35A5430557338DFA4
              67F8668FF2D642DDD9EDECA66D5C4B6BEE4D3025B8ECB7972AE84BDE9A6B913A
              A46539C39FDEFCD81923D438D1F6737B61ED3ED75B1F72296136B55CD412A76A
              ED878E43FD1D1D5294FE2F742947B74EF874B87765E17E85EA1AFF003A8F9D4F
              DC55F791F522CFD935A0A47F48504118F631A31F96ABD7F726AF6D8FCA723EFA
              538100F6FC0A6FFF005A605E9B17BD571506CB806C9A5A850EE38B594966AED9
              512D4769BF5F229011F87925254AC93849183AACDAD64DDFBE32AC4A9D1E8295
              AAD1BE98356F2E53494B0CB288C95383994F21F847A2413D3B6B51D4C272E624
              D37DA9AFFA8F3EA391B51A6A0F52E709422D27CDA9095AF7B5D45B79B332909B
              47F3ECB41255851A75C43875EB99F57F7D60A0A5276FEFF3C7962E4B157DF3D4
              C583D7A69D0D787FBD1BF1676A5E8692936E428B596E44D1259FC353F2AA2E32
              38F2E679264B47A038E5D7183AC537E1BAF74D9778D3CD1409550AB5A52A38F8
              A64F98884CC34C957E7C0E05A7075C13C7A03919F55ED8B1F0858ED234BFE4B3
              7652B50514DF553031D703ECD9634E3DEC415F829BFF0088C9FB79F233FE320E
              BA6C3F0EB79D1ACDDC5A74AA3A2349AADD93AA7091F14D1F363B915F690E7451
              E395389E8707AF61A61EE36D25C772F86DBC2CD8119A557EA1517A4C6616FA52
              952153C3C0956703D033D7F4D2F81C4445EAD677B77930483F68413807FDC124
              F5FF0086B7F876D6996EAEDFD6ADBDC0DC0B827474B74BAECC65501E6DC4A8BB
              E4D0A621DCA41CA70AE9EAEFEDADCD18D6A265927B68D41C68E9AD9085F61A35
              0BEDA34073D25FC59FFB2A89FE3F4AFF00E635A738567493F180DCC73675069E
              869C9A2B74A0C36F1210B715359420123B0E4A4E4FCB3AF26AE2E5A79C62AEEC
              CFD07E1FAB4E872BE96AD5928C54E2DB78495D65BEC3A6FEB4A815EDCE8AD529
              53E4DF8DCC8B39CA92253C96A95150E24A90A2141B01684B890CE0959709238E
              542DDB9FB6526FCAB5026312998E29C41525C07D78990DFE98FA4550FD5435A7
              B79EFB3902A912E7B8B6A36F115E53F364FDA336427E225BB4F9098AEA595292
              15E6F3E1C3AA894A738E9D1C53B7D37B293765C3024D956A298A3519BADC88CD
              D49DF30475978248771851CB0E7A780F6EBD75CFA547BB2F0CBD0E9D43A8F9D4
              7CEA5EE191645A0E50EB5B934EA85CB57A80985892ED4A5C94A5E63CC6940F94
              5294A5A4A42471090318CF7EBAA0536752F6CADEBA2F4DBCA14F4DBCEC462141
              8896A53C2A32D4F70134B385B9E5202939742793890A57A804156176C77D3707
              7B69F70B74BB12C9B81909698A8BAD55C865E43AD73432BF42C28A50BE2A04F4
              3C86076D5A2D4B7F716C492FC8B7365AC1A13EFA036EB94EAA8614E241C804A5
              81900FB69D263DD97865E85EA1D47CEA3E752F7140A355D8AFDAF48853D5705F
              5099BA6A2D4DA6BC574C9B54794D9750E21A78B21C4B7952BC90A01230707CBC
              6B3568D069D7C42A9A2FE5CC8F1E8F4579FA4B536AAE2570D913E724BC1D4AC7
              35A1A6620F389510024F2F56556FAEC3DD1B9E98FD36AFB4363D4E9EFBDF10EC
              59758F35B5BBFDF29530472FAF7D79EBD43DC7BA534C4D67662C2AAA699FD884
              CAA07446EDFD5F260F1FCA9EDF21F2D4E94BBB2F0CBD09D41A8E15A8F9D4BDC5
              7E9F4D8B5AB6AA978D7E4494EE0D3A652910DF765B8D3CC2951E194B29682800
              9716EBA0A38E1656A073ED5DD9FB2D88962D7A056248FB06ABB8AF43A8A10EA9
              A4ADB42D694B6B582084ADE4B29C67D59E273CB058F329BB9B51B962DC52F676
              C5935F8A90862A6ED582A4B4919C04B858E407A95D8FB9F9EAD5B2DB5D3A97B7
              35DA3DF54BA6C876B7579D51954D4A84A8FC1F73986D5C9202B1F51AE7CF75AB
              C1C62F09EE9AECED47BA5A4EAFE4AD453AB569B73953B28CE1278E75F116F6B8
              B8A5D996D553719CB32A094CADBF8953A81854C7A52CC41284480B0D0255EAE2
              5D9AA0DE4849E6401C3A64ECFA0499ADED8571170552552E0D726D3A0D3FE279
              455C5067A1979471C9E2594B212A5A94388E43AA892DBB876DACB6EC1768922D
              BB7D16E4242A437026C26BE05852415798518E2900924918F7EBA4DB1BEF54A6
              6DEB5363DBD4DABB522B68A4D9F2A9D4F7998521A4C4E6A961905C70348E1240
              2D8CB8940E230A0AD7D0D8FC6A3D775D0E84ED52E9B9A43EA4DEB02E6851A0C8
              32D697D9495470D30DA3901C16871794630BE6A241CEA9BB7F45A9C8DC1B52E0
              9950A30AF5764D4A0497A96EB9F6C4721B7C953EA5294DBAD36A4212185B4032
              A2D00A3C4F26E3F74D9B745D76555E8D6E53AEEBBAA51189ACD59A889439029C
              B1D652DD5A4ADA490A58420FA964900602CA5536DEFB22DEA857EF5A9DA76F25
              E768936A05FA54211A638A66A661B6D3B216B3C92AC209510909209C63A09C77
              26E5E293B2CBAF59352B76355A42CD3ABF5257C6551D5497DE2F4575A2A5AC9C
              93CA472F900300018C6C10CFBE9396E6F5C5776DA975684D42B96E8AB487E2B1
              4DA0214DB52A636E143BC54BEA1A414FA9F574290143F32527DB74EE45CB6FEE
              7354430E99F63BB6BCEABB4BE6B53EB951D6C8293D825B01D1F3273DD38C1DAC
              6E51AE746941E1F3752BBB9912A2AAE370D2EB10E9D290A890DD8BD64454BAB4
              9438B51202890140E08FD33A6FEAA770715F61A342FB0D1AA0819E5AA3EF3D42
              834EB1C3D72531FAAD2D55180CFC3C6571703CB96CA197010A491C1C52179073
              E9E99EDABCF70303588BB2D78979DB553A25453CE14F8EB8EBC0EA90A18E43EA
              0E083EC40D47B035C6F1DCEDA5A7D1A9E6A5624EA8457175BA6BE8663A5C3121
              33352D5425BCAF307E1A9E0D2D4A054E1E59C673A735B2F5B3B8358BD5E45231
              2E23BF76AA0FBE91994CA1B0F048C1EA8C4A56338392AD53AF6F0976CDF36ED0
              E932EA3548C8A4D1E5D25B7A1C92C2DD3214CA9C79DE040709533C8A159428AD
              5949E9AB95A3B5B2ACEBC6BD5789724C5D36B334CF91475C764B41E2CB6D6439
              C79818692719EFAE76FF00119E2CA6513726DAB29B98AA0D972A2C891738B4D4
              C4653282F3AC32783B92B0908086F0338576E9AF6C2F1496CD41AA0BECD3EAAA
              8955894C98A7FCA6C08A99F2151A387015F224BA9503C02B18CF6D65A46C5C45
              A5D535557DB906E755D4D2D4DA54944828282D94F4CA304FB83F5D6318F0C76E
              C1894689125CB6A353E352E22C2D414A79B8128CA8FEAC0C1F354791C1CA4900
              0E846963090B7EE5D77437220ED5DA2F5767439D52C3CCC58F029AD0764CA7DD
              7036D34DA49039294A03A903EBAA6BFE22E3BB2AC04D2ED2AED5A2DE24A23496
              FE19A115C4A54A71B790E3A9505212DB8540023D24024E01B66EB6D840DDAB61
              8A1D4A54B8515B9F1279720BCA65D2A61E4BA1297124291929C72490467A1D62
              2DFD8DA65B74FB061C69D2D6D59D2A449885E5735BDE6B4F3452E29592701E27
              39C929193DF56EFB01D3B65BF10F73EF1B86830689362A68B264C57673F2A229
              0B5B2F16940348794F2724120ADB008F7EA32D0C818C903F5D2D36D3663F935B
              A2BF548D593322D5E64A9CB88B80C216DB8FBC5D23CF4A7CC5A524A800A38C1F
              A0D328A428E48CEAABBDC5AC63AE18516B141A8C19913ED289223B8CBD0C11F8
              E85248537D481EA048EA477EFA46CABE2C58D6A5521D52D9AA32AB72AECD360D
              2FE2FE2253B397152A43515C4BC78A836F290A016909017CB09C9D3D6B94B556
              28B3E03725D80B94C2D84CA8E70E32549202D27E63391F51A5B23C3DD27EE75B
              56EBAEB0B89409C27C51F0814979CF29C6D6A7D2B52BCC528BCB5A95904A883F
              3CE25F4B94B13558B576E2956E436A2B34A15131A974D8111A0B71784E10DA42
              33C92DA324A865294A54738D292CDDD3DB4812EB52976A1A053934DA8CF5CF94
              943C8723B150532FA12D8528A79BE798401EA2AED9D356C0D9AA1EDFB34331CB
              F509B47A33143892E6AF9A9B61B1D78240094296424ACA40E5C100F448C5662F
              85FB60479B127489B50812624C83F0E5CF2B8B5266FC639EB461590E60248230
              07B9EBABF60662D8B9AD4B436BD9B9D744459F4C4F9AF1A7F94DF9ECB8EBC4A9
              AE0D157E2ADCC65B4E4F32138C8C6BC1725DD4046ECC1A7CFB5E6BF5516DCCA8
              B35479B01023A54D87A2A413EA51E482A4F6E88CE7A632D646C6DBB6440A7454
              7C655534EA84BAA445D524AA429A91216A52D7EAEEA1CD6028E48E6A39CA8939
              4B8B6E235C779D36E17E5BCDB90A9D2E9898C809E0B6E496CB84923391E4A318
              3F3EF9D4B7EC4FA94DF0F57ADB77747A98B7EDB4DBE1B854E92BE0EA1D0E34F4
              60B651C927A16D038F1EC3A63BE9C3DF540DABDA0A4ED4A64A29D2A44971D870
              E12CBDC07E1C66CB6D1C240F51493C95EE7E5ABFFEDAD45590217D868D42FB0D
              1AD0047BFEBA9CE8D1A024F6D40D1A34048EFA83DF468D001EFA33A3468093DF
              503BE8D1A00CF43A01EBA3468001D49EC7468D011A9F6D1A340711DF539D1A34
              042FB7EFA3468D01FFD9}
            Proportional = True
          end
          object Label47: TLabel
            Left = 14
            Top = 26
            Width = 148
            Height = 17
            Caption = 'C'#243'd. Balan'#231'a com Pr'#233'fixo'
            FocusControl = DBEdit38
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            StyleElements = [seClient, seBorder]
          end
          object Label62: TLabel
            Left = 14
            Top = 82
            Width = 147
            Height = 75
            Caption = 
              'Preencha os dados do produto conforme exemplo da etiqueta ao lad' +
              'o, lembre de fazer as configura'#231#245'es do modelo da etiqueta.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object DBEdit38: TDBEdit
            Left = 14
            Top = 46
            Width = 148
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'PREFIXO_BALANCA'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 7
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnExit = DBEdit12Exit
          end
        end
        object GroupBox10: TGroupBox
          Left = 379
          Top = 5
          Width = 160
          Height = 179
          Caption = 'Somente para Balan'#231'a no PDV'
          TabOrder = 1
          object Label61: TLabel
            Left = 10
            Top = 57
            Width = 144
            Height = 60
            Caption = 
              'Marca essa op'#231#227'o se voc'#234' vai capturar o peso desse produto com u' +
              'ma balan'#231'a conectada ao PDV. '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object DBCheckBox13: TDBCheckBox
            Left = 21
            Top = 28
            Width = 124
            Height = 17
            Caption = 'Produto Pesado'
            DataField = 'PRODUTO_PESADO'
            DataSource = dsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = DBCheckBox13Click
          end
        end
      end
      object TabCombustivel: TTabSheet
        Caption = 'Combustivel'
        ImageIndex = 8
        object Label43: TLabel
          Left = 100
          Top = 21
          Width = 20
          Height = 13
          Caption = 'ANP'
          FocusControl = DBEdit36
        end
        object Label48: TLabel
          Left = 88
          Top = 47
          Width = 32
          Height = 13
          Caption = 'GLP %'
          FocusControl = DBEdit41
        end
        object Label49: TLabel
          Left = 86
          Top = 77
          Width = 34
          Height = 13
          Caption = 'GNn %'
          FocusControl = DBEdit42
        end
        object Label50: TLabel
          Left = 90
          Top = 104
          Width = 30
          Height = 13
          Caption = 'GNi %'
          FocusControl = DBEdit43
        end
        object Label51: TLabel
          Left = 67
          Top = 132
          Width = 53
          Height = 13
          Caption = 'Peso (Und)'
          FocusControl = DBEdit44
        end
        object DBEdit36: TDBEdit
          Left = 126
          Top = 20
          Width = 163
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ANP'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit41: TDBEdit
          Left = 126
          Top = 47
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'GLP'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit42: TDBEdit
          Left = 126
          Top = 74
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'GNN'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit43: TDBEdit
          Left = 126
          Top = 101
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'GNI'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit44: TDBEdit
          Left = 126
          Top = 128
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PESO_LIQ'
          DataSource = dsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
      object tabTabelaPreco: TTabSheet
        Caption = 'Tab. Pre'#231'o'
        ImageIndex = 9
        object gridTabPrecoItem: TDBGrid
          Left = 0
          Top = 44
          Width = 549
          Height = 124
          Align = alClient
          DataSource = dsTabPrecoItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = gridTabPrecoItemDblClick
          OnEnter = gridTabPrecoItemEnter
          OnExit = gridTabPrecoItemExit
          OnKeyPress = gridTabPrecoItemKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'VIRTUAL_TAB_PRECO'
              Title.Caption = 'Tabela Pre'#231'o'
              Width = 240
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FATOR'
              Title.Caption = 'Fator'
              Width = 120
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 168
          Width = 549
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object btnNovoTab: TButton
            Left = 0
            Top = 0
            Width = 75
            Height = 25
            Align = alLeft
            Caption = 'Novo'
            TabOrder = 0
            OnClick = btnNovoTabClick
          end
          object btnEditarTab: TButton
            Left = 75
            Top = 0
            Width = 75
            Height = 25
            Align = alLeft
            Caption = 'Editar'
            TabOrder = 1
            OnClick = btnEditarTabClick
          end
          object btnGravarTab: TButton
            Left = 150
            Top = 0
            Width = 75
            Height = 25
            Align = alLeft
            Caption = 'Gravar'
            TabOrder = 2
            OnClick = btnGravarTabClick
          end
          object btnDeleteTab: TButton
            Left = 225
            Top = 0
            Width = 75
            Height = 25
            Align = alLeft
            Caption = 'Delete'
            TabOrder = 3
            OnClick = btnDeleteTabClick
          end
          object btnCancelarTab: TButton
            Left = 300
            Top = 0
            Width = 75
            Height = 25
            Align = alLeft
            Caption = 'Cancelar'
            TabOrder = 4
            OnClick = btnCancelarTabClick
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 549
          Height = 44
          Align = alTop
          Caption = 'Tabela de Pre'#231'o'
          TabOrder = 2
          object dblcbTabPreco: TDBLookupComboBox
            AlignWithMargins = True
            Left = 12
            Top = 15
            Width = 525
            Height = 21
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = dsTabPreco
            TabOrder = 0
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Ultimos Pre'#231'os'
        ImageIndex = 9
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 549
          Height = 193
          Align = alClient
          DataSource = dsUltPrecos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'COD. ALTERA'#199#195'O'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FKPRODUTO'
              Title.Caption = 'COD. PRODUTO'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ULTIMO_PRECO'
              Title.Caption = 'PRE'#199'O'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_ULTIMO_PRECO'
              Title.Caption = 'DATA DA ALTERA'#199#195'O'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Width = 82
              Visible = True
            end>
        end
      end
    end
    object btnCons: TBitBtn
      Left = 597
      Top = 24
      Width = 22
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 32
      TabStop = False
      OnClick = btnConsClick
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 856
    Height = 64
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Image1: TImage
      Left = 655
      Top = 15
      Width = 36
      Height = 36
      AutoSize = True
      Picture.Data = {
        0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
        0024000000240806000000E100989800000006624B474400FF00FF00FFA0BDA7
        93000002D8494441545809ED575D48145114FEEECCECBAFEECFA0B6B69B65281
        5606854150A24241F51085F82211F4B2A6AF11113DA4F4561045902468E04384
        112105810812F82888A8A14110D4E626522AE6A4B333B773379169676866FDA1
        84B9DC33F79CF39D73EE996FEE2C3BC0761EAF3E6975D8E2C1DCD6EF8B69A724
        B07E70BC912147CF96B2CFE6DCDBA36AB9A1482DC5AAFF667335D3CC583ABAE4
        36989A694FC6329CD1257DFCF5173D2AEC36CEA5F671EDBAA1C813E0EC5A3C90
        78DEDBCB65819D1BE2C1E830F709DDAD3037816BECA4041B1C83530B5C510D5E
        6386B8812723F3C60CC05BC9FFB4AF26F30AADAEE65F1BEABA845B213FEA335A
        470EB37055C8AEA2CE8198CA31BB4C8A2960FA27C7B46A243D47866F4CED9FB8
        1F17C6E20A062FF7A05DE87692A4D60EB87B1E17194343B0F264AD72FC6A865D
        8CF0490CC8F531642B0C8B09403428FC41B2C9C4125D66C2278A4A62FD914C35
        1E9953C16AF7411B98C498884B15DB3374AF11259CE1A10856EADBE066847C40
        6588A128833A5C4D28CD9490E767D0E500DED63DC372A0208950C4833B8D284E
        1A2917DB86123A3A282E2FEB5043BEB4EB18A9EEA64C3B956531ECCD91E027EA
        C84479B6842031F823A70C43353D74EE893AA0103A3AEDAA8A9C3FFC2F5B105D
        D1F058384B9A1E2DC9857BB2849EAED081C7EC0AC702894EC9E29C2DD3F3DCF9
        E1C5D7FC91EE30B9E0F7A1F942C79F8D2902304B45184D15C5AB9EF7ADEB6A66
        35DB7E911146F56F68328E26D23A49D6A6ED235B43FF816261C86D0F097AA3E3
        F3F456D16ACE91E91677E4026235FBDDEAEB6E68E01D3016B3DFA6AA14387DC0
        1E73F2D2FD3885D8E3853900FD4E5940E12BCAB6B85D3B2C0C057CF8EE26FB68
        0410820D0CBBBD2C0C450A30BA813DD24AB5DBCBD2505A15B720D86BC889548F
        218F2127069C70EF0C790C3931E0846F83332461CEE92E360D97F02DB596E5EF
        07147441C341FA86DF9D1ABCC9F647FAF2E8DEE49A5E398F81FF8F815F1918B7
        CAB2429D820000000049454E44AE426082}
      Transparent = True
    end
    object Label42: TLabel
      AlignWithMargins = True
      Left = 702
      Top = 13
      Width = 134
      Height = 37
      AutoSize = False
      Caption = 'Produtos'
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 4
      Width = 631
      Height = 57
      Caption = 'Selecione empresa'
      TabOrder = 0
      object Dtcadastro: TLabel
        Left = 560
        Top = 8
        Width = 56
        Height = 13
        Caption = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label57: TLabel
        Left = 401
        Top = 8
        Width = 151
        Height = 13
        Caption = 'Este produto foi cadastrado em'
      end
      object DBEdit34: TDBEdit
        Left = 13
        Top = 24
        Width = 603
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'VIRTUAL_EMPRESA'
        DataSource = dsProdutos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 488
    Width = 856
    Height = 65
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label59: TLabel
      Left = 520
      Top = 12
      Width = 282
      Height = 40
      AutoSize = False
      Caption = 
        '* As op'#231#245'es Grade e Composi'#231#227'o estar'#227'o dispon'#237'veis somente na ed' +
        'i'#231#227'o desse item.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
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
      OnClick = cxGravarClick
    end
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
    Left = 304
    Top = 472
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    OnDataChange = dsProdutosDataChange
    Left = 272
    Top = 368
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 400
    Top = 472
  end
  object dsCsoSn: TDataSource
    DataSet = Dados.qryCSOSN
    Left = 624
    Top = 368
  end
  object qryCSTE: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CTS_PIS_COFINS'
      'ORDER BY 1')
    Left = 680
    Top = 376
    object qryCSTECODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object qryCSTEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object qryCSTETIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object dsCSTE: TDataSource
    DataSet = qryCSTE
    Left = 672
    Top = 296
  end
  object dsCSTIPI: TDataSource
    DataSet = qryCSTIPI
    Left = 560
    Top = 360
  end
  object qryCSTIPI: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CST_IPI'
      'ORDER BY 1')
    Left = 560
    Top = 296
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object qryIBPT: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select CODIGO, DESCRICAO from ibpt'
      'where'
      'char_length (codigo)=8'
      'order by codigo')
    Left = 200
    Top = 424
    object qryIBPTCODIGO: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 30
    end
    object qryIBPTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
  end
  object dsIBPT: TDataSource
    DataSet = qryIBPT
    Left = 152
    Top = 424
  end
  object qryProdutos: TFDQuery
    AfterOpen = qryProdutosAfterOpen
    AfterEdit = qryProdutosAfterEdit
    BeforePost = qryProdutosBeforePost
    AfterPost = qryProdutosAfterPost
    BeforeCancel = qryProdutosBeforeCancel
    BeforeDelete = qryProdutosBeforeDelete
    OnNewRecord = qryProdutosNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'select PRO.*, gr.descricao grupo_sl from Produto PRO'
      'left join grupo gr on gr.codigo=pro.grupo'
      'where'
      'pro.codigo=:id'
      '')
    Left = 272
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qryProdutosEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdutosDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdutosULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryProdutosCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdutosCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdutosCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdutosCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdutosFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryProdutosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryProdutosGRUPO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdutosVIRTUAL_GRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_GRUPO'
      LookupDataSet = Dados.qryGrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object qryProdutosVIRTUAL_FORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORNECEDOR'
      LookupDataSet = Dados.qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ULTFORN'
      FixedChar = True
      Size = 50
      Lookup = True
    end
    object qryProdutosULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryProdutosULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryProdutosCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdutosGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdutosCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdutosEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdutosPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryProdutosCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryProdutosVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = Dados.qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'EMPRESA'
      Size = 50
      Lookup = True
    end
    object qryProdutosVIRTUAL_UNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UNIDADE'
      LookupDataSet = Dados.qryUnidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'UNIDADE'
      Size = 3
      Lookup = True
    end
    object qryProdutosINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryProdutosFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryProdutosPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryProdutosSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryProdutosPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryProdutosALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      Precision = 18
      Size = 2
    end
    object qryProdutosALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      MaxValue = '9999999'
      Precision = 18
      Size = 2
    end
    object qryProdutosQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      MaxValue = '999999'
      Precision = 18
      Size = 6
    end
    object qryProdutosQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdutosE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdutosCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryProdutosALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryProdutosPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdutosRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryProdutosTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
      DisplayFormat = ',0.00'
    end
    object qryProdutosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryProdutosTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryProdutosREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryProdutosFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
      DisplayFormat = ',0.00'
    end
    object qryProdutosPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryProdutosFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
      DisplayFormat = ',0.00'
    end
    object qryProdutosCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdutosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qryProdutosCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdutosCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdutosALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryProdutosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryProdutosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      Origin = 'USA_TAB_PRECO'
      Size = 1
    end
    object qryProdutosFK_TECIDO: TDateField
      FieldName = 'FK_TECIDO'
      Origin = 'FK_TECIDO'
    end
    object qryProdutosETQ: TStringField
      FieldName = 'ETQ'
      Origin = 'ETQ'
      Size = 1
    end
    object qryProdutosFK_LCP: TStringField
      FieldName = 'FK_LCP'
      Origin = 'FK_LCP'
      Size = 10
    end
    object qryProdutosTIPO_TRIBUTACAO: TStringField
      FieldName = 'TIPO_TRIBUTACAO'
      Origin = 'TIPO_TRIBUTACAO'
      Size = 10
    end
    object qryProdutosCODIGO_AUX: TIntegerField
      FieldName = 'CODIGO_AUX'
      Origin = 'CODIGO_AUX'
    end
    object qryProdutosUSA_IMEI: TStringField
      FieldName = 'USA_IMEI'
      Origin = 'USA_IMEI'
      Size = 1
    end
    object qryProdutosCONTROLA_ESTOQUE_GRADE: TStringField
      FieldName = 'CONTROLA_ESTOQUE_GRADE'
      Origin = 'CONTROLA_ESTOQUE_GRADE'
      Size = 1
    end
    object qryProdutosGLP: TBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
    end
    object qryProdutosGNN: TBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
    end
    object qryProdutosGNI: TBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
    end
    object qryProdutosPESO_LIQ: TBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
    end
    object qryProdutosANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object qryProdutosISSQN: TBCDField
      FieldName = 'ISSQN'
      Origin = 'ISSQN'
      Precision = 18
    end
    object qryProdutosCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
  end
  object qryComposicao: TFDQuery
    BeforePost = qryComposicaoBeforePost
    AfterPost = qryComposicaoAfterPost
    AfterDelete = qryComposicaoAfterPost
    OnNewRecord = qryComposicaoNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_composicao pc'
      'where'
      'fk_produto=:codigo')
    Left = 448
    Top = 352
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryComposicaoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = qryComposicaoID_PRODUTOChange
    end
    object qryComposicaoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryComposicaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryComposicaoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryComposicaoVIRTUAL_CUSTO: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CUSTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_CUSTO'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryComposicaoVIRTUAL_VENDA: TExtendedField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_VENDA'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PR_VENDA'
      KeyFields = 'ID_PRODUTO'
      Precision = 19
      Lookup = True
    end
    object qryComposicaoVITUAL_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'VITUAL_PRODUTO'
      LookupDataSet = qryProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 50
      Lookup = True
    end
    object qryComposicaoTVENDA: TAggregateField
      FieldName = 'TVENDA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(TOTAL)'
    end
  end
  object dsComposicao: TDataSource
    DataSet = qryComposicao
    Left = 448
    Top = 304
  end
  object qryProd: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select codigo, descricao, pr_custo, pr_venda from produto'
      'where'
      'ativo='#39'S'#39
      'order by descricao')
    Left = 360
    Top = 312
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
    object qryProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsGrade: TDataSource
    DataSet = qryGrade
    Left = 200
    Top = 360
  end
  object qryGrade: TFDQuery
    OnNewRecord = qryGradeNewRecord
    AggregatesActive = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from produto_grade pg'
      'where'
      'pg.fk_produto=:id'
      'order by 1')
    Left = 208
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryGradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryGradeFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryGradeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryGradeQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = '0'
      Precision = 18
      Size = 3
    end
    object qryGradePRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryGradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 3
    end
    object qryGradePRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
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
  object dsPrincipio: TDataSource
    DataSet = Dados.qryPrincipio
    Left = 96
    Top = 424
  end
  object dsMarca: TDataSource
    DataSet = Dados.qryMarca
    Left = 280
    Top = 424
  end
  object qryTabPreco: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM TABELA_PRECO_PROD_MASTER'
      'ORDER BY CODIGO')
    Left = 129
    Top = 316
    object qryTabPrecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object dsTabPreco: TDataSource
    DataSet = qryTabPreco
    Left = 129
    Top = 372
  end
  object qryTabPrecoItem: TFDQuery
    AfterPost = qryTabPrecoItemAfterPost
    AfterDelete = qryTabPrecoItemAfterDelete
    OnNewRecord = qryTabPrecoItemNewRecord
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM TABELA_PRECO_PROD_DETALHE'
      'WHERE FK_PRODUTO = :PROD')
    Left = 49
    Top = 315
    ParamData = <
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTabPrecoItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabPrecoItemFK_TAB_PRECO: TIntegerField
      FieldName = 'FK_TAB_PRECO'
      Origin = 'FK_TAB_PRECO'
    end
    object qryTabPrecoItemFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryTabPrecoItemVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryTabPrecoItemFATOR: TFMTBCDField
      FieldName = 'FATOR'
      Origin = 'FATOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryTabPrecoItemVIRTUAL_TAB_PRECO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TAB_PRECO'
      LookupDataSet = qryTabPreco
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_TAB_PRECO'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
  end
  object dsTabPrecoItem: TDataSource
    DataSet = qryTabPrecoItem
    OnStateChange = dsTabPrecoItemStateChange
    Left = 49
    Top = 371
  end
  object dsUltPrecos: TDataSource
    DataSet = qryUltPrecos
    Left = 504
    Top = 384
  end
  object qryUltPrecos: TFDQuery
    BeforePost = qryComposicaoBeforePost
    AfterPost = qryComposicaoAfterPost
    AfterDelete = qryComposicaoAfterPost
    OnNewRecord = qryComposicaoNewRecord
    AggregatesActive = True
    MasterSource = dsProdutos
    MasterFields = 'CODIGO'
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from PROD_ULTIMOS_PRECOS'
      'where FKPRODUTO=:FKPRODUTO')
    Left = 504
    Top = 432
    ParamData = <
      item
        Name = 'FKPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryUltPrecosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qryUltPrecosFKPRODUTO: TIntegerField
      FieldName = 'FKPRODUTO'
      Origin = 'FKPRODUTO'
    end
    object qryUltPrecosULTIMO_PRECO: TFMTBCDField
      FieldName = 'ULTIMO_PRECO'
      Origin = 'ULTIMO_PRECO'
      Precision = 18
      Size = 2
    end
    object qryUltPrecosDT_ULTIMO_PRECO: TDateField
      FieldName = 'DT_ULTIMO_PRECO'
      Origin = 'DT_ULTIMO_PRECO'
    end
    object qryUltPrecosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 10
    end
  end
  object RESTDWClientSQL: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 639
    Top = 504
  end
  object DWClientREST: TRESTDWIdClientREST
    UseSSL = False
    UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, l' +
      'ike Gecko) Chrome/41.0.2227.0 Safari/537.36'
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Charset = 'utf8'
    ContentEncoding = 'gzip, identity'
    MaxAuthRetries = 0
    ContentType = 'application/x-www-form-urlencoded'
    RequestCharset = esUtf8
    RequestTimeOut = 5000
    ConnectTimeOut = 5000
    RedirectMaximum = 1
    AllowCookies = False
    HandleRedirects = False
    AuthenticationOptions.AuthorizationOption = rdwAONone
    AccessControlAllowOrigin = '*'
    ProxyOptions.ProxyPort = 0
    VerifyCert = False
    SSLVersions = []
    CertMode = sslmUnassigned
    PortCert = 0
    Left = 767
    Top = 504
  end
end
