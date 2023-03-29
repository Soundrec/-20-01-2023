unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm13 = class(TForm)
    EditName: TEdit;
    EditPass: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit2, Unit12, Unit1;

procedure TForm13.Button1Click(Sender: TObject);
var
SQLcheckUser: string;
begin

SQLcheckUser:= 'SELECT level FROM userbase.users WHERE username = '
+ QuotedStr(Editname.Text) + ' AND password = '
+ QuotedStr(EditPass.Text) + ';';

DataModule2.Q_check_user.SQL.Text := SQLcheckUser;
DataModule2.Q_check_user.Open;

if not DataModule2.Q_check_user.Eof then
begin
  if (DataModule2.Q_check_user.FieldValues['level'] = 'admin') then
    begin
      MainFormAdmin.Show;
      Form13.Hide;
    end
  else if (DataModule2.Q_check_user.FieldValues['level'] = 'user') then
  begin
      MainFormAdmin.Show;
      Form13.Hide;
  end
  else
    begin
      Showmessage('¬веден неверный логин или пароль');
      EditName.Clear;
      EditPass.Clear;
    end;
end;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
Form13.Visible := False;
Form12.Show();

end;

end.
