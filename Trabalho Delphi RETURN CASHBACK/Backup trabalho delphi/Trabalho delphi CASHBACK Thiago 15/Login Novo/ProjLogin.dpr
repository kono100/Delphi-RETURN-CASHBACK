program ProjLogin;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {NomeLogin},
  UnitCadastro in '..\Cadastro novo\UnitCadastro.pas' {nomeCadastro},
  UnitRecuperarSenha in '..\Recuperação de Senha\UnitRecuperarSenha.pas' {FormRecuperarSenha},
  UnitRedifenirSenha in '..\Redifenir Senha\UnitRedifenirSenha.pas' {FormRedifinirSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TNomeLogin, NomeLogin);
  Application.CreateForm(TnomeCadastro, nomeCadastro);
  Application.CreateForm(TFormRecuperarSenha, FormRecuperarSenha);
  Application.CreateForm(TFormRecuperarSenha, FormRecuperarSenha);
  Application.CreateForm(TFormRedifinirSenha, FormRedifinirSenha);
  Application.Run;
end.
