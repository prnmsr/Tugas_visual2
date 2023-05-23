unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    grp1: TGroupBox;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    e_1: TEdit;
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
    e_2: TEdit;
    dbgrd1: TDBGrid;
    procedure b1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  upd:string;

implementation
uses Unit9;

{$R *.dfm}

procedure TForm10.b1Click(Sender: TObject);
var a:Integer;
begin
  if (e_1.Text='') or  (e_1.Text='00:00') or  (e_1.Text='') or  (e_1.Text='00:00') then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(e_3.text='')or(e_3.Text='-')or(e_4.text='')or(e_4.Text='-') then
    begin
    ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH BELUM SESUAI');
    end else
    if (e_5.text='')or(e_5.Text='-')or(e_6.text='')or(e_6.Text='-') then
    begin
     ShowMessage('INPUTAN KELAS ATAU TOTAL KEHADIRAN BELUM SESUAI');
    end else
  if Form9.qry1.Locate('hari',cbb1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else

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
  bersih;
  end;
  end;
end;

procedure TForm10.bersih;
begin
e_1.Text:='00:00';
e_2.Text:='00:00';
cbb1.Text:='---PILIH HARI---';
e_3.Text:='-';
e_4.Text:='-';
e_5.Text:='-';
e_6.Text:='-';
Form9.qry1.SQL.Clear;
Form9.qry1.SQL.Add('select * from jadwal_table');
Form9.qry1.Open;
dbgrd1.columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;

end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
  try
upd:=Form9.qry1.Fields[0].AsString;
e_1.Text:=Form9.qry1.Fields[1].AsString;
e_2.Text:=Form9.qry1.Fields[2].AsString;
cbb1.Text:=Form9.qry1.Fields[3].AsString;
dtp1.date:=Form9.qry1.Fields[4].AsDateTime;
e_3.Text:=Form9.qry1.Fields[5].AsString;
e_4.Text:=Form9.qry1.Fields[6].AsString;
e_5.Text:=Form9.qry1.Fields[7].AsString;
e_6.Text:=Form9.qry1.Fields[8].AsString;


except
   // kosong
end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm10.b2Click(Sender: TObject);
begin
  if (e_1.Text='') or  (e_1.Text='00:00') or  (e_1.Text='') or  (e_1.Text='00:00') then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(e_3.text='')or(e_3.Text='-')or(e_4.text='')or(e_4.Text='-') then
    begin
    ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH BELUM SESUAI');
    end else
    if (e_5.text='')or(e_5.Text='-')or(e_6.text='')or(e_6.Text='-') then
    begin
     ShowMessage('INPUTAN KELAS ATAU TOTAL KEHADIRAN BELUM SESUAI');
    end else
    if (e_1.Text=Form9.qry1.Fields[1].AsString)and(e_2.Text=Form9.qry1.Fields[2].AsString)and(cbb1.Text=Form9.qry1.Fields[3].AsString)and(dtp1.Date=Form9.qry1.Fields[4].AsDateTime)and(e_3.Text=Form9.qry1.Fields[5].AsString)and(e_4.Text=Form9.qry1.Fields[6].AsString)and(e_5.Text=Form9.qry1.Fields[7].AsString)and(e_6.Text=Form9.qry1.Fields[8].AsString) then
    begin
     ShowMessage('Data Tidak Ada Perubahan');
    end else
    begin
      //kode Update
      with Form9.qry1 do
      begin
        SQL.Clear;
        SQL.Add('update jadwal_table set jam_mulai="'+e_1.Text+'",jam_akhir="'+e_2.Text+'",ruang="'+e_3.Text+'",matakul="'+e_4.Text+'",kelas="'+e_5.Text+'",kehadiran_total"'+e_6.Text+'"where no="'+upd+'"');
        ExecSQL;

        SQL.Clear;
        SQL.Add('select * from jadwal_table');
        Open;
        ShowMessage('Data Berhasil Di Edit');
        bersih;
      end;
    end;
end;

procedure TForm10.b3Click(Sender: TObject);
begin
 if (e_1.Text='') or  (e_1.Text='00:00') or  (e_1.Text='') or  (e_1.Text='00:00') then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(e_3.text='')or(e_3.Text='-')or(e_4.text='')or(e_4.Text='-') then
    begin
    ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH BELUM SESUAI');
    end else
    if (e_5.text='')or(e_5.Text='-')or(e_6.text='')or(e_6.Text='-') then
    begin
     ShowMessage('INPUTAN KELAS ATAU TOTAL KEHADIRAN BELUM SESUAI');
    end else
    if (e_1.Text=Form9.qry1.Fields[1].AsString)and(e_2.Text=Form9.qry1.Fields[2].AsString)and(cbb1.Text=Form9.qry1.Fields[3].AsString)and(dtp1.Date=Form9.qry1.Fields[4].AsDateTime)and(e_3.Text=Form9.qry1.Fields[5].AsString)and(e_4.Text=Form9.qry1.Fields[6].AsString)and(e_5.Text=Form9.qry1.Fields[7].AsString)and(e_6.Text=Form9.qry1.Fields[8].AsString) then
    begin
     ShowMessage('Data Tidak Ada Perubahan');
    end else
    begin
      //kode delete
      if MessageDlg('Apakah Anda Yakin Ingin MengHapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
      begin
      with Form9.qry1 do
      begin
        SQL.Clear;
        SQL.Add('Delete From jadwal_table where no="'+upd+'"');
        ExecSQL;

        SQL.Clear;
        SQL.Add('select * from jadwal_table');
        Open;
        ShowMessage('Data Berhasil Dihapus');
        bersih;
      end;
      end else
      begin
        ShowMessage('Data Batal Dihapus');
      end;
    end;
end;

procedure TForm10.b4Click(Sender: TObject);
begin
bersih;
end;

end.
