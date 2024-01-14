object form_consumidor: Tform_consumidor
  Left = 0
  Top = 0
  Caption = 'Tela de Consumidor'
  ClientHeight = 388
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 104
    Top = 456
    Width = 75
    Height = 13
    Caption = 'saldo_cashback'
    FocusControl = DBEdit9
  end
  object DBEdit9: TDBEdit
    Left = 104
    Top = 472
    Width = 134
    Height = 21
    DataField = 'saldo_cashback'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 107
    Width = 713
    Height = 273
    DataSource = DataSourceConsumidor
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nascimento'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 41
    Caption = 'Listagem de Consumidores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btn_deletar: TBitBtn
    Left = 318
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = btn_deletarClick
  end
  object btn_editar_registro: TBitBtn
    Left = 399
    Top = 47
    Width = 97
    Height = 25
    Caption = '&Editar Registro'
    TabOrder = 4
    OnClick = btn_editar_registroClick
  end
  object btn_novo_registro: TBitBtn
    Left = 502
    Top = 47
    Width = 97
    Height = 25
    Caption = '&Novo Registro'
    TabOrder = 5
    OnClick = btn_novo_registroClick
  end
  object btn_atualizar: TBitBtn
    Left = 605
    Top = 47
    Width = 97
    Height = 25
    Caption = '&Atualizar'
    TabOrder = 6
    OnClick = btn_atualizarClick
  end
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 8
    Top = 48
  end
  object ADOQueryConsumidor: TADOQuery
    Active = True
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from consumidores')
    Left = 88
    Top = 48
  end
  object DataSourceConsumidor: TDataSource
    DataSet = ADOQueryConsumidor
    Left = 184
    Top = 48
  end
end