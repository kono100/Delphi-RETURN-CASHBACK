object form_resgate: Tform_resgate
  Left = 0
  Top = 0
  Caption = 'but'
  ClientHeight = 225
  ClientWidth = 378
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
    Left = 48
    Top = 144
    Width = 82
    Height = 13
    Caption = 'Valor do Resgate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_nome: TLabel
    Left = 47
    Top = 93
    Width = 46
    Height = 14
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_nomeCliente: TLabel
    Left = 136
    Top = 93
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 47
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lbl_saldo: TLabel
    Left = 129
    Top = 113
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 113
    Width = 75
    Height = 14
    Caption = 'Saldo Atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_cpf: TMaskEdit
    Left = 48
    Top = 66
    Width = 169
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 0
    Text = '   .   .   -  '
  end
  object btn_verificar: TBitBtn
    Left = 261
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btn_verificarClick
  end
  object btn_inserir: TBitBtn
    Left = 225
    Top = 161
    Width = 111
    Height = 25
    Caption = 'Resgatar'
    TabOrder = 2
    OnClick = btn_inserirClick
  end
  object edt_valor: TEdit
    Left = 48
    Top = 163
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 41
    Caption = 'Cashback'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 225
    Top = 192
    Width = 111
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ADOConnectionConfig: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 344
    Top = 56
  end
  object ADOQueryConfig: TADOQuery
    Active = True
    Connection = ADOConnectionConfig
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from configuracao')
    Left = 344
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryConfig
    Left = 344
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from transacoes')
    Left = 8
    Top = 88
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 8
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 8
    Top = 136
  end
end
