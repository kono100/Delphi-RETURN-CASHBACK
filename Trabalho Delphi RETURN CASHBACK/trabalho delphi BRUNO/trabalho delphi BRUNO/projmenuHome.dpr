program projmenuHome;

uses
  Vcl.Forms,
  menuprincipal in 'menuprincipal.pas' {frmmenu_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmenu_principal, frmmenu_principal);
  Application.Run;
end.
