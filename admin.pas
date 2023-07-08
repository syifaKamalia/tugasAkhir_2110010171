unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    mniMENU1: TMenuItem;
    mniWALIKELAS1: TMenuItem;
    mniSISWA1: TMenuItem;
    mniORANGTUA1: TMenuItem;
    mniKELAS1: TMenuItem;
    mniHUBUNGAN1: TMenuItem;
    mniPOIN1: TMenuItem;
    mniSEMESTER1: TMenuItem;
    mniUSER1: TMenuItem;
    procedure mniWALIKELAS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses walikelas;

{$R *.dfm}

procedure TForm2.mniWALIKELAS1Click(Sender: TObject);
begin
 Form4.Show;
end;

end.
