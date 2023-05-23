object Form10: TForm10
  Left = 219
  Top = 144
  Width = 928
  Height = 480
  Caption = 'Form10'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 0
    Top = 4
    Width = 897
    Height = 237
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object l1: TLabel
      Left = 16
      Top = 20
      Width = 66
      Height = 15
      Caption = 'JAM AWAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l2: TLabel
      Left = 328
      Top = 20
      Width = 72
      Height = 16
      Caption = 'JAM AKHIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l3: TLabel
      Left = 4
      Top = 52
      Width = 131
      Height = 16
      Caption = 'HARI PELAKSANAAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l4: TLabel
      Left = 4
      Top = 84
      Width = 58
      Height = 16
      Caption = 'TANGGAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l5: TLabel
      Left = 4
      Top = 108
      Width = 61
      Height = 16
      Caption = 'RUANGAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l6: TLabel
      Left = 4
      Top = 136
      Width = 85
      Height = 16
      Caption = 'MATAKULIAH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l7: TLabel
      Left = 0
      Top = 160
      Width = 40
      Height = 16
      Caption = 'KELAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l8: TLabel
      Left = 4
      Top = 192
      Width = 86
      Height = 16
      Caption = 'TOTAL HADIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object e_1: TEdit
      Left = 188
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object cbb1: TComboBox
      Left = 184
      Top = 48
      Width = 229
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '---PILIH HARI---'
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jumat')
    end
    object dtp1: TDateTimePicker
      Left = 184
      Top = 80
      Width = 229
      Height = 21
      Date = 45067.630714120370000000
      Time = 45067.630714120370000000
      TabOrder = 2
    end
    object e_3: TEdit
      Left = 184
      Top = 108
      Width = 205
      Height = 21
      TabOrder = 3
    end
    object e_4: TEdit
      Left = 184
      Top = 136
      Width = 185
      Height = 21
      TabOrder = 4
    end
    object e_5: TEdit
      Left = 184
      Top = 164
      Width = 157
      Height = 21
      TabOrder = 5
    end
    object e_6: TEdit
      Left = 184
      Top = 188
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object b1: TButton
      Left = 392
      Top = 188
      Width = 75
      Height = 45
      Caption = 'SIMPAN'
      TabOrder = 7
      OnClick = b1Click
    end
    object b2: TButton
      Left = 468
      Top = 188
      Width = 75
      Height = 45
      Caption = 'EDIT'
      TabOrder = 8
      OnClick = b2Click
    end
    object b3: TButton
      Left = 540
      Top = 188
      Width = 75
      Height = 45
      Caption = 'HAPUS'
      TabOrder = 9
      OnClick = b3Click
    end
    object b4: TButton
      Left = 612
      Top = 188
      Width = 75
      Height = 45
      Caption = 'BATAL'
      TabOrder = 10
      OnClick = b4Click
    end
    object e_2: TEdit
      Left = 412
      Top = 16
      Width = 133
      Height = 21
      TabOrder = 11
    end
  end
  object dbgrd1: TDBGrid
    Left = -8
    Top = 240
    Width = 901
    Height = 181
    DataSource = Form9.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
