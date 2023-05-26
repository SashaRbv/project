object FormCreate: TFormCreate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
  ClientHeight = 454
  ClientWidth = 392
  Color = 12303291
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 110
    Top = 8
    Width = 169
    Height = 28
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 21
    Top = 198
    Width = 141
    Height = 28
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 100
    Width = 39
    Height = 28
    Caption = #1048#1084#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 18
    Top = 250
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
  object Label7: TLabel
    Left = 21
    Top = 55
    Width = 84
    Height = 28
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 18
    Top = 295
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
  object Lable: TLabel
    Left = 21
    Top = 145
    Width = 84
    Height = 28
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 18
    Top = 345
    Width = 93
    Height = 28
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PanelSozdat: TPanel
    Left = 125
    Top = 400
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
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 168
    Top = 247
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1089#1087#1086#1088#1090#1072
    ListField = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1089#1087#1086#1088#1090#1072
    ListSource = FormMain.UniDataSourceSportTipe
    ParentFont = False
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 168
    Top = 57
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
  object Edit7: TEdit
    Left = 168
    Top = 100
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit8: TEdit
    Left = 168
    Top = 147
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 168
    Top = 347
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 303
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnChange = ComboBox1Change
    Items.Strings = (
      #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081
      #1050#1086#1084#1072#1085#1076#1085#1099#1081)
  end
  object DateTimePicker1: TDateTimePicker
    Left = 168
    Top = 195
    Width = 201
    Height = 31
    Date = 45071.000000000000000000
    Time = 0.881067407404771100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
