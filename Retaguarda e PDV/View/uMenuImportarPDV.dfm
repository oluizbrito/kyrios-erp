object frmImportarPDV: TfrmImportarPDV
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Escolha o que importar:'
  ClientHeight = 244
  ClientWidth = 319
  Color = 5723991
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  TextHeight = 23
  object Button1: TButton
    Left = 24
    Top = 17
    Width = 270
    Height = 45
    BiDiMode = bdLeftToRight
    Caption = 'F2 - Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 69
    Width = 270
    Height = 45
    BiDiMode = bdLeftToRight
    Caption = 'F3 - Or'#231'amento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 122
    Width = 270
    Height = 45
    BiDiMode = bdLeftToRight
    Caption = 'F4 - Ordem de Servi'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object btnPreVenda: TButton
    Left = 24
    Top = 173
    Width = 270
    Height = 45
    Caption = 'F5 - Pr'#233'-Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnPreVendaClick
  end
end
