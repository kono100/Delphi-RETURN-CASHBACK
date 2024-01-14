unit UnitRecuperarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage, Vcl.DBCtrls;

type
  TFormRecuperarSenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtRecupEmail: TEdit;
    EdtRecupCPF: TEdit;
    Panel1: TPanel;
    Bt_Esqueci_Minha_senha: TButton;
    ADOConnection1: TADOConnection;
    Image2: TImage;
    ADOQuery1: TADOQuery;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure Bt_Esqueci_Minha_senhaClick(Sender: TObject);
    procedure EdtRecupEmailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtRecupCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtRecupEmailKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRecupCPFKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecuperarSenha: TFormRecuperarSenha;

implementation

{$R *.dfm}

uses UnitRedifenirSenha, UnitCadastro, UnitLogin;

procedure TFormRecuperarSenha.Bt_Esqueci_Minha_senhaClick(Sender: TObject);
begin



begin



 if EdtRecupEmail.Text = ''  then
 begin
    EdtRecupEmail.Color:=clRed;
  showmessage (' Campo E-Mail está vazio ! ')  ;
  EdtRecupEmail.SetFocus;
 end

 else

 if EdtRecupCPF.Text = ''  then
 begin

  EdtRecupCPF.Color:=clRed;
  showmessage (' Campo CPF está vazio ! ')  ;
  EdtRecupCPF.SetFocus;
 end

 else




 begin
 FormRedifinirSenha.show;

 close;


 end;




end;



end;

procedure TFormRecuperarSenha.EdtRecupCPFKeyPress(Sender: TObject;
  var Key: Char);
begin


EdtRecupCPF.Color:=clWhite;

end;

procedure TFormRecuperarSenha.EdtRecupCPFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

EdtRecupCPF.Color:=clWhite;



end;

procedure TFormRecuperarSenha.EdtRecupEmailKeyPress(Sender: TObject;
  var Key: Char);
begin


EdtRecupEmail.Color:=clWhite;

end;

procedure TFormRecuperarSenha.EdtRecupEmailMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

EdtRecupEmail.Color:=clWhite;



end;

end.
