inherited Form_Empresa: TForm_Empresa
  Caption = 'Cadastro de Empresa'
  ClientHeight = 464
  ClientWidth = 843
  ParentFont = True
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitWidth = 849
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 65
    Width = 19
    Height = 19
    Caption = 'ID'
    FocusControl = dbIdEmpresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 160
    Top = 65
    Width = 104
    Height = 19
    Caption = 'Razao Social'
    FocusControl = dbRazaoSocial
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 480
    Top = 65
    Width = 121
    Height = 19
    Caption = 'Nome Fantasia'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 110
    Width = 75
    Height = 19
    Caption = 'Endereco'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 154
    Width = 64
    Height = 19
    Caption = 'N'#250'mero'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 160
    Top = 154
    Width = 50
    Height = 19
    Caption = 'Bairro'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 480
    Top = 154
    Width = 56
    Height = 19
    Caption = 'Cidade'
    FocusControl = dbeCidadeEmpresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 480
    Top = 110
    Width = 21
    Height = 19
    Caption = 'UF'
    FocusControl = dbeUfEmpresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 199
    Width = 72
    Height = 19
    Caption = 'Telefone'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 244
    Width = 103
    Height = 19
    Caption = 'CPF ou CNPJ'
    FocusControl = dbCpfCnpj
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 222
    Top = 199
    Width = 45
    Height = 19
    Caption = 'Email'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 540
    Top = 199
    Width = 73
    Height = 19
    Caption = 'Cadastro'
    FocusControl = dbCdEmpresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 289
    Width = 39
    Height = 19
    Caption = 'Logo'
    FocusControl = DBImageEmpresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label14: TLabel [13]
    Left = 540
    Top = 110
    Width = 32
    Height = 19
    Caption = 'CEP'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 843
    ExplicitWidth = 843
    inherited btn_Pesquisar: TBitBtn
      OnClick = btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 423
    Width = 843
    ExplicitTop = 423
    ExplicitWidth = 843
  end
  object dbIdEmpresa: TDBEdit [16]
    Left = 8
    Top = 83
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = ds_Padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbRazaoSocial: TDBEdit [17]
    Left = 160
    Top = 83
    Width = 300
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_Padrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [18]
    Left = 480
    Top = 83
    Width = 300
    Height = 21
    DataField = 'N_FANTASIA'
    DataSource = ds_Padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [19]
    Left = 8
    Top = 128
    Width = 452
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_Padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 8
    Top = 172
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_Padrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [21]
    Left = 160
    Top = 172
    Width = 300
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_Padrao
    TabOrder = 7
  end
  object dbeCidadeEmpresa: TDBEdit [22]
    Left = 480
    Top = 172
    Width = 300
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_Padrao
    TabOrder = 8
    OnExit = dbeCidadeEmpresaExit
  end
  object dbeUfEmpresa: TDBEdit [23]
    Left = 480
    Top = 128
    Width = 46
    Height = 21
    DataField = 'UF'
    DataSource = ds_Padrao
    TabOrder = 9
    OnExit = dbeUfEmpresaExit
  end
  object DBEdit9: TDBEdit [24]
    Left = 8
    Top = 217
    Width = 199
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_Padrao
    TabOrder = 10
  end
  object dbCpfCnpj: TDBEdit [25]
    Left = 8
    Top = 262
    Width = 264
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = ds_Padrao
    MaxLength = 14
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [26]
    Left = 222
    Top = 217
    Width = 300
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_Padrao
    TabOrder = 12
  end
  object dbCdEmpresa: TDBEdit [27]
    Left = 540
    Top = 217
    Width = 133
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_Padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 13
  end
  object DBImageEmpresa: TDBImage [28]
    Left = 8
    Top = 307
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_Padrao
    TabOrder = 14
  end
  object DBEdit13: TDBEdit [29]
    Left = 540
    Top = 128
    Width = 240
    Height = 21
    DataField = 'CEP'
    DataSource = ds_Padrao
    TabOrder = 15
  end
  object bt_Inseririmg: TButton [30]
    Left = 119
    Top = 307
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 16
    OnClick = bt_InseririmgClick
  end
  object bt_Clearimg: TButton [31]
    Left = 119
    Top = 338
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 17
    OnClick = bt_ClearimgClick
  end
  object RadioCPF: TRadioButton [32]
    Left = 278
    Top = 264
    Width = 43
    Height = 17
    Caption = 'CPF'
    TabOrder = 18
    OnClick = RadioCPFClick
  end
  object RadioCNPJ: TRadioButton [33]
    Left = 327
    Top = 263
    Width = 42
    Height = 20
    Caption = 'CNPJ'
    TabOrder = 19
    OnClick = RadioCNPJClick
  end
  inherited qry_Padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_EMPRESA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select * from empresa')
    object qry_PadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qry_PadraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object qry_PadraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object qry_PadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qry_PadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qry_PadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qry_PadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qry_PadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qry_PadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '(99)99999-9999;0;_'
      Size = 15
    end
    object qry_PadraoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
    end
    object qry_PadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qry_PadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qry_PadraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object qry_PadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-9999;0;_'
      Size = 14
    end
  end
  object OpenDialogIMG: TOpenDialog
    Left = 800
    Top = 200
  end
end
