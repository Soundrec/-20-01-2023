object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 198
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EditName: TEdit
    Left = 56
    Top = 45
    Width = 185
    Height = 21
    TabOrder = 0
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  end
  object EditPass: TEdit
    Left = 56
    Top = 72
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
  end
  object EditPassRep: TEdit
    Left = 56
    Top = 99
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    TextHint = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
  end
  object Button1: TButton
    Left = 88
    Top = 144
    Width = 113
    Height = 33
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
end
