object form_configuracao: Tform_configuracao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 132
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edt_porcentagem: TEdit
    Left = 8
    Top = 72
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 151
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 234
    Height = 41
    Caption = 'Atualizar Percentual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnConfig
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from configuracao')
    Left = 88
    Top = 104
  end
  object ADOConnConfig: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Postg' +
      'reSQL35W'
    LoginPrompt = False
    Left = 16
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 112
  end
end
