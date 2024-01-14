program Project1;

uses
  Vcl.Forms,
  tela_login in 'tela_login.pas' {form_login},
  tela_principal in 'tela_principal.pas' {form_principal},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  tela_cadastro_usuario in 'tela_cadastro_usuario.pas' {form_cadastro_usuario},
  tela_listar_usuario in 'tela_listar_usuario.pas' {form_listar_usuario},
  editar_usuario in 'editar_usuario.pas' {tela_editar_usuario},
  tela_consumidor in 'tela_consumidor.pas' {form_consumidor},
  tela_efetuar_cashback in 'tela_efetuar_cashback.pas' {tela_efetuar_cashbar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_login, form_login);
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tform_cadastro_usuario, form_cadastro_usuario);
  Application.CreateForm(Tform_listar_usuario, form_listar_usuario);
  Application.CreateForm(Tform_editar_usuario, form_editar_usuario);
  Application.CreateForm(Tform_consumidor, form_consumidor);
  Application.CreateForm(Ttela_efetuar_cashbar, tela_efetuar_cashbar);
  Application.Run;
end.