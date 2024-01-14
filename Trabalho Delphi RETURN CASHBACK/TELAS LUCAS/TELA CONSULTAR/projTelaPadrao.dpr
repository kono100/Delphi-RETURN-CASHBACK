program projTelaPadrao;

uses
  Vcl.Forms,
  UnitTelasPadrao in 'UnitTelasPadrao.pas' {FormConsultar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormConsultar, FormConsultar);
  Application.Run;
end.
