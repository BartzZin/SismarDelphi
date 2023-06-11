unit U_PesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm_PesProduto = class(TForm_PesPadrao)
    qryPesqPadraoID: TIntegerField;
    qryPesqPadraoDESCRICAO: TStringField;
    qryPesqPadraoVL_CUSTO: TFMTBCDField;
    qryPesqPadraoVL_VENDA: TFMTBCDField;
    qryPesqPadraoESTOQUE: TFMTBCDField;
    qryPesqPadraoESTOQUE_MIN: TFMTBCDField;
    qryPesqPadraoUNIDADE: TStringField;
    qryPesqPadraoID_FORNECEDOR: TIntegerField;
    qryPesqPadraoNOME: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    procedure cb_ChavePesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PesProduto: TForm_PesProduto;

implementation

{$R *.dfm}

uses U_DM, U_FortesRelProduto;

procedure TForm_PesProduto.bt_ImprimirClick(Sender: TObject);
begin
  inherited;
  try
    Form_RelProduto := TForm_RelProduto.Create(self);
    Form_RelProduto.RLLabelTitulo.Caption := 'Relat�rio de Produtos';
    Form_RelProduto.RLReportPadrao.Preview();
  finally
    Form_RelProduto.Free;
    Form_RelProduto := Nil;
  end;
end;

procedure TForm_PesProduto.bt_PesquisaClick(Sender: TObject);
begin
  inherited;
  try
    qryPesqPadrao.Close;
    qryPesqPadrao.SQL.Clear;
    qryPesqPadrao.Params.Clear;

    qryPesqPadrao.SQL.Add('SELECT '
      +'PRODUTOS.ID, '
      +'PRODUTOS.DESCRICAO, '
      +'PRODUTOS.VL_CUSTO, '
      +'PRODUTOS.VL_VENDA, '
      +'PRODUTOS.ESTOQUE, '
      +'PRODUTOS.ESTOQUE_MIN, '
      +'PRODUTOS.UNIDADE, '
      +'PRODUTOS.ID_FORNECEDOR, '
      +'FORNECEDOR.NOME, '
      +'PRODUTOS.CADASTRO');
    qryPesqPadrao.SQL.Add('FROM PRODUTOS');
    qryPesqPadrao.SQL.Add('JOIN FORNECEDOR ON');
    qryPesqPadrao.SQL.Add('PRODUTOS.ID_FORNECEDOR = FORNECEDOR.ID');

    case cb_ChavePesquisa.ItemIndex of
      0: begin // Pesquisa Codigo
        qryPesqPadrao.SQL.Add('WHERE PRODUTOS.ID = :PIDPRODUTOS');
        qryPesqPadrao.ParamByName('PIDPRODUTOS').AsString := ed_PesquisaNome.Text;
      end;
      1: begin // Pesquisa Descricao
        qryPesqPadrao.SQL.Add('WHERE PRODUTOS.DESCRICAO LIKE :PNOMEPRODUTOS');
        qryPesqPadrao.ParamByName('PNOMEPRODUTOS').AsString := '%' + ed_PesquisaNome.Text + '%';

      end;
      2: begin // Pesquisa Data
        qryPesqPadrao.SQL.Add('WHERE PRODUTOS.CADASTRO = :PDTCADASTRO');
        qryPesqPadrao.ParamByName('PDTCADASTRO').AsDate := StrToDate(mk_Inicio.Text);
      end;
      3: begin // Pesquisa Periodo
        qryPesqPadrao.SQL.Add('WHERE PRODUTOS.CADASTRO BETWEEN :PCADASTROINI AND :PCADASTROFIM');
        qryPesqPadrao.ParamByName('PCADASTROINI').AsDate := StrToDate(mk_Inicio.Text);
        qryPesqPadrao.ParamByName('PCADASTROFIM').AsDate := StrToDate(mk_Fim.Text);
      end;
      4: begin
        qryPesqPadrao.SQL.Add('WHERE PRODUTOS.ID_FORNECEDOR = :PIDFORNECEDOR');
        qryPesqPadrao.ParamByName('PIDFORNECEDOR').AsString := ed_PesquisaNome.Text;
      end;
      5: begin

      end;
    end;

    //Abre Query de Pesquisa
    qryPesqPadrao.SQL.Add('ORDER BY 1');
    qryPesqPadrao.Open;
    if qryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro n�o encontrado!', TMsgDlgType.mtInformation, [mbOK], 0);
    end;

    except
      MessageDlg('Tivemos um probleminha!', TMsgDlgType.mtInformation, [mbOK], 0);
    end;

end;

procedure TForm_PesProduto.bt_TransferirClick(Sender: TObject);
begin
  inherited;
  if qryPesqPadrao.RecordCount > 0 then
    begin
    codigo := qryPesqPadraoID.AsInteger;
    end else
    begin
      abort
    end;
end;

procedure TForm_PesProduto.cb_ChavePesquisaChange(Sender: TObject);
begin
  inherited;
  case cb_ChavePesquisa.ItemIndex of
    0: begin // Pesquisa Codigo
      ed_PesquisaNome.Visible := true;
      lbl_descPesquisa.Visible := True;
      lbl_descPesquisa.Caption := 'Codigo';

      lbl_dtinicio.Visible := False;
      mk_Inicio.Visible := False;
      lbl_dtFim.Visible := False;
      mk_Fim.Visible := False;

      ed_PesquisaNome.SetFocus;
    end;

    1: begin // Pesquisa Descricao
      ed_PesquisaNome.Visible := True;
      lbl_descPesquisa.Visible := True;
      lbl_descPesquisa.Caption := 'Descri��o';

      lbl_dtinicio.Visible := False;
      mk_Inicio.Visible := False;
      lbl_dtFim.Visible := False;
      mk_Fim.Visible := False;

      ed_PesquisaNome.SetFocus;
    end;

    2: begin // Pesquisa Data
      ed_PesquisaNome.Visible := False;
      lbl_descPesquisa.Visible := False;

      mk_Inicio.Visible := True;
      lbl_dtinicio.Visible := True;
      mk_Fim.Visible := False;
      lbl_dtFim.Visible := False;

      mk_Inicio.SetFocus;
    end;

    3: begin // Pesquisa Periodo
      ed_PesquisaNome.Visible := False;
      lbl_descPesquisa.Visible := False;

      mk_Inicio.Visible := True;
      lbl_dtinicio.Visible := True;
      mk_Fim.Visible := True;
      lbl_dtFim.Visible := True;

      mk_Inicio.SetFocus;
    end;

    4: begin
      ed_PesquisaNome.Visible := True;
      lbl_descPesquisa.Visible := True;
      lbl_descPesquisa.Caption := 'ID Fornecedor';

      lbl_dtinicio.Visible := False;
      mk_Inicio.Visible := False;
      lbl_dtFim.Visible := False;
      mk_Fim.Visible := False;

      ed_PesquisaNome.SetFocus;
    end;

    5: begin
      ed_PesquisaNome.Visible := False;
      lbl_descPesquisa.Visible := False;

      lbl_dtinicio.Visible := False;
      mk_Inicio.Visible := False;
      lbl_dtFim.Visible := False;
      mk_Fim.Visible := False;
    end;
  end;
end;

procedure TForm_PesProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_Transferir.Click;
end;

procedure TForm_PesProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryPesqPadrao.Close;
end;

procedure TForm_PesProduto.FormShow(Sender: TObject);
begin
  inherited;
  qryPesqPadrao.Close;
  qryPesqPadrao.Open;
end;

end.
