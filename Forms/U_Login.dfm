object Form_Login: TForm_Login
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Login de Usu'#225'rio'
  ClientHeight = 387
  ClientWidth = 727
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Principal: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 387
    Align = alClient
    BevelOuter = bvSpace
    TabOrder = 0
    object lbl_SisErp: TLabel
      Left = 280
      Top = 45
      Width = 150
      Height = 29
      Alignment = taCenter
      Caption = 'Sistema ERP'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_TelaLogin: TLabel
      Left = 1
      Top = 1
      Width = 725
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Login de Usu'#225'rio'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 200
    end
    object pnl_Central: TPanel
      Left = 64
      Top = 80
      Width = 593
      Height = 241
      TabOrder = 0
      object lbl_Login: TLabel
        Left = 16
        Top = 19
        Width = 44
        Height = 19
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Senha: TLabel
        Left = 16
        Top = 66
        Width = 50
        Height = 19
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_Senha: TEdit
        Left = 16
        Top = 84
        Width = 193
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        Text = 'Senha'
      end
      object btn_logar: TButton
        Left = 168
        Top = 160
        Width = 121
        Height = 49
        Caption = 'Entrar'
        TabOrder = 1
        OnClick = btn_logarClick
      end
      object btn_Ajuda: TButton
        Left = 312
        Top = 160
        Width = 121
        Height = 49
        Caption = 'Suporte'
        TabOrder = 2
        OnClick = btn_AjudaClick
      end
      object Edt_Login: TEdit
        Left = 16
        Top = 40
        Width = 193
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'Login'
      end
    end
  end
  object Qry_Login: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'Select'
      '    usuario.id,'
      '    usuario.nome,'
      '    usuario.senha,'
      '    usuario.tipo,'
      '    usuario.cadastro'
      'From usuario'
      'where usuario.nome = :pNome and'
      '    usuario.senha = :pSenha')
    Left = 656
    Top = 48
    ParamData = <
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end
      item
        Name = 'PSENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object Qry_LoginID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_LoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Qry_LoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Qry_LoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Qry_LoginCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object Ds_Login: TDataSource
    DataSet = Qry_Login
    Left = 656
    Top = 104
  end
end
