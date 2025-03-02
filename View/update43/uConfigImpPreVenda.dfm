object frmConfigImpPreVenda: TfrmConfigImpPreVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#227'o de Impress'#227'o'
  ClientHeight = 357
  ClientWidth = 466
  Color = 5723991
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 449
    Height = 337
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 77
      Width = 427
      Height = 23
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 44
      ExplicitWidth = 84
    end
    object btnSalvar: TButton
      Left = 181
      Top = 281
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object cbImpressora: TComboBox
      AlignWithMargins = True
      Left = 11
      Top = 105
      Width = 427
      Height = 31
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 72
      ExplicitWidth = 403
    end
    object chkImprimir: TCheckBox
      AlignWithMargins = True
      Left = 11
      Top = 218
      Width = 427
      Height = 33
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Pergunta se deseja Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 411
    end
    object chkPerguntaTipo: TCheckBox
      AlignWithMargins = True
      Left = 11
      Top = 146
      Width = 427
      Height = 35
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Perguntar Tipo de Impress'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitWidth = 323
    end
    object chkPreview: TCheckBox
      AlignWithMargins = True
      Left = 11
      Top = 186
      Width = 427
      Height = 27
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Mostrar Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ExplicitWidth = 411
    end
    object rgrpTipoImpressao: TRadioGroup
      AlignWithMargins = True
      Left = 11
      Top = 1
      Width = 427
      Height = 69
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 2
      Align = alTop
      Caption = 'Tipo Impress'#227'o'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Cupom'
        'A4')
      ParentFont = False
      TabOrder = 5
      ExplicitWidth = 403
    end
  end
end
