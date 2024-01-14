unit tela_resgate_saldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  Tform_resgate = class(TForm)
    Label1: TLabel;
    lbl_nome: TLabel;
    lbl_nomeCliente: TLabel;
    Label3: TLabel;
    lbl_saldo: TLabel;
    Label5: TLabel;
    edt_cpf: TMaskEdit;
    btn_verificar: TBitBtn;
    btn_inserir: TBitBtn;
    edt_valor: TEdit;
    Panel1: TPanel;
    ADOConnectionConfig: TADOConnection;
    ADOQueryConfig: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOConnection2: TADOConnection;
    DataSource2: TDataSource;
    Button1: TButton;
    procedure btn_verificarClick(Sender: TObject);
    procedure btn_inserirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_resgate: Tform_resgate;

implementation

{$R *.dfm}

uses DataModule;

procedure Tform_resgate.btn_inserirClick(Sender: TObject);
var
cpf, nome_cliente, nota_fiscal : string;
valor, saldo_db, soma, cash_config, total : real;
begin

  cpf := edt_cpf.Text;
  valor := strtofloat(edt_valor.Text);

  //verificando quem � o cliente
  DM.ADOQuery3.Close;
  DM.ADOQuery3.SQL.Text := 'SELECT * FROM consumidores WHERE cpf = :pcpf ';
  DM.ADOQuery3.Parameters.ParamByName('pcpf').Value := cpf;
  DM.ADOQuery3.Open;

  saldo_db := strtofloat(DM.ADOQuery3.FieldByName('saldo_cashback').AsString);
  nome_cliente := DM.ADOQuery3.FieldByName('nome').AsString;

  total := saldo_db - valor;

  //atualizando saldo do cliente
  DM.ADOQuery3.Close;
  DM.ADOQuery3.SQL.Text := 'UPDATE consumidores SET saldo_cashback = :ptotal WHERE cpf = :pcpf ';
  DM.ADOQuery3.Parameters.ParamByName('pcpf').Value := cpf;
  DM.ADOQuery3.Parameters.ParamByName('ptotal').Value := total;
  Try
  DM.ADOQuery3.ExecSQL;
  except on E: Exception do
    MessageDlg(E.Message,mtError,[mbOK],0);
  End;

  //insedindo transa��o
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Text:= 'INSERT INTO transacoes (nota_fiscal, valor, tipo_transacao, nome_consumidor, cashback) VALUES(:pnota_fiscal, :pvalor, :ptipo, :pnome_consumidor, :pcashback)';
  ADOQuery2.Parameters.ParamByName('pnota_fiscal').Value := nota_fiscal;
  ADOQuery2.Parameters.ParamByName('pvalor').Value := valor;
  ADOQuery2.Parameters.ParamByName('ptipo').Value := 'Saida';
  ADOQuery2.Parameters.ParamByName('pnome_consumidor').Value := nome_cliente;
  ADOQuery2.Parameters.ParamByName('pcashback').Value := valor;
  ADOQuery2.ExecSQL;

  ShowMessage('Foi feito o resgate no valor de: R$'+FormatFloat('###,###,##0.00', valor));
  form_resgate.close;

end;

procedure Tform_resgate.btn_verificarClick(Sender: TObject);
var cpf : string;
begin
  cpf := edt_cpf.Text;

  DM.ADOQuery3.Close;
  DM.ADOQuery3.SQL.Text := 'SELECT * FROM consumidores WHERE cpf = :pcpf ';
  DM.ADOQuery3.Parameters.ParamByName('pcpf').Value := cpf;
  DM.ADOQuery3.Open;

  lbl_nomeCliente.Caption := DM.ADOQuery3.FieldByName('nome').AsString;
  lbl_saldo.Caption := 'R$ ' + DM.ADOQuery3.FieldByName('saldo_cashback').AsString;
end;

procedure Tform_resgate.Button1Click(Sender: TObject);
begin
var i : integer;
for i := 0 to form_resgate.ComponentCount -1 do
begin
if form_resgate.Components[i] is TEdit then
TEdit(form_resgate.Components[i]).Clear;
end;
end;

end.