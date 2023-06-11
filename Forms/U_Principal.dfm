object Form_Principal: TForm_Principal
  AlignWithMargins = True
  Left = 0
  Top = 0
  Hint = 'Cadastro de Clientes e Fornecedores.'
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Estoque'
  ClientHeight = 730
  ClientWidth = 1159
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Header: TPanel
    Left = 0
    Top = 0
    Width = 1159
    Height = 92
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Usu'#225'rio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton1Click
      OnMouseEnter = SpeedButton1MouseEnter
      OnMouseLeave = SpeedButton1MouseLeave
    end
    object SpeedButton2: TSpeedButton
      Left = 131
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Empresa'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton2Click
      OnMouseEnter = SpeedButton2MouseEnter
      OnMouseLeave = SpeedButton2MouseLeave
    end
    object SpeedButton3: TSpeedButton
      Left = 261
      Top = 0
      Width = 100
      Height = 90
      Hint = 'Cadastro de Clientes e Fornecedores.'
      Caption = '&Clientes'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton3Click
      OnMouseEnter = SpeedButton3MouseEnter
      OnMouseLeave = SpeedButton3MouseLeave
    end
    object SpeedButton5: TSpeedButton
      Left = 391
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Produtos'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton5Click
      OnMouseEnter = SpeedButton5MouseEnter
      OnMouseLeave = SpeedButton5MouseLeave
    end
    object SpeedButton6: TSpeedButton
      Left = 521
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Forma PGTO'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton6Click
      OnMouseEnter = SpeedButton6MouseEnter
      OnMouseLeave = SpeedButton6MouseLeave
    end
    object SpeedButton7: TSpeedButton
      Left = 651
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Compras'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton7Click
      OnMouseEnter = SpeedButton7MouseEnter
      OnMouseLeave = SpeedButton7MouseLeave
    end
    object SpeedButton8: TSpeedButton
      Left = 781
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Vendas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton8Click
      OnMouseEnter = SpeedButton8MouseEnter
      OnMouseLeave = SpeedButton8MouseLeave
    end
    object SpeedButton9: TSpeedButton
      Left = 911
      Top = 0
      Width = 100
      Height = 90
      Caption = '&Trocar Usu'#225'rio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton9Click
      OnMouseEnter = SpeedButton9MouseEnter
      OnMouseLeave = SpeedButton9MouseLeave
    end
    object SpeedButton10: TSpeedButton
      Left = 1041
      Top = 2
      Width = 100
      Height = 90
      Caption = '&Fechar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton10Click
      OnMouseEnter = SpeedButton10MouseEnter
      OnMouseLeave = SpeedButton10MouseLeave
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 711
    Width = 1159
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 96
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Usurio1: TMenuItem
        Caption = '&Usu'#225'rio'
        OnClick = Usurio1Click
      end
      object Empresa1: TMenuItem
        Caption = '&Empresa'
        OnClick = Empresa1Click
      end
      object Cliente1: TMenuItem
        Caption = '&Clientes'
        OnClick = Cliente1Click
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
      object FormaPGTO1: TMenuItem
        Caption = '&Forma PGTO'
        OnClick = FormaPGTO1Click
      end
    end
    object FormaPGTO2: TMenuItem
      Caption = 'Movimento'
      object Compas1: TMenuItem
        Caption = '&Compras'
        OnClick = Compas1Click
      end
      object Vendas1: TMenuItem
        Caption = '&Vendas'
      end
    end
    object Informaes1: TMenuItem
      Caption = 'Informa'#231#245'es'
      object Sobre1: TMenuItem
        Caption = 'Sobre'
        OnClick = Sobre1Click
      end
    end
  end
end
