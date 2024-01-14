unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage, Vcl.DBCtrls;

type
  TNomeLogin = class(TForm)
    Bt_Entrar: TButton;
    Bt_Criar_Conta: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edt_Login: TEdit;
    Edt_Senha: TEdit;
    Panel1: TPanel;
    Bt_Esqueci_Minha_senha: TButton;
    ADOConnection1: TADOConnection;
    Image2: TImage;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    procedure Bt_Criar_ContaClick(Sender: TObject);
    procedure Bt_Esqueci_Minha_senhaClick(Sender: TObject);
    procedure Bt_EntrarClick(Sender: TObject);
    procedure Edt_SenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edt_LoginMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edt_LoginKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Bt_EntrarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NomeLogin: TNomeLogin;

implementation

{$R *.dfm}

uses UnitCadastro, UnitRecuperarSenha, UnitRedifenirSenha;

procedure TNomeLogin.Bt_Criar_ContaClick(Sender: TObject);


begin
nomeCadastro.show;
end;

procedure TNomeLogin.Bt_EntrarClick(Sender: TObject);
begin



 if Edt_Login.Text = ''  then
 begin
    Edt_Login.Color:=clRed;
  showmessage (' Campo E-Mail est� vazio !     Ex: mario@hotmail.com ')  ;
  Edt_Login.SetFocus;
 end

 else

 if Edt_Senha.Text = ''  then
 begin

  Edt_Senha.Color:=clRed;
  showmessage (' Campo Senha est� vazio ! ')  ;
  Edt_Senha.SetFocus;
 end

 else




 begin

   showmessage (' s� entrar se o campo de senha e loguin estiver certo == do banco de dados ');
 end;




end;


procedure TNomeLogin.Bt_EntrarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


if KEY = VK_RETURN then
Bt_EntrarClick(self)  ;


end;

procedure TNomeLogin.Bt_Esqueci_Minha_senhaClick(Sender: TObject);
begin


FormRecuperarSenha.show;

end;

procedure TNomeLogin.Edt_LoginKeyPress(Sender: TObject; var Key: Char);
begin

Edt_Login.Color:=clWhite;

end;

procedure TNomeLogin.Edt_LoginMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin


Edt_Login.Color:=clWhite;


end;

procedure TNomeLogin.Edt_SenhaKeyPress(Sender: TObject; var Key: Char);
begin

 Edt_Senha.Color:=clWhite;

end;

procedure TNomeLogin.Edt_SenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin


 Edt_Senha.Color:=clWhite;


end;

end.