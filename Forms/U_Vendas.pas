unit U_Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_MovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm_Vendas = class(TForm_PadraoMovimento)
    qry_PadraoID: TFDAutoIncField;
    qry_PadraoID_CLIENTE: TIntegerField;
    qry_PadraoUSUARIO: TStringField;
    qry_PadraoID_FORMA_PAG: TIntegerField;
    qry_PadraoVALOR: TFMTBCDField;
    qry_PadraoCADASTRO: TDateField;
    qyPadraoItemID: TFDAutoIncField;
    qyPadraoItemID_VENDA: TIntegerField;
    qyPadraoItemID_PRODUTO: TIntegerField;
    qyPadraoItemQTDE: TFMTBCDField;
    qyPadraoItemVL_CUSTO: TFMTBCDField;
    qyPadraoItemDESCONTO: TFMTBCDField;
    qyPadraoItemTOTAL_ITEM: TFMTBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DbIdCliVd: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DbFormPgtVd: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qryFormaPGTOVd: TFDQuery;
    qryFormaPGTOVdID: TIntegerField;
    qryFormaPGTOVdDESCRICAO: TStringField;
    dsFormaPGTOVd: TDataSource;
    qryProdutoVd: TFDQuery;
    qryProdutoVdID: TIntegerField;
    qryProdutoVdDESCRICAO: TStringField;
    qryProdutoVdESTOQUE: TFMTBCDField;
    qryProdutoVdESTOQUE_MIN: TFMTBCDField;
    qryProdutoVdVL_CUSTO: TFMTBCDField;
    dsProdutoVenda: TDataSource;
    qryClienteVd: TFDQuery;
    qryClienteVdID: TIntegerField;
    qryClienteVdNOME: TStringField;
    dsClienteVd: TDataSource;
    qry_PadraoNomeCli: TStringField;
    DBEdit7: TDBEdit;
    qry_Padraoformapgt: TStringField;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DbIdProdutoCp: TDBEdit;
    btnPesqProdCP: TButton;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    btnNewItemVd: TButton;
    BtnFechaVenda: TButton;
    qry_PadraoSTATUS: TStringField;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    BtnEdtVendaI: TButton;
    BtnExcluiItem: TButton;
    qyPadraoItemdescprod: TStringField;
    procedure FormShow(Sender: TObject);
    procedure qyPadraoItemBeforeOpen(DataSet: TDataSet);
    procedure DBEdit1Change(Sender: TObject);
    procedure btnPesqProdCPClick(Sender: TObject);
    procedure btnNewItemVdClick(Sender: TObject);
    procedure BtnFechaVendaClick(Sender: TObject);
    procedure atualizaValorVenda();
    procedure atualizaEstoque(CompraVenda : integer);
    procedure fechaCompra;
    procedure DbIdProdutoCpExit(Sender: TObject);
    procedure calculaTotalItem();
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BtnExcluiItemClick(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
    procedure DbFormPgtVdClick(Sender: TObject);
    procedure DbIdCliVdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Vendas: TForm_Vendas;

implementation

{$R *.dfm}

uses U_DM, U_PesqProduto, U_Login, U_pesqFormaPGTO, U_PesqProdFornecedor;

procedure TForm_Vendas.btnPesqProdCPClick(Sender: TObject);
begin
  inherited;
  try
    try
      Form_PesProduto := TForm_PesProduto.Create(self);
      Form_PesProduto.ShowModal;
    finally
      qyPadraoItemID_PRODUTO.AsInteger := Form_PesProduto.codigo;
      DbIdProdutoCp.SetFocus;
      Form_PesProduto.Free;
      Form_PesProduto := nil;
    end;
  except
    MessageDlg('Para inserir um item � necess�rio clicar em "Novo Item"', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
  end;
end;

procedure TForm_Vendas.btn_NovoClick(Sender: TObject);
begin
  inherited;
  qry_PadraoCADASTRO.AsDateTime := now;
  qry_PadraoUSUARIO.AsString := UpperCase(Form_Login.usuarioLogado);
  qry_PadraoVALOR.AsCurrency := 0;
  DBComboBox1.Text := 'A';
end;

procedure TForm_Vendas.BtnExcluiItemClick(Sender: TObject);
begin
  if MessageDlg('Deseja deletar este item?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
    begin

      try
        if qryProdutoVd.Locate('ID', qyPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          qryProdutoVd.Edit;
          qryProdutoVd.FieldByName('ESTOQUE').AsFloat := qryProdutoVd.FieldByName('ESTOQUE').AsFloat + qyPadraoItemQTDE.AsFloat;
          qryProdutoVd.Refresh;

          qyPadraoItem.Delete;
          MessageDlg('Item excluido com sucesso, saldo removido!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
        end;
      except
        MessageDlg('N�o foi possivel deletar o item!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
        Abort;
      end;
    end;
end;

procedure TForm_Vendas.BtnFechaVendaClick(Sender: TObject);
begin
  if qry_PadraoSTATUS.AsString = 'A'  then
   begin
    if MessageDlg('Antes de fechar a compra insira todos os itens!'+#13+
                    'Deseja fechar essa compra?',mtConfirmation,[mbyes,mbno],0) = mryes
    then
      begin
        try
        qyPadraoItem.Post;
        qyPadraoItem.Close;
        qyPadraoItem.ParamByName('PID_VENDA').AsInteger := qry_PadraoID.AsInteger;
        qyPadraoItem.Open;

        atualizaValorVenda;
        atualizaEstoque(2);
        fechaCompra;

        MessageDlg('Item Gravado com sucesso!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
        except
        MessageDlg('N�o foi possivel gravar o item!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
        Abort;
        end;
      end;
   end else
   begin
    MessageDlg('A venda ja est� fechada, � necess�rio reabrir a venda.'+#13+
                'Ajuste o saldo antes de reabrir a venda, pois o sistema pode duplicar o saldo dos produtos.', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    if qyPadraoItem.State = dsInsert then
    begin
      qyPadraoItem.Delete;
    end;

    abort;
   end;
end;

procedure TForm_Vendas.btnNewItemVdClick(Sender: TObject);
begin
  inherited;
  //Insere itens na tabela itens venda
  qyPadraoItem.Append;
  qyPadraoItemID_VENDA.AsInteger := qry_PadraoID.AsInteger;
end;

procedure TForm_Vendas.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Vendas.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Vendas.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Vendas.DBEdit1Change(Sender: TObject);
begin
  inherited;
  qyPadraoItem.Close;
  qyPadraoItem.ParamByName('PID_VENDA').AsInteger := qry_PadraoID.AsInteger;
  qyPadraoItem.Open;
end;

procedure TForm_Vendas.DbIdCliVdClick(Sender: TObject);
begin
  try
    Form_PesForneProduto := TForm_PesForneProduto.Create(self);
    Form_PesForneProduto.ShowModal;
  finally
    DbIdCliVd.Text := Form_PesForneProduto.qry_ProdFornecedorID.AsString;
    Form_PesForneProduto.Free;
    Form_PesForneProduto := nil;
  end;

end;

procedure TForm_Vendas.DbFormPgtVdClick(Sender: TObject);
begin
  inherited;
  try
    Form_PesPGTOcp := TForm_PesPGTOcp.Create(self);
    Form_PesPGTOcp .ShowModal;
  finally
    DbFormPgtVd.Text :=  Form_PesPGTOcp.qry_PesformPGTOID.AsString;
    Form_PesPGTOcp.Free;
    Form_PesPGTOcp := nil;
  end;
end;

procedure TForm_Vendas.DbIdProdutoCpExit(Sender: TObject);
begin
  inherited;
  if qyPadraoItemID_PRODUTO.AsInteger > 0 then
    if qryProdutoVd.Locate('ID', qyPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then
      begin
      qyPadraoItemQTDE.AsFloat := 1;
      qyPadraoItemDESCONTO.AsFloat := 0;
      qyPadraoItemVL_CUSTO.AsFloat := qryProdutoVD.FieldByName('VL_CUSTO').AsFloat;

      calculaTotalItem;
      end
      else
      begin
      MessageDlg('Produto n�o encontrado!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      qyPadraoItem.Cancel;
      end;
end;

procedure TForm_Vendas.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.Open;
  qyPadraoItem.Close;
  qyPadraoItem.ParamByName('PID_VENDA').AsInteger := qry_PadraoID.AsInteger;
  qyPadraoItem.Open;
end;

procedure TForm_Vendas.qyPadraoItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qyPadraoItem.ParamByName('PID_VENDA').AsInteger := qry_PadraoID.AsInteger;
end;

procedure TForm_Vendas.atualizaValorVenda;
var totalatualizaitem  : Double;
begin
  qyPadraoItem.First;
  totalatualizaitem := 0;
  while not qyPadraoItem.Eof do
    begin
      totalatualizaitem := totalatualizaitem + qyPadraoItemTOTAL_ITEM.AsFloat;
      qyPadraoItem.Next;
    end;
  try
    qry_Padrao.Edit;
    qry_PadraoVALOR.AsFloat := totalatualizaitem;
    qry_Padrao.Post;
  except
    MessageDlg('Erro ao atualizar total da compra!', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    Abort
  end;

end;

procedure TForm_Vendas.atualizaEstoque(CompraVenda : integer);
begin

  qyPadraoItem.First;

  while not qyPadraoItem.Eof do
  begin
    if qryProdutoVd.Locate('ID', qyPadraoItemID_PRODUTO.AsInteger, []) then
    begin
      qryProdutoVd.Edit;
      if CompraVenda = 1 then
      begin // Realiza Entrada no estoque
        qryProdutoVd.FieldByName('ESTOQUE').AsFloat := qryProdutoVd.FieldByName('ESTOQUE').AsFloat + qyPadraoItemQTDE.AsFloat;
      end else
      begin // Realiza Sa�da do estoque
        qryProdutoVd.FieldByName('ESTOQUE').AsFloat := qryProdutoVd.FieldByName('ESTOQUE').AsFloat - qyPadraoItemQTDE.AsFloat;
      end;
      qryProdutoVd.Post;
      qyPadraoItem.Next;
      qryProdutoVd.Refresh;
    end;


  end;
  MessageDlg('Estoque Atualizado!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);

end;

procedure TForm_Vendas.fechaCompra;
begin
  qry_Padrao.Edit;
  qry_PadraoSTATUS.AsString := 'F';
  qry_Padrao.Post;
end;

procedure TForm_Vendas.calculaTotalItem;
begin
  qyPadraoItemTOTAL_ITEM.AsFloat := (qyPadraoItemQTDE.AsFloat * qyPadraoItemVL_CUSTO.AsFloat) - qyPadraoItemDESCONTO.AsFloat;
end;

end.
