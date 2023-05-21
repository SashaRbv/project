object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 643
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Notebook: TNotebook
    Left = 249
    Top = 80
    Width = 824
    Height = 483
    Align = alClient
    TabOrder = 3
    object TPage
      Left = 0
      Top = 0
      Caption = 'Main'
      object DBGrid_Sport: TDBGrid
        Left = 6
        Top = 80
        Width = 819
        Height = 329
        DataSource = UniDataSource_Sport
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object PanelSozdat: TPanel
        Left = 16
        Top = 432
        Width = 129
        Height = 41
        Caption = #1057#1086#1079#1076#1072#1090#1100
        Color = 13334109
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = PanelSozdatClick
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 80
    Align = alTop
    Color = 13334109
    ParentBackground = False
    TabOrder = 0
    object PanelSideBarTime: TPanel
      Left = 16
      Top = 19
      Width = 49
      Height = 46
      Color = 12303291
      ParentBackground = False
      TabOrder = 0
      OnClick = PanelSideBarTimeClick
    end
  end
  object PanelDown: TPanel
    Left = 0
    Top = 563
    Width = 1073
    Height = 80
    Align = alBottom
    Color = 13334109
    ParentBackground = False
    TabOrder = 1
  end
  object PanelSideBar: TPanel
    Left = 0
    Top = 80
    Width = 249
    Height = 483
    Align = alLeft
    Color = 13334109
    ParentBackground = False
    TabOrder = 2
    object PanelHome: TPanel
      Left = 1
      Top = 1
      Width = 247
      Height = 64
      Align = alTop
      Caption = #1043#1083#1072#1074#1085#1072#1103
      Color = 12303291
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = PanelHomeClick
    end
    object PanelParti: TPanel
      Left = 1
      Top = 65
      Width = 247
      Height = 64
      Align = alTop
      Caption = #1059#1095#1072#1089#1090#1085#1080#1082#1080
      Color = 12303291
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 1
      Top = 129
      Width = 247
      Height = 64
      Align = alTop
      Caption = #1057#1091#1076#1100#1103
      Color = 12303291
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 418
      Width = 247
      Height = 64
      Align = alBottom
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Color = 12303291
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object UniConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'project'
    Connected = True
    Left = 464
    Top = 16
  end
  object UniDataSource_Sport: TUniDataSource
    DataSet = UniQuery_Sport
    Left = 96
    Top = 584
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 416
    Top = 16
  end
  object UniQuery_Sport: TUniQuery
    Connection = UniConnection
    SQL.Strings = (
      'SELECT * FROM `Sports competitions`')
    Active = True
    Left = 48
    Top = 584
  end
  object UniQuery_Organizator: TUniQuery
    Connection = UniConnection
    SQL.Strings = (
      'SELECT * FROM Organizer')
    Active = True
    Left = 440
    Top = 592
  end
  object UniDataSource_Organizator: TUniDataSource
    DataSet = UniQuery_Organizator
    Left = 376
    Top = 592
  end
  object Timer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerTimer
    Left = 112
    Top = 24
  end
end
