object FormSport: TFormSport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1086#1088#1090#1080#1074#1085#1099#1077' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
  ClientHeight = 522
  ClientWidth = 578
  Color = 12303291
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 134
    Top = 8
    Width = 327
    Height = 28
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1086#1088#1090#1080#1074#1085#1099#1077' '#1089#1086#1088#1077#1074#1085#1086#1074#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 22
    Top = 174
    Width = 88
    Height = 28
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 21
    Top = 98
    Width = 102
    Height = 28
    Caption = #1042#1080#1076' '#1089#1087#1086#1088#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 21
    Top = 214
    Width = 111
    Height = 28
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 21
    Top = 251
    Width = 103
    Height = 28
    Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 22
    Top = 293
    Width = 57
    Height = 28
    Caption = #1052#1077#1089#1090#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 21
    Top = 55
    Width = 83
    Height = 28
    Caption = #1059#1095#1072#1089#1090#1085#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 22
    Top = 335
    Width = 53
    Height = 28
    Caption = #1057#1091#1076#1100#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 22
    Top = 422
    Width = 120
    Height = 28
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1090#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Lable: TLabel
    Left = 21
    Top = 132
    Width = 81
    Height = 28
    Caption = #1050#1086#1084#1072#1085#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PanelSozdat: TPanel
    Left = 229
    Top = 469
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
    TabOrder = 0
    OnClick = PanelSozdatClick
  end
  object Edit1: TEdit
    Left = 157
    Top = 175
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 157
    Top = 60
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = #1060#1072#1084#1080#1083#1080#1103
    ListField = #1060#1072#1084#1080#1083#1080#1103
    ListSource = FormMain.UniDataSource_Parti
    ParentFont = False
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 157
    Top = 295
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1077#1089#1090#1072
    ListField = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1077#1089#1090#1072
    ListSource = FormMain.UniDataSourcePlace
    ParentFont = False
    TabOrder = 4
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 157
    Top = 337
    Width = 408
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = #1060#1072#1084#1080#1083#1080#1103
    ListField = #1060#1072#1084#1080#1083#1080#1103'; '#1042#1080#1076'_'#1089#1087#1086#1088#1090#1072
    ListSource = FormMain.UniDataSourceJudges
    ParentFont = False
    TabOrder = 5
    OnClick = DBLookupComboBox4Click
  end
  object Edit4: TEdit
    Left = 364
    Top = 60
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 364
    Top = 374
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Edit7: TEdit
    Left = 157
    Top = 102
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Edit8: TEdit
    Left = 157
    Top = 139
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Edit9: TEdit
    Left = 158
    Top = 419
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 157
    Top = 374
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker
    Left = 158
    Top = 214
    Width = 200
    Height = 31
    Date = 45071.000000000000000000
    Time = 0.807157210649165800
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DateTimePicker2: TDateTimePicker
    Left = 159
    Top = 251
    Width = 200
    Height = 31
    Date = 45071.000000000000000000
    Time = 0.807157210649165800
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
end
