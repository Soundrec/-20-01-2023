unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.DBCGrids, Vcl.ExtDlgs, Vcl.Samples.Spin, Vcl.CheckLst;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    Бронирования: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    Актеры: TTabSheet;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    ButtonAddBooking: TButton;
    ButtonChangeBooking: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    DBText4: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    ImgQuest: TDBImage;
    ButtonSetImage: TButton;
    ButtonDelImage: TButton;
    FilterPanel: TPanel;
    Label11: TLabel;
    E_Filter: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    Label12: TLabel;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    ComboCostCondition: TComboBox;
    SpinCostValue: TSpinEdit;
    ChkCostFilter: TCheckBox;
    Panel4: TPanel;
    ButtonDelBooking: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    Panel5: TPanel;
    DBMemo3: TDBMemo;
    Label13: TLabel;
    N9: TMenuItem;
    Search_phone: TEdit;
    B_Search_phone: TButton;
    B_search_date_time: TButton;
    E_search_date: TEdit;
    E_search_time: TEdit;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    RB_dush: TRadioButton;
    RB_dez: TRadioButton;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    E_actor_phone: TEdit;
    B_search_actor_phone: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel8: TPanel;
    actorscom: TCheckListBox;
    LabelRecCount: TLabel;
    CheckBox2: TCheckBox;
    reccountEdit: TEdit;
    Label14: TLabel;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ButtonSetImageClick(Sender: TObject);
    procedure ButtonAddBookingClick(Sender: TObject);
    procedure ButtonChangeBookingClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ButtonDelImageClick(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure ChkCostFilterClick(Sender: TObject);
    procedure ComboCostConditionChange(Sender: TObject);
    procedure SpinCostValueChange(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ButtonDelBookingClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure B_Search_phoneClick(Sender: TObject);
    procedure B_search_date_timeClick(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure B_search_actor_phoneClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure reccountEditChange(Sender: TObject);
//    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
//    procedure Label5Click(Sender: TObject);
//    procedure DBGrid1CellClick(Column: TColumn);
       { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

  field:integer;
  order: bool;
  var pos:TBookmark;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit10, Unit11;



procedure TForm4.ButtonSetImageClick(Sender: TObject);
begin
DBGrid3.Enabled := False;
DataModule2.T_quests_catalog.Edit;
if OpenPictureDialog1.Execute then
if FileExists(OpenPictureDialog1.FileName) then
  begin
  ImgQuest.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  DataModule2.T_quests_catalogphotos.LoadFromFile(OpenPictureDialog1.FileName);
  end;
DataModule2.T_quests_catalog.Post;
DBGrid3.Enabled := True;
end;


procedure TForm4.ButtonDelBookingClick(Sender: TObject);
var
  curId:String;
begin
//curId := InttoStr(DataModule2.T_team.Locate(DataModule2.Q_view_booking_full_infoIDteam.Value, []));
DataModule2.Q_delete.Close;
DataModule2.Q_delete.SQL.Clear;
DataModule2.Q_delete.SQL.ADD('DELETE FROM actor_booking WHERE IDbooking = ');
DataModule2.Q_delete.SQL.ADD(QuotedStr(DataModule2.Q_view_booking_full_info['IDbooking']));
DataModule2.Q_delete.SQL.ADD(';');
DataModule2.Q_delete.ExecSQL;

DataModule2.Q_delete.Close;
DataModule2.Q_delete.SQL.Clear;
DataModule2.Q_delete.SQL.ADD('DELETE FROM team WHERE IDteam = ');
DataModule2.Q_delete.SQL.ADD(QuotedStr(DataModule2.Q_view_booking_full_info['IDteam']));
DataModule2.Q_delete.SQL.ADD(';');
DataModule2.Q_delete.ExecSQL;


DataModule2.Q_delete.Close;
DataModule2.Q_view_booking_full_info.Requery;

LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);

end;

procedure TForm4.ButtonDelImageClick(Sender: TObject);
begin
DBGrid3.Enabled := False;
DataModule2.T_quests_catalog.Edit;
DataModule2.T_quests_catalogphotos.Clear;
ImgQuest.Picture := nil;
DataModule2.T_quests_catalog.Post;
DBGrid3.Enabled := True;
end;

procedure TForm4.B_search_actor_phoneClick(Sender: TObject);
var
 s:string;
begin
  s := application.title;
  application.title := 'Ошибка';
  if not DataModule2.Q_actors.Locate('phone', E_actor_phone.Text, [loCaseInsensitive,
    loPartialKey]) then
  ShowMessage('Запись не найдена');
  application.title := s;
end;

procedure TForm4.B_search_date_timeClick(Sender: TObject);
var
 quest:string;
 s:string;
begin
if RB_dush.Checked = True then
  quest := RB_dush.Caption;
if RB_dez.Checked = True then
  quest := RB_dez.Caption;

  s := application.title;
  application.title := 'Ошибка';
  if not DataModule2.Q_view_booking_full_info.Locate(
    'date;time;nameq',
    VarArrayOf([E_search_date.Text, E_search_time.Text, quest]),
    [loCaseInsensitive, loPartialKey]) then
    ShowMessage('Запись не найдена');
  application.title := s;
end;

procedure TForm4.B_Search_phoneClick(Sender: TObject);
var
 s:string;
begin
  s := application.title;
  application.title := 'Ошибка';
  if not DataModule2.Q_view_booking_full_info.Locate('phone', Search_phone.Text, [loCaseInsensitive,
    loPartialKey]) then
    ShowMessage('Запись не найдена');
  application.title := s;

end;

procedure TForm4.Button1Click(Sender: TObject);
var
pos : TBookmark;
begin
  DataModule2.T_actors.Locate('IDactor', DataModule2.Q_actors.FieldByName('IDactor').Value, []);
  pos := DataModule2.Q_actors.GetBookmark;
  DataModule2.Q_actors.Close();
  DataModule2.Q_actors.Open();
  DataModule2.Q_actors.GotoBookmark(pos);
  Form10.ShowModal;
  DataModule2.Q_actors.Requery();
  DataModule2.Q_actors.GotoBookmark(pos);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form11.ShowModal;
  DataModule2.Q_actors.Requery();
end;

procedure TForm4.Button3Click(Sender: TObject);
begin

  DataModule2.Q_delete.Close;
  DataModule2.Q_delete.SQL.Clear;
  DataModule2.Q_delete.SQL.ADD('DELETE FROM actors WHERE IDactor = ');
  DataModule2.Q_delete.SQL.ADD(QuotedStr(DataModule2.Q_actors['IDactor']));
  DataModule2.Q_delete.SQL.ADD(';');
  DataModule2.Q_delete.ExecSQL;
  DataModule2.Q_delete.Close;
  DataModule2.Q_actors.Requery;

end;


procedure TForm4.ButtonAddBookingClick(Sender: TObject);
begin
  Form3.ShowModal;
  DataModule2.Q_view_booking_full_info.Requery;
  LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);
end;

procedure TForm4.ButtonChangeBookingClick(Sender: TObject);
var
  pos: TBookmark;
begin
  DataModule2.T_booking.Locate('IDbooking', DataModule2.Q_view_booking_full_infoIDbooking.Value, []);
  pos := DataModule2.Q_view_booking_full_info.GetBookmark;
  DataModule2.Q_view_booking_full_info.Close();
  DataModule2.Q_view_booking_full_info.Open();
  DataModule2.Q_view_booking_full_info.GotoBookmark(pos);

  Form5.ShowModal;
  DataModule2.Q_view_booking_full_info.Requery();
  DataModule2.Q_view_booking_full_info.GotoBookmark(pos);

end;


procedure TForm4.CheckBox1Click(Sender: TObject);
begin
 // Отключение фильтра
 DataModule2.Q_view_booking_full_info.Filtered := false;
 // Формирование строки фильтрации
 DataModule2.Q_view_booking_full_info.Filter := 'date >= ' +
 QuotedStr(FormatDateTime('DD-MM-YYYY', DateTimePicker1.Date)) +
 ' and date <= ' + QuotedStr(FormatDateTime('DD-MM-YYYY',
 DateTimePicker2.Date));
 // задание параметра активности фильтра как у состояния CheckBox1
 DataModule2.Q_view_booking_full_info.Filtered := CheckBox1.Checked;

 //DataModule2.Q_view_booking_full_info.Filtered :=true;
 LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);

 end;


procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  DataModule2.Q_view_booking_full_info.Close;
  DataModule2.Q_view_booking_full_info.SQL.Text:= 'SELECT * FROM view_booking_full_info ORDER BY date DESC' ;
  if reccountEdit.Text <> '' then
    begin
      if CheckBox2.Checked=true then
      begin
        DataModule2.Q_view_booking_full_info.SQL.ADD(' LIMIT ');
        DataModule2.Q_view_booking_full_info.SQL.ADD(reccountEdit.Text);
      end;
  end;
  DataModule2.Q_view_booking_full_info.Open;
  DataModule2.Q_view_booking_full_info.Requery;
  LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);
end;

procedure TForm4.ChkCostFilterClick(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_view_booking_full_info.Active := False;
 baseSQL := 'SELECT * FROM view_booking_full_info';
 DataModule2.Q_view_booking_full_info.SQL.Text := baseSQL;
 filter_s := '';
 if ChkCostFilter.Checked then
 begin
 // Формирования условия выборки
 filter_s := ' WHERE finalprice ' + ComboCostCondition.Text + ' ' +
 IntToStr(SpinCostValue.Value);
 DataModule2.Q_view_booking_full_info.SQL.Text := baseSQL + filter_s;
 end;
 DataModule2.Q_view_booking_full_info.Active := True;

 DataModule2.Q_view_booking_full_info.Filtered :=true;
 LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);

end;

procedure TForm4.ComboCostConditionChange(Sender: TObject);
begin
ChkCostFilterClick(nil);
end;

procedure TForm4.DateTimePicker1Change(Sender: TObject);
begin
CheckBox1Click(nil);
end;

procedure TForm4.DateTimePicker2Change(Sender: TObject);
begin
CheckBox1Click(nil);
end;


procedure TForm4.DBGrid1CellClick(Column: TColumn);
var
 k: integer;
begin
    actorscom.Items.Clear;
    DataModule2.Q_select_actors.Close;
    DataModule2.Q_select_actors.SQL.Clear;
    DataModule2.Q_select_actors.SQL.Text := 'SELECT name, surname FROM actors ORDER BY IDactor';
    DataModule2.Q_select_actors.Open;

  while not DataModule2.Q_select_actors.Eof do
  begin
    actorscom.Items.Add((DataModule2.Q_select_actors.FieldByName('name')).AsString + ' ' + (DataModule2.Q_select_actors.FieldByName('surname')).AsString);
    DataModule2.Q_select_actors.Next;

  end;

  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;

  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;
  DataModule2.Q_select_actors.SQL.Text := 'SELECT IDactor FROM actor_booking WHERE IDbooking =' + QuotedStr(IntToStr(DataModule2.T_bookingIDbooking.AsInteger));
  DataModule2.Q_select_actors.Open;

  while not DataModule2.Q_select_actors.Eof do
  begin
    actorscom.Checked[StrToInt(DataModule2.Q_select_actors.FieldByName('IDactor').AsString)-1] := true;
    DataModule2.Q_select_actors.Next;
  end;
  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;

   while k < actorscom.Items.Count do begin
    if not actorscom.Checked[k] then
      actorscom.Items.Delete(k)
    else
      Inc(k);
  end;

end;


procedure TForm4.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

const
  RowColors: array[Boolean] of TColor = (cl3DLight, clWhite);
var
  OddRow: Boolean;
begin

  if (Sender is TDBGrid) then
  begin
    OddRow := Odd(TDBGrid(Sender).DataSource.DataSet.RecNo);
    TDBGrid(Sender).Canvas.Brush.Color := RowColors[OddRow];

    if Column.Field.Text = '0' then
        TDBGrid(Sender).Canvas.Brush.Color := clRed;
    if Column.Field.Text = 'Дезинфекция' then
      TDBGrid(Sender).Canvas.Brush.Color := clSilver;
    if Column.Field.Text = 'Душевнобольные' then
      TDBGrid(Sender).Canvas.Brush.Color := clGradientActiveCaption;
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;


end;

procedure TForm4.DBGrid1TitleClick(Column: TColumn);
var
  new_field:integer;
  temp: string;

begin
  // формирование начальных значений внутренних переменных
  new_field := Column.Index;

  // закрытие соединения с базой данных
  DataModule2.Q_view_booking_full_info.Close;
  // очистка текста предшествующего SQL-запроса
  DataModule2.Q_view_booking_full_info.SQL.Clear;

  if new_field = field then // клик на одном и том же поле
    order := not order   // изменить порядок сортировки на противоположный
  else
    begin
      // клик на другом поле
      field := new_field;
      order := true;
    end;
  if not order then
    temp := 'SELECT * FROM view_booking_full_info ORDER BY '+ Column.FieldName + ' DESC'
  else
    temp := 'SELECT * FROM view_booking_full_info ORDER BY '+ Column.FieldName + ' ASC';
  DataModule2.Q_view_booking_full_info.SQL.Add(temp);

  DataModule2.Q_view_booking_full_info.Open;
  field := Column.Index;
end;

procedure TForm4.DBGrid2TitleClick(Column: TColumn);
var
  new_field:integer;
  temp: string;
begin
  new_field := Column.Index;
  DataModule2.Q_actors.Close;
  DataModule2.Q_actors.SQL.Clear;
  if new_field = field then
    order := not order
  else
    begin
      field := new_field;
      order := true;
    end;
  if not order then
    temp := 'SELECT * FROM actors ORDER BY '+ Column.FieldName + ' DESC'
  else
    temp := 'SELECT * FROM actors ORDER BY '+ Column.FieldName + ' ASC';
  DataModule2.Q_actors.SQL.Add(temp);

  DataModule2.Q_actors.Open;
  field := Column.Index;
end;


procedure TForm4.E_FilterChange(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_view_booking_full_info.DisableControls;
 DataModule2.Q_view_booking_full_info.Active := false;
 baseSQL := 'SELECT * FROM view_booking_full_info ';
 filter_s := '';
 if length(E_Filter.Text) > 0 then
 filter_s := ' WHERE namep LIKE ' + QuotedStr('%' + E_Filter.Text + '%')
 //+ ' OR phone LIKE ' + QuotedStr('%' + E_Filter.Text + '%') +
 + ' OR statusname LIKE ' + QuotedStr('%' + E_Filter.Text + '%')
 + ' OR nameq LIKE ' + QuotedStr('%' + E_Filter.Text + '%')
 + ' OR sourcename LIKE ' + QuotedStr('%' + E_Filter.Text + '%') ;
 //' OR date LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
 DataModule2.Q_view_booking_full_info.SQL.Text := baseSQL + filter_s;
 DataModule2.Q_view_booking_full_info.Active := true;
 DataModule2.Q_view_booking_full_info.EnableControls;

 DataModule2.Q_view_booking_full_info.Filtered :=true;
 LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);


end;

procedure TForm4.FormShow(Sender: TObject);
begin
  DataModule2.Q_view_booking_full_info.Close;
  DataModule2.Q_view_booking_full_info.SQL.Text:= 'SELECT * FROM view_booking_full_info ORDER BY date DESC' ;
  if CheckBox2.Checked=true then
    begin
      DataModule2.Q_view_booking_full_info.SQL.ADD(' LIMIT ');
      DataModule2.Q_view_booking_full_info.SQL.ADD(reccountEdit.Text);
    end;
  DataModule2.Q_view_booking_full_info.Open;
  DataModule2.Q_view_booking_full_info.Requery;
  LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);

end;

procedure TForm4.N2Click(Sender: TObject);
begin
 Form8.Show();
end;

procedure TForm4.N3Click(Sender: TObject);
begin
 Form6.Show();
end;

procedure TForm4.N5Click(Sender: TObject);
begin
DataModule2.Reportfrx_Q_view_booking_full_info.ShowReport();
end;

procedure TForm4.N6Click(Sender: TObject);
begin
DataModule2.Rep_frx_Q_Dush_month.ShowReport();
end;

procedure TForm4.N8Click(Sender: TObject);
begin
Form7.Show();
end;

procedure TForm4.N9Click(Sender: TObject);
begin
DataModule2.Rep_frxDB_Q_Dez_month.ShowReport();
end;

procedure TForm4.reccountEditChange(Sender: TObject);
begin

  DataModule2.Q_view_booking_full_info.Close;
  DataModule2.Q_view_booking_full_info.SQL.Text:= 'SELECT * FROM view_booking_full_info ORDER BY date DESC' ;

  if reccountEdit.Text <> '' then
  begin
  if CheckBox2.Checked=true then
    begin
      DataModule2.Q_view_booking_full_info.SQL.ADD(' LIMIT ');
      DataModule2.Q_view_booking_full_info.SQL.ADD(reccountEdit.Text);
    end;
  end;
  DataModule2.Q_view_booking_full_info.Open;
  DataModule2.Q_view_booking_full_info.Requery;
  LabelRecCount.Caption :='Отображено записей: '+inttostr(DataModule2.Q_view_booking_full_info.RecordCount);
end;

procedure TForm4.SpinCostValueChange(Sender: TObject);
begin
ChkCostFilterClick(nil);
end;

end.
