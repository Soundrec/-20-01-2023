object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 631
  Width = 780
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Exte' +
      'nded Properties="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=loc' +
      'alhost;UID=root;DATABASE=questbase;PORT=3306;CHARSET=utf8mb4;COL' +
      'UMN_SIZE_S32=1";Initial Catalog=questbase'
    Left = 16
    Top = 8
  end
  object T_quests_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDquest'
    TableName = 'quests_catalog'
    Left = 64
    Top = 40
    object T_quests_catalogIDquest: TAutoIncField
      FieldName = 'IDquest'
      ReadOnly = True
    end
    object T_quests_catalognameq: TWideStringField
      FieldName = 'nameq'
      Size = 50
    end
    object T_quests_catalogdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object T_quests_catalogphotos: TBlobField
      FieldName = 'photos'
    end
  end
  object T_booking: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_bookingAfterPost
    IndexFieldNames = 'IDbooking'
    MasterFields = 'IDbooking'
    MasterSource = DS_Q_view_booking_full_info
    TableName = 'booking'
    Left = 64
    Top = 96
    object T_bookingIDbooking: TAutoIncField
      FieldName = 'IDbooking'
      ReadOnly = True
    end
    object T_bookingIDquest: TIntegerField
      FieldName = 'IDquest'
    end
    object T_bookingIDteam: TIntegerField
      FieldName = 'IDteam'
    end
    object T_bookingIDstatus: TIntegerField
      FieldName = 'IDstatus'
    end
    object T_bookingIDsource: TIntegerField
      FieldName = 'IDsource'
    end
    object T_bookingdate: TDateField
      FieldName = 'date'
    end
    object T_bookingtime: TTimeField
      FieldName = 'time'
    end
  end
  object T_actor_booking: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'actor_booking'
    Left = 64
    Top = 152
    object T_actor_bookingIDbooking: TIntegerField
      FieldName = 'IDbooking'
    end
    object T_actor_bookingIDactor: TIntegerField
      FieldName = 'IDactor'
    end
  end
  object T_actors: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'actors'
    Left = 64
    Top = 208
    object T_actorsIDactor: TAutoIncField
      FieldName = 'IDactor'
      ReadOnly = True
    end
    object T_actorsname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object T_actorssurname: TWideStringField
      FieldName = 'surname'
      Size = 50
    end
    object T_actorsphone: TWideStringField
      FieldName = 'phone'
      Size = 50
    end
    object T_actorsgames_played: TSmallintField
      FieldName = 'games_played'
    end
  end
  object T_person: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDteam'
    MasterFields = 'IDteam'
    MasterSource = DS_T_team
    TableName = 'person'
    Left = 64
    Top = 320
    object T_personIDteam: TIntegerField
      FieldName = 'IDteam'
    end
    object T_personnamep: TWideStringField
      FieldName = 'namep'
      Size = 50
    end
    object T_personphone: TWideStringField
      FieldName = 'phone'
      Size = 255
    end
  end
  object T_source: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDsource'
    TableName = 'source'
    Left = 64
    Top = 376
    object T_sourceIDsource: TIntegerField
      FieldName = 'IDsource'
    end
    object T_sourcename: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object T_status: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDstatus'
    TableName = 'status'
    Left = 64
    Top = 432
    object T_statusIDstatus: TIntegerField
      FieldName = 'IDstatus'
    end
    object T_statusname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object T_team: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDteam'
    MasterFields = 'IDteam'
    MasterSource = DS_Q_view_booking_full_info
    TableName = 'team'
    Left = 64
    Top = 488
    object T_teamIDteam: TAutoIncField
      FieldName = 'IDteam'
      ReadOnly = True
    end
    object T_teamquantity: TSmallintField
      FieldName = 'quantity'
    end
    object T_teamdiscount: TWideStringField
      FieldName = 'discount'
      Size = 255
    end
    object T_teamcomment: TWideStringField
      FieldName = 'comment'
      Size = 255
    end
  end
  object T_prices: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'prices'
    Left = 64
    Top = 264
    object T_pricesIDprice: TAutoIncField
      FieldName = 'IDprice'
      ReadOnly = True
    end
    object T_pricesIDquest: TIntegerField
      FieldName = 'IDquest'
    end
    object T_pricesweekday: TIntegerField
      FieldName = 'weekday'
    end
    object T_pricestime: TTimeField
      FieldName = 'time'
    end
    object T_pricesprice: TFloatField
      FieldName = 'price'
    end
  end
  object DS_quests_catalog: TDataSource
    DataSet = T_quests_catalog
    Left = 136
    Top = 56
  end
  object DS_T_person: TDataSource
    DataSet = T_person
    Left = 136
    Top = 336
  end
  object DS_T_source: TDataSource
    DataSet = T_source
    Left = 136
    Top = 392
  end
  object DS_booking: TDataSource
    DataSet = T_booking
    Left = 136
    Top = 112
  end
  object DS_T_actors: TDataSource
    DataSet = T_actors
    Left = 136
    Top = 224
  end
  object DS_T_team: TDataSource
    DataSet = T_team
    Left = 136
    Top = 504
  end
  object DS_T_actor_booking: TDataSource
    DataSet = T_actor_booking
    Left = 136
    Top = 168
  end
  object DS_T_status: TDataSource
    DataSet = T_status
    Left = 136
    Top = 448
  end
  object DS_T_prices: TDataSource
    DataSet = T_prices
    Left = 136
    Top = 280
  end
  object Q_view_booking_prices: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '#11
      'FROM view_booking_prices')
    Left = 256
    Top = 568
    object Q_view_booking_pricesIDbooking: TAutoIncField
      FieldName = 'IDbooking'
      ReadOnly = True
    end
    object Q_view_booking_pricesdate: TDateField
      FieldName = 'date'
    end
    object Q_view_booking_pricestime: TTimeField
      FieldName = 'time'
    end
    object Q_view_booking_pricesnameq: TWideStringField
      FieldName = 'nameq'
      Size = 50
    end
    object Q_view_booking_pricesfinalprice: TFloatField
      FieldName = 'finalprice'
    end
  end
  object Q_view_booking_price_actors: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '#11
      'FROM view_booking_price_actors'
      '')
    Left = 240
    Top = 344
    object Q_view_booking_price_actorsIDbooking: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDbooking'
    end
    object Q_view_booking_price_actorsdate: TDateField
      DisplayWidth = 10
      FieldName = 'date'
    end
    object Q_view_booking_price_actorstime: TTimeField
      DisplayWidth = 10
      FieldName = 'time'
    end
    object Q_view_booking_price_actorsnameq: TWideStringField
      DisplayWidth = 21
      FieldName = 'nameq'
      Size = 50
    end
    object Q_view_booking_price_actorsfinalprice: TFloatField
      DisplayWidth = 10
      FieldName = 'finalprice'
    end
    object Q_view_booking_price_actorsactors_one_game: TWideStringField
      DisplayWidth = 4096
      FieldName = 'actors_one_game'
      Size = 4096
    end
  end
  object DS_Q_view_booking_prices: TDataSource
    DataSet = Q_view_booking_prices
    Left = 312
    Top = 568
  end
  object DS_Q_view_booking_price_actors: TDataSource
    DataSet = Q_view_booking_price_actors
    Left = 288
    Top = 344
  end
  object T_view_info_booking_team: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'IDbooking'
    MasterFields = 'IDbooking'
    MasterSource = DS_Q_view_booking_price_actors
    TableName = 'view_info_booking_team'
    Left = 240
    Top = 448
  end
  object DS_T_view_info_booking_team: TDataSource
    DataSet = T_view_info_booking_team
    Left = 288
    Top = 448
  end
  object Q_view_booking_full_info: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_view_booking_full_infoAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_booking_full_info ORDER BY date DESC ')
    Left = 248
    Top = 512
    object Q_view_booking_full_infodate: TDateField
      FieldName = 'date'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object Q_view_booking_full_infotime: TTimeField
      FieldName = 'time'
      DisplayFormat = 'hh:nn'
      EditMask = '!99:99;1;_'
    end
    object Q_view_booking_full_infonameq: TWideStringField
      FieldName = 'nameq'
      Size = 50
    end
    object Q_view_booking_full_infofinalprice: TFloatField
      FieldName = 'finalprice'
    end
    object Q_view_booking_full_infoactors_one_game: TWideStringField
      FieldName = 'actors_one_game'
      Size = 4096
    end
    object Q_view_booking_full_infosourcename: TWideStringField
      Alignment = taCenter
      FieldName = 'sourcename'
      Size = 50
    end
    object Q_view_booking_full_infostatusname: TWideStringField
      Alignment = taCenter
      FieldName = 'statusname'
      Size = 50
    end
    object Q_view_booking_full_infonamep: TWideStringField
      FieldName = 'namep'
      Size = 50
    end
    object Q_view_booking_full_infophone: TWideStringField
      FieldName = 'phone'
      EditMask = '!\+7(000)000-00-00;0;_'
      Size = 255
    end
    object Q_view_booking_full_infoquantity: TSmallintField
      Alignment = taCenter
      FieldName = 'quantity'
    end
    object Q_view_booking_full_infodiscount: TWideStringField
      Alignment = taCenter
      FieldName = 'discount'
      EditMask = '00%;1;_'
      Size = 255
    end
    object Q_view_booking_full_infocomment: TWideStringField
      FieldName = 'comment'
      Size = 255
    end
    object Q_view_booking_full_infoIDteam: TIntegerField
      FieldName = 'IDteam'
    end
    object Q_view_booking_full_infoIDbooking: TIntegerField
      FieldName = 'IDbooking'
    end
    object Q_view_booking_full_infoIDstatus: TIntegerField
      FieldName = 'IDstatus'
    end
    object Q_view_booking_full_infoIDsource: TIntegerField
      FieldName = 'IDsource'
    end
  end
  object DS_Q_view_booking_full_info: TDataSource
    DataSet = Q_view_booking_full_info
    Left = 296
    Top = 512
  end
  object Q_view_for_prices: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_team
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_for_prices ')
    Left = 240
    Top = 392
  end
  object DS_Q_view_for_prices: TDataSource
    DataSet = Q_view_for_prices
    Left = 288
    Top = 392
  end
  object Q_view_info_booking_status_source: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_info_booking_status_source ')
    Left = 232
    Top = 296
  end
  object DS_Q_view_info_booking_status_source: TDataSource
    DataSet = Q_view_info_booking_status_source
    Left = 280
    Top = 296
  end
  object Q_append: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 632
    Top = 40
  end
  object grafik1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' MONTH(view_booking_price_actors.date) AS months,'
      ' SUM(view_booking_price_actors.finalprice) AS qFullCost'
      'FROM view_booking_price_actors'
      
        '  WHERE YEAR(view_booking_price_actors.date) = '#39'2022'#39' AND  view_' +
        'booking_price_actors.nameq = '#39#1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103#39
      '  GROUP BY months;')
    Left = 224
    Top = 24
  end
  object grafik2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' MONTH(view_booking_price_actors.date) AS months,'
      ' SUM(view_booking_price_actors.finalprice) AS qFullCost'
      'FROM view_booking_price_actors'
      
        '  WHERE YEAR(view_booking_price_actors.date) = '#39'2022'#39' AND  view_' +
        'booking_price_actors.nameq = '#39#1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077#39
      '  GROUP BY months;')
    Left = 224
    Top = 80
  end
  object actors_grafik: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT'
      ' CONCAT(actors.name, '#39' '#39', actors.surname) AS acname,'
      ' actors.games_played '
      'FROM actors'
      '  ')
    Left = 224
    Top = 128
  end
  object grafikSumByDays1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      ''
      ' DAY(view_booking_full_info.date) AS days,'
      ' SUM(view_booking_full_info.finalprice) AS qFullCost'
      'FROM view_booking_full_info'
      '  WHERE YEAR(view_booking_full_info.date) = '#39'2022'#39' '
      '  AND MONTH(view_booking_full_info.date) = '#39'12'#39' '
      '  AND view_booking_full_info.nameq = '#39#1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077#39
      '  GROUP BY days;')
    Left = 296
    Top = 24
  end
  object frx_Q_view_booking_full_info: TfrxDBDataset
    UserName = 'frx_Q_view_booking_full_info'
    CloseDataSource = False
    DataSet = Q_view_booking_full_info
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 24
  end
  object Reportfrx_Q_view_booking_full_info: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44924.521011851900000000
    ReportOptions.LastChange = 44924.521011851900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 72
    Datasets = <
      item
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1075#1088#1099' '#1074' '#1076#1077#1085#1100' [DATE]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
        Filter = '<Date> = <frx_Q_view_booking_full_info."date">'
        RowCount = 13
        object frx_Q_view_booking_full_infonameq: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'nameq'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."nameq"]')
        end
        object frx_Q_view_booking_full_infofinalprice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'sourcename'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."sourcename"]')
        end
        object frx_Q_view_booking_full_infosourcename: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'statusname'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."statusname"]')
        end
        object frx_Q_view_booking_full_infostatusname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'finalprice'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."finalprice"]')
        end
        object frx_Q_view_booking_full_infonamep: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'namep'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."namep"]')
        end
        object frx_Q_view_booking_full_infophone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'phone'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."phone"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1075#1088' '#1074#1089#1077#1075#1086' '#1074' '#1076#1077#1085#1100': [COUNT(MasterData1)]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1093#1086#1076' '#1074' '#1076#1077#1085#1100': [SUM(<frx_Q_view_booking_full_info."finalprice">)]')
        end
      end
    end
  end
  object MOnths_Reportfrx_Q_view_booking_full_info: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44924.544390532400000000
    ReportOptions.LastChange = 44924.544390532400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 120
    Datasets = <
      item
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1075#1088' '#1074' [MonthOf(<Date>)] '#1084#1077#1089#1103#1094' ('#1050#1074#1077#1089#1090' "'#1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077'")')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
        Filter = 
          'MonthOf(<frx_Q_view_booking_full_info."date">) = MonthOf(<Date>)' +
          ';'
        RowCount = 0
        object frx_Q_view_booking_full_infonameq: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'nameq'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."nameq"]')
        end
        object frx_Q_view_booking_full_infodate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'date'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."date"]')
        end
        object frx_Q_view_booking_full_infotime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'time'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."time"]')
        end
        object frx_Q_view_booking_full_infofinalprice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'finalprice'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."finalprice"]')
        end
        object frx_Q_view_booking_full_infostatusname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'statusname'
          DataSet = frx_Q_view_booking_full_info
          DataSetName = 'frx_Q_view_booking_full_info'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_Q_view_booking_full_info."statusname"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1075#1088' '#1074#1089#1077#1075#1086': [COUNT(MasterData1)]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 26.456710000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1044#1086#1093#1086#1076' '#1079#1072' '#1084#1077#1089#1103#1094': [SUM(<frx_Q_view_booking_full_info."finalprice">' +
              ',MasterData1)]')
        end
      end
    end
  end
  object reportQuest: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44924.555700833300000000
    ReportOptions.LastChange = 44924.555700833300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 544
    Top = 72
    Datasets = <
      item
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
      end
      item
        DataSet = quests
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1050#1074#1077#1089#1090#1099' '#1082#1086#1084#1087#1072#1085#1080#1080)
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = quests
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1description: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'description'
          DataSet = quests
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."description"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frx_Q_view_booking_full_info
        DataSetName = 'frx_Q_view_booking_full_info'
        RowCount = 0
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."nameq"'
        object frxDBDataset1nameq: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nameq'
          DataSet = quests
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nameq"]')
        end
      end
    end
  end
  object quests: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = T_quests_catalog
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 24
  end
  object Q_team: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM team ORDER BY IDteam  DESC')
    Left = 232
    Top = 184
  end
  object DS_Q_team: TDataSource
    DataSet = Q_team
    Left = 288
    Top = 184
  end
  object Q_delete: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 680
    Top = 40
  end
  object Q_booking: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM booking ORDER BY IDbooking  DESC')
    Left = 232
    Top = 232
  end
  object DS_Q_booking: TDataSource
    DataSet = Q_booking
    Left = 280
    Top = 232
  end
  object Q_edit: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 680
    Top = 96
  end
  object Q_Dush_month: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM view_booking_full_info '
      'WHERE nameq = '#39#1044#1091#1096#1077#1074#1085#1086#1073#1086#1083#1100#1085#1099#1077#39' ;')
    Left = 400
    Top = 176
  end
  object frx_Q_Dush_month: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_Dush_month
    BCDToCurrency = False
    DataSetOptions = []
    Left = 464
    Top = 176
  end
  object Rep_frx_Q_Dush_month: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44929.695885949100000000
    ReportOptions.LastChange = 44929.695885949100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 528
    Top = 176
    Datasets = <
      item
        DataSet = frx_Q_Dush_month
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 653.858690000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090
            
              #1048#1075#1088#1099' '#1079#1072' [MonthOf(Now)] '#1084#1077#1089#1103#1094' [YearOf(Now)] '#1075#1086#1076#1072' '#1074' '#1082#1074#1077#1089#1090#1077' [frxDBD' +
              'ataset1."nameq"]')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frx_Q_Dush_month
        DataSetName = 'frxDBDataset1'
        Filter = 'MonthOf(Now) = MonthOf(<frxDBDataset1."date">)'
        RowCount = 0
        object frxDBDataset1date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'date'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."date"]')
        end
        object frxDBDataset1time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'time'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."time"]')
        end
        object frxDBDataset1finalprice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'finalprice'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."finalprice"]')
        end
        object frxDBDataset1statusname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'statusname'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."statusname"]')
        end
        object frxDBDataset1namep: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'namep'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."namep"]')
        end
        object frxDBDataset1phone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'phone'
          DataSet = frx_Q_Dush_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."phone"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 457.323130000000000000
          Height = 60.472480000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1093#1086#1076':[SUM(<frxDBDataset1."finalprice">,MasterData1)]'
            ''
            #1042#1089#1077#1075#1086' '#1080#1075#1088': [COUNT(MasterData1)]')
        end
      end
    end
  end
  object Q_Dez_month: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM view_booking_full_info '
      'WHERE nameq = '#39#1044#1077#1079#1080#1085#1092#1077#1082#1094#1080#1103#39' ;')
    Left = 400
    Top = 224
  end
  object frxDB_Q_Dez_month: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_Dez_month
    BCDToCurrency = False
    DataSetOptions = []
    Left = 464
    Top = 224
  end
  object Rep_frxDB_Q_Dez_month: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44929.695885949100000000
    ReportOptions.LastChange = 44929.695885949100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 528
    Top = 224
    Datasets = <
      item
        DataSet = frxDB_Q_Dez_month
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 593.386210000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090
            
              #1048#1075#1088#1099' '#1079#1072' [MonthOf(Now)] '#1084#1077#1089#1103#1094' [YearOf(Now)] '#1075#1086#1076#1072' '#1074' '#1082#1074#1077#1089#1090#1077' [frxDBD' +
              'ataset1."nameq"]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_Q_Dez_month
        DataSetName = 'frxDBDataset1'
        Filter = 'MonthOf(Now) = MonthOf(<frxDBDataset1."date">)'
        RowCount = 0
        object frxDBDataset1date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'date'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."date"]')
        end
        object frxDBDataset1time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'time'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."time"]')
        end
        object frxDBDataset1finalprice: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'finalprice'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."finalprice"]')
        end
        object frxDBDataset1statusname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'statusname'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."statusname"]')
        end
        object frxDBDataset1namep: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'namep'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."namep"]')
        end
        object frxDBDataset1phone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'phone'
          DataSet = frxDB_Q_Dez_month
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."phone"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 457.323130000000000000
          Height = 60.472480000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1093#1086#1076':[SUM(<frxDBDataset1."finalprice">,MasterData1)]'
            ''
            #1042#1089#1077#1075#1086' '#1080#1075#1088': [COUNT(MasterData1)]')
        end
      end
    end
  end
  object Q_actors: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM actors ORDER BY  games_played DESC')
    Left = 648
    Top = 160
  end
  object DS_Q_actors: TDataSource
    DataSet = Q_actors
    Left = 696
    Top = 152
  end
  object Q_select_actors: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 648
    Top = 224
  end
end
