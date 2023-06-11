unit U_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_Produtos = class(TForm_Padrao)
    qry_PadraoID: TIntegerField;
    qry_PadraoDESCRICAO: TStringField;
    qry_PadraoVL_CUSTO: TFMTBCDField;
    qry_PadraoVL_VENDA: TFMTBCDField;
    qry_PadraoESTOQUE: TFMTBCDField;
    qry_PadraoESTOQUE_MIN: TFMTBCDField;
    qry_PadraoUNIDADE: TStringField;
    qry_PadraoID_FORNECEDOR: TIntegerField;
    qry_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbe_DescProduto: TDBEdit;
    lbl_vlCusto: TLabel;
    DBEdit3: TDBEdit;
    lbl_vlVenda: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    lbl_EstoqueMin: TLabel;
    dbe_EstoqueMin: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    bde_CadProduto: TDBEdit;
    qry_PadraoNOME: TStringField;
    dbc_Unidade: TDBComboBox;
    lbl_IDFornecedor: TLabel;
    dbe_ProdFor: TDBEdit;
    dbe_ProdForNome: TDBEdit;
    dbeGambiarra: TEdit;
    procedure btn_NovoClick(Sender: TObject);
    procedure dbe_ProdForClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bnt_qryPriorClick(Sender: TObject);
    procedure bnt_qryNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    valorRetornado : Integer;

  end;

var
  Form_Produtos: TForm_Produtos;

implementation

{$R *.dfm}

uses U_PesqProdFornecedor, U_Utilitarios, U_PesqProduto;

procedure TForm_Produtos.bnt_qryNextClick(Sender: TObject);
begin
  inherited;
  dbeGambiarra.Visible := False;
end;

procedure TForm_Produtos.bnt_qryPriorClick(Sender: TObject);
begin
  inherited;
  dbeGambiarra.Visible := False;
end;

procedure TForm_Produtos.btn_NovoClick(Sender: TObject);
begin
  inherited;
  bde_CadProduto.Text := DateToStr(now);
  dbe_DescProduto.SetFocus;
end;


procedure TForm_Produtos.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  Form_PesProduto := TForm_PesProduto.Create(self);
  Form_PesProduto.ShowModal;
  try
    if Form_PesProduto.codigo > 0 then
    begin
      qry_Padrao.Close;
      qry_Padrao.Open;
      qry_Padrao.Locate('ID', Form_PesProduto.codigo, []);
    end;
  finally
    Form_PesProduto.Free;
    Form_PesProduto := nil;
  end;
end;

procedure TForm_Produtos.Button1Click(Sender: TObject);
begin
  inherited;
  ShowMessage(IntToStr(valorRetornado));
end;


procedure TForm_Produtos.dbe_ProdForClick(Sender: TObject);
begin
  inherited;
  try
    Form_PesForneProduto := TForm_PesForneProduto.Create(Form_Produtos);
    Form_PesForneProduto.ShowModal;
  finally
    dbe_ProdFor.Text :=  Form_PesForneProduto.qry_ProdFornecedorID.AsString;
    dbeGambiarra.Text := Form_PesForneProduto.qry_ProdFornecedorNOME.AsString;
    dbeGambiarra.Top := 130;
    dbeGambiarra.Visible := True;
    Form_PesForneProduto.free;
    Form_PesForneProduto := nil;
  end;
end;

procedure TForm_Produtos.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.open;
end;

end.
