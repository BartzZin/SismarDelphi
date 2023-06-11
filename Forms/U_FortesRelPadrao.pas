unit U_FortesRelPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TForm_RelPAdrao = class(TForm)
    RLReportPadrao: TRLReport;
    RLBandHeader: TRLBand;
    RLBandTitle: TRLBand;
    RLBandColumHeader: TRLBand;
    RLBandItens: TRLBand;
    RLBandFooter: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabelSis: TRLLabel;
    RLLabelTitulo: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RelPAdrao: TForm_RelPAdrao;

implementation

{$R *.dfm}
//Apenas O relatório padrão

end.
