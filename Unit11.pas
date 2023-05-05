unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit1, Unit2;



procedure TForm11.Button1Click(Sender: TObject);
var
sql : string;
min_name_length:integer;
max_name_length:integer;
min_sname_length:integer;//фамилия
max_sname_length:integer;
begin
min_name_length:=5;
max_name_length:=20;
min_sname_length:=5;
max_sname_length:=20;
 DataModule2.Q_append.Close;
 DataModule2.Q_append.SQL.Clear;
 if (length(edit1.text) >= min_name_length) or (length(edit1.text) <= max_name_length) or (length(edit2.text)>= min_sname_length) or (length(edit2.text)<= max_sname_length) or (length(edit3.text)=11)  then
 begin

 sql := 'INSERT INTO actors (name, surname, phone, games_played) VALUES('
    + QuotedStr(Edit1.Text) + ', '
    + QuotedStr(Edit2.Text) + ', '
    + QuotedStr(Edit3.Text) + ', '
    + '0);';

  DataModule2.Q_append.SQL.Text := sql;
  DataModule2.Q_append.ExecSQL;
  Form11.Close;
 end
 else if (length(edit1.text) < min_name_length) or (length(edit1.text) > max_name_length) then
 begin
 ShowMessage('Имя содержит слишком много или слишком мало символов');
 end;
 if (length(edit2.text)>= min_sname_length) or (length(edit2.text)<= max_sname_length) then
 begin
   ShowMessage('Фамилия содержит слишком много или слишком мало символов');
 end;
 if (length(edit3.text)<>11) then
 begin
   ShowMessage('Некорректный номер телефона');
 end;

end;

end.
