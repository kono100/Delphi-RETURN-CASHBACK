unit UnitTelasPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.ButtonGroup;

type
  TFormConsultar = class(TForm)
    btn_logout: TButton;
    img_background: TImage;
    lbl_titulomenu: TLabel;
    Image5: TImage;
    MaskCPF: TMaskEdit;
    Label1: TLabel;
    BtConsultar: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Edit1: TEdit;
    BtResgatar: TButton;
    procedure btn_logoutClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtResgatarClick(Sender: TObject);
    procedure MaskCPFKeyPress(Sender: TObject; var Key: Char);
    procedure MaskCPFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultar: TFormConsultar;

implementation

{$R *.dfm}

procedure TFormConsultar.btn_logoutClick(Sender: TObject);
begin

close;

end;

procedure TFormConsultar.BtResgatarClick(Sender: TObject);
begin

begin

var total:real;
total:= strtofloat(Edit1.Text);


end;


if (Edit1.Text <= '') or( Edit1.Text <= '0')  then

begin




end

else
begin

showmessage ('RESGATADO !');




end;



end;

procedure TFormConsultar.Button1Click(Sender: TObject);
begin

begin


 if MaskCPF.Text = '   .   .   -  '  then
 begin
    MaskCPF.Color:=clRed;
  showmessage (' Campo CPF est� vazio ! ')  ;
  MaskCPF.SetFocus;
 end


end;

if (Edit1.Text <= '') or( Edit1.Text <= '0')  then

//BtConsultar.Enabled:=True;
//BtResgatar.Enabled:=False;

begin

Memo1.Font.Color:=CLRed;
Memo1.clear;
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('VAZIO ! ');
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('TOTAL DE : 0 ');
Memo1.lines.add('');

end

else
 begin

 var total:real;
total:= strtofloat(Edit1.Text);

 Memo1.Font.Color:=CLGreen;
Memo1.clear;
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('CONSULTADO ! ');
Memo1.lines.add('');
Memo1.lines.add('');
Memo1.lines.add('TOTAL DE :'+floattostr(total));
Memo1.lines.add('');



end;

//BtConsultar.Enabled:=False;
//BtResgatar.Enabled:=True;

end;

procedure TFormConsultar.MaskCPFKeyPress(Sender: TObject; var Key: Char);
begin

MaskCPF.Color:=clWhite;

end;

procedure TFormConsultar.MaskCPFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

MaskCPF.Color:=clWhite;

end;

end.