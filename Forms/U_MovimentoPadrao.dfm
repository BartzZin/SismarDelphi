inherited Form_PadraoMovimento: TForm_PadraoMovimento
  Caption = 'Fomulario de movimento'
  ClientHeight = 558
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 517
    inherited bnt_qryPrior: TButton
      Left = 633
      Top = 6
      ExplicitLeft = 633
      ExplicitTop = 6
    end
    inherited bnt_qryNext: TButton
      Left = 740
      Top = 6
      ExplicitLeft = 740
      ExplicitTop = 6
    end
    object btnItem: TButton
      Left = 8
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Item'
      TabOrder = 2
      OnClick = bnt_qryPriorClick
    end
    object btnOkMov: TButton
      Left = 115
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Ok'
      TabOrder = 3
      OnClick = bnt_qryPriorClick
    end
    object btnExcluirMov: TButton
      Left = 222
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = bnt_qryPriorClick
    end
    object btnImprimirMov: TButton
      Left = 329
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = bnt_qryPriorClick
    end
  end
  object PanelSecondTop: TPanel [2]
    Left = 0
    Top = 49
    Width = 844
    Height = 110
    Align = alTop
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 2
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 447
    Width = 844
    Height = 70
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 429
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 159
    Width = 844
    Height = 288
    Align = alClient
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object qyPadraoItem: TFDQuery
    MasterSource = ds_Padrao
    Left = 800
    Top = 224
  end
  object dsPadraoItem: TDataSource
    DataSet = qyPadraoItem
    Left = 800
    Top = 288
  end
end
