object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1077#1088#1072
  ClientHeight = 226
  ClientWidth = 166
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Yu Gothic UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 166
    Height = 226
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 26
      Height = 17
      Caption = #1048#1084#1103
    end
    object Label2: TLabel
      Left = 16
      Top = 61
      Width = 55
      Height = 17
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label3: TLabel
      Left = 16
      Top = 107
      Width = 103
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 34
      Width = 121
      Height = 25
      DataField = 'name'
      DataSource = DataModule2.DS_T_actors
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 80
      Width = 121
      Height = 25
      DataField = 'surname'
      DataSource = DataModule2.DS_T_actors
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 126
      Width = 121
      Height = 25
      DataField = 'phone'
      DataSource = DataModule2.DS_T_actors
      TabOrder = 2
    end
    object Button1: TButton
      Left = 48
      Top = 168
      Width = 89
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
