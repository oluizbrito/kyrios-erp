object frmPesquisa: TfrmPesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisa Detalhada'
  ClientHeight = 400
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 17
  object Label28: TLabel
    Left = 0
    Top = 52
    Width = 1004
    Height = 21
    Align = alTop
    Caption = '    D'#234' um duplo clique para selecionar produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 991
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 52
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1163
    object grpReferencia: TGroupBox
      Left = 296
      Top = 1
      Width = 162
      Height = 50
      Align = alRight
      Caption = 'F4 | Refer'#234'ncia'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 316
      ExplicitHeight = 43
      object edtReferencia: TEdit
        Left = 1
        Top = 18
        Width = 160
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 23
      end
    end
    object grpDescricao: TGroupBox
      Left = 109
      Top = 1
      Width = 187
      Height = 50
      Align = alClient
      Caption = 'F3 | Descri'#231#227'o'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 207
      ExplicitHeight = 43
      object edtDescricao: TEdit
        Left = 1
        Top = 18
        Width = 185
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitWidth = 172
        ExplicitHeight = 23
      end
    end
    object grpAplicacao: TGroupBox
      Left = 458
      Top = 1
      Width = 164
      Height = 50
      Align = alRight
      Caption = 'F5 | Localiza'#231#227'o'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 478
      ExplicitHeight = 43
      object edtAplicacao: TEdit
        Left = 1
        Top = 18
        Width = 162
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 23
      end
    end
    object grpCodigo: TGroupBox
      Left = 1
      Top = 1
      Width = 108
      Height = 50
      Align = alLeft
      Caption = 'F2 | C'#243'digo'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 43
      object edtCod: TEdit
        Left = 1
        Top = 18
        Width = 106
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 23
      end
    end
    object btnFiltrar: TBitBtn
      AlignWithMargins = True
      Left = 963
      Top = 4
      Width = 37
      Height = 44
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
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
        00001E1E1E811E1E1E8100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001E1E
        1E813C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001E1E1E813C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001E1E1E813C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000707071C171717632626
        26A0313131D1393939F3393939F3313131D1262626A0171717630707071C0000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001181818652E2E2EC53C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2E2E2EC52A2A
        2AB33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000004040412202020893C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001202020893C3C3CFF3C3C3CFF3C3C3CFF303030CB1E1E
        1E7F0F0F0F3F04040412040404120F0F0F3F1E1E1E7F303030CB3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000181818653C3C3CFF3C3C3CFF3C3C3CFF242424980A0A0A2A0000
        000000000000000000000000000000000000000000000A0A0A2A242424983C3C
        3CFF3C3C3CFF3C3C3CFF2A2A2AB1000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000707071C2E2E2EC53C3C3CFF3C3C3CFF242424980303030E000000000000
        00000000000000000000000000000000000000000000000000000303030E2424
        24983C3C3CFF3C3C3CFF2E2E2EC50707071C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717633C3C3CFF3C3C3CFF303030CB0A0A0A2A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000A0A
        0A2A303030CB3C3C3CFF3C3C3CFF171717630000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626A03C3C3CFF3C3C3CFF1E1E1E7F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E7F3C3C3CFF3C3C3CFF262626A00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000313131D13C3C3CFF3C3C3CFF0F0F0F3F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000F0F0F3F3C3C3CFF3C3C3CFF313131D10000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000393939F33C3C3CFF3C3C3CFF040404120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000040404123C3C3CFF3C3C3CFF393939F30000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000393939F33C3C3CFF3C3C3CFF040404120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000040404123C3C3CFF3C3C3CFF393939F30000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000313131D13C3C3CFF3C3C3CFF0F0F0F3F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000F0F0F3F3C3C3CFF3C3C3CFF313131D10000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626A03C3C3CFF3C3C3CFF1E1E1E7F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E7F3C3C3CFF3C3C3CFF262626A00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717633C3C3CFF3C3C3CFF303030CB0A0A0A2A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000A0A
        0A2A303030CB3C3C3CFF3C3C3CFF171717630000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000707071C2E2E2EC53C3C3CFF3C3C3CFF242424980303030E000000000000
        00000000000000000000000000000000000000000000000000000303030E2424
        24983C3C3CFF3C3C3CFF2E2E2EC50707071C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000181818653C3C3CFF3C3C3CFF3C3C3CFF242424980A0A0A2A0000
        000000000000000000000000000000000000000000000A0A0A2A242424983C3C
        3CFF3C3C3CFF3C3C3CFF18181865000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001202020893C3C3CFF3C3C3CFF3C3C3CFF303030CB1E1E
        1E7F0F0F0F3F04040412040404120F0F0F3F1E1E1E7F303030CB3C3C3CFF3C3C
        3CFF3C3C3CFF2020208900000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000004040412202020893C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF202020890404041200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001181818652E2E2EC53C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2E2E2EC51818
        1865000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000707071C171717632626
        26A0313131D1393939F3393939F3313131D1262626A0171717630707071C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 6
      OnClick = btnFiltrarClick
      ExplicitLeft = 980
      ExplicitTop = 1
      ExplicitHeight = 43
    end
    object grpBarras: TGroupBox
      Left = 771
      Top = 1
      Width = 189
      Height = 50
      Align = alRight
      Caption = 'F7 | C'#243'digo de Barras'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      ExplicitLeft = 791
      ExplicitHeight = 43
      object edtBarra: TEdit
        Left = 1
        Top = 18
        Width = 187
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtBarraChange
        ExplicitHeight = 23
      end
    end
    object grpMarca: TGroupBox
      Left = 622
      Top = 1
      Width = 149
      Height = 50
      Align = alRight
      Caption = 'F6 | Marca'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 642
      ExplicitHeight = 43
      object edtMarca: TEdit
        Left = 1
        Top = 18
        Width = 147
        Height = 31
        Align = alClient
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtCodChange
        ExplicitHeight = 23
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1004
    Height = 327
    Align = alClient
    DataSource = dsPesquisa
    DynProps = <>
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleParams.Font.Charset = ANSI_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -13
    TitleParams.Font.Name = 'Segoe UI'
    TitleParams.Font.Style = []
    TitleParams.ParentFont = False
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODIGO'
        Footers = <>
        Title.Caption = 'C'#243'digo'
        Width = 61
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DESCRICAO'
        Footers = <>
        Title.Caption = 'Descri'#231#227'o'
        Width = 501
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MARCA'
        Footers = <>
        Title.Caption = 'Marca'
        Width = 210
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PR_VENDA'
        Footers = <>
        Title.Caption = 'Pre'#231'o'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QTD_ATUAL'
        Footers = <>
        Title.Caption = 'Estoque'
        Width = 88
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qryPesquisa: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      
        'select pro.codigo, pro.codbarra, pro.descricao, pro.pr_venda, pr' +
        'o.qtd_atual, ma.descricao as marca  from produto pro'
      'left join marca ma on ma.codigo=pro.fk_marca'
      'where'
      '(pro.ativo='#39'S'#39')'
      '(pro.codigo between :cod1 and :cod2) and'
      'pro.descricao like :descricao and'
      'pro.localizacao like :apli and'
      'pro.referencia like :ref and'
      'pro.marca like :marca'
      '/*where*/'
      'order by pro.descricao')
    Left = 352
    Top = 184
    ParamData = <
      item
        Name = 'COD1'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD2'
        ParamType = ptInput
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'APLI'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'MARCA'
        ParamType = ptInput
      end>
    object qryPesquisaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryPesquisaCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesquisaPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPesquisaQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryPesquisaMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 216
    Top = 152
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 496
    Top = 184
  end
end
