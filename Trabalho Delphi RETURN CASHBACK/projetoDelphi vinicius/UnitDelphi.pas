unit UnitDelphi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TcashbackConfiguracao = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1id_configuracao: TAutoIncField;
    ADOQuery1porcentagem_cashback: TFloatField;
    ADOQuery1data_reg: TDateTimeField;
    ADOQuery1data_alt: TDateTimeField;
    Label1: TLabel;
    cashback: TDBEdit;
    DataSource1: TDataSource;
    concluir: TButton;
    DBNavigator1: TDBNavigator;
    visualization: TDBEdit;
    data_reg: TDBEdit;
    procedure concluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cashbackConfiguracao: TcashbackConfiguracao;

implementation

{$R *.dfm}

procedure TcashbackConfiguracao.concluirClick(Sender: TObject);
begin
data_reg.Field.AsDateTime := Date;
end;

end.