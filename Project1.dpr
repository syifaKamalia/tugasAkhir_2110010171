program Project1;

uses
  Forms,
  login in 'login.pas' {Form1},
  admin in 'admin.pas' {Form2},
  wakel in 'wakel.pas' {Form3},
  walikelas in 'walikelas.pas' {Form4},
  siswa in 'siswa.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
