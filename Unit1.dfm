object Form4: TForm4
  Left = 0
  Top = 219
  Caption = #1041#1072#1079#1072' '#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1080#1081' '#1082#1074#1077#1089#1090#1072
  ClientHeight = 646
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Yu Gothic UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label9: TLabel
    Left = 144
    Top = 120
    Width = 29
    Height = 17
    Caption = #1048#1084#1103':'
  end
  object Label10: TLabel
    Left = 144
    Top = 152
    Width = 56
    Height = 17
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object DBText4: TDBText
    Left = 80
    Top = 77
    Width = 65
    Height = 17
    DataField = 'sourcename'
    DataSource = DataModule2.DS_Q_view_booking_full_info
  end
  object Label3: TLabel
    Left = 8
    Top = 77
    Width = 61
    Height = 17
    Caption = #1048#1089#1090#1086#1095#1085#1080#1082':'
  end
  object Бронирования: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 646
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Yu Gothic UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1041#1088#1086#1085#1080#1088#1086#1074#1072#1085#1080#1103
      object DBGrid1: TDBGrid
        Left = 0
        Top = 109
        Width = 792
        Height = 218
        Align = alTop
        DataSource = DataModule2.DS_Q_view_booking_full_info
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Yu Gothic UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'date'
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072
            Width = 126
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'time'
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1077#1084#1103
            Width = 102
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'nameq'
            Title.Alignment = taCenter
            Title.Caption = #1050#1074#1077#1089#1090
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'finalprice'
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'namep'
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1103
            Width = 117
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'phone'
            Title.Alignment = taCenter
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085
            Width = 147
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 327
        Width = 438
        Height = 287
        Align = alClient
        TabOrder = 1
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 639
          Height = 244
          Align = alLeft
          TabOrder = 0
          DesignSize = (
            639
            244)
          object Label1: TLabel
            Left = 0
            Top = -1
            Width = 82
            Height = 17
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 64
            Top = 63
            Width = 45
            Height = 17
            Caption = #1057#1082#1080#1076#1082#1072':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 9
            Top = 30
            Width = 100
            Height = 17
            Caption = #1050#1086#1083'-'#1074#1086' '#1080#1075#1088#1086#1082#1086#1074':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 48
            Top = 94
            Width = 61
            Height = 17
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 69
            Top = 125
            Width = 40
            Height = 17
            Caption = #1057#1090#1072#1090#1091#1089':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 21
            Top = 152
            Width = 88
            Height = 17
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 211
            Top = 3
            Width = 46
            Height = 17
            Caption = #1040#1082#1090#1077#1088#1099':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 115
            Top = 59
            Width = 90
            Height = 25
            DataField = 'discount'
            DataSource = DataModule2.DS_Q_view_booking_full_info
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            MaxLength = 3
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 115
            Top = 90
            Width = 90
            Height = 25
            DataField = 'sourcename'
            DataSource = DataModule2.DS_Q_view_booking_full_info
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            AlignWithMargins = True
            Left = 115
            Top = 26
            Width = 88
            Height = 25
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            DataField = 'quantity'
            DataSource = DataModule2.DS_Q_view_booking_full_info
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            AlignWithMargins = True
            Left = 115
            Top = 121
            Width = 90
            Height = 25
            DataField = 'statusname'
            DataSource = DataModule2.DS_Q_view_booking_full_info
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBMemo1: TDBMemo
            Left = 9
            Top = 175
            Width = 408
            Height = 66
            DataField = 'comment'
            DataSource = DataModule2.DS_Q_view_booking_full_info
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object actorscom: TCheckListBox
            Left = 211
            Top = 26
            Width = 206
            Height = 119
            BorderStyle = bsNone
            Enabled = False
            ItemHeight = 17
            TabOrder = 5
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 245
          Width = 436
          Height = 41
          Align = alBottom
          TabOrder = 1
          object ButtonChangeBooking: TButton
            Left = 10
            Top = 6
            Width = 133
            Height = 25
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ButtonChangeBookingClick
          end
          object ButtonAddBooking: TButton
            Left = 149
            Top = 6
            Width = 131
            Height = 25
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonAddBookingClick
          end
          object ButtonDelBooking: TButton
            Left = 286
            Top = 6
            Width = 131
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = ButtonDelBookingClick
          end
        end
      end
      object FilterPanel: TPanel
        Left = 438
        Top = 327
        Width = 354
        Height = 287
        Align = alRight
        TabOrder = 2
        object Label11: TLabel
          Left = 6
          Top = 14
          Width = 182
          Height = 17
          Caption = #1042#1099#1073#1086#1088' '#1079#1072#1087#1080#1089#1077#1081', '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
        end
        object LabelRecCount: TLabel
          Left = 1
          Top = 269
          Width = 352
          Height = 17
          Align = alBottom
          Caption = 'recount'
          ExplicitWidth = 44
        end
        object E_Filter: TEdit
          Left = 6
          Top = 37
          Width = 331
          Height = 25
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1072#1090#1091#1089', '#1080#1089#1090#1086#1095#1085#1080#1082' '#1080#1083#1080' '#1080#1084#1103' '#1073#1088#1086#1085#1080#1088#1086#1074#1072#1074#1096#1077#1075#1086
          OnChange = E_FilterChange
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 68
          Width = 331
          Height = 64
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label12: TLabel
            Left = 208
            Top = 25
            Width = 16
            Height = 17
            Caption = #1087#1086
          end
          object CheckBox1: TCheckBox
            Left = 10
            Top = 25
            Width = 97
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089' '
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 113
            Top = 23
            Width = 89
            Height = 25
            Date = 44922.000000000000000000
            Time = 44922.000000000000000000
            TabOrder = 1
            OnChange = DateTimePicker1Change
          end
          object DateTimePicker2: TDateTimePicker
            Left = 228
            Top = 23
            Width = 89
            Height = 25
            Date = 44922.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 2
            OnChange = DateTimePicker2Change
          end
        end
        object GroupBox2: TGroupBox
          Left = 6
          Top = 138
          Width = 331
          Height = 55
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1094#1077#1085#1077
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object ComboCostCondition: TComboBox
            Left = 119
            Top = 16
            Width = 65
            Height = 25
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = '>'
            OnChange = ComboCostConditionChange
            Items.Strings = (
              '>'
              '>='
              '='
              '<>'
              '<'
              '<= ')
          end
          object SpinCostValue: TSpinEdit
            Left = 198
            Top = 16
            Width = 65
            Height = 27
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnChange = SpinCostValueChange
          end
          object ChkCostFilter: TCheckBox
            Left = 16
            Top = 20
            Width = 97
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100
            TabOrder = 2
            OnClick = ChkCostFilterClick
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 109
        Align = alTop
        TabOrder = 3
        object Label14: TLabel
          Left = 613
          Top = 80
          Width = 50
          Height = 17
          Caption = #1079#1072#1087#1080#1089#1077#1081
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 0
          Width = 389
          Height = 97
          Caption = #1055#1086#1080#1089#1082' '#1079#1072#1087#1080#1089#1080' '#1087#1086' '#1076#1072#1090#1077' '#1080' '#1074#1088#1077#1084#1077#1085#1080
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object E_search_date: TEdit
            Left = 18
            Top = 28
            Width = 108
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
          end
          object E_search_time: TEdit
            Left = 18
            Top = 59
            Width = 108
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1074#1088#1077#1084#1103
          end
          object B_search_date_time: TButton
            Left = 300
            Top = 28
            Width = 73
            Height = 25
            Caption = #1055#1086#1080#1089#1082
            TabOrder = 2
            OnClick = B_search_date_timeClick
          end
          object RB_dush: TRadioButton
            Left = 141
            Top = 26
            Width = 137
            Height = 17
            Caption = #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object RB_dez: TRadioButton
            Left = 141
            Top = 49
            Width = 113
            Height = 17
            Caption = #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object GroupBox5: TGroupBox
          Left = 399
          Top = 4
          Width = 291
          Height = 70
          Caption = #1055#1086#1080#1089#1082' '#1079#1072#1087#1080#1089#1080' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1090#1077#1083#1077#1092#1086#1085#1072
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object B_Search_phone: TButton
            Left = 199
            Top = 28
            Width = 75
            Height = 25
            Caption = #1055#1086#1080#1089#1082
            TabOrder = 0
            OnClick = B_Search_phoneClick
          end
          object Search_phone: TEdit
            Left = 19
            Top = 28
            Width = 174
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
          end
        end
        object CheckBox2: TCheckBox
          Left = 399
          Top = 80
          Width = 140
          Height = 17
          Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1087#1077#1088#1074#1099#1077
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox2Click
        end
        object reccountEdit: TEdit
          Left = 545
          Top = 80
          Width = 50
          Height = 25
          TabOrder = 3
          Text = '20'
          OnChange = reccountEditChange
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1050#1074#1077#1089#1090#1099
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 192
        Height = 432
        Align = alClient
        DataSource = DataModule2.DS_quests_catalog
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Yu Gothic UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'nameq'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 156
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 192
        Top = 0
        Width = 600
        Height = 432
        Align = alRight
        TabOrder = 1
        object ImgQuest: TDBImage
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 592
          Height = 386
          Align = alTop
          DataField = 'photos'
          DataSource = DataModule2.DS_quests_catalog
          Proportional = True
          Stretch = True
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 1
          Top = 392
          Width = 598
          Height = 39
          Align = alBottom
          TabOrder = 1
          object ButtonDelImage: TButton
            Left = 144
            Top = 8
            Width = 133
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ButtonDelImageClick
          end
          object ButtonSetImage: TButton
            Left = 8
            Top = 8
            Width = 134
            Height = 25
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Yu Gothic UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonSetImageClick
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 432
        Width = 792
        Height = 182
        Align = alBottom
        Caption = 'Panel5'
        TabOrder = 2
        object Label13: TLabel
          Left = 8
          Top = 8
          Width = 65
          Height = 17
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo3: TDBMemo
          AlignWithMargins = True
          Left = 4
          Top = 26
          Width = 784
          Height = 152
          Align = alBottom
          DataField = 'description'
          DataSource = DataModule2.DS_quests_catalog
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Актеры: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1040#1082#1090#1077#1088#1099
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 512
        Height = 614
        Align = alClient
        DataSource = DataModule2.DS_Q_actors
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Yu Gothic UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1103
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'surname'
            Title.Alignment = taCenter
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 112
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'phone'
            Title.Alignment = taCenter
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'games_played'
            Title.Alignment = taCenter
            Title.Caption = #1059#1095#1072#1089#1090#1080#1077' '#1074' '#1080#1075#1088#1072#1093
            Width = 118
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 512
        Top = 0
        Width = 280
        Height = 614
        Align = alRight
        TabOrder = 1
        object GroupBox3: TGroupBox
          Left = 8
          Top = 16
          Width = 261
          Height = 54
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1090#1077#1083#1077#1092#1086#1085#1072
          TabOrder = 0
          object E_actor_phone: TEdit
            Left = 7
            Top = 20
            Width = 162
            Height = 25
            TabOrder = 0
            TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
          end
          object B_search_actor_phone: TButton
            Left = 175
            Top = 20
            Width = 75
            Height = 25
            Caption = #1055#1086#1080#1089#1082
            TabOrder = 1
            OnClick = B_search_actor_phoneClick
          end
        end
        object Button1: TButton
          Left = 72
          Top = 104
          Width = 123
          Height = 25
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 72
          Top = 72
          Width = 123
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 72
          Top = 136
          Width = 123
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = Button3Click
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 68
    Top = 272
    object N4: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N5: TMenuItem
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090' '#1079#1072' '#1076#1077#1085#1100
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090' '#1079#1072' '#1084#1077#1089#1103#1094' ('#1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077')'
        OnClick = N6Click
      end
      object N9: TMenuItem
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090' '#1079#1072' '#1084#1077#1089#1103#1094' ('#1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103')'
        OnClick = N9Click
      end
    end
    object N1: TMenuItem
      Caption = #1043#1088#1072#1092#1080#1082#1080
      object N2: TMenuItem
        Caption = #1048#1075#1088#1099' '#1087#1086' '#1076#1085#1103#1084
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1048#1075#1088#1099' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084
        OnClick = N3Click
      end
      object N8: TMenuItem
        Caption = #1040#1082#1090#1077#1088#1099
        OnClick = N8Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.ti' +
      'ff)|*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.tif' +
      'f|GIF Image (*.gif)|*.gif|JPEG Image File (*.jpg)|*.jpg|JPEG Ima' +
      'ge File (*.jpeg)|*.jpeg|Portable Network Graphics (*.png)|*.png|' +
      'Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.' +
      'emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.tif)|*.tif|TIF' +
      'F Images (*.tiff)|*.tiff'
    Left = 112
    Top = 273
  end
end
