inherited Form_PesqCompra: TForm_PesqCompra
  Caption = 'Pesquisa de Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_topPesquisa: TPanel
    inherited cb_ChavePesquisa: TComboBox
      Items.Strings = (
        'CODIGO COMPRA'
        'CODIGO FORNECEDOR'
        'CODIGO PAGAMENTO'
        'USUARIO'
        'CADASTRO'
        'PERIODO'
        'TODOS')
    end
    inherited bt_Pesquisa: TBitBtn
      OnClick = bt_PesquisaClick
    end
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    OnDblClick = DBGrid1DblClick
  end
  inherited qryPesqPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT'
      '    COMPRA.ID,'
      '    COMPRA.ID_FORNECEDOR,'
      '    FORNECEDOR.NOME,'
      '    COMPRA.USUARIO,'
      '    COMPRA.ID_FORMA_PAG,'
      '    FORMA_PAGAMENTO.DESCRICAO,'
      '    COMPRA.VALOR,'
      '    COMPRA.CADASTRO,'
      '    COMPRA.STATUS'
      ''
      'FROM COMPRA'
      ''
      'LEFT JOIN FORNECEDOR ON'
      '    FORNECEDOR.ID = COMPRA.ID_FORNECEDOR'
      ''
      'LEFT JOIN FORMA_PAGAMENTO ON'
      '    FORMA_PAGAMENTO.ID = COMPRA.ID_FORMA_PAG')
    object qryPesqPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPesqPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qryPesqPadraoID_FORMA_PAG: TIntegerField
      FieldName = 'ID_FORMA_PAG'
      Origin = 'ID_FORMA_PAG'
      Required = True
    end
    object qryPesqPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPesqPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPesqPadraoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
  end
end
