program ProjRecuperarSenha;

uses
  Vcl.Forms,
  UnitRecuperarSenha in 'UnitRecuperarSenha.pas' {FormRecuperarSenha},
  UnitRedifenirSenha in '..\Redifenir Senha\UnitRedifenirSenha.pas' {FormRedifinirSenha},
  UnitCadastro in '..\Cadastro novo\UnitCadastro.pas' {NomeCadastro},
  UnitLogin in '..\Login Novo\UnitLogin.pas' {NomeLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRecuperarSenha, FormRecuperarSenha);
  Application.CreateForm(TFormRedifinirSenha, FormRedifinirSenha);
  Application.CreateForm(TFormRecuperarSenha, FormRecuperarSenha);
  Application.CreateForm(TFormRedifinirSenha, FormRedifinirSenha);
  Application.CreateForm(TNomeCadastro, NomeCadastro);
  Application.CreateForm(TNomeLogin, NomeLogin);
  Application.Run;
end.
