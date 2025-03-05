object frmEnvioWhatsApp: TfrmEnvioWhatsApp
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Envio WhatsApp'
  ClientHeight = 140
  ClientWidth = 318
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblNumero: TLabel
    Left = 0
    Top = 0
    Width = 318
    Height = 25
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Digite o N'#250'mero para envio.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 428
  end
  object Label1: TLabel
    Left = 0
    Top = 25
    Width = 318
    Height = 25
    Cursor = crAppStart
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Exemplo (99) 9 9999-9999'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 8
    ExplicitWidth = 428
  end
  object edtNumero: TMaskEdit
    AlignWithMargins = True
    Left = 20
    Top = 53
    Width = 278
    Height = 31
    Margins.Left = 20
    Margins.Right = 20
    Align = alTop
    EditMask = '(99) 9 9999-9999;0;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 16
    ParentFont = False
    TabOrder = 0
    Text = ''
    TextHint = '(99) 9 9999-9999'
    OnKeyDown = edtNumeroKeyDown
    ExplicitWidth = 387
  end
  object btnConfirmar: TButton
    Left = 120
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
end
