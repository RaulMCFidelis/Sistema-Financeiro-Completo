unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmLogin = class(TForm)
    txt_senha: TEdit;
    btn_entrar: TBitBtn;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    lblultimoAcesso: TLabel;
    txt_login: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_entrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uUsuario, ModConexao, uSistema, Uprincipal;

procedure TfrmLogin.btn_entrarClick(Sender: TObject);
var
Usuario : TUsuario;

begin
 if txt_Login.Text = '' then
  begin
    Application.MessageBox('Informe seu usu�rio.','Aten��o',MB_OK+MB_ICONWARNING);
    txt_Login.SetFocus;
    Abort;
  end;
  if txt_Senha.Text = '' then
  begin
    Application.MessageBox('Informe sua senha.','Aten��o',MB_OK+MB_ICONWARNING);
    txt_Senha.SetFocus;
    Abort;
  end;

  Usuario := TUsuario.Create;
  try
    Usuario.Login := trim(txt_Login.Text);
    Usuario.Senha := trim(txt_Senha.Text);
    if Usuario.Logar then
    begin
     TSistema.SetUltimoAcesso(Usuario.Login);
     frmPrincipal.StatusBar1.Panels[1].Text := 'Usu�rio: '+Usuario.Login;
      ModalResult := mrOk;
    end
    else
    begin
      Application.MessageBox('Usu�rio e/ou senha inv�lido.','Aten��o',MB_OK+MB_ICONWARNING);
      txt_Login.SetFocus;
      Abort;
    end;
  finally
    FreeAndNil(Usuario);
  end;
end;



procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if ModalResult <> mrok then
 ModalResult := mrNo;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
 TUsuario.CarregarLogin(txt_Login);
 txt_Login.Text           := TSistema.GetUsuarioAcesso;
 lblUltimoAcesso.Caption := TSistema.GetUltimoAcesso;
end;

end.
