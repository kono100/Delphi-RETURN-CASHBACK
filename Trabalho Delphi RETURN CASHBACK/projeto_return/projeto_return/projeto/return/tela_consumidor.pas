unit tela_consumidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_consumidor = class(TForm)
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btn_deletar: TBitBtn;
    btn_editar_registro: TBitBtn;
    btn_novo_registro: TBitBtn;
    btn_atualizar: TBitBtn;
    ADOConn: TADOConnection;
    ADOQueryConsumidor: TADOQuery;
    DataSourceConsumidor: TDataSource;
    procedure btn_novo_registroClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editar_registroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consumidor: Tform_consumidor;

implementation

{$R *.dfm}

uses DataModule, tela_cadastro_consumidor, tela_editar_consumidor;

procedure Tform_consumidor.btn_atualizarClick(Sender: TObject);
begin
ADOQueryConsumidor.Active := false;
ADOQueryConsumidor.Active := true;
DBGrid1.Refresh;
end;

procedure Tform_consumidor.btn_deletarClick(Sender: TObject);
begin
ADOQueryConsumidor.Delete;
end;

procedure Tform_consumidor.btn_editar_registroClick(Sender: TObject);
begin
form_editar_consumidor.show;
end;

procedure Tform_consumidor.btn_novo_registroClick(Sender: TObject);
begin
form_cadastro_consumidor.show;
end;

end.