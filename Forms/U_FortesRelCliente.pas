unit U_FortesRelCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FortesRelPadrao, RLReport;

type
  TForm_RelClientes = class(TForm_RelPAdrao)
    RLLCliID: TRLLabel;
    RLLCLiNome: TRLLabel;
    RLLCliEnd: TRLLabel;
    RLLCliNumero: TRLLabel;
    RLLCliCidade: TRLLabel;
    RLLCliUF: TRLLabel;
    RLLCliCep: TRLLabel;
    RLLCliFone: TRLLabel;
    RLLCliCNPJ: TRLLabel;
    RLLCliCadastro: TRLLabel;
    RLLCliTipo: TRLLabel;
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
    RLDBText11: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RelClientes: TForm_RelClientes;

implementation

{$R *.dfm}

uses U_PesqCliente;

end.
