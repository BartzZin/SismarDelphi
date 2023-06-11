unit U_FortesRelProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FortesRelPadrao, RLReport;

type
  TForm_RelProduto = class(TForm_RelPAdrao)
    RLLIdProd: TRLLabel;
    RLLDescProd: TRLLabel;
    RLLvlCusto: TRLLabel;
    RLLVlVenda: TRLLabel;
    RLLEstoqProd: TRLLabel;
    RLLEstoqMin: TRLLabel;
    RLLUnProd: TRLLabel;
    RLLIdForn: TRLLabel;
    RLLNmFornecedor: TRLLabel;
    RLLDtCadProd: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RelProduto: TForm_RelProduto;

implementation

{$R *.dfm}

uses U_PesqProduto;

end.
