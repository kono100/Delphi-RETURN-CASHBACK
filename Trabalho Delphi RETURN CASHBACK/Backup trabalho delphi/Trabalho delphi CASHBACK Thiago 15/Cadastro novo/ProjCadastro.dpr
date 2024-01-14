program ProjCadastro;

uses
  Vcl.Forms,
  UnitCadastro in 'UnitCadastro.pas' {NomeCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TNomeCadastro, NomeCadastro);
  Application.Run;
end.
