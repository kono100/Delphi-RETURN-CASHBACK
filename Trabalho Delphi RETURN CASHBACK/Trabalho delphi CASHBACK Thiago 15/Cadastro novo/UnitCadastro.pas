unit UnitCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.ComCtrls, Vcl.WinXPickers, Data.Win.ADODB, Vcl.Imaging.pngimage,
  Data.Bind.Controls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Bind.Navigator, Vcl.Mask;

type
  TNomeCadastro = class(TForm)
    Panel1: TPanel;
    EdtEmail: TEdit;
    EdtSenha: TEdit;
    EdtConfirmarSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBoxTermoUso: TCheckBox;
    EdtNomeCompleto: TEdit;
    RadioButtonMasculino: TRadioButton;
    RadioButtonFeminino: TRadioButton;
    CheckBoxOfertas: TCheckBox;
    BtCadastrar: TButton;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    ADOConnection1: TADOConnection;
    Image1: TImage;
    Label7: TLabel;
    RadioButtonOutros: TRadioButton;
    BtClear: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    BindNavigator1: TBindNavigator;
    DBNavigator1: TDBNavigator;
    MaskEdtCPF: TMaskEdit;
    MaskEditTelefone: TMaskEdit;
    procedure BtCadastrarClick(Sender: TObject);
    procedure EdtNomeCompletoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure BtClearClick(Sender: TObject);
    procedure EdtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaChange(Sender: TObject);
    procedure EdtConfirmarSenhaChange(Sender: TObject);
    procedure EdtNomeCompletoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtEmailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtTelefoneMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtSenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtConfirmarSenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MaskEditTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdtCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MaskEditTelefoneMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NomeCadastro: TNomeCadastro;

implementation

{$R *.dfm}

procedure TNomeCadastro.BtCadastrarClick(Sender: TObject);
begin


 if EdtNomeCompleto.Text = ''  then
 begin
   EdtNomeCompleto.Color:=clRed;
  showmessage (' Campo Nome est� vazio !      Ex: Mario da Silva ')  ;
  EdtNomeCompleto.SetFocus;
 end

 else

  if EdtEmail.Text = ''  then
  begin
  EdtEmail.Color:=clRed;
  showmessage (' Campo E-Mail est� vazio !      Ex: mario@hotmail.com ')  ;
  EdtEmail.SetFocus;

  end

  else

   if MaskEditTelefone.Text = '(  )     -    '  then
  begin
  MaskEditTelefone.Color:=clRed;
  showmessage (' Campo Telefone esta vazio !      Ex: (16)00000-0000 ')  ;
  MaskEditTelefone.SetFocus;

  end

    else

   if MaskEdtCPF.Text = '   .   .   -  '  then
  begin
  MaskEdtCPF.Color:=clRed;
  showmessage (' Campo CPF esta vazio !      Ex: 000.000.000-00 ')  ;
  MaskEdtCPF.SetFocus;

  end

    else

   if EdtSenha.Text = ''  then
  begin
  EdtSenha.Color:=clGray;
  showmessage (' Campo Senha esta vazio ! ')  ;
  EdtSenha.SetFocus;

  end

    else

   if EdtConfirmarSenha.Text = ''  then
  begin
  EdtConfirmarSenha.Color:=clGray;
  showmessage (' Campo Confirmar Senha esta vazio ! ')  ;
  EdtConfirmarSenha.SetFocus;

  end

    else

   if CheckBoxTermoUso.Checked = false then
  begin
  CheckBoxTermoUso.Color:=clRed;
  showmessage (' Ative o Termos de uso ! ')  ;

  end

  else









if (EdtSenha.Text <> EdtConfirmarSenha.Text)   then
begin

EdtSenha.Font.Color:=clRed;
EdtConfirmarSenha.Font.Color:=clRed;
showmessage ('Senha errada !');

end
else
begin
if (EdtSenha.Text = EdtConfirmarSenha.Text)   then
begin
EdtSenha.Font.Color:=clBlack;
EdtConfirmarSenha.Font.Color:=clBlack;
end;




 showmessage ('Cadastrado ! ');

 close;

end;








end;

procedure TNomeCadastro.EdtNomeCompletoKeyPress(Sender: TObject; var Key: Char);
begin

begin


EdtNomeCompleto.Color:=clWhite;


end;

  if ((key in ['A'..'Z',' ','a'..'z'] = false) and (word (key) <> VK_BACK)) then
  begin

     key:= #0;
     showmessage ('Apenas Letras !');


   end;





end;

procedure TNomeCadastro.EdtNomeCompletoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin



EdtNomeCompleto.Color:=clWhite;



end;

procedure TNomeCadastro.EdtSenhaChange(Sender: TObject);
begin


EdtSenha.Color:=clWhite;



end;

procedure TNomeCadastro.EdtSenhaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin


EdtSenha.Color:=clWhite;


end;

procedure TNomeCadastro.EdtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin


begin

MaskEditTelefone.Color:=clWhite;

end;

  if ((key in ['0'..'9','-','(',')',' '] = false) and (word (key) <> VK_BACK)) then
  begin

     key:= #0;
     showmessage ('Apenas Numeros !       Ex: (00)00000-0000 ');


   end;





end;

procedure TNomeCadastro.EdtTelefoneMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin


MaskEditTelefone.Color:=clWhite;


end;

procedure TNomeCadastro.MaskEditTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

begin


begin

MaskEditTelefone.Color:=clWhite;

end;

  if ((key in ['0'..'9','-','(',')',' '] = false) and (word (key) <> VK_BACK)) then
  begin

     key:= #0;
     showmessage ('Apenas Numeros !       Ex: (00)00000-0000 ');


   end;





end;


end;

procedure TNomeCadastro.MaskEditTelefoneMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

MaskEditTelefone.Color:=clWhite;

end;

procedure TNomeCadastro.MaskEdtCPFKeyPress(Sender: TObject; var Key: Char);
begin

begin

begin

MaskEdtCPF.Color:=clWhite;

end;

  if ((key in ['0'..'9','.','-'] = false) and (word (key) <> VK_BACK)) then
  begin

     key:= #0;
     showmessage ('Apenas Numeros !             Ex: 000.000.000-00 ');


   end;




end;

end;

procedure TNomeCadastro.MaskEdtCPFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

MaskEdtCPF.Color:=clWhite;


end;

procedure TNomeCadastro.BtClearClick(Sender: TObject);
begin

 EdtNomeCompleto.clear;
 MaskEdtCPF.clear;
 MaskEditTelefone.clear;
 EdtEmail.clear;
 EdtConfirmarSenha.clear;
 EdtSenha.clear;
 CheckBoxTermoUso.Color:=clWhite;

 CheckBoxTermoUso.checked;





end;

procedure TNomeCadastro.EdtConfirmarSenhaChange(Sender: TObject);
begin



EdtConfirmarSenha.Color:=clWhite;



end;

procedure TNomeCadastro.EdtConfirmarSenhaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin


EdtConfirmarSenha.Color:=clWhite;

end;

procedure TNomeCadastro.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin

begin

MaskEdtCPF.Color:=clWhite;

end;

  if ((key in ['0'..'9','.','-'] = false) and (word (key) <> VK_BACK)) then
  begin

     key:= #0;
     showmessage ('Apenas Numeros !             Ex: 000.000.000-00 ');


   end;




end;

procedure TNomeCadastro.EdtCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin


MaskEdtCPF.Color:=clWhite;


end;

procedure TNomeCadastro.EdtEmailKeyPress(Sender: TObject; var Key: Char);
begin



EdtEmail.Color:=clWhite;



end;

procedure TNomeCadastro.EdtEmailMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
EdtEmail.Color:=clWhite;
end;

end.
