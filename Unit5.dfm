object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 491
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Yu Gothic UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 491
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 203
      Top = 10
      Width = 94
      Height = 17
      Caption = #1047#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1083':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 203
      Top = 54
      Width = 106
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
      WordWrap = True
    end
    object Label3: TLabel
      Left = 34
      Top = 276
      Width = 128
      Height = 17
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1080#1075#1088#1086#1082#1086#1074':'
    end
    object Label4: TLabel
      Left = 34
      Top = 232
      Width = 45
      Height = 17
      Caption = #1057#1082#1080#1076#1082#1072':'
    end
    object Label5: TLabel
      Left = 34
      Top = 144
      Width = 61
      Height = 17
      Caption = #1048#1089#1090#1086#1095#1085#1080#1082':'
    end
    object Label6: TLabel
      Left = 34
      Top = 188
      Width = 40
      Height = 17
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label7: TLabel
      Left = 34
      Top = 317
      Width = 88
      Height = 17
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
    end
    object Label8: TLabel
      Left = 34
      Top = 10
      Width = 31
      Height = 17
      Caption = #1044#1072#1090#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label9: TLabel
      Left = 34
      Top = 54
      Width = 41
      Height = 17
      Caption = #1042#1088#1077#1084#1103':'
      WordWrap = True
    end
    object Label10: TLabel
      Left = 34
      Top = 100
      Width = 36
      Height = 17
      Caption = #1050#1074#1077#1089#1090':'
    end
    object Label11: TLabel
      Left = 203
      Top = 98
      Width = 46
      Height = 17
      Caption = #1040#1082#1090#1077#1088#1099':'
    end
    object EditNamePerson: TDBEdit
      Left = 203
      Top = 29
      Width = 150
      Height = 25
      DataField = 'namep'
      DataSource = DataModule2.DS_T_person
      TabOrder = 0
    end
    object EditPhone: TDBEdit
      Left = 203
      Top = 73
      Width = 150
      Height = 25
      DataField = 'phone'
      DataSource = DataModule2.DS_T_person
      TabOrder = 1
    end
    object EditQuantity: TDBEdit
      Left = 34
      Top = 293
      Width = 150
      Height = 25
      DataField = 'quantity'
      DataSource = DataModule2.DS_T_team
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
    object EditDiscount: TDBEdit
      Left = 34
      Top = 248
      Width = 150
      Height = 25
      DataField = 'discount'
      DataSource = DataModule2.DS_T_team
      TabOrder = 3
    end
    object MemoComment: TDBMemo
      Left = 34
      Top = 336
      Width = 319
      Height = 63
      DataField = 'comment'
      DataSource = DataModule2.DS_T_team
      TabOrder = 4
    end
    object ButtonSave: TButton
      Left = 272
      Top = 413
      Width = 81
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 5
      OnClick = ButtonSaveClick
    end
    object DatePicker: TDatePicker
      Left = 34
      Top = 29
      Height = 21
      Date = 44921.000000000000000000
      DateFormat = 'DD.MM.YYYY'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = []
      TabOrder = 6
    end
    object ComboBoxTime: TDBComboBox
      Left = 34
      Top = 73
      Width = 150
      Height = 25
      DataField = 'time'
      DataSource = DataModule2.DS_booking
      Items.Strings = (
        '09:00'
        '10:30'
        '12:00'
        '13:30'
        '15:00'
        '16:30'
        '18:00'
        '19:30'
        '21:00'
        '22:30'
        '00:00'
        '01:30')
      TabOrder = 7
    end
    object CheckListBoxActors: TCheckListBox
      Left = 203
      Top = 121
      Width = 150
      Height = 197
      ItemHeight = 17
      Items.Strings = (
        #1053#1072#1089#1090#1103' '#1042#1072#1089#1080#1083#1100#1077#1074#1072
        #1069#1084#1080' '#1050#1072#1088#1090#1077#1088
        #1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1086#1083#1103#1082#1086#1074
        #1046#1072#1085' '#1057#1072#1076#1079#1080#1085#1086#1074
        #1057#1072#1096#1072' '#1055#1086#1079#1086#1083#1086#1090#1080#1085
        #1053#1072#1089#1090#1103' '#1055#1077#1090#1091#1093#1086#1074#1072
        #1057#1086#1085#1103' '#1050#1086#1084#1082#1086#1074#1072)
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 34
      Top = 161
      Width = 145
      Height = 25
      DataField = 'IDsource'
      DataSource = DataModule2.DS_booking
      KeyField = 'IDsource'
      ListField = 'name'
      ListSource = DataModule2.DS_T_source
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 34
      Top = 205
      Width = 145
      Height = 25
      DataField = 'IDstatus'
      DataSource = DataModule2.DS_booking
      KeyField = 'IDstatus'
      ListField = 'name'
      ListSource = DataModule2.DS_T_status
      TabOrder = 10
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 34
      Top = 117
      Width = 145
      Height = 25
      DataField = 'IDquest'
      DataSource = DataModule2.DS_booking
      KeyField = 'IDquest'
      ListField = 'nameq'
      ListSource = DataModule2.DS_quests_catalog
      TabOrder = 11
    end
  end
end
