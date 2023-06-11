object Form_RelPAdrao: TForm_RelPAdrao
  Left = 0
  Top = 0
  Caption = 'Relatorio Padrao'
  ClientHeight = 657
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportPadrao: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBandHeader: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 41
      BandType = btHeader
      object RLLabelSis: TRLLabel
        Left = 9
        Top = 9
        Width = 128
        Height = 16
        Caption = 'Sismar Sistema ERP'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 472
        Top = 9
        Width = 137
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 9
        Width = 54
        Height = 16
        Info = itPageNumber
        Text = ''
      end
    end
    object RLBandTitle: TRLBand
      Left = 38
      Top = 79
      Width = 718
      Height = 63
      BandType = btTitle
      object RLLabelTitulo: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio Padr'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
    end
    object RLBandColumHeader: TRLBand
      Left = 38
      Top = 142
      Width = 718
      Height = 57
      BandType = btColumnHeader
    end
    object RLBandItens: TRLBand
      Left = 38
      Top = 199
      Width = 718
      Height = 62
    end
    object RLBandFooter: TRLBand
      Left = 38
      Top = 261
      Width = 718
      Height = 24
      BandType = btFooter
    end
  end
end
