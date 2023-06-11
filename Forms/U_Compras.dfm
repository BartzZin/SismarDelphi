inherited Form_Compras: TForm_Compras
  Caption = 'Cadastro de Compras'
  ClientHeight = 668
  ClientWidth = 845
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitWidth = 851
  ExplicitHeight = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 845
    ExplicitWidth = 845
    inherited btn_Pesquisar: TBitBtn
      OnClick = btn_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 627
    Width = 845
    ExplicitTop = 627
    ExplicitWidth = 845
    inherited btnItem: TButton
      Left = 976
      Top = -2
      Enabled = False
      Visible = False
      ExplicitLeft = 976
      ExplicitTop = -2
    end
    inherited btnOkMov: TButton
      Left = 984
      Top = 22
      Enabled = False
      Visible = False
      ExplicitLeft = 984
      ExplicitTop = 22
    end
    inherited btnExcluirMov: TButton
      Left = 873
      Top = -1
      Width = 105
      Enabled = False
      Visible = False
      ExplicitLeft = 873
      ExplicitTop = -1
      ExplicitWidth = 105
    end
    inherited btnImprimirMov: TButton
      Left = 888
      Top = 22
      Enabled = False
      Visible = False
      ExplicitLeft = 888
      ExplicitTop = 22
    end
    object btnItemCp: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo Item'
      TabOrder = 6
      OnClick = btnItemCpClick
    end
    object btnOkCp: TButton
      Left = 100
      Top = 6
      Width = 88
      Height = 25
      Caption = '&Fechar Compra'
      TabOrder = 7
      OnClick = btnOkCpClick
    end
    object dbtEdtItemCp: TButton
      Left = 205
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Editar Item'
      TabOrder = 8
      OnClick = dbtEdtItemCpClick
    end
    object bntDelItemCp: TButton
      Left = 297
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Deletar Item'
      TabOrder = 9
      OnClick = bntDelItemCpClick
    end
  end
  inherited PanelSecondTop: TPanel
    Width = 845
    Height = 128
    ExplicitWidth = 845
    ExplicitHeight = 128
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 13
      Height = 13
      Caption = 'ID'
      FocusControl = DBEIdCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 82
      Width = 92
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = DBEFornCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 312
      Top = 5
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DBEUsuarioCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 44
      Width = 90
      Height = 13
      Caption = 'ID_FORMA_PAG'
      FocusControl = DBEPgtoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 312
      Top = 44
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = DBEVlCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 161
      Top = 5
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DBECdCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 161
      Top = 82
      Width = 31
      Height = 13
      Caption = 'NOME'
      FocusControl = DBEPgtoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 161
      Top = 44
      Width = 64
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DBEPgtoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 464
      Top = 5
      Width = 44
      Height = 13
      Caption = 'STATUS'
      FocusControl = DBEUsuarioCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEIdCompra: TDBEdit
      Left = 8
      Top = 17
      Width = 134
      Height = 21
      DataField = 'ID'
      DataSource = ds_Padrao
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnChange = DBEIdCompraChange
    end
    object DBEFornCompra: TDBEdit
      Left = 8
      Top = 95
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_Padrao
      TabOrder = 3
      OnClick = DBEFornCompraClick
    end
    object DBEUsuarioCompra: TDBEdit
      Left = 312
      Top = 17
      Width = 134
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_Padrao
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEPgtoCompra: TDBEdit
      Left = 8
      Top = 57
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PAG'
      DataSource = ds_Padrao
      TabOrder = 4
      OnClick = DBEPgtoCompraClick
    end
    object DBEVlCompra: TDBEdit
      Left = 312
      Top = 57
      Width = 134
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_Padrao
      TabOrder = 5
    end
    object DBECdCompra: TDBEdit
      Left = 160
      Top = 17
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_Padrao
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 161
      Top = 57
      Width = 133
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_Padrao
      TabOrder = 6
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 161
      Top = 95
      Width = 285
      Height = 21
      DataField = 'NOME'
      DataSource = ds_Padrao
      TabOrder = 7
    end
    object DBComboBox1: TDBComboBox
      Left = 464
      Top = 17
      Width = 62
      Height = 21
      DataField = 'STATUS'
      DataSource = ds_Padrao
      Items.Strings = (
        'A'
        'F')
      TabOrder = 8
    end
  end
  inherited Panel3: TPanel
    Top = 557
    Width = 845
    ExplicitTop = 557
    ExplicitWidth = 845
    object Label9: TLabel
      Left = 30
      Top = 6
      Width = 70
      Height = 13
      Caption = 'ID PRODUTO'
      FocusControl = dbIdProdutoCp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 137
      Top = 6
      Width = 73
      Height = 13
      Caption = 'QUANTIDADE'
      FocusControl = dbQtCp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 351
      Top = 6
      Width = 37
      Height = 13
      Caption = 'CUSTO'
      FocusControl = dbCustoCp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 244
      Top = 6
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = dbDescCp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 674
      Top = 6
      Width = 86
      Height = 13
      Caption = 'TOTAL DO ITEM'
      FocusControl = dbTotalItemCp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbIdProdutoCp: TDBEdit
      Left = 30
      Top = 19
      Width = 90
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = dsPadraoItem
      TabOrder = 0
      OnExit = dbIdProdutoCpExit
    end
    object dbQtCp: TDBEdit
      Left = 137
      Top = 19
      Width = 90
      Height = 21
      DataField = 'QTDE'
      DataSource = dsPadraoItem
      TabOrder = 1
      OnExit = dbQtCpExit
    end
    object dbCustoCp: TDBEdit
      Left = 351
      Top = 19
      Width = 90
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = dsPadraoItem
      TabOrder = 2
      OnExit = dbCustoCpExit
    end
    object dbDescCp: TDBEdit
      Left = 244
      Top = 19
      Width = 90
      Height = 21
      DataField = 'DESCONTO'
      DataSource = dsPadraoItem
      TabOrder = 3
      OnExit = dbDescCpExit
    end
    object dbTotalItemCp: TDBEdit
      Left = 674
      Top = 19
      Width = 164
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = dsPadraoItem
      TabOrder = 4
    end
    object btnPesqProdCP: TButton
      Left = 8
      Top = 18
      Width = 23
      Height = 23
      Caption = '+'
      TabOrder = 5
      OnClick = btnPesqProdCPClick
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 177
    Width = 845
    Height = 380
    DataSource = dsPadraoItem
    ReadOnly = True
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Width = 76
        Visible = True
      end>
  end
  inherited qry_Padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    COMPRA.id,'
      '    COMPRA.id_fornecedor,'
      '    COMPRA.usuario,'
      '    COMPRA.id_forma_pag,'
      '    COMPRA.valor,'
      '    COMPRA.cadastro,'
      '    COMPRA.STATUS'
      ''
      ''
      'FROM COMPRA'
      '')
    object qry_PadraoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qry_PadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qry_PadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qry_PadraoID_FORMA_PAG: TIntegerField
      FieldName = 'ID_FORMA_PAG'
      Origin = 'ID_FORMA_PAG'
      Required = True
    end
    object qry_PadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qry_PadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qry_PadraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = qryFornecedorCp
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object qry_PadraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qryFormaPGTOCp
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PAG'
      Size = 60
      Lookup = True
    end
    object qry_PadraoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
  end
  inherited qyPadraoItem: TFDQuery
    BeforeOpen = qyPadraoItemBeforeOpen
    IndexFieldNames = 'SEQUENCIA'
    AggregatesActive = True
    MasterSource = nil
    MasterFields = 'ID'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ITEM_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'SEQUENCIA'
    SQL.Strings = (
      'SELECT'
      '    item_compra.sequencia,'
      '    item_compra.id_compra,'
      '    item_compra.id_produto,'
      '    item_compra.qtde,'
      '    item_compra.vl_custo,'
      '    item_compra.desconto,'
      '    item_compra.total_item'
      'FROM item_compra'
      ''
      'WHERE item_compra.id_compra = :PID_COMPRA')
    ParamData = <
      item
        Name = 'PID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object qyPadraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      Required = True
    end
    object qyPadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qyPadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qyPadraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qyPadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qyPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qyPadraoItemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qryProdutoCP
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object qyPadraoItemSEQUENCIA: TFDAutoIncField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qyPadraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  object qryFornecedorCp: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select'
      '    fornecedor.id,'
      '    fornecedor.nome'
      ''
      'from fornecedor'
      ''
      'order by 1')
    Left = 664
    Top = 88
    object qryFornecedorCpID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFornecedorCpNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object qryFormaPGTOCp: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '    FORMA_PAGAMENTO.ID,'
      '    FORMA_PAGAMENTO.DESCRICAO'
      ''
      'FROM FORMA_PAGAMENTO')
    Left = 736
    Top = 88
    object qryFormaPGTOCpID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFormaPGTOCpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsFornecedorCp: TDataSource
    DataSet = qryFornecedorCp
    Left = 664
    Top = 144
  end
  object dsFormaPGTOCp: TDataSource
    DataSet = qryFormaPGTOCp
    Left = 736
    Top = 144
  end
  object qryProdutoCP: TFDQuery
    IndexFieldNames = 'ID'
    Connection = DM.Conexao
    SQL.Strings = (
      'select'
      '     produtos.id,'
      '     produtos.descricao,'
      '     produtos.estoque,'
      '     produtos.estoque_min,'
      '     produtos.vl_custo'
      'from produtos'
      ''
      'order by 1')
    Left = 736
    Top = 224
    object qryProdutoCPID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoCPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdutoCPESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoCPESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoCPVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsProdutoCompra: TDataSource
    DataSet = qryProdutoCP
    Left = 736
    Top = 288
  end
end
