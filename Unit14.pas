unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit13;

procedure TForm14.Button1Click(Sender: TObject);
 var
  SQLtext : string;
  id: integer;
begin

  SQLtext := 'UPDATE users SET level ='
  + QuotedStr('admin') + ' WHERE id = '
  + QuotedStr(IntToStr(DataModule2.Q_users.FieldByName('id').AsInteger)) + ';';
  DataModule2.Q_users.SQL.Text := SQLtext;
  DataModule2.Q_users.ExecSQL;
  DataModule2.Q_users.Close;
  DataModule2.Q_users.SQL.Text := 'SELECT * FROM users';
  DataModule2.Q_users.Open;
end;

procedure TForm14.Button2Click(Sender: TObject);
var
  SQLtext : string;
begin
  SQLtext := 'UPDATE users SET level ='
  + QuotedStr('user') + ' WHERE id = '
  + QuotedStr(IntToStr(DataModule2.Q_users.FieldByName('id').AsInteger)) + ';';
  DataModule2.Q_users.SQL.Text := SQLtext;
  DataModule2.Q_users.ExecSQL;
  DataModule2.Q_users.Close;
  DataModule2.Q_users.SQL.Text := 'SELECT * FROM users';
  DataModule2.Q_users.Open;
end;

procedure TForm14.Button3Click(Sender: TObject);
var
  SQLtext : string;
begin
  SQLtext := 'DELETE FROM users where id = '
  + QuotedStr(IntToStr(DataModule2.Q_users.FieldByName('id').AsInteger)) + ';';
  DataModule2.Q_users.SQL.Text := SQLtext;
  DataModule2.Q_users.ExecSQL;
  DataModule2.Q_users.Close;
  DataModule2.Q_users.SQL.Text := 'SELECT * FROM users';
  DataModule2.Q_users.Open;
end;

procedure TForm14.FormShow(Sender: TObject);
begin
  DataModule2.Q_users.Close;
  DataModule2.Q_users.SQL.Text := 'SELECT * FROM users WHERE username != ' + Form13.username + ' AND password != ' + Form13.passwordhash + ';';
  DataModule2.Q_users.Open;
//  DataModule2.Q_users.Requery;
  DataModule2.DS_Q_users.DataSet := DataModule2.Q_users;
  DBGrid1.Refresh;

end;

end.
