unit tela_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  Tform_login = class(TForm)
    lbl_usuario: TLabel;
    edt_usuario: TEdit;
    Label2: TLabel;
    edt_senha: TEdit;
    Image2: TImage;
    btn_entrar: TButton;
    Label1: TLabel;
    procedure btn_entrarClick(Sender: TObject);
    procedure Bt_Esqueci_Minha_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

uses DataModule, tela_principal;

procedure Tform_login.btn_entrarClick(Sender: TObject);
var
usuario, senha, r, novasenha: string;
i : integer;
begin

//*Variavel Usuário  e Senha
usuario := edt_usuario.Text;
senha := edt_senha.Text;

for i := 1 to Length(senha) do
  begin
  r := r + chr(Ord(senha[i]) + i + 25);
  novasenha := r;
  end;

//Query para verificar usuario e senha no DB
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Text := 'SELECT * FROM usuarios WHERE username = :paramusuario and senha = :paramsenha ';
DM.ADOQuery1.Parameters.ParamByName('paramusuario').Value := usuario;
DM.ADOQuery1.Parameters.ParamByName('paramsenha').Value := novasenha;
DM.ADOQuery1.Open;
  if DM.ADOQuery1.RecordCount > 0 then
  begin
    form_principal.Show;
    form_login.Visible := False;
  end
else
begin
  ShowMessage('Login ou Senha Errada!');
  edt_usuario.SetFocus;
end;
end;

procedure Tform_login.Bt_Esqueci_Minha_senhaClick(Sender: TObject);
begin
form_principal.Show;
form_login.Visible := False;
end;

end.
