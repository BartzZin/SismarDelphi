inherited Form_RelUsuario: TForm_RelUsuario
  Caption = 'Relat'#243'rio de Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReportPadrao: TRLReport
    DataSource = Form_PesUsuarios.dsPesqPadrao
    inherited RLBandTitle: TRLBand
      Height = 42
      ExplicitHeight = 42
    end
    inherited RLBandColumHeader: TRLBand
      Top = 121
      Height = 24
      ExplicitTop = 121
      ExplicitHeight = 24
      object RLLIDUsuario: TRLLabel
        Left = 9
        Top = 2
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
      object RLLNomeUsuario: TRLLabel
        Left = 80
        Top = 2
        Width = 41
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLTipoUsuario: TRLLabel
        Left = 335
        Top = 2
        Width = 32
        Height = 16
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLDTUsuario: TRLLabel
        Left = 511
        Top = 2
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
      Top = 145
      Height = 16
      ExplicitTop = 145
      ExplicitHeight = 16
      object RLDBText1: TRLDBText
        Left = 9
        Top = 0
        Width = 16
        Height = 16
        DataField = 'ID'
        DataSource = Form_PesUsuarios.dsPesqPadrao
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 80
        Top = 0
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = Form_PesUsuarios.dsPesqPadrao
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 335
        Top = 0
        Width = 33
        Height = 16
        DataField = 'TIPO'
        DataSource = Form_PesUsuarios.dsPesqPadrao
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 511
        Top = 0
        Width = 75
        Height = 16
        DataField = 'CADASTRO'
        DataSource = Form_PesUsuarios.dsPesqPadrao
        Text = ''
      end
    end
    inherited RLBandFooter: TRLBand
      Top = 161
      Height = 65
      ExplicitTop = 161
      ExplicitHeight = 65
    end
  end
end
