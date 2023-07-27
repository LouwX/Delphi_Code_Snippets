program ecoMe_u;

uses
  Vcl.Forms,
  Login_u in 'Login_u.pas' {Form1},
  Main_u in 'Main_u.pas' {frmMain},
  Register in 'Register.pas' {Form3},
  dm_u in 'dm_u.pas' {myDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TmyDataModule, myDataModule);
  Application.Run;
end.
