unit tela_config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_config = class(TForm)
    edt_porcentagem: TEdit;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    ADOQuery1: TADOQuery;
    ADOConnConfig: TADOConnection;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_config: Tform_config;

implementation

{$R *.dfm}

procedure Tform_config.BitBtn1Click(Sender: TObject);
begin
 ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'UPDATE configuracao SET porcentagem_cashback = :pporcentagem';
  ADOQuery1.Parameters.ParamByName('pporcentagem').Value := edt_porcentagem.Text;
  Try
  ADOQuery1.ExecSQL;
  ShowMessage('Porcentagem Atualizado com sucesso!');
  form_config.close;
  except on E: Exception do
    MessageDlg(E.Message,mtError,[mbOK],0);
  End;
end;

procedure Tform_config.FormShow(Sender: TObject);
begin
ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM configuracao';
  ADOQuery1.Open;

  edt_porcentagem.Text := ADOQuery1.FieldByName('porcentagem_cashback').AsString;
end;

end.