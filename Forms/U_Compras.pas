unit U_Compras;

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
  TForm_Compras = class(TForm_PadraoMovimento)
    Label1: TLabel;
    DBEIdCompra: TDBEdit;
    Label2: TLabel;
    DBEFornCompra: TDBEdit;
    Label3: TLabel;
    DBEUsuarioCompra: TDBEdit;
    Label4: TLabel;
    DBEPgtoCompra: TDBEdit;
    Label5: TLabel;
    DBEVlCompra: TDBEdit;
    Label6: TLabel;
    DBECdCompra: TDBEdit;
    qryFornecedorCp: TFDQuery;
    qryFormaPGTOCp: TFDQuery;
    dsFornecedorCp: TDataSource;
    dsFormaPGTOCp: TDataSource;
    qryFornecedorCpID: TIntegerField;
    qryFornecedorCpNOME: TStringField;
    qryFormaPGTOCpID: TIntegerField;
    qryFormaPGTOCpDESCRICAO: TStringField;
    qry_PadraoID: TFDAutoIncField;
    qry_PadraoID_FORNECEDOR: TIntegerField;
    qry_PadraoUSUARIO: TStringField;
    qry_PadraoID_FORMA_PAG: TIntegerField;
    qry_PadraoVALOR: TFMTBCDField;
    qry_PadraoCADASTRO: TDateField;
    qry_PadraoNOME: TStringField;
    qry_PadraoDESCRICAO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    qyPadraoItemID_COMPRA: TIntegerField;
    qyPadraoItemID_PRODUTO: TIntegerField;
    qyPadraoItemQTDE: TFMTBCDField;
    qyPadraoItemVL_CUSTO: TFMTBCDField;
    qyPadraoItemTOTAL_ITEM: TFMTBCDField;
    Label9: TLabel;
    dbIdProdutoCp: TDBEdit;
    Label10: TLabel;
    dbQtCp: TDBEdit;
    Label11: TLabel;
    dbCustoCp: TDBEdit;
    qyPadraoItemDESCONTO: TFMTBCDField;
    Label12: TLabel;
    dbDescCp: TDBEdit;
    Label13: TLabel;
    dbTotalItemCp: TDBEdit;
    qryProdutoCP: TFDQuery;
    dsProdutoCompra: TDataSource;
    qryProdutoCPID: TIntegerField;
    qryProdutoCPDESCRICAO: TStringField;
    qryProdutoCPESTOQUE: TFMTBCDField;
    qryProdutoCPESTOQUE_MIN: TFMTBCDField;
    qryProdutoCPVL_CUSTO: TFMTBCDField;
    qyPadraoItemDESCRICAO: TStringField;
    qyPadraoItemSUBTOTAL: TAggregateField;
    btnItemCp: TButton;
    btnOkCp: TButton;
    dbtEdtItemCp: TButton;
    bntDelItemCp: TButton;
    qyPadraoItemSEQUENCIA: TFDAutoIncField;
    btnPesqProdCP: TButton;
    qry_PadraoSTATUS: TStringField;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    procedure btn_NovoClick(Sender: TObject);
    procedure DBEFornCompraClick(Sender: TObject);
    procedure DBEPgtoCompraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnItemCpClick(Sender: TObject);
    procedure btnOkCpClick(Sender: TObject);
    procedure qyPadraoItemBeforeOpen(DataSet: TDataSet);
    procedure DBEIdCompraChange(Sender: TObject);
    procedure dbtEdtItemCpClick(Sender: TObject);
    procedure bntDelItemCpClick(Sender: TObject);
    procedure calculaTotalItem();
    procedure dbDescCpExit(Sender: TObject);
    procedure dbCustoCpExit(Sender: TObject);
    procedure dbQtCpExit(Sender: TObject);
    procedure atualizaValorCompra();
    procedure btnPesqProdCPClick(Sender: TObject);
    procedure dbIdProdutoCpExit(Sender: TObject);
    procedure atualizaEstoque(CompraVenda : integer);
    procedure fechaCompra();
    procedure btn_DeletarClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Compras: TForm_Compras;

implementation

{$R *.dfm}

uses U_DM, U_Login, U_PesqProdFornecedor, U_pesqFormaPGTO, U_PesqProduto, U_PesqCompra;


procedure TForm_Compras.btn_DeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja deletar esta compra?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
  begin
    qyPadraoItem.First;
    while qyPadraoItem.RecordCount > 0 do
    begin
      if qryProdutoCP.Locate('ID', qyPadraoItemID_PRODUTO.AsInteger, []) then
      begin
        qryProdutoCP.Edit;
        qryProdutoCP.FieldByName('ESTOQUE').AsFloat := qryProdutoCP.FieldByName('ESTOQUE').AsFloat - qyPadraoItemQTDE.AsFloat;
        qryProdutoCP.Post;
        qryProdutoCP.Refresh;
        qyPadraoItem.Delete;
        qyPadraoItem.Next;
      end;

    end;
    inherited;
  end
  else
  begin
    Abort
  end;
end;

procedure TForm_Compras.btn_NovoClick(Sender: TObject);
begin
  inherited;
  qry_PadraoCADASTRO.AsDateTime := now;
  qry_PadraoUSUARIO.AsString := UpperCase(Form_Login.usuarioLogado);
  qry_PadraoVALOR.AsCurrency := 0;
  DBComboBox1.Text := 'A';
end;

procedure TForm_Compras.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  try
    Form_PesqCompra := TForm_PesqCompra.Create(self);
    Form_PesqCompra.ShowModal;
  finally
    if Form_PesqCompra.codigo >= 0 then
    begin
      qry_Padrao.Locate('ID', Form_PesqCompra.codigo, []);
    end;
    Form_PesqCompra.free;
    Form_PesqCompra := nil;
  end;
end;

procedure TForm_Compras.calculaTotalItem;
begin
  qyPadraoItemTOTAL_ITEM.AsFloat := (qyPadraoItemQTDE.AsFloat * qyPadraoItemVL_CUSTO.AsFloat) - qyPadraoItemDESCONTO.AsFloat;
end;

procedure TForm_Compras.dbCustoCpExit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Compras.dbDescCpExit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Compras.atualizaEstoque(CompraVenda : integer);
begin

  qyPadraoItem.First;

  while not qyPadraoItem.Eof do
  begin
    if qryProdutoCP.Locate('ID', qyPadraoItemID_PRODUTO.AsInteger, []) then
    begin
      qryProdutoCP.Edit;
      if CompraVenda = 1 then
      begin
        qryProdutoCP.FieldByName('ESTOQUE').AsFloat := qryProdutoCP.FieldByName('ESTOQUE').AsFloat + qyPadraoItemQTDE.AsFloat;
      end else
      begin
        qryProdutoCP.FieldByName('ESTOQUE').AsFloat := qryProdutoCP.FieldByName('ESTOQUE').AsFloat - qyPadraoItemQTDE.AsFloat;
      end;
      qryProdutoCP.Post;
      qyPadraoItem.Next;
      qryProdutoCP.Refresh;
    end;


  end;
  MessageDlg('Estoque Atualizado!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);

end;

procedure TForm_Compras.atualizaValorCompra;
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

procedure TForm_Compras.bntDelItemCpClick(Sender: TObject);
begin
  if MessageDlg('Deseja deletar este item?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
  begin

    try
      if qryProdutoCP.Locate('ID', qyPadraoItemID_PRODUTO.AsInteger, []) then
      begin
        qryProdutoCP.Edit;
        qryProdutoCP.FieldByName('ESTOQUE').AsFloat := qryProdutoCP.FieldByName('ESTOQUE').AsFloat - qyPadraoItemQTDE.AsFloat;
        qryProdutoCP.Refresh;

        qyPadraoItem.Delete;
        MessageDlg('Item excluido com sucesso, saldo removido!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;
    except
      MessageDlg('N�o foi possivel deletar o item!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      Abort;
    end;
  end;

end;

procedure TForm_Compras.dbtEdtItemCpClick(Sender: TObject);
begin
  try
    qyPadraoItem.Edit;
  except
    MessageDlg('N�o foi possivel Editar o item!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    Abort;
  end;
end;

procedure TForm_Compras.fechaCompra;
begin
  qry_Padrao.Edit;
  qry_PadraoSTATUS.AsString := 'F';
  qry_Padrao.Post;
end;

procedure TForm_Compras.btnItemCpClick(Sender: TObject);
begin
  //Insere itens na tabela itens compra
  qyPadraoItem.Append;
  qyPadraoItemID_COMPRA.AsInteger := qry_PadraoID.AsInteger;
end;

procedure TForm_Compras.btnOkCpClick(Sender: TObject);
begin
   if qry_PadraoSTATUS.AsString = 'A'  then
   begin
    If  MessageDlg('Antes de fechar a compra insira todos os itens!'+#13+
                    'Deseja fechar essa compra?',mtConfirmation,[mbyes,mbno],0) = mryes
    then
    begin
      try
      qyPadraoItem.Post;
      qyPadraoItem.Close;
      qyPadraoItem.ParamByName('PID_COMPRA').AsInteger := qry_PadraoID.AsInteger;
      qyPadraoItem.Open;

      atualizaValorCompra;
      atualizaEstoque(1);
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

procedure TForm_Compras.btnPesqProdCPClick(Sender: TObject);
begin
  inherited;
  try
    try
      Form_PesProduto := TForm_PesProduto.Create(self);
      Form_PesProduto.ShowModal;
    finally
      qyPadraoItemID_PRODUTO.AsInteger := Form_PesProduto.codigo;
      dbIdProdutoCp.SetFocus;
      Form_PesProduto.Free;
      Form_PesProduto := nil;
    end;
  except
   MessageDlg('Para inserir um item � necess�rio clicar em "Novo Item"', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
  end;
end;

procedure TForm_Compras.DBEFornCompraClick(Sender: TObject);
begin
  inherited;
    try
      Form_PesForneProduto := TForm_PesForneProduto.Create(self);
      Form_PesForneProduto.ShowModal;
    finally
      DBEFornCompra.Text := Form_PesForneProduto.qry_ProdFornecedorID.AsString;
      Form_PesForneProduto.Free;
      Form_PesForneProduto := nil;
    end;
end;

procedure TForm_Compras.DBEIdCompraChange(Sender: TObject);
begin
  qyPadraoItem.Close;
  qyPadraoItem.ParamByName('PID_COMPRA').AsInteger := qry_PadraoID.AsInteger;
  qyPadraoItem.Open;
end;

procedure TForm_Compras.DBEPgtoCompraClick(Sender: TObject);
begin
  inherited;
  try
    Form_PesPGTOcp := TForm_PesPGTOcp.Create(self);
    Form_PesPGTOcp .ShowModal;
  finally
    DBEPgtoCompra.Text :=  Form_PesPGTOcp.qry_PesformPGTOID.AsString;
    Form_PesPGTOcp.Free;
    Form_PesPGTOcp := nil;
  end;
end;

procedure TForm_Compras.dbIdProdutoCpExit(Sender: TObject);
begin
  inherited;
  if qyPadraoItemID_PRODUTO.AsInteger > 0 then
    if qryProdutoCP.Locate('ID', qyPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then
  begin
    qyPadraoItemQTDE.AsFloat := 1;
    qyPadraoItemDESCONTO.AsFloat := 0;
    qyPadraoItemVL_CUSTO.AsFloat := qryProdutoCP.FieldByName('VL_CUSTO').AsFloat;

    calculaTotalItem;
  end
  else
  begin
    MessageDlg('Produto n�o encontrado!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    qyPadraoItem.Cancel;
  end;
end;

procedure TForm_Compras.dbQtCpExit(Sender: TObject);
begin
  inherited;
  calculaTotalItem;
end;

procedure TForm_Compras.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.Open;
  qyPadraoItem.Close;
  qyPadraoItem.ParamByName('PID_COMPRA').AsInteger := qry_PadraoID.AsInteger;
  qyPadraoItem.Open;
end;

procedure TForm_Compras.qyPadraoItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qyPadraoItem.ParamByName('PID_COMPRA').AsInteger := qry_PadraoID.AsInteger;
end;

end.
