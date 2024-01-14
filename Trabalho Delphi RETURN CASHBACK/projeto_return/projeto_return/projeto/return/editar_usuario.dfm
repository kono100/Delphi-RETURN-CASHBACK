object form_editar_usuario: Tform_editar_usuario
  Left = 0
  Top = 0
  Caption = 'Tela Editar Usu'#225'rio'
  ClientHeight = 309
  ClientWidth = 573
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
    Left = 24
    Top = 96
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
    Left = 24
    Top = 142
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
    Left = 386
    Top = 143
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
    Left = 386
    Top = 97
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
  object Label4: TLabel
    Left = 24
    Top = 197
    Width = 87
    Height = 13
    Caption = 'N'#237'vel de Acesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_id_usuario: TLabel
    Left = 24
    Top = 47
    Width = 76
    Height = 13
    Caption = 'ID do Usu'#225'rio'
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
    Width = 577
    Height = 41
    Caption = 'Editar Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edt_nome: TEdit
    Left = 24
    Top = 115
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
    Left = 24
    Top = 161
    Width = 326
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btn_entrar: TBitBtn
    Left = 386
    Top = 246
    Width = 166
    Height = 25
    Caption = '&Alterar'
    TabOrder = 3
    OnClick = btn_entrarClick
  end
  object edt_nivel_acesso: TComboBox
    Left = 24
    Top = 216
    Width = 130
    Height = 21
    TabOrder = 4
    Text = 'Selecione'
    Items.Strings = (
      'Administrador'
      'Usu'#225'rio')
  end
  object edt_id: TEdit
    Left = 24
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn_localizar: TBitBtn
    Left = 170
    Top = 64
    Width = 111
    Height = 25
    Caption = '&Localizar'
    TabOrder = 6
    OnClick = btn_localizarClick
  end
  object edt_telefone: TMaskEdit
    Left = 386
    Top = 162
    Width = 166
    Height = 21
    EditMask = '!\(00\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 7
    Text = '(  )     -    '
  end
  object edt_cpf: TMaskEdit
    Left = 386
    Top = 116
    Width = 167
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 8
    Text = '   .   .   -  '
  end
  object btn_limpar: TButton
    Left = 24
    Top = 246
    Width = 137
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 9
    OnClick = btn_limparClick
  end
end
