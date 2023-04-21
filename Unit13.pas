unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdHashMessageDigest;

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
  access: string;
  username : string;
  passwordhash : string;

    { Public declarations }
  end;
const
  StartKey = 471; // Start default key
  MultKey = 62142; // Mult default key
  AddKey = 11719;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit5, Unit12;

function md5(s: string): string;
begin
 Result := '';
 with TIdHashMessageDigest5.Create do
  try
   Result := AnsiLowerCase(HashStringAsHex(s));
  finally
   Free;
  end;
end;


function Encrypt(const InString: string; StartKey, MultKey, AddKey: Integer):
  string;
var
  I: Byte;
  // Если поменять тип переменной I на Integer, то будет возможно
  // шифрование текста длиной более 255 символом - VID.
begin
  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
  end;
end;


procedure TForm13.Button1Click(Sender: TObject);
var
SQLcheckUser: string;
begin

SQLcheckUser:= 'SELECT level FROM userbase.users WHERE username = '
+ QuotedStr(Editname.Text) + ' AND password = '
+ QuotedStr(md5(Encrypt(EditPass.Text, StartKey, MultKey, AddKey))) + ';';


DataModule2.Q_check_user.SQL.Text := SQLcheckUser;
DataModule2.Q_check_user.Open;

if not DataModule2.Q_check_user.Eof then
begin
  if (DataModule2.Q_check_user.FieldValues['level'] = 'admin') then
    begin
      access := 'admin';
      MainFormAdmin.Show;
      Form13.Hide;
    end
  else if (DataModule2.Q_check_user.FieldValues['level'] = 'user') then
  begin
      access := 'user';
      MainFormAdmin.Show;
      Form13.Hide;
  end
  else
    begin
      Showmessage('Введен неверный логин или пароль');
      EditName.Clear;
      EditPass.Clear;
    end;
end;
username := QuotedStr(Editname.Text);
showmessage(Encrypt(EditPass.Text, StartKey, MultKey, AddKey));
passwordhash := QuotedStr(md5(Encrypt(EditPass.Text, StartKey, MultKey, AddKey)));
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
Form13.Visible := False;
Form12.Show();

end;

end.
