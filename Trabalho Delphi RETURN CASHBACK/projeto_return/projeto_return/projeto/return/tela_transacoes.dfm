object form_transacoes: Tform_transacoes
  Left = 0
  Top = 0
  Caption = 'Tela de Transa'#231#245'es'
  ClientHeight = 561
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = -7
    Top = 78
    Width = 633
    Height = 392
    DataSource = DataSourceTransacoes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_transacoes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nota_fiscal'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo_transacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_reg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_consumidor'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cashback'
        Visible = True
      end>
  end
  object btn_atualizar: TButton
    Left = 551
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btn_atualizarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 41
    Caption = 'Transa'#231#245'es de CashBack'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ADOConnTransacoes: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 24
    Top = 488
  end
  object ADOQueryTransacoes: TADOQuery
    Active = True
    Connection = ADOConnTransacoes
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from transacoes')
    Left = 120
    Top = 488
  end
  object DataSourceTransacoes: TDataSource
    DataSet = ADOQueryTransacoes
    Left = 216
    Top = 488
  end
end