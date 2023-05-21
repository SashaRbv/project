object FormLogin: TFormLogin
  Left = 0
  Top = 0
  ClientHeight = 643
  ClientWidth = 1032
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1032
    Height = 80
    Align = alTop
    Color = 13334109
    ParentBackground = False
    TabOrder = 0
  end
  object PanelDown: TPanel
    Left = 0
    Top = 563
    Width = 1032
    Height = 80
    Align = alBottom
    Color = 13334109
    ParentBackground = False
    TabOrder = 1
  end
  object PanelEntry: TPanel
    Left = 344
    Top = 128
    Width = 337
    Height = 401
    Color = 12303291
    ParentBackground = False
    TabOrder = 2
    object PanelWelcome: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 48
      Align = alTop
      Color = 13334109
      ParentBackground = False
      TabOrder = 0
    end
    object EditLogin: TEdit
      Left = 72
      Top = 104
      Width = 201
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditPassword: TEdit
      Left = 72
      Top = 190
      Width = 201
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 72
      Top = 302
      Width = 201
      Height = 49
      Caption = #1042#1093#1086#1076
      Color = 13334109
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = Panel1Click
    end
  end
end
