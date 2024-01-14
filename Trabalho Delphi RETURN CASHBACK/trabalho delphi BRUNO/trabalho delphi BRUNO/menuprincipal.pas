unit menuprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  Tfrmmenu_principal = class(TForm)
    btn_cdtcliente: TButton;
    btn_cashback: TButton;
    btn_adm: TButton;
    btn_config: TButton;
    img_cliente: TImage;
    img_cashback: TImage;
    img_adm: TImage;
    img_config: TImage;
    Image5: TImage;
    btn_logout: TButton;
    img_background: TImage;
    Panel2: TPanel;
    lbl_titulomenu: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmenu_principal: Tfrmmenu_principal;

implementation

{$R *.dfm}

end.
