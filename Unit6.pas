unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  Data.DB, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Label1: TLabel;
    ButtonConfirmYear: TButton;
    EditYear: TSpinEdit;
    procedure ButtonConfirmYearClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2;


procedure TForm6.ButtonConfirmYearClick(Sender: TObject);

begin

  DataModule2.grafik1.Close;
  DataModule2.grafik1.SQL.Clear;

  DataModule2.grafik1.SQL.Add(' SELECT MONTH(view_booking_price_actors.date) AS months,');
  DataModule2.grafik1.SQL.Add(' SUM(view_booking_price_actors.finalprice) AS qFullCost ');
  DataModule2.grafik1.SQL.Add(' FROM view_booking_price_actors ');
  DataModule2.grafik1.SQL.Add(' WHERE YEAR(view_booking_price_actors.date) = '+ QuotedStr(EditYear.Text) + ' AND view_booking_price_actors.nameq = ' + QuotedStr('Душевнобольные '));
  DataModule2.grafik1.SQL.Add(' GROUP BY months;');

  DataModule2.grafik1.Open;

  DataModule2.grafik2.Close;
  DataModule2.grafik2.SQL.Clear;

  DataModule2.grafik2.SQL.Add(' SELECT MONTH(view_booking_price_actors.date) AS months,');
  DataModule2.grafik2.SQL.Add(' SUM(view_booking_price_actors.finalprice) AS qFullCost ');
  DataModule2.grafik2.SQL.Add(' FROM view_booking_price_actors ');
  DataModule2.grafik2.SQL.Add(' WHERE YEAR(view_booking_price_actors.date) = '+ QuotedStr(EditYear.Text) + ' AND view_booking_price_actors.nameq = ' + QuotedStr('Дезинфекция '));
  DataModule2.grafik2.SQL.Add(' GROUP BY months;');

  DataModule2.grafik2.Open;

end;



end.
