unit tela_configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls;

type
  Tform_configuracao = class(TForm)
    edt_porcentagem: TEdit;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOConnConfig: TADOConnection;
    DataSource1: TDataSource;
    Panel1: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_configuracao: Tform_configuracao;

implementation

{$R *.dfm}

procedure Tform_configuracao.BitBtn1Click(Sender: TObject);
begin

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'UPDATE configuracao SET porcentagem_cashback = :pporcentagem';
  ADOQuery1.Parameters.ParamByName('pporcentagem').Value := edt_porcentagem.Text;
  Try
  ADOQuery1.ExecSQL;
  ShowMessage('Porcentagem Atualizado com sucesso!');
  form_configuracao.close;
  except on E: Exception do
    MessageDlg(E.Message,mtError,[mbOK],0);
  End;
end;

procedure Tform_configuracao.BitBtn2Click(Sender: TObject);

var porcentagem : string;

begin

end;

procedure Tform_configuracao.FormShow(Sender: TObject);
begin

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM configuracao';
  ADOQuery1.Open;

  edt_porcentagem.Text := ADOQuery1.FieldByName('porcentagem_cashback').AsString;

end;

end.