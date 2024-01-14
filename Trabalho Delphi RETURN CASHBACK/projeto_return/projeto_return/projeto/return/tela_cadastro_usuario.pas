unit tela_cadastro_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Buttons;

type
  Tform_cadastro_usuario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_nome: TEdit;
    Label2: TLabel;
    edt_email: TEdit;
    Label5: TLabel;
    edt_telefone: TMaskEdit;
    Label7: TLabel;
    edt_cpf: TMaskEdit;
    Label3: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    Label6: TLabel;
    edt_confirmar_senha: TEdit;
    Label8: TLabel;
    Label4: TLabel;
    btn_entrar: TBitBtn;
    edt_nivel_acesso: TComboBox;
    btn_limpar: TButton;
    procedure btn_entrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro_usuario: Tform_cadastro_usuario;

implementation

{$R *.dfm}

uses DataModule;

procedure Tform_cadastro_usuario.btn_entrarClick(Sender: TObject);
var
nome, cpf, email, telefone, usuario, senha, confirmar_senha, nivel_acesso, nivel_acesso_recebe, r, novasenha : string;
i : integer;
begin
//atribuindo edit na variavel
nome := edt_nome.Text;
cpf := edt_cpf.Text;
email := edt_email.Text;
telefone := edt_telefone.Text;
usuario := edt_usuario.Text;
senha := edt_senha.Text;
confirmar_senha := edt_confirmar_senha.Text;
nivel_acesso_recebe := edt_nivel_acesso.Text;

//verificado se os edits faram preenchido
if nome = '' then
  begin
       ShowMessage('Campo nome precisa ser preenchido');
  end
else
if cpf = '' then
  begin
       ShowMessage('Campo CPF precisa ser preenchido');
  end
else
if email = '' then
  begin
       ShowMessage('Campo E-mail precisa ser preenchido');
  end
else
if telefone = '' then
  begin
       ShowMessage('Campo Telefone precisa ser preenchido');
  end
else
if usuario = '' then
  begin
       ShowMessage('Campo Usu�rio precisa ser preenchido');
  end
else
if senha = '' then
  begin
       ShowMessage('Campo Senha precisa ser preenchido');
  end
else
if confirmar_senha = '' then
  begin
       ShowMessage('Campo Confirma��o de Senha precisa ser preenchido');
  end
else
if nivel_acesso_recebe = '' then
  begin
       ShowMessage('Campo N�vel de Acesso precisa ser preenchido');
  end
else
  begin

    if nivel_acesso_recebe = 'Administrador' then
      begin
        nivel_acesso := '1';
      end
    else
      begin
        nivel_acesso := '2';
      end;


    if senha <> confirmar_senha then
      begin
      ShowMessage('N�o esta Correto!');
      exit
      end;

    for i := 1 to Length(senha) do
      begin
      r := r + chr(Ord(senha[i]) + i + 25);
      novasenha := r;
      end;

    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.SQL.Text:= 'INSERT INTO usuarios(nome, username, senha, nivel_acesso, email, cpf, telefone) VALUES(:pnome, :pusuario, :psenha, :pnivel_acesso, :pemail, :pcpf, :ptelefone)';
    DM.ADOQuery1.Parameters.ParamByName('pnome').Value := nome;
    DM.ADOQuery1.Parameters.ParamByName('pusuario').Value := usuario;
    DM.ADOQuery1.Parameters.ParamByName('psenha').Value := novasenha;
    DM.ADOQuery1.Parameters.ParamByName('pnivel_acesso').Value := nivel_acesso;
    DM.ADOQuery1.Parameters.ParamByName('pemail').Value := email;
    DM.ADOQuery1.Parameters.ParamByName('pcpf').Value := cpf;
    DM.ADOQuery1.Parameters.ParamByName('ptelefone').Value := telefone;
    DM.ADOQuery1.ExecSQL;
    showMessage('Usu�rio Registrado com Sucesso!');
    form_cadastro_usuario.Close;
  end;

end;

procedure Tform_cadastro_usuario.btn_limparClick(Sender: TObject);
begin
var i : integer;
for i := 0 to form_cadastro_usuario.ComponentCount -1 do
begin
if form_cadastro_usuario.Components[i] is TEdit then
TEdit(form_cadastro_usuario.Components[i]).Clear;
end;
end;

end.