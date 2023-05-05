unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.WinXPickers, Vcl.ComCtrls, DATA.DB, Vcl.CheckLst;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    EditNamePerson: TDBEdit;
    LabelName: TLabel;
    LabelPhone: TLabel;
    EditPhone: TDBEdit;
    LabelQuantity: TLabel;
    EditQuantity: TDBEdit;
    LabelDiscount: TLabel;
    EditDiscount: TDBEdit;
    LabelSource: TLabel;
    LabelStatus: TLabel;
    LabelComment: TLabel;
    MemoComment: TDBMemo;
    ButtonSave: TButton;
    LabelDate: TLabel;
    LabelTime: TLabel;
    LabelQuest: TLabel;
    DatePicker: TDatePicker;
    TimePicker: TDBComboBox;
    CheckListBoxActors: TCheckListBox;
    LabelActors: TLabel;
    SourcePicker: TDBLookupComboBox;
    StatusPicker: TDBLookupComboBox;
    QuestPicker: TDBLookupComboBox;
    procedure ButtonSaveClick(Sender: TObject);
//    procedure DatePickerChange(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure DatePickerChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit13;

procedure TForm5.ButtonSaveClick(Sender: TObject);
var
  sql:String;
  i: integer;
  max_discount:integer;
  max_players_num:integer;
  min_players_num:integer;
begin
max_discount:=99;
max_players_num:=10;
min_players_num:=1;
  if (strtoint(editquantity.Text) > min_players_num) or (strtoint(editquantity.Text) <= max_players_num) then
  begin
  DataModule2.Q_edit.Close;
  DataModule2.Q_edit.SQL.Clear;
  DataModule2.Q_edit.SQL.Text := 'DELETE FROM actor_booking WHERE IDbooking = '
  + QuotedStr(IntToStr(DataModule2.T_booking.FieldByName('IDbooking').AsInteger)) + ';';
  DataModule2.Q_edit.ExecSQL;

  DataModule2.Q_edit.Close;
  DataModule2.Q_edit.SQL.Clear;

  for i := 0 to CheckListBoxActors.Count-1 do
    begin
      if CheckListBoxActors.Checked[i] = true then
      begin
        DataModule2.Q_edit.Close;
          DataModule2.Q_edit.SQL.Clear;
        sql := 'INSERT into actor_booking (IDbooking, IDactor) VALUES ('
        + QuotedStr(IntToStr(DataModule2.T_booking.FieldByName('IDbooking').AsInteger)) + ', '
        + QuotedStr(IntToStr(i+1)) + ');';
        DataModule2.Q_edit.SQL.Text := sql;
        DataModule2.Q_edit.ExecSQL;
      end;
    end;

  if Form5.Active and (DataModule2.T_bookingdate.Value <> DatePicker.Date) then
   begin
     if DataModule2.T_booking.State = dsBrowse then
       begin

       DataModule2.T_booking.Edit;
       DataModule2.T_bookingdate.Value := DatePicker.Date;

       end;
   end;
   end;

    Form5.Close();
end;



procedure TForm5.FormShow(Sender: TObject);
var
  i: integer;
  k: integer;

begin

if Form13.access = 'user' then
begin

  LabelDate.Visible := false;
  LabelTime.Visible := false;
  LabelQuantity.Visible := false;
  LabelSource.Visible := false;
  LabelName.Visible := false;
  LabelQuest.Visible := false;
  LabelPhone.Visible := false;
  LabelDiscount.Visible := false;
  DatePicker.Visible := false;
  TimePicker.Visible := false;
  QuestPicker.Visible := false;
  SourcePicker.Visible := false;
  EditDiscount.Visible := false;
  EditQuantity.Visible := false;
  EditNamePerson.Visible := false;
  EditPhone.Visible := false;

end;

  DatePicker.Date := DataModule2.T_booking.FieldByName('date').Value;

  CheckListBoxActors.Items.Clear;

  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;
  DataModule2.Q_select_actors.SQL.Text := 'SELECT name, surname FROM actors ORDER BY IDactor';
  DataModule2.Q_select_actors.Open;

  while not DataModule2.Q_select_actors.Eof do
  begin
   CheckListBoxActors.Items.Add((DataModule2.Q_select_actors.FieldByName('name')).AsString + ' ' + (DataModule2.Q_select_actors.FieldByName('surname')).AsString);
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
    CheckListBoxActors.Checked[StrToInt(DataModule2.Q_select_actors.FieldByName('IDactor').AsString)-1] := true;
    DataModule2.Q_select_actors.Next;
  end;
  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;


end;

end.
