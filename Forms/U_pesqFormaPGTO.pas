unit U_pesqFormaPGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesqProdFornecedor, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_PesPGTOcp = class(TForm_PesForneProduto)
    qry_ProdFornecedorDESCRICAO: TStringField;
    qry_ProdFornecedorCADASTRO: TDateField;
    qry_PesformPGTO: TFDQuery;
    qry_PesformPGTOID: TIntegerField;
    qry_PesformPGTODESCRICAO: TStringField;
    qry_PesformPGTOCADASTRO: TDateField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PesPGTOcp: TForm_PesPGTOcp;

implementation

{$R *.dfm}

uses U_DM;

procedure TForm_PesPGTOcp.FormShow(Sender: TObject);
begin
  qry_PesformPGTO.Close;
  qry_PesformPGTO.Open;
end;

end.
