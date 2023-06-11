object Form_PesPadrao: TForm_PesPadrao
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Formalario de Pesquisa Padrao'
  ClientHeight = 527
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_topPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 80
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object lbl_opsPesquisa: TLabel
      Left = 8
      Top = 16
      Width = 128
      Height = 16
      Caption = 'Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_descPesquisa: TLabel
      Left = 167
      Top = 16
      Width = 35
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_dtinicio: TLabel
      Left = 432
      Top = 14
      Width = 69
      Height = 16
      Caption = 'Data Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_dtFim: TLabel
      Left = 544
      Top = 14
      Width = 55
      Height = 16
      Caption = 'Data Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cb_ChavePesquisa: TComboBox
      Left = 8
      Top = 36
      Width = 140
      Height = 21
      TabOrder = 0
      OnChange = cb_ChavePesquisaChange
      Items.Strings = (
        'CODIGO'
        'NOME'
        'DATA'
        'PERIODO')
    end
    object ed_PesquisaNome: TEdit
      Left = 167
      Top = 36
      Width = 242
      Height = 21
      TabOrder = 1
    end
    object mk_Inicio: TMaskEdit
      Left = 432
      Top = 36
      Width = 87
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object mk_Fim: TMaskEdit
      Left = 544
      Top = 36
      Width = 79
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object bt_Pesquisa: TBitBtn
      Left = 648
      Top = 18
      Width = 92
      Height = 45
      Caption = '&Pesquisar'
      TabOrder = 4
    end
    object bt_Transferir: TBitBtn
      Left = 746
      Top = 18
      Width = 92
      Height = 45
      Caption = '&Transferir'
      ModalResult = 1
      TabOrder = 5
    end
    object bt_Imprimir: TBitBtn
      Left = 844
      Top = 18
      Width = 92
      Height = 45
      Caption = '&Imprimir'
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 955
    Height = 406
    Align = alClient
    DataSource = dsPesqPadrao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl_PesFooter: TPanel
    Left = 0
    Top = 486
    Width = 955
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
  end
  object qryPesqPadrao: TFDQuery
    Connection = DM.Conexao
    Left = 904
    Top = 104
  end
  object dsPesqPadrao: TDataSource
    DataSet = qryPesqPadrao
    Left = 904
    Top = 160
  end
end
