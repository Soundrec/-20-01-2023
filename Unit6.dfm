object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084
  ClientHeight = 395
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Yu Gothic UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 395
    Align = alClient
    TabOrder = 0
  end
  object DBChart1: TDBChart
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 688
    Height = 389
    Title.Font.Height = -13
    Title.Font.Name = 'Yu Gothic UI'
    Title.Text.Strings = (
      #1044#1086#1093#1086#1076' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084)
    Title.TextAlignment = taLeftJustify
    BottomAxis.Title.Caption = #1084#1077#1089#1103#1094
    LeftAxis.Title.Caption = #1088#1091#1073'.'
    View3D = False
    Align = alClient
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Label1: TLabel
      Left = 552
      Top = 277
      Width = 87
      Height = 17
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1075#1086#1076':'
    end
    object ButtonConfirmYear: TButton
      Left = 552
      Top = 328
      Width = 119
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      TabOrder = 0
      OnClick = ButtonConfirmYearClick
    end
    object EditYear: TSpinEdit
      Left = 552
      Top = 295
      Width = 119
      Height = 27
      MaxValue = 2030
      MinValue = 2020
      TabOrder = 1
      Value = 2022
    end
    object Series1: TBarSeries
      Legend.Text = #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103
      LegendTitle = #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103
      DarkPen = 10
      Marks.Visible = False
      DataSource = DataModule2.grafik1
      SeriesColor = clTeal
      Title = #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103
      Transparency = 24
      XLabelsSource = 'months'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'qFullCost'
    end
    object Series2: TBarSeries
      Legend.Text = #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
      LegendTitle = #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
      BarBrush.Gradient.EndColor = 33023
      Marks.Visible = False
      DataSource = DataModule2.grafik2
      SeriesColor = 33023
      Title = #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
      XLabelsSource = 'months'
      Gradient.EndColor = 33023
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'qFullCost'
    end
  end
end
