object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 474
  ClientWidth = 401
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 401
    Height = 474
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 474
    Align = alClient
    TabOrder = 1
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
      Top = 332
      Width = 88
      Height = 17
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
    end
    object Label4: TLabel
      Left = 34
      Top = 232
      Width = 45
      Height = 17
      Caption = #1057#1082#1080#1076#1082#1072':'
    end
    object Label3: TLabel
      Left = 34
      Top = 284
      Width = 128
      Height = 17
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1080#1075#1088#1086#1082#1086#1074':'
    end
    object Label2: TLabel
      Left = 200
      Top = 56
      Width = 106
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
      WordWrap = True
    end
    object Label1: TLabel
      Left = 200
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
    object Label11: TLabel
      Left = 200
      Top = 98
      Width = 46
      Height = 17
      Caption = #1040#1082#1090#1077#1088#1099':'
    end
    object DatePicker: TDatePicker
      Left = 34
      Top = 29
      Width = 145
      Height = 21
      Date = 44927.000000000000000000
      DateFormat = 'DD.MM.YYYY'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = []
      TabOrder = 0
    end
    object ComboBoxTime: TDBComboBox
      Left = 34
      Top = 73
      Width = 145
      Height = 25
      DataField = 'time'
      DataSource = DataModule2.DS_T_prices
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
      TabOrder = 1
    end
    object ButtonAdd: TButton
      Left = 278
      Top = 436
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = ButtonAddClick
    end
    object EditNamePerson: TEdit
      Left = 200
      Top = 29
      Width = 153
      Height = 25
      TabOrder = 3
    end
    object EditPhone: TEdit
      Left = 200
      Top = 73
      Width = 153
      Height = 25
      TabOrder = 4
    end
    object EditQuantity: TEdit
      Left = 34
      Top = 301
      Width = 145
      Height = 25
      TabOrder = 5
    end
    object EditDiscount: TEdit
      Left = 34
      Top = 251
      Width = 145
      Height = 25
      TabOrder = 6
      Text = '0'
    end
    object MemoComment: TMemo
      Left = 34
      Top = 355
      Width = 319
      Height = 63
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
    end
    object QuestBox: TDBComboBox
      Left = 34
      Top = 117
      Width = 145
      Height = 25
      DataField = 'nameq'
      DataSource = DataModule2.DS_Q_view_booking_full_info
      Items.Strings = (
        #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
        #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103)
      TabOrder = 8
    end
    object SourceBox: TDBComboBox
      Left = 34
      Top = 161
      Width = 145
      Height = 25
      DataField = 'name'
      DataSource = DataModule2.DS_T_source
      Items.Strings = (
        #1052#1080#1088' '#1050#1074#1077#1089#1090#1086#1074
        #1058#1077#1083#1077#1092#1086#1085
        #1042#1050#1086#1085#1090#1072#1082#1090#1077
        #1048#1085#1089#1090#1072#1075#1088#1072#1084
        #1058#1077#1083#1077#1075#1088#1072#1084)
      TabOrder = 9
    end
    object actorsEdit: TCheckListBox
      Left = 200
      Top = 117
      Width = 153
      Height = 209
      ItemHeight = 17
      Items.Strings = (
        #1053#1072#1089#1090#1103' '#1042#1072#1089#1080#1083#1100#1077#1074#1072
        #1069#1084#1080' '#1050#1072#1088#1090#1077#1088
        #1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1086#1083#1103#1082#1086#1074
        #1046#1072#1085' '#1057#1072#1076#1079#1080#1085#1086#1074
        #1057#1072#1096#1072' '#1055#1086#1079#1086#1083#1086#1090#1080#1085
        #1053#1072#1089#1090#1103' '#1055#1077#1090#1091#1093#1086#1074#1072
        #1057#1086#1085#1103' '#1050#1086#1084#1082#1086#1074#1072)
      TabOrder = 10
    end
    object StatusBox: TComboBox
      Left = 34
      Top = 205
      Width = 145
      Height = 25
      ItemIndex = 1
      TabOrder = 11
      Text = #1086#1078#1080#1076#1072#1085#1080#1077
      Items.Strings = (
        #1087#1088#1086#1074#1077#1076#1077#1085
        #1086#1078#1080#1076#1072#1085#1080#1077
        #1087#1088#1077#1076#1086#1087#1083#1072#1090#1072' '
        #1086#1090#1084#1077#1085#1072)
    end
  end
end
