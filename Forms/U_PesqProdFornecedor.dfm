object Form_PesForneProduto: TForm_PesForneProduto
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Fornecedo'
  ClientHeight = 341
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 366
    Height = 289
    DataSource = DSProdForne
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 24
    Top = 312
    Width = 75
    Height = 25
    Caption = '<<'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 312
    Width = 75
    Height = 25
    Caption = '>>'
    TabOrder = 2
    OnClick = Button2Click
  end
  object bnt_SelectFornecedor: TButton
    Left = 200
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    OnClick = bnt_SelectFornecedorClick
  end
  object qry_ProdFornecedor: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT FORNECEDOR.ID,'
      'FORNECEDOR.NOME'
      'FROM FORNECEDOR'
      ''
      'WHERE FORNECEDOR.TIPO = '#39'F'#39)
    Left = 336
    Top = 24
    object qry_ProdFornecedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_ProdFornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DSProdForne: TDataSource
    DataSet = qry_ProdFornecedor
    Left = 336
    Top = 80
  end
end
