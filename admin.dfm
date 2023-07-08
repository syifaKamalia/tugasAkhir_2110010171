object Form2: TForm2
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'ADMIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 32
    Top = 16
    object mniMENU1: TMenuItem
      Caption = 'MENU'
      object mniWALIKELAS1: TMenuItem
        Caption = 'WALI KELAS'
        OnClick = mniWALIKELAS1Click
      end
      object mniSISWA1: TMenuItem
        Caption = 'SISWA'
      end
      object mniORANGTUA1: TMenuItem
        Caption = 'ORANG TUA'
      end
      object mniKELAS1: TMenuItem
        Caption = 'KELAS'
      end
      object mniHUBUNGAN1: TMenuItem
        Caption = 'HUBUNGAN'
      end
      object mniPOIN1: TMenuItem
        Caption = 'POIN'
      end
      object mniSEMESTER1: TMenuItem
        Caption = 'SEMESTER'
      end
      object mniUSER1: TMenuItem
        Caption = 'USER'
      end
    end
  end
end
