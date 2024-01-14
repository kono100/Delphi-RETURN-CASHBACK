program ProjRedifenirSenha;

uses
  Vcl.Forms,
  UnitRedifenirSenha in 'UnitRedifenirSenha.pas' {FormRedifinirSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRedifinirSenha, FormRedifinirSenha);
  Application.Run;
end.
