unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls,
  ComCtrls;

type
  TForm2 = class(TForm)
    l2: TLabel;
    l1: TLabel;
    l3: TLabel;
    l6: TLabel;
    l4: TLabel;
    l5: TLabel;
    l7: TLabel;
    l10: TLabel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e_1: TEdit;
    e_2: TEdit;
    e_3: TEdit;
    e_4: TEdit;
    dtp1: TDateTimePicker;
    cbb1: TComboBox;
    cbb2: TComboBox;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    procedure b1Click(Sender: TObject);
     procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   id:string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;

e_1.Enabled:= True;
dtp1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
cbb1.Enabled:= True;
e_4.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm2.b2Click(Sender: TObject);
begin
 if e_1.Text='' then
  begin
    ShowMessage('NAMA WALI KELAS BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('TELP BELUM DIISI DENGAN BENAR');
    end else
    if e_3.text=''then
    begin
     ShowMessage('PENDIDKAM BELUM DIISI DENGAN BENAR');
    end else
    if cbb1.Text='' then
    begin
     ShowMessage('STATUS BELUM DIISI DENGAN BENAR');
    end else
    if e_4.text=''then
    begin
    ShowMessage('WALI KELAS BELUM SESUAI');
    end else
    if cbb2.Text='' then
    begin
     ShowMessage('JENIS KELAMIN BELUM DIISI DENGAN BENAR');
    end else
  if Form2.zqry1.Locate('Telp',e_2.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
 zqry1.SQL.Add('insert into wali_kelas values(null,"'+e_1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+e_2.Text+'","'+e_3.Text+'","'+cbb1.Text+'","'+e_4.Text+'","'+cbb2.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from wali_kelas');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or(e_2.Text ='')or(e_3.Text= '')or(cbb1.Text='')or(e_4.Text ='')or(cbb2.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update wali_kelas set Nama_wali_kelas= "'+e_1.Text+'",Telp="'+e_2.Text+'",Pendidikan="'+e_3.Text+'",Wali_kelas="'+e_4.Text+'" where id_wali="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm2.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from wali_kelas where id_wali="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;

end;

procedure TForm2.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
bersih;
b1.Enabled:=true;
b2.Enabled:=false;
b3.Enabled:=false;
b4.Enabled:=false;
b5.Enabled:=false;
b6.Enabled:=false;
e_1.Enabled:= false;
dtp1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
cbb1.Enabled:= false;
e_4.Enabled:= false;
cbb2.Enabled:= false;
end;

procedure TForm2.posisiawal;
begin
 bersih;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b5.Enabled:= False;
e_1.Enabled:= false;
dtp1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
cbb1.Enabled:= false;
e_4.Enabled:= false;
cbb2.Enabled:= false;
end;
procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
e_1.Text:= zqry1.Fields[1].AsString;
e_2.Text:= zqry1.Fields[3].AsString;
e_3.Text:= zqry1.Fields[4].AsString;
cbb1.Text:= zqry1.Fields[5].AsString;
e_4.Text:= zqry1.Fields[6].AsString;
cbb2.Text:= zqry1.Fields[7].AsString;

e_1.Enabled:= True;
dtp1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
cbb1.Enabled:= True;
e_4.Enabled:= True;
cbb2.Enabled:= True;

b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
end;



procedure TForm2.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;


end.
