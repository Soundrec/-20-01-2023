unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    T_quests_catalog: TADOTable;
    T_booking: TADOTable;
    T_actor_booking: TADOTable;
    T_actors: TADOTable;
    T_person: TADOTable;
    T_source: TADOTable;
    T_status: TADOTable;
    T_team: TADOTable;
    T_prices: TADOTable;
    DS_quests_catalog: TDataSource;
    DS_T_person: TDataSource;
    DS_T_source: TDataSource;
    DS_booking: TDataSource;
    DS_T_actors: TDataSource;
    DS_T_team: TDataSource;
    DS_T_actor_booking: TDataSource;
    DS_T_status: TDataSource;
    DS_T_prices: TDataSource;
    Q_view_booking_prices: TADOQuery;
    Q_view_booking_price_actors: TADOQuery;
    DS_Q_view_booking_prices: TDataSource;
    DS_Q_view_booking_price_actors: TDataSource;
    T_bookingIDbooking: TAutoIncField;
    T_bookingIDquest: TIntegerField;
    T_bookingIDteam: TIntegerField;
    T_bookingIDstatus: TIntegerField;
    T_bookingIDsource: TIntegerField;
    T_bookingdate: TDateField;
    T_bookingtime: TTimeField;
    T_actor_bookingIDbooking: TIntegerField;
    T_actor_bookingIDactor: TIntegerField;
    T_actorsIDactor: TAutoIncField;
    T_actorsname: TWideStringField;
    T_actorssurname: TWideStringField;
    T_actorsphone: TWideStringField;
    T_actorsgames_played: TSmallintField;
    T_pricesIDprice: TAutoIncField;
    T_pricesIDquest: TIntegerField;
    T_pricesweekday: TIntegerField;
    T_pricestime: TTimeField;
    T_pricesprice: TFloatField;
    T_personIDteam: TIntegerField;
    T_personnamep: TWideStringField;
    T_personphone: TWideStringField;
    T_sourceIDsource: TIntegerField;
    T_sourcename: TWideStringField;
    T_statusIDstatus: TIntegerField;
    T_statusname: TWideStringField;
    T_teamIDteam: TAutoIncField;
    T_teamquantity: TSmallintField;
    T_teamdiscount: TWideStringField;
    T_teamcomment: TWideStringField;
    Q_view_booking_pricesIDbooking: TAutoIncField;
    Q_view_booking_pricesdate: TDateField;
    Q_view_booking_pricestime: TTimeField;
    Q_view_booking_pricesnameq: TWideStringField;
    Q_view_booking_pricesfinalprice: TFloatField;
    Q_view_booking_price_actorsIDbooking: TIntegerField;
    Q_view_booking_price_actorsdate: TDateField;
    Q_view_booking_price_actorstime: TTimeField;
    Q_view_booking_price_actorsnameq: TWideStringField;
    Q_view_booking_price_actorsfinalprice: TFloatField;
    Q_view_booking_price_actorsactors_one_game: TWideStringField;
    T_view_info_booking_team: TADOTable;
    DS_T_view_info_booking_team: TDataSource;
    Q_view_booking_full_info: TADOQuery;
    DS_Q_view_booking_full_info: TDataSource;
    Q_view_for_prices: TADOQuery;
    DS_Q_view_for_prices: TDataSource;
    Q_view_info_booking_status_source: TADOQuery;
    DS_Q_view_info_booking_status_source: TDataSource;
    Q_view_booking_full_infodate: TDateField;
    Q_view_booking_full_infotime: TTimeField;
    Q_view_booking_full_infonameq: TWideStringField;
    Q_view_booking_full_infofinalprice: TFloatField;
    Q_view_booking_full_infoactors_one_game: TWideStringField;
    Q_view_booking_full_infosourcename: TWideStringField;
    Q_view_booking_full_infostatusname: TWideStringField;
    Q_view_booking_full_infonamep: TWideStringField;
    Q_view_booking_full_infophone: TWideStringField;
    Q_view_booking_full_infoquantity: TSmallintField;
    Q_view_booking_full_infodiscount: TWideStringField;
    Q_view_booking_full_infocomment: TWideStringField;
    Q_view_booking_full_infoIDteam: TIntegerField;
    Q_view_booking_full_infoIDbooking: TIntegerField;
    Q_view_booking_full_infoIDstatus: TIntegerField;
    Q_view_booking_full_infoIDsource: TIntegerField;
    Q_append: TADOQuery;
    grafik1: TADOQuery;
    grafik2: TADOQuery;
    actors_grafik: TADOQuery;
    grafikSumByDays1: TADOQuery;
    frx_Q_view_booking_full_info: TfrxDBDataset;
    Reportfrx_Q_view_booking_full_info: TfrxReport;
    MOnths_Reportfrx_Q_view_booking_full_info: TfrxReport;
    reportQuest: TfrxReport;
    quests: TfrxDBDataset;
    T_quests_catalogIDquest: TAutoIncField;
    T_quests_catalognameq: TWideStringField;
    T_quests_catalogdescription: TWideMemoField;
    T_quests_catalogphotos: TBlobField;
    Q_team: TADOQuery;
    DS_Q_team: TDataSource;
    Q_delete: TADOQuery;
    Q_booking: TADOQuery;
    DS_Q_booking: TDataSource;
    Q_edit: TADOQuery;
    Q_Dush_month: TADOQuery;
    frx_Q_Dush_month: TfrxDBDataset;
    Rep_frx_Q_Dush_month: TfrxReport;
    Q_Dez_month: TADOQuery;
    frxDB_Q_Dez_month: TfrxDBDataset;
    Rep_frxDB_Q_Dez_month: TfrxReport;
    Q_actors: TADOQuery;
    DS_Q_actors: TDataSource;
    Q_select_actors: TADOQuery;
    procedure Q_view_booking_full_infoAfterScroll(DataSet: TDataSet);
    procedure T_bookingAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit7, Unit6;

{$R *.dfm}



procedure TDataModule2.Q_view_booking_full_infoAfterScroll(DataSet: TDataSet);
begin

 // проверка количества отображаемых записей
 if Q_view_booking_full_info.RecordCount > 0 then
 // выполнение синхронизации методом Locate
 T_booking.Locate('IDbooking', Q_view_booking_full_infoIDbooking.Value, [])

 end;

procedure TDataModule2.T_bookingAfterPost(DataSet: TDataSet);
var pos:TBookmark;
begin
 // создание для текущей записи объекта-закладки
 pos := Q_view_booking_full_info.GetBookmark;
 Q_view_booking_full_info.Close();
 Q_view_booking_full_info.Open();
 // перемещение курсора БД на запись, определяемую закладкой
 Q_view_booking_full_info.GotoBookmark(pos);
 Q_view_booking_full_info.Requery();
end;


end.
