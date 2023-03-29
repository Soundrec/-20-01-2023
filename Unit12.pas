unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    EditName: TEdit;
    EditPass: TEdit;
    EditPassRep: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit13;



procedure TForm12.Button1Click(Sender: TObject);
var
SQLaddUser: string;
begin
if (EditPass.Text <> EditPassRep.Text) then
begin
  ShowMessage('Пароли не совпадают! Попробуйте еще раз.');
end
else
  begin
  SQLaddUser := 'INSERT INTO users (username, password) VALUES ('
  + QuotedStr(EditName.Text) + ','
  + QuotedStr(EditPass.Text) + ');';


  DataModule2.Q_add_user.SQL.Text := SQLaddUser;
  DataModule2.Q_add_user.ExecSQL;
  Form12.Visible := False;
  Form13.Visible := True;
  end;

end;

end.
