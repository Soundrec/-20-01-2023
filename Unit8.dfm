object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082' '#1087#1086' '#1076#1085#1103#1084
  ClientHeight = 407
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 616
    Height = 407
    Align = alClient
    TabOrder = 0
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 616
    Height = 407
    Foot.Font.Height = -13
    Foot.Font.Name = 'Yu Gothic UI'
    SubFoot.Font.Height = -13
    SubFoot.Font.Name = 'Yu Gothic UI'
    SubTitle.Font.Height = -13
    SubTitle.Font.Name = 'Yu Gothic UI'
    Title.Font.Height = -13
    Title.Font.Name = 'Yu Gothic UI'
    Title.Text.Strings = (
      #1044#1086#1093#1086#1076' '#1074' '#1076#1077#1085#1100)
    BottomAxis.LabelsFormat.Font.Height = -13
    BottomAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    BottomAxis.Title.Caption = #1095#1080#1089#1083#1086
    BottomAxis.Title.Font.Height = -13
    BottomAxis.Title.Font.Name = 'Yu Gothic UI'
    DepthAxis.LabelsFormat.Font.Height = -13
    DepthAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    DepthAxis.Title.Font.Height = -13
    DepthAxis.Title.Font.Name = 'Yu Gothic UI'
    DepthTopAxis.LabelsFormat.Font.Height = -13
    DepthTopAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    DepthTopAxis.Title.Font.Height = -13
    DepthTopAxis.Title.Font.Name = 'Yu Gothic UI'
    LeftAxis.LabelsFormat.Font.Height = -13
    LeftAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    LeftAxis.Title.Caption = #1088#1091#1073'.'
    LeftAxis.Title.Font.Height = -13
    LeftAxis.Title.Font.Name = 'Yu Gothic UI'
    Legend.Font.Height = -13
    Legend.Font.Name = 'Yu Gothic UI'
    Legend.Title.Font.Height = -13
    Legend.Title.Font.Name = 'Yu Gothic UI'
    RightAxis.LabelsFormat.Font.Height = -13
    RightAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    RightAxis.Title.Font.Height = -13
    RightAxis.Title.Font.Name = 'Yu Gothic UI'
    TopAxis.LabelsFormat.Font.Height = -13
    TopAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    TopAxis.Title.Font.Height = -13
    TopAxis.Title.Font.Name = 'Yu Gothic UI'
    Align = alClient
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      Legend.Visible = False
      Marks.Font.Height = -13
      Marks.Font.Name = 'Yu Gothic UI'
      Marks.Visible = False
      DataSource = DataModule2.grafikSumByDays1
      ShowInLegend = False
      XLabelsSource = 'days'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'qFullCost'
    end
  end
  object Panel1: TPanel
    Left = 616
    Top = 0
    Width = 160
    Height = 407
    Align = alRight
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 92
      Height = 13
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1075#1088#1072#1092#1080#1082':'
    end
    object ButtonConfirm: TButton
      Left = 16
      Top = 136
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = ButtonConfirmClick
    end
    object EditQuest: TComboBox
      Left = 16
      Top = 101
      Width = 121
      Height = 21
      TabOrder = 1
      TextHint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1074#1077#1089#1090
      Items.Strings = (
        #1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077
        #1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103)
    end
    object EditMonth: TComboBox
      Left = 16
      Top = 74
      Width = 121
      Height = 21
      TabOrder = 2
      TextHint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1077#1089#1103#1094
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object EditYear: TSpinEdit
      Left = 16
      Top = 46
      Width = 121
      Height = 22
      MaxValue = 2030
      MinValue = 2021
      TabOrder = 3
      Value = 2022
    end
  end
end
