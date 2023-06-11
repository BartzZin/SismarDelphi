inherited Form_PesPGTOcp: TForm_PesPGTOcp
  Caption = 'Forma de Pagamento'
  ClientHeight = 363
  ClientWidth = 417
  ExplicitWidth = 433
  ExplicitHeight = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited qry_ProdFornecedor: TFDQuery
    Left = 832
    Top = 608
    object qry_ProdFornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qry_ProdFornecedorCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSProdForne: TDataSource
    DataSet = qry_PesformPGTO
    Left = 360
    Top = 72
  end
  object qry_PesformPGTO: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select'
      '    forma_pagamento.id,'
      '    forma_pagamento.descricao,'
      '    forma_pagamento.cadastro'
      ''
      'from forma_pagamento')
    Left = 360
    Top = 24
    object qry_PesformPGTOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_PesformPGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qry_PesformPGTOCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
