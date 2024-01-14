unit tela_listar_transacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tform_listar_transacoes = class(TForm)
    DBGrid1: TDBGrid;
    btn_atualizar: TButton;
    Panel1: TPanel;
    DataSourceTransacoes: TDataSource;
    ADOQueryTransacoes: TADOQuery;
    ADOConnTransacoes: TADOConnection;
    procedure btn_atualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_listar_transacoes: Tform_listar_transacoes;

implementation

{$R *.dfm}

procedure Tform_listar_transacoes.btn_atualizarClick(Sender: TObject);
begin
ADOQueryTransacoes.Active := False;
ADOQueryTransacoes.Active := True;
DBGrid1.Refresh;
end;

end.
