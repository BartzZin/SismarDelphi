inherited Form_PesUsuarios: TForm_PesUsuarios
  Caption = 'Pesquisa de Usu'#225'rios'
  KeyPreview = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pnl_topPesquisa: TPanel
    inherited lbl_descPesquisa: TLabel
      Visible = False
    end
    inherited lbl_dtinicio: TLabel
      Visible = False
    end
    inherited lbl_dtFim: TLabel
      Visible = False
    end
    inherited ed_PesquisaNome: TEdit
      Visible = False
    end
    inherited mk_Inicio: TMaskEdit
      Visible = False
    end
    inherited mk_Fim: TMaskEdit
      Visible = False
    end
    inherited bt_Pesquisa: TBitBtn
      OnClick = bt_PesquisaClick
    end
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
    inherited bt_Imprimir: TBitBtn
      OnClick = bt_ImprimirClick
    end
  end
  inherited DBGrid1: TDBGrid
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOME'
        Width = 490
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 158
        Visible = True
      end>
  end
  inherited qryPesqPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'select'
      '    usuario.id,'
      '    usuario.nome,'
      '    usuario.tipo,'
      '    usuario.cadastro'
      'from usuario'
      ''
      'order by 1')
    object qryPesqPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPesqPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
