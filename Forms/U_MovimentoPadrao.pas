unit U_MovimentoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_PadraoMovimento = class(TForm_Padrao)
    PanelSecondTop: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btnItem: TButton;
    btnOkMov: TButton;
    btnExcluirMov: TButton;
    btnImprimirMov: TButton;
    qyPadraoItem: TFDQuery;
    dsPadraoItem: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PadraoMovimento: TForm_PadraoMovimento;

implementation

{$R *.dfm}

end.
