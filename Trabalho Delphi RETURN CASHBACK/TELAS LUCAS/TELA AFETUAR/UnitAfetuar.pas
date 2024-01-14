unit UnitAfetuar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.ButtonGroup;

type
  TFormAfetuar = class(TForm)
    btn_logout: TButton;
    img_background: TImage;
    lbl_titulomenu: TLabel;
    Image5: TImage;
    Label1: TLabel;
    BtVerificar: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    BtAfetuar: TButton;
    MaskCupom: TMaskEdit;
    Label3: TLabel;
    MaskValor: TMaskEdit;
    MaskCPF: TMaskEdit;
    Label4: TLabel;
    japa: TLabel;
    procedure btn_logoutClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtAfetuarClick(Sender: TObject);
    procedure MaskCPFKeyPress(Sender: TObject; var Key: Char);
    procedure MaskCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MaskCupomMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MaskCupomKeyPress(Sender: TObject; var Key: Char);
    procedure MaskValorKeyPress(Sender: TObject; var Key: Char);
    procedure MaskValorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAfetuar: TFormAfetuar;

implementation

{$R *.dfm}

procedure TFormAfetuar.btn_logoutClick(Sender: TObject);
begin

close;

end;

procedure TFormAfetuar.BtAfetuarClick(Sender: TObject);
begin

begin

var total:real;
total:= strtofloat(MaskValor.Text);


end;


if (MaskValor.Text <= '') or( MaskValor.Text <= '0')  then

begin




end

else
begin

showmessage ('GUARDADO !');




end;



end;

procedure TFormAfetuar.Button1Click(Sender: TObject);
begin


begin

begin



begin



 if MaskCPF.Text = '   .   .   -  '  then
 begin
    MaskCPF.Color:=clRed;
  showmessage (' Campo CPF está vazio ! ')  ;
  MaskCPF.SetFocus;
 end

 else

 if MaskCupom.Text = ''  then
 begin

  MaskCupom.Color:=clRed;
  showmessage (' Campo Nº Cupom Fiscal está vazio ! ')  ;
  MaskCupom.SetFocus;
 end

 else


 if MaskValor.Text = ''  then
 begin

  MaskValor.Color:=clRed;
  showmessage (' Campo Valor da Compra está vazio ! ')  ;
  MaskValor.SetFocus;
 end;



end;



end;

end;

if (MaskValor.Text <= '') or( MaskValor.Text <= '0')  then

//BtConsultar.Enabled:=True;
//BtResgatar.Enabled:=False;

begin

Memo1.Font.Color:=CLRed;
Memo1.clear;
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('VAZIO ! ');
Memo1.lines.add('');
Memo1.lines.add('');


end

else
 begin

 var total:real;
total:= strtofloat(MaskValor.Text);

 Memo1.Font.Color:=CLGreen;
Memo1.clear;
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('CONSULTADO ! ');
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('TOTAL DE :'+floattostr(total));
Memo1.lines.add('');

begin

japa.Caption := ('TOTAL DE :'+floattostr(total));

end;


end;

//BtConsultar.Enabled:=False;
//BtResgatar.Enabled:=True;

end;

procedure TFormAfetuar.MaskCPFKeyPress(Sender: TObject; var Key: Char);
begin

MaskCPF.Color:=clWhite;

end;

procedure TFormAfetuar.MaskCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

MaskCPF.Color:=clWhite;

end;

procedure TFormAfetuar.MaskCupomKeyPress(Sender: TObject; var Key: Char);
begin

MaskCupom.Color:=clWhite;

end;

procedure TFormAfetuar.MaskCupomMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

MaskCupom.Color:=clWhite;

end;

procedure TFormAfetuar.MaskValorKeyPress(Sender: TObject; var Key: Char);
begin

MaskValor.Color:=clWhite;

end;

procedure TFormAfetuar.MaskValorMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

MaskValor.Color:=clWhite;

end;

end.
