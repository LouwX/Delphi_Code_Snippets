object Form1: TForm1
  Left = 565
  Top = 311
  Caption = 'Form1'
  ClientHeight = 507
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 27
    Width = 53
    Height = 15
    Caption = 'Username'
  end
  object lblPassword: TLabel
    Left = 32
    Top = 68
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object edtPassword: TEdit
    Left = 104
    Top = 65
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'myPassword'
  end
  object edtUsername: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Ruan'
  end
  object btnLogin: TButton
    Left = 286
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnRegister: TButton
    Left = 286
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 3
  end
end
