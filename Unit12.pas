unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdHashMessageDigest,
  Vcl.Buttons;

type
  TForm12 = class(TForm)
    EditName: TEdit;
    EditPass: TEdit;
    EditPassRep: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

const
  StartKey = 471; // Start default key
  MultKey = 62142; // Mult default key
  AddKey = 11719;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit13;

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

function checkPassword(s: string) : bool;
var
  i: Integer;
  a: Integer;
  hasDigit : bool;
  hasUpper : bool;
  hasLower : bool;
begin
for i := 0 to length(s)-1 do
begin
  if s[i] in ['0'..'9'] then
    hasDigit := True;
  if s[i] = UpCase(s[i]) then
    hasUpper :=True;
  if s[i] = LowerCase(s[i]) then
    hasLower := True;
end;

Result := False;
if hasUpper = True and hasLower = True and hasDigit = True then
Result := True;
showmessage(BoolToStr(Result));
end;

procedure TForm12.Button1Click(Sender: TObject);
var
SQLaddUser: string;
begin
if (EditPass.Text <> EditPassRep.Text) then
begin
  ShowMessage('Пароли не совпадают! Попробуйте еще раз.');
end
else if (length(EditPass.Text) < 7) then
begin
  ShowMessage('Пароль менее 8 символов! Попробуйте еще раз.');
end
else if checkPassword(EditPass.Text) = False then
begin
  ShowMessage('Пароль не содержит цифры или заглавные, или прописные буквы! Попробуйте еще раз.');
end
else
  begin
  SQLaddUser := 'INSERT INTO users (username, password) VALUES ('
  + QuotedStr(EditName.Text) + ','
  + QuotedStr(md5(Encrypt(EditPass.Text, StartKey, MultKey, AddKey))) + ');';
  DataModule2.Q_add_user.SQL.Text := SQLaddUser;
  DataModule2.Q_add_user.ExecSQL;
  Form12.Visible := False;
  Form13.Visible := True;
  end;

end;

procedure TForm12.Button2Click(Sender: TObject);
begin
Form12.Visible := False;
Form13.Show();
end;

end.

// шифрование пароля

