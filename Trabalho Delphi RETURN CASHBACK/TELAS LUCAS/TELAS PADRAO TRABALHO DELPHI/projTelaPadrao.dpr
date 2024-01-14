program projTelaPadrao;

uses
  Vcl.Forms,
  UnitTelasPadrao in 'UnitTelasPadrao.pas' {frmmenu_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmenu_principal, frmmenu_principal);
  Application.Run;
end.
