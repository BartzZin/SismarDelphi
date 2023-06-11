inherited Form_RelProduto: TForm_RelProduto
  Caption = 'Relat'#243'rio de Produtos'
  ClientWidth = 1126
  ExplicitWidth = 1142
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportPadrao: TRLReport
    Width = 1123
    Height = 794
    DataSource = Form_PesProduto.dsPesqPadrao
    PageSetup.Orientation = poLandscape
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RLBandHeader: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RLSystemInfo1: TRLSystemInfo
        Left = 795
        ExplicitLeft = 795
      end
      inherited RLSystemInfo2: TRLSystemInfo
        Left = 990
        ExplicitLeft = 990
      end
    end
    inherited RLBandTitle: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RLLabelTitulo: TRLLabel
        Width = 1047
        ExplicitWidth = 1047
      end
    end
    inherited RLBandColumHeader: TRLBand
      Width = 1047
      Height = 19
      ExplicitWidth = 1047
      ExplicitHeight = 19
      object RLLIdProd: TRLLabel
        Left = 0
        Top = 0
        Width = 17
        Height = 16
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLDescProd: TRLLabel
        Left = 64
        Top = 0
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLvlCusto: TRLLabel
        Left = 179
        Top = 0
        Width = 97
        Height = 16
        Caption = 'Valor de Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLVlVenda: TRLLabel
        Left = 295
        Top = 0
        Width = 103
        Height = 16
        Caption = 'Valor de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLEstoqProd: TRLLabel
        Left = 411
        Top = 0
        Width = 91
        Height = 16
        Caption = 'Estoque Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLEstoqMin: TRLLabel
        Left = 527
        Top = 0
        Width = 105
        Height = 16
        Caption = 'Estoque Minimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLUnProd: TRLLabel
        Left = 642
        Top = 0
        Width = 57
        Height = 16
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLIdForn: TRLLabel
        Left = 758
        Top = 0
        Width = 54
        Height = 16
        Caption = 'ID Forn.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLNmFornecedor: TRLLabel
        Left = 814
        Top = 0
        Width = 118
        Height = 16
        Caption = 'Nome Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLDtCadProd: TRLLabel
        Left = 968
        Top = 0
        Width = 60
        Height = 16
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBandItens: TRLBand
      Top = 161
      Width = 1047
      Height = 21
      ExplicitTop = 161
      ExplicitWidth = 1047
      ExplicitHeight = 21
      object RLDBText1: TRLDBText
        Left = 0
        Top = 3
        Width = 16
        Height = 16
        DataField = 'ID'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 64
        Top = 3
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 179
        Top = 3
        Width = 71
        Height = 16
        DataField = 'VL_CUSTO'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 295
        Top = 3
        Width = 72
        Height = 16
        DataField = 'VL_VENDA'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 411
        Top = 3
        Width = 67
        Height = 16
        DataField = 'ESTOQUE'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 527
        Top = 3
        Width = 97
        Height = 16
        DataField = 'ESTOQUE_MIN'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 642
        Top = 3
        Width = 61
        Height = 16
        DataField = 'UNIDADE'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 758
        Top = 3
        Width = 114
        Height = 16
        DataField = 'ID_FORNECEDOR'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 814
        Top = 3
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 968
        Top = 3
        Width = 75
        Height = 16
        DataField = 'CADASTRO'
        DataSource = Form_PesProduto.dsPesqPadrao
        Text = ''
      end
    end
    inherited RLBandFooter: TRLBand
      Top = 182
      Width = 1047
      ExplicitTop = 182
      ExplicitWidth = 1047
    end
  end
end
