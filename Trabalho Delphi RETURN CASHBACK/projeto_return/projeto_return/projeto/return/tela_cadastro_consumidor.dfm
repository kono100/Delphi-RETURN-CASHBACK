object form_cadastro_consumidor: Tform_cadastro_consumidor
  Left = 0
  Top = 0
  Caption = 'Tela de Cadastro de Consumidores'
  ClientHeight = 213
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 89
    Height = 13
    Caption = 'Nome Completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 102
    Width = 35
    Height = 13
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 297
    Top = 102
    Width = 49
    Height = 13
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 346
    Top = 56
    Width = 20
    Height = 13
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 469
    Top = 102
    Width = 96
    Height = 13
    Caption = 'Data Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 526
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 41
    Caption = 'Cadastro de Consumidor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edt_nome: TEdit
    Left = 8
    Top = 75
    Width = 326
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edt_email: TEdit
    Left = 8
    Top = 121
    Width = 283
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edt_telefone: TMaskEdit
    Left = 297
    Top = 121
    Width = 166
    Height = 21
    EditMask = '!\(00\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 3
    Text = '(  )     -    '
  end
  object edt_cpf: TMaskEdit
    Left = 346
    Top = 75
    Width = 167
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 4
    Text = '   .   .   -  '
  end
  object btn_entrar: TBitBtn
    Left = 497
    Top = 163
    Width = 121
    Height = 25
    Caption = '&Registrar'
    TabOrder = 5
    OnClick = btn_entrarClick
  end
  object edt_data_nascimento: TMaskEdit
    Left = 469
    Top = 121
    Width = 149
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 6
    Text = '  /  /    '
  end
  object edt_saldo_cashback: TEdit
    Left = 526
    Top = 75
    Width = 92
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '0'
  end
  object btn_limpar: TButton
    Left = 8
    Top = 163
    Width = 121
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 8
    OnClick = btn_limparClick
  end
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 200
    Top = 160
  end
  object ADOQueryConsumidorI: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from consumidores')
    Left = 296
    Top = 160
  end
  object DataSourceConsumidorI: TDataSource
    DataSet = ADOQueryConsumidorI
    Left = 400
    Top = 152
  end
end
