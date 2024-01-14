unit tela_listar_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.Win.ADODB;

type
  Tform_listar_usuario = class(TForm)
    Panel1: TPanel;
    btn_novo_registro: TBitBtn;
    btn_editar_registro: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btn_atualizar: TBitBtn;
    btn_deletar: TBitBtn;
    procedure btn_novo_registroClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_editar_registroClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_deletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_listar_usuario: Tform_listar_usuario;

implementation

{$R *.dfm}

uses DataModule, tela_cadastro_usuario, editar_usuario;

procedure Tform_listar_usuario.BitBtn1Click(Sender: TObject);
begin
form_listar_usuario.Close;
form_listar_usuario.show;
end;

procedure Tform_listar_usuario.btn_atualizarClick(Sender: TObject);
begin
ADOQuery1.Active := False;
ADOQuery1.Active := True;
DBGrid1.Refresh;
end;

procedure Tform_listar_usuario.btn_deletarClick(Sender: TObject);
begin
ADOQuery1.Delete;
end;

procedure Tform_listar_usuario.btn_editar_registroClick(Sender: TObject);
begin
    form_editar_usuario.Show;
    form_listar_usuario.Close;
end;

procedure Tform_listar_usuario.btn_novo_registroClick(Sender: TObject);
begin
form_cadastro_usuario.Show;
form_listar_usuario.Close;
end;
procedure Tform_listar_usuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Field = ADOQuery1.FieldByName('nivel_acesso') then
  begin
    if Column.Field.Asstring = '1' then
      begin
        dbgrid1.Canvas.FillRect(Rect);
        dbgrid1.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Administrador');
      end
    else
      begin
        dbgrid1.Canvas.FillRect(Rect);
        dbgrid1.Canvas.TextOut(Rect.Left+3,Rect.Top+3,'Usu�rio');
      end;
  end;
end;

end.