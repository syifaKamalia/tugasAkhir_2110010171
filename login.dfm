object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 64
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 96
    Top = 96
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object edt1: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 168
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dbsekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\akhir\libmysql.d' +
      'll'
    Left = 40
    Top = 64
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 40
    Top = 120
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tableuser')
    Params = <>
    Left = 40
    Top = 176
  end
end
