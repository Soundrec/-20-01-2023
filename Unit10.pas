unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DATA.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
min_name_length:integer;
max_name_length:integer;
min_sname_length:integer;//фамилия
max_sname_length:integer;
implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm10.Button1Click(Sender: TObject);
begin

  DataModule2.T_actors.Edit;
  DataModule2.T_actors.Post;
  Form10.Close;
end;

end.
