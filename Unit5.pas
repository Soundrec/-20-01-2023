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
    Label1: TLabel;
    Label2: TLabel;
    EditPhone: TDBEdit;
    Label3: TLabel;
    EditQuantity: TDBEdit;
    Label4: TLabel;
    EditDiscount: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MemoComment: TDBMemo;
    ButtonSave: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DatePicker: TDatePicker;
    ComboBoxTime: TDBComboBox;
    CheckListBoxActors: TCheckListBox;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
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

uses Unit2, Unit1;

procedure TForm5.ButtonSaveClick(Sender: TObject);
var
  sql:String;
  i: integer;
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



//  if (doit <> 0) then
//    begin
////    SQL.Add('UPDATE ewsd SET nomer ='+AbNomerEdit.Text+'
////    where nomer='+FieldByName('nomer').AsString);
//
//    DataModule2.Q_edit.SQL.Clear;
//
//
//    sql := 'UPDATE team SET quantity = ' + QuotedStr(EditQuantity.Text) + ', ' +
//    'discount = ' + QuotedStr(EditDiscount.Text) + ', ' +
//    'comment = ' + QuotedStr(MemoComment.Text) +
//    'WHERE IDteam = ' + QuotedStr(DataModule2.Q_view_booking_full_infoIDteam.AsString) + ';';
//    DataModule2.Q_edit.SQL.Text := sql;
//    DataModule2.Q_edit.ExecSQL;
//    DataModule2.Q_team.Open;
//    DataModule2.Q_team.Requery;
//
//    DataModule2.Q_edit.Close;
//    DataModule2.Q_edit.SQL.Clear;
//    DataModule2.Q_team.First;
//    sql := 'UPDATE person SET namep = ' + QuotedStr(EditNamePerson.Text) + ', '
//    + 'phone = ' + QuotedStr(EditPhone.Text)
//    + 'WHERE person.IDteam = ' + QuotedStr(DataModule2.Q_view_booking_full_infoIDteam.AsString) + ';';
//    DataModule2.Q_edit.SQL.Text := sql;
//    DataModule2.Q_edit.ExecSQL;
////
//    DataModule2.Q_edit.Close;
//    DataModule2.Q_edit.SQL.Clear;
//    DataModule2.Q_team.First;
//    sql := 'UPDATE booking IDstatus = ' + QuotedStr(IntToStr(StatusBox.ItemIndex + 1)) + ', '
//    + 'IDsource = ' + QuotedStr(IntToStr(SourceBox.ItemIndex + 1)) + ', '
//    + 'IDquest = ' + QuotedStr(IntToStr(QuestBox.ItemIndex + 1)) + ', '
//    + 'date = ' + QuotedStr(FormatDateTime('YYYY.MM.DD', DatePicker.Date)) + ', '
//    + 'time = ' + QuotedStr(ComboBoxTime.Text) + '; ';
//   // + 'WHERE IDteam = ' + QuotedStr(DataModule2.Q_view_booking_full_infoIDteam.AsString) + ';';
//    DataModule2.Q_edit.SQL.Text := sql;
//    DataModule2.Q_edit.ExecSQL;
////    DataModule2.Q_booking.Open;
////    DataModule2.Q_booking.Requery;
////    ShowMessage(IntToStr(DataModule2.Q_booking.FieldByName('IDbooking').AsInteger));
////    DataModule2.Q_booking.First;
//
//    DataModule2.Q_edit.Close;
//    DataModule2.Q_edit.SQL.Text := 'DELETE FROM actor_booking WHERE IDbooking = '
//    + QuotedStr(IntToStr(DataModule2.Q_booking.FieldByName('IDbooking').AsInteger)) + ';';
//
//    DataModule2.Q_edit.ExecSQL;
//
//    DataModule2.Q_edit.Close;
//    for i := 0 to CheckListBoxActors.Count-1 do
//      begin
//        if CheckListBoxActors.Checked[i]=true then
//        begin
//          sql := 'INSERT into actor_booking (IDbooking, IDactor) VALUES ('
//          + QuotedStr(IntToStr(DataModule2.Q_booking.FieldByName('IDbooking').AsInteger)) + ', '
//          + QuotedStr(IntToStr(i+1)) + ');';
//          DataModule2.Q_edit.SQL.Text := sql;
//          DataModule2.Q_edit.ExecSQL;
//        end;
//      end;
////

  if Form5.Active and (DataModule2.T_bookingdate.Value <> DatePicker.Date) then
   begin
     if DataModule2.T_booking.State = dsBrowse then
       begin

       DataModule2.T_booking.Edit;
       DataModule2.T_bookingdate.Value := DatePicker.Date;

       end;
   end;

    Form5.Close();
end;



procedure TForm5.FormShow(Sender: TObject);
var
  i: integer;
  k: integer;

begin
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
