program ProjectDelphi;

uses
  Vcl.Forms,
  UnitDelphi in 'UnitDelphi.pas' {cashbackConfiguracao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TcashbackConfiguracao, cashbackConfiguracao);
  Application.Run;
end.
