object Form11: TForm11
  Left = 238
  Top = 237
  Width = 928
  Height = 664
  Caption = 'Form11'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 8
    Top = 32
    Width = 897
    Height = 293
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object l1: TLabel
      Left = 16
      Top = 40
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
      Top = 36
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
      Left = 0
      Top = 68
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
      Top = 104
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
      Top = 136
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
      Top = 168
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
      Left = 4
      Top = 208
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
      Top = 244
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
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object e_2: TEdit
      Left = 412
      Top = 36
      Width = 133
      Height = 21
      TabOrder = 1
    end
    object cbb1: TComboBox
      Left = 184
      Top = 64
      Width = 229
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jumat')
    end
    object dtp1: TDateTimePicker
      Left = 184
      Top = 104
      Width = 229
      Height = 21
      Date = 45067.630714120370000000
      Time = 45067.630714120370000000
      TabOrder = 3
    end
    object e_3: TEdit
      Left = 184
      Top = 140
      Width = 205
      Height = 21
      TabOrder = 4
    end
    object e_4: TEdit
      Left = 184
      Top = 172
      Width = 185
      Height = 21
      TabOrder = 5
    end
    object e_5: TEdit
      Left = 184
      Top = 208
      Width = 157
      Height = 21
      TabOrder = 6
    end
    object e_6: TEdit
      Left = 188
      Top = 240
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object b1: TButton
      Left = 820
      Top = 8
      Width = 75
      Height = 45
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = b1Click
    end
    object b2: TButton
      Left = 820
      Top = 68
      Width = 75
      Height = 41
      Caption = 'EDIT'
      TabOrder = 9
    end
    object b3: TButton
      Left = 820
      Top = 120
      Width = 75
      Height = 41
      Caption = 'HAPUS'
      TabOrder = 10
    end
    object b4: TButton
      Left = 820
      Top = 176
      Width = 75
      Height = 45
      Caption = 'BATAL'
      TabOrder = 11
    end
  end
  object dbgrd1: TDBGrid
    Left = 4
    Top = 332
    Width = 901
    Height = 241
    DataSource = Form9.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
