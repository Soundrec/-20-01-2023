object Form14: TForm14
  Left = 0
  Top = 0
  Caption = #1042#1089#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 201
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 201
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 450
      Height = 264
      Align = alTop
      DataSource = DataModule2.DS_Q_users
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'username'
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'level'
          Title.Alignment = taCenter
          Title.Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
          Width = 128
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 160
      Width = 450
      Height = 40
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 445
      object Button1: TButton
        Left = 8
        Top = 6
        Width = 161
        Height = 25
        Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1086#1084
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 175
        Top = 6
        Width = 154
        Height = 25
        Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1084
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 335
        Top = 6
        Width = 105
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
end
