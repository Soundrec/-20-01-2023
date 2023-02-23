unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TForm8 = class(TForm)
    PageControl1: TPageControl;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Panel1: TPanel;
    ButtonConfirm: TButton;
    Label1: TLabel;
    EditQuest: TComboBox;
    EditMonth: TComboBox;
    EditYear: TSpinEdit;
    procedure ButtonConfirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm8.ButtonConfirmClick(Sender: TObject);
begin

  DataModule2.grafikSumByDays1.Close;
  DataModule2.grafikSumByDays1.SQL.Clear;

  DataModule2.grafikSumByDays1.SQL.Add(' SELECT DAY(view_booking_full_info.date) AS days,');
  DataModule2.grafikSumByDays1.SQL.Add(' SUM(view_booking_full_info.finalprice) AS qFullCost FROM view_booking_full_info');
  DataModule2.grafikSumByDays1.SQL.Add(' WHERE YEAR(view_booking_full_info.date) = ' + QuotedStr(EditYear.Text) + ' AND MONTH(view_booking_full_info.date) = ' + QuotedStr(EditMonth.Text) + ' AND view_booking_full_info.nameq = ' + QuotedStr(EditQuest.Text) + ' GROUP BY days;');

  DataModule2.grafikSumByDays1.Open;
end;

end.
