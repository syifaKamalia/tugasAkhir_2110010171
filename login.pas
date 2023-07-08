unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    con1: TZConnection;
    ds1: TDataSource;
    zqry1: TZQuery;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username:string;
  password:string;
  level:string;
implementation

uses admin, wakel;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
username := edt1.Text;
  password := edt2.Text;

  zqry1 := TZQuery.Create(nil);
  try
    zqry1.Connection := con1;
    zqry1.SQL.Text := 'SELECT level FROM tableuser WHERE username = :username AND password = :password';
    zqry1.ParamByName('username').AsString := username;
    zqry1.ParamByName('password').AsString := password;
    zqry1.Open;

    if not zqry1.IsEmpty then
    begin
      level := zqry1.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Admin login successful');
        Form2.Show;
      end
      else if level = 'wali kelas' then
      begin
        // Pengguna berhasil login sebagai pengguna
        ShowMessage('Wali kelas login successful');
        Form3.Show;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    zqry1.Free;
  end;
end;

end.
