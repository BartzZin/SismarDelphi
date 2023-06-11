object Form_Padrao: TForm_Padrao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formalario Padrao'
  ClientHeight = 345
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 49
    Align = alTop
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object btn_Novo: TBitBtn
      Left = 8
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btn_NovoClick
    end
    object btn_Deletar: TBitBtn
      Left = 115
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Deletar'
      TabOrder = 1
      OnClick = btn_DeletarClick
    end
    object btn_Alterar: TBitBtn
      Left = 222
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = btn_AlterarClick
    end
    object btn_Gravar: TBitBtn
      Left = 329
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = btn_GravarClick
    end
    object btn_Cancelar: TBitBtn
      Left = 436
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btn_CancelarClick
    end
    object btn_Atualizar: TBitBtn
      Left = 540
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Atualizar'
      Enabled = False
      TabOrder = 5
      OnClick = btn_AtualizarClick
    end
    object btn_Pesquisar: TBitBtn
      Left = 644
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Pesquisar'
      TabOrder = 6
    end
    object btn_Sair: TBitBtn
      Left = 748
      Top = 3
      Width = 90
      Height = 45
      Caption = '&Sair'
      TabOrder = 7
      OnClick = btn_SairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 304
    Width = 844
    Height = 41
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 1
    object bnt_qryPrior: TButton
      Left = 329
      Top = 8
      Width = 90
      Height = 25
      Caption = '<<'
      TabOrder = 0
      OnClick = bnt_qryPriorClick
    end
    object bnt_qryNext: TButton
      Left = 436
      Top = 8
      Width = 90
      Height = 25
      Caption = '>>'
      TabOrder = 1
      OnClick = bnt_qryNextClick
    end
  end
  object qry_Padrao: TFDQuery
    Connection = DM.Conexao
    Left = 800
    Top = 88
  end
  object ds_Padrao: TDataSource
    DataSet = qry_Padrao
    Left = 800
    Top = 144
  end
end
