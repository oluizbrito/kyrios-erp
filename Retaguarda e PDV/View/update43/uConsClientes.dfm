object frmConsCliente: TfrmConsCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Cliente'
  ClientHeight = 552
  ClientWidth = 964
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 531
    Width = 964
    Height = 21
    Panels = <>
    SimplePanel = True
    SimpleText = 'Sair [ESC]'
    ExplicitTop = 530
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 950
    Height = 52
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 964
    object Label15: TLabel
      Left = 38
      Top = 15
      Width = 234
      Height = 17
      Caption = 'PR'#201' VENDA - CONSULTA DE CLIENTES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 7
    Top = 66
    Width = 950
    Height = 41
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 52
    ExplicitWidth = 964
    object Label8: TLabel
      Left = 9
      Top = 10
      Width = 58
      Height = 17
      Caption = ' Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 766
      Top = 0
      Width = 180
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 780
      object Label1: TLabel
        AlignWithMargins = True
        Left = 32
        Top = -1
        Width = 134
        Height = 37
        AutoSize = False
        Caption = 'CLIENTES'
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
    end
    object edtEmp: TDBEdit
      Left = 78
      Top = 6
      Width = 510
      Height = 25
      TabStop = False
      DataField = 'RAZAO'
      DataSource = dsEmpresa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 7
    Top = 470
    Width = 950
    Height = 54
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    Caption = 'F6 | Localizar '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 3
    ExplicitTop = 477
    ExplicitWidth = 958
    object LbRegistros: TLabel
      Left = 731
      Top = 45
      Width = 3
      Height = 15
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtLoc: TEdit
      Left = 7
      Top = 22
      Width = 898
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
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
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 7
    Top = 114
    Width = 950
    Height = 349
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsClientes
    GradientEndColor = 15529196
    GradientStartColor = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = FormKeyDown
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = '>>C'#243'digo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO'
        Title.Caption = 'Raz'#227'o/Nome'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia/Apelido'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MUNICIPIO'
        Title.Caption = 'Munic'#237'pio'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end>
  end
  object qryClientes: TFDQuery
    Connection = Dados.Conexao
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000000
    SQL.Strings = (
      'select * from PESSOA'
      'where '
      'empresa=:id and'
      'cli='#39'S'#39' and'
      'ativo='#39'S'#39
      '/*where*/')
    Left = 376
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryClientesEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClientesIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryClientesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
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
    object qryClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryClientesCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Required = True
    end
    object qryClientesMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
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
    object qryClientesFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryClientesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryClientesCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object qryClientesEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryClientesEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 60
    end
    object qryClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryClientesSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
    object qryClientesDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
    object qryClientesECIVIL: TStringField
      FieldName = 'ECIVIL'
      Origin = 'ECIVIL'
      Size = 10
    end
    object qryClientesLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object qryClientesDIA_PGTO: TSmallintField
      FieldName = 'DIA_PGTO'
      Origin = 'DIA_PGTO'
    end
    object qryClientesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryClientesNUM_USU: TSmallintField
      FieldName = 'NUM_USU'
      Origin = 'NUM_USU'
    end
    object qryClientesFATURA: TStringField
      FieldName = 'FATURA'
      Origin = 'FATURA'
      Size = 1
    end
    object qryClientesCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
      Size = 1
    end
    object qryClientesCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 1
    end
    object qryClientesSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object qryClientesISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 1
    end
    object qryClientesFORN: TStringField
      FieldName = 'FORN'
      Origin = 'FORN'
      Required = True
      Size = 1
    end
    object qryClientesFUN: TStringField
      FieldName = 'FUN'
      Origin = 'FUN'
      Required = True
      Size = 1
    end
    object qryClientesCLI: TStringField
      FieldName = 'CLI'
      Origin = 'CLI'
      Required = True
      Size = 1
    end
    object qryClientesFAB: TStringField
      FieldName = 'FAB'
      Origin = 'FAB'
      Required = True
      Size = 1
    end
    object qryClientesTRAN: TStringField
      FieldName = 'TRAN'
      Origin = 'TRAN'
      Required = True
      Size = 1
    end
    object qryClientesADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      Required = True
      Size = 1
    end
    object qryClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryClientesDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Origin = 'DT_ADMISSAO'
    end
    object qryClientesDT_DEMISSAO: TDateField
      FieldName = 'DT_DEMISSAO'
      Origin = 'DT_DEMISSAO'
    end
    object qryClientesSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object qryClientesPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryClientesMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryClientesBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryClientesAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryClientesGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 30
    end
    object qryClientesFONE_GERENTE: TStringField
      FieldName = 'FONE_GERENTE'
      Origin = 'FONE_GERENTE'
      Size = 15
    end
    object qryClientesPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 50
    end
    object qryClientesDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryClientesTECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 1
    end
    object qryClientesATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 1
    end
    object qryClientesCODIGO_WEB: TIntegerField
      FieldName = 'CODIGO_WEB'
      Origin = 'CODIGO_WEB'
    end
    object qryClientesREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryClientesFK_SISTEMA: TIntegerField
      FieldName = 'FK_SISTEMA'
      Origin = 'FK_SISTEMA'
    end
    object qryClientesCHAVE_ATIVACAO: TStringField
      FieldName = 'CHAVE_ATIVACAO'
      Origin = 'CHAVE_ATIVACAO'
      Size = 250
    end
    object qryClientesVECTO_ATIVACAO: TDateField
      FieldName = 'VECTO_ATIVACAO'
      Origin = 'VECTO_ATIVACAO'
    end
    object qryClientesVET: TStringField
      FieldName = 'VET'
      Origin = 'VET'
      Size = 1
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 376
    Top = 200
  end
  object dsEmpresa: TDataSource
    DataSet = Dados.qryEmpresa
    Left = 480
    Top = 192
  end
end
