unit UnitTelasPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  Tfrmmenu_principal = class(TForm)
    btn_logout: TButton;
    img_background: TImage;
    lbl_titulomenu: TLabel;
    Image5: TImage;
    procedure btn_logoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmenu_principal: Tfrmmenu_principal;

implementation

{$R *.dfm}

procedure Tfrmmenu_principal.btn_logoutClick(Sender: TObject);
begin
close;
end;

end.
