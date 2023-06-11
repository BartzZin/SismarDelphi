inherited Form_Produtos: TForm_Produtos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 254
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 58
    Width = 19
    Height = 19
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 143
    Top = 58
    Width = 78
    Height = 19
    Caption = 'Descri'#231#227'o'
    FocusControl = dbe_DescProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_vlCusto: TLabel [2]
    Left = 8
    Top = 111
    Width = 119
    Height = 19
    Caption = 'Valor de Custo'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_vlVenda: TLabel [3]
    Left = 168
    Top = 111
    Width = 124
    Height = 19
    Caption = 'Valor de Venda'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 162
    Width = 65
    Height = 19
    Caption = 'Estoque'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_EstoqueMin: TLabel [5]
    Left = 280
    Top = 162
    Width = 129
    Height = 19
    Caption = 'Estoque Minimo'
    FocusControl = dbe_EstoqueMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 464
    Top = 58
    Width = 67
    Height = 19
    Caption = 'Unidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [7]
    Left = 584
    Top = 58
    Width = 73
    Height = 19
    Caption = 'Cadastro'
    FocusControl = bde_CadProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_IDFornecedor: TLabel [8]
    Left = 439
    Top = 111
    Width = 91
    Height = 19
    Caption = 'Fornecedor'
    FocusControl = dbe_ProdFor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    inherited btn_Pesquisar: TBitBtn
      OnClick = btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 213
    ExplicitTop = 213
  end
  object DBEdit1: TDBEdit [11]
    Left = 8
    Top = 77
    Width = 113
    Height = 21
    DataField = 'ID'
    DataSource = ds_Padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbe_DescProduto: TDBEdit [12]
    Left = 143
    Top = 77
    Width = 298
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_Padrao
    MaxLength = 100
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [13]
    Left = 8
    Top = 130
    Width = 137
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_Padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [14]
    Left = 168
    Top = 130
    Width = 251
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_Padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [15]
    Left = 8
    Top = 181
    Width = 251
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_Padrao
    TabOrder = 6
  end
  object dbe_EstoqueMin: TDBEdit [16]
    Left = 280
    Top = 181
    Width = 251
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_Padrao
    TabOrder = 7
  end
  object bde_CadProduto: TDBEdit [17]
    Left = 584
    Top = 77
    Width = 166
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_Padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbc_Unidade: TDBComboBox [18]
    Left = 464
    Top = 77
    Width = 97
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_Padrao
    Items.Strings = (
      'UN'
      'LOTE'
      'LITRO'
      'VOLUME'
      'CAIXA'
      'PESO'
      'PACOTE')
    TabOrder = 9
  end
  object dbe_ProdFor: TDBEdit [19]
    Left = 438
    Top = 130
    Width = 53
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_Padrao
    TabOrder = 10
    OnClick = dbe_ProdForClick
  end
  object dbe_ProdForNome: TDBEdit [20]
    Left = 497
    Top = 130
    Width = 254
    Height = 21
    DataField = 'NOME'
    DataSource = ds_Padrao
    Enabled = False
    ReadOnly = True
    TabOrder = 11
  end
  object dbeGambiarra: TEdit [21]
    Left = 497
    Top = 154
    Width = 254
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 12
    Visible = False
  end
  inherited qry_Padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTOS_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT produtos.id,'
      '    produtos.descricao,'
      '    produtos.vl_custo,'
      '    produtos.vl_venda,'
      '    produtos.estoque,'
      '    produtos.estoque_min,'
      '    produtos.unidade,'
      '    produtos.id_fornecedor,'
      '    fornecedor.nome,'
      '    produtos.cadastro'
      ''
      'FROM PRODUTOS'
      ''
      'JOIN fornecedor ON'
      'produtos.id_fornecedor = fornecedor.id')
    object qry_PadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qry_PadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 10
    end
    object qry_PadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qry_PadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qry_PadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qry_PadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qry_PadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 6
    end
    object qry_PadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qry_PadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qry_PadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
