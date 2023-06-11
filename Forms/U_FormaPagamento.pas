unit U_FormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_Pagamentos = class(TForm_Padrao)
    qry_PadraoID: TIntegerField;
    qry_PadraoDESCRICAO: TStringField;
    qry_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    dbeDtCdPagamento: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Pagamentos: TForm_Pagamentos;

implementation

{$R *.dfm}

procedure TForm_Pagamentos.btn_NovoClick(Sender: TObject);
begin
  inherited;
  dbeDtCdPagamento.Text := DateToStr(now);
end;

procedure TForm_Pagamentos.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.open;
  dbeDtCdPagamento.Text := DateToStr(now);
  btn_Pesquisar.Visible := False;
end;

end.
