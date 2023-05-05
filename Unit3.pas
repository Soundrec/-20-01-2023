unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.WinXPickers, Data.DB, Data.Win.ADODB,
  Vcl.CheckLst;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    DatePicker: TDatePicker;
    LabelDate: TLabel;
    LabelTime: TLabel;
    ComboBoxTime: TDBComboBox;
    LabelQuest: TLabel;
    LabelSource: TLabel;
    LabelStatus: TLabel;
    LabelComment: TLabel;
    LabelDiscount: TLabel;
    LabelQuantity: TLabel;
    LabelPhone: TLabel;
    LabelName: TLabel;
    ButtonAdd: TButton;
    EditNamePerson: TEdit;
    EditPhone: TEdit;
    EditQuantity: TEdit;
    EditDiscount: TEdit;
    QuestBox: TDBComboBox;
    SourceBox: TDBComboBox;
    MemoComment: TMemo;
    actorsEdit: TCheckListBox;
    LabelActors: TLabel;
    StatusBox: TComboBox;
    procedure ButtonAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses  Unit2, Unit1;

procedure TForm3.ButtonAddClick(Sender: TObject);
var
  sql:String;
  r: Integer;
  doit: Integer;
  i: Integer;
begin
  begin
  DataModule2.Q_append.Close;
  doit := 0;
  Try
    r:=StrToInt(EditQuantity.Text);
    r:=StrToInt(EditDiscount.Text);
    doit := 1;
  Except
    on EConvertError do
      begin
        doit := 0;
        ShowMessage('Количетво игроков команды и скидка должны быть числами.');
      end;
  end;

  if (doit <> 0) then
    begin

    DataModule2.Q_append.SQL.Clear;
    sql := 'INSERT INTO team (quantity, discount, comment) VALUES('
    + QuotedStr(EditQuantity.Text) +','
    + QuotedStr(EditDiscount.Text) + ','
    + QuotedStr(MemoComment.Text) + ');';
    DataModule2.Q_append.SQL.Text := sql;
    DataModule2.Q_append.ExecSQL;
    DataModule2.Q_team.Open;
    DataModule2.Q_team.Requery;

    DataModule2.Q_append.Close;
    DataModule2.Q_append.SQL.Clear;
    DataModule2.Q_team.First;
    sql := 'INSERT INTO person (IDteam, namep, phone) VALUES('
    + QuotedStr(IntToStr(DataModule2.Q_team.FieldByName('IDteam').AsInteger)) + ','
    + QuotedStr(EditNamePerson.Text)
    + ', ' + QuotedStr(EditPhone.Text) + ');';
    DataModule2.Q_append.SQL.Text := sql;
    DataModule2.Q_append.ExecSQL;


    DataModule2.Q_append.Close;
    DataModule2.Q_append.SQL.Clear;
    DataModule2.Q_team.First;
    sql := 'INSERT INTO booking (IDquest, IDteam, IDstatus, IDsource, date, time) VALUES('
    + QuotedStr(IntToStr(QuestBox.ItemIndex + 1)) + ', '
    + QuotedStr(IntToStr(DataModule2.Q_team.FieldByName('IDteam').AsInteger)) + ', '
    + QuotedStr(IntToStr(StatusBox.ItemIndex + 1)) + ', '
    + QuotedStr(IntToStr(SOurceBox.ItemIndex + 1)) + ', '
    + QuotedStr(FormatDateTime('YYYY.MM.DD', DatePicker.Date)) + ', '
    + QuotedStr(ComboBoxTime.Text) + ');';
    DataModule2.Q_append.SQL.Text := sql;
    DataModule2.Q_append.ExecSQL;

    DataModule2.Q_booking.Open;
    DataModule2.Q_booking.Requery;
    DataModule2.Q_booking.First;

    for i := 0 to actorsEdit.Count-1 do
      begin
        if actorsEdit.Checked[i]=true then
        begin
          sql := 'INSERT into actor_booking (IDbooking, IDactor) VALUES ('
          + QuotedStr(IntToStr(DataModule2.Q_booking.FieldByName('IDbooking').AsInteger)) + ', '
          + QuotedStr(IntToStr(i+1)) + ');';
          DataModule2.Q_append.SQL.Text := sql;
          DataModule2.Q_append.ExecSQL;
        end;
      end;

    Form3.Close();
    end;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
var
 k: integer;
begin
    actorsEdit.Items.Clear;
    DataModule2.Q_select_actors.Close;
    DataModule2.Q_select_actors.SQL.Clear;
    DataModule2.Q_select_actors.SQL.Text := 'SELECT name, surname FROM actors ORDER BY IDactor';
    DataModule2.Q_select_actors.Open;

  while not DataModule2.Q_select_actors.Eof do
  begin
    actorsEdit.Items.Add((DataModule2.Q_select_actors.FieldByName('name')).AsString + ' ' + (DataModule2.Q_select_actors.FieldByName('surname')).AsString);
    DataModule2.Q_select_actors.Next;

  end;

  DataModule2.Q_select_actors.Close;
  DataModule2.Q_select_actors.SQL.Clear;


end;


end.



