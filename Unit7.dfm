object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082' '#1072#1082#1090#1077#1088#1086#1074
  ClientHeight = 399
  ClientWidth = 588
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
    Width = 588
    Height = 399
    Align = alClient
    TabOrder = 0
  end
  object DBChart1: TDBChart
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 582
    Height = 393
    Foot.Font.Height = -13
    Foot.Font.Name = 'Yu Gothic UI'
    SubFoot.Font.Height = -13
    SubFoot.Font.Name = 'Yu Gothic UI'
    SubTitle.Font.Height = -13
    SubTitle.Font.Name = 'Yu Gothic UI'
    Title.Font.Height = -13
    Title.Font.Name = 'Yu Gothic UI'
    Title.Text.Strings = (
      #1059#1095#1072#1089#1090#1080#1077' '#1074' '#1080#1075#1088#1072#1093)
    BottomAxis.Labels = False
    BottomAxis.LabelsFormat.Font.Height = -13
    BottomAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    BottomAxis.LabelsFormat.Visible = False
    BottomAxis.Title.Font.Height = -13
    BottomAxis.Title.Font.Name = 'Yu Gothic UI'
    Chart3DPercent = 21
    DepthAxis.LabelsFormat.Font.Height = -13
    DepthAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    DepthAxis.Title.Font.Height = -13
    DepthAxis.Title.Font.Name = 'Yu Gothic UI'
    DepthTopAxis.LabelsFormat.Font.Height = -13
    DepthTopAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    DepthTopAxis.Title.Font.Height = -13
    DepthTopAxis.Title.Font.Name = 'Yu Gothic UI'
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 1.000000000000000000
    LeftAxis.LabelsFormat.Font.Height = -13
    LeftAxis.LabelsFormat.Font.Name = 'Yu Gothic UI'
    LeftAxis.Title.Caption = #1048#1075#1088
    LeftAxis.Title.Font.Height = -13
    LeftAxis.Title.Font.Name = 'Yu Gothic UI'
    Legend.Alignment = laBottom
    Legend.DividingLines.Visible = True
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
    View3D = False
    View3DOptions.Zoom = 102
    Align = alClient
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.Font.Height = -13
      Marks.Font.Name = 'Yu Gothic UI'
      Marks.Visible = False
      DataSource = DataModule2.actors_grafik
      XLabelsSource = 'acname'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'games_played'
    end
  end
end
