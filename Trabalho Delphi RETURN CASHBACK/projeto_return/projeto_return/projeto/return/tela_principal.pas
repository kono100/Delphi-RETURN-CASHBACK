unit tela_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  Tform_principal = class(TForm)
    btn_cadastro_usuario: TButton;
    btn_cadastro_consumidor: TButton;
    btn_config: TButton;
    btn_cashback_insert: TButton;
    btn_transacoes: TButton;
    btn_resgate: TButton;
    Label1: TLabel;
    Image2: TImage;
    lbl_nome: TLabel;
    lbl_acesso: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_cadastro_usuarioClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure btn_cadastro_consumidorClick(Sender: TObject);
    procedure btn_cashback_insertClick(Sender: TObject);
    procedure btn_transacoesClick(Sender: TObject);
    procedure btn_configClick(Sender: TObject);
    procedure btn_resgateClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses DataModule, tela_cadastro_usuario, tela_listar_usuario, tela_consumidor,
  tela_efetuar_cashback, tela_transacoes, tela_configuracoes,
  tela_listar_transacoes, tela_config, tela_resgate_saldo, tela_login;

procedure Tform_principal.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tform_principal.btn_cadastro_consumidorClick(Sender: TObject);
begin
form_consumidor.show;
end;

procedure Tform_principal.btn_cadastro_usuarioClick(Sender: TObject);
begin
form_listar_usuario.Show;
end;

procedure Tform_principal.btn_cashback_insertClick(Sender: TObject);
begin
tela_efetuar_cashbar.show;
end;


procedure Tform_principal.btn_configClick(Sender: TObject);
begin
form_config.show;
end;

procedure Tform_principal.btn_logoutClick(Sender: TObject);
begin
form_login.show;
form_principal.close;
end;

procedure Tform_principal.btn_transacoesClick(Sender: TObject);
begin
form_listar_transacoes.show;
end;

procedure Tform_principal.btn_resgateClick(Sender: TObject);
begin
 form_resgate.show;
end;

procedure Tform_principal.FormShow(Sender: TObject);
var
nivel : string;
begin


  if (DM.ADOQuery1.FieldValues['nivel_acesso'] = 2) then
  begin
    btn_cadastro_usuario.Enabled := False;
    btn_cadastro_consumidor.Enabled := True;
    btn_cashback_insert.Enabled := True;
    btn_transacoes.Enabled := False;
    btn_resgate.Enabled := False;
    btn_config.Enabled := False;
    lbl_acesso.Caption :=  'Usu�rio';
    lbl_nome.Caption := DM.ADOQuery1.FieldValues['nome'];
   exit
  end
else // Sen�o: Libera todos os Bot�es
 begin
    btn_cadastro_usuario.Enabled := True;
    btn_cadastro_consumidor.Enabled := True;
    btn_cashback_insert.Enabled := True;
    btn_transacoes.Enabled := True;
    btn_resgate.Enabled := True;
    btn_config.Enabled := True;
    lbl_acesso.Caption :=  'Administrador';
    lbl_nome.Caption := DM.ADOQuery1.FieldValues['nome'];
 end;



end;

end.