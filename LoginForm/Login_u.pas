unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, dm_u, Main_u;

type
  TForm1 = class(TForm)
    edtPassword: TEdit;
    edtUsername: TEdit;
    btnLogin: TButton;
    btnRegister: TButton;
    Label1: TLabel;
    lblPassword: TLabel;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    function ValidateLogin(username, password: string): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
var
  sUsername, sPassword: string;
begin
  sUsername := edtUsername.Text;
  sPassword := edtPassword.Text;

  if ValidateLogin(sUsername, sPassword) then
  begin
    ShowMessage('Login successful!');
    // Additional logic for successful login

    // Create and show the main form
    Application.CreateForm(TfrmMain, frmMain);

    frmMain.Show();

    // Close the login form
    Hide();
  end
  else
  begin
    ShowMessage('Invalid username or password!');
    // Additional logic for failed login
  end;
end;

function TForm1.ValidateLogin(username, password: string): Boolean;
var
  query: string;
begin
  query := Format('SELECT * FROM tblUsers WHERE userName = "%s" AND userPassword = "%s"', [username, password]);
  myDataModule.myQry.SQL.Text := query;
  myDataModule.myQry.Open;

  Result := not myDataModule.myQry.IsEmpty;

  myDataModule.myQry.Close;
end;

end.

