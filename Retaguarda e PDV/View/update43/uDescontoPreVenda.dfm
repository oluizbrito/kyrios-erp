object frmDescontoPreVenda: TfrmDescontoPreVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desconto Pr'#233' Venda'
  ClientHeight = 204
  ClientWidth = 326
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 326
    Height = 13
    Align = alTop
    Caption = 'Valor da Pr'#233' Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 97
  end
  object Label5: TLabel
    Left = 0
    Top = 113
    Width = 326
    Height = 13
    Align = alTop
    Caption = 'Valor com Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 103
  end
  object Label6: TLabel
    Left = 0
    Top = 126
    Width = 326
    Height = 41
    Align = alTop
    Alignment = taCenter
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Panel1: TPanel
    Left = 0
    Top = 13
    Width = 326
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 128
    ExplicitTop = 48
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 326
      Height = 41
      Align = alClient
      Alignment = taCenter
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 115
      ExplicitTop = 2
      ExplicitWidth = 96
      ExplicitHeight = 37
    end
  end
  object btnConfirmar: TButton
    Left = 125
    Top = 173
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 326
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 160
      Height = 59
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 160
        Height = 13
        Align = alTop
        Caption = 'Desconto %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 62
      end
      object edtDescP: TEdit
        Left = 0
        Top = 13
        Width = 160
        Height = 46
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -31
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        OnExit = edtDescPExit
        OnKeyDown = edtDescPKeyDown
        OnKeyPress = edtDescPKeyPress
        ExplicitWidth = 163
        ExplicitHeight = 50
      end
    end
    object Panel4: TPanel
      Left = 166
      Top = 0
      Width = 160
      Height = 59
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 160
        Height = 13
        Align = alTop
        Caption = 'Desconto R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 65
      end
      object edtDescV: TEdit
        Left = 0
        Top = 13
        Width = 160
        Height = 46
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -31
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        OnExit = edtDescVExit
        OnKeyDown = edtDescVKeyDown
        OnKeyPress = edtDescVKeyPress
        ExplicitWidth = 163
      end
    end
  end
end
