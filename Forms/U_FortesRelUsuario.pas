unit U_FortesRelUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FortesRelPadrao, RLReport;

type
  TForm_RelUsuario = class(TForm_RelPAdrao)
    RLLIDUsuario: TRLLabel;
    RLLNomeUsuario: TRLLabel;
    RLLTipoUsuario: TRLLabel;
    RLLDTUsuario: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_RelUsuario: TForm_RelUsuario;

implementation

{$R *.dfm}

uses U_PesqUsuario;

end.
