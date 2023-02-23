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
begin
 DataModule2.Q_append.Close;
 DataModule2.Q_append.SQL.Clear;

 sql := 'INSERT INTO actors (name, surname, phone, games_played) VALUES('
    + QuotedStr(Edit1.Text) + ', '
    + QuotedStr(Edit2.Text) + ', '
    + QuotedStr(Edit3.Text) + ', '
    + '0);';

  DataModule2.Q_append.SQL.Text := sql;
  DataModule2.Q_append.ExecSQL;
  Form11.Close;

end;

end.
