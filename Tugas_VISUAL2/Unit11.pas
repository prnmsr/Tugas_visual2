unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm11 = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    l1: TLabel;
    l2: TLabel;
    e_1: TEdit;
    l3: TLabel;
    e_2: TEdit;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    e_3: TEdit;
    e_4: TEdit;
    e_5: TEdit;
    e_6: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation
uses Unit9;

{$R *.dfm}

procedure TForm11.b1Click(Sender: TObject);
var a:Integer
begin
  a:=Form9.qry1.RecordCount+1;
with Form9.qry1 do
begin
  SQL.Clear;
  SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+e_1.Text+'","'+e_2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+e_3.Text+'","'+e_4.Text+'","'+e_5.Text+'","'+e_6.Text+'")');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from jadwal_table');
  Open;
  ShowMessage('Data Berhasil Di Simpan');
  end;
end;

end.
