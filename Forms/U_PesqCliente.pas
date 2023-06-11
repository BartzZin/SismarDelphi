unit U_PesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm_PesCliente = class(TForm_PesPadrao)
    qryPesqPadraoID: TIntegerField;
    qryPesqPadraoNOME: TStringField;
    qryPesqPadraoENDERECO: TStringField;
    qryPesqPadraoNUMERO: TIntegerField;
    qryPesqPadraoBAIRRO: TStringField;
    qryPesqPadraoCIDADE: TStringField;
    qryPesqPadraoUF: TStringField;
    qryPesqPadraoCEP: TStringField;
    qryPesqPadraoTELEFONE: TStringField;
    qryPesqPadraoCNPJ: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    qryPesqPadraoTIPO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure cb_ChavePesquisaChange(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PesCliente: TForm_PesCliente;

implementation

{$R *.dfm}

uses U_DM, U_Utilitarios, U_FortesRelCliente;

procedure TForm_PesCliente.bt_ImprimirClick(Sender: TObject);
begin
  inherited;
  Try
    Form_RelClientes := TForm_RelClientes.Create(Self);
    Form_RelClientes.RLLabelTitulo.Caption := 'Relat�rio de Clientes';
    Form_RelClientes.RLReportPadrao.Preview();
  Finally
    Form_RelClientes.Free;
    Form_RelClientes := nil;
  End;

end;

procedure TForm_PesCliente.bt_PesquisaClick(Sender: TObject);
begin
  inherited;
  try
    qryPesqPadrao.Close;
    qryPesqPadrao.SQL.Clear;
    qryPesqPadrao.Params.Clear;

    qryPesqPadrao.SQL.Add('SELECT FORNECEDOR.ID, FORNECEDOR.NOME, FORNECEDOR.ENDERECO, ' +
                          'FORNECEDOR.NUMERO, FORNECEDOR.BAIRRO, FORNECEDOR.CIDADE, ' +
                          'FORNECEDOR.UF, FORNECEDOR.CEP, FORNECEDOR.TELEFONE, ' +
                          'FORNECEDOR.CNPJ, FORNECEDOR.CADASTRO, FORNECEDOR.TIPO');
    qryPesqPadrao.SQL.Add('FROM FORNECEDOR');

    case cb_ChavePesquisa.ItemIndex of
      0: begin // Pesquisa Codigo
        qryPesqPadrao.SQL.Add('WHERE FORNECEDOR.ID = :PIDFORNECEDOR');
        qryPesqPadrao.ParamByName('PIDFORNECEDOR').AsString := ed_PesquisaNome.Text;
      end;
      1: begin // Pesquisa Nome
        qryPesqPadrao.SQL.Add('WHERE FORNECEDOR.NOME LIKE :PNOMEFORNECEDOR');
        qryPesqPadrao.ParamByName('PNOMEFORNECEDOR').AsString := '%' + ed_PesquisaNome.Text + '%';

      end;
      2: begin // Pesquisa Data
        qryPesqPadrao.SQL.Add('WHERE FORNECEDOR.CADASTRO = :PDTCADASTRO');
        qryPesqPadrao.ParamByName('PDTCADASTRO').AsDate := StrToDate(mk_Inicio.Text);
      end;
      3: begin // Pesquisa Periodo
        qryPesqPadrao.SQL.Add('WHERE FORNECEDOR.CADASTRO BETWEEN :PCADASTROINI AND :PCADASTROFIM');
        qryPesqPadrao.ParamByName('PCADASTROINI').AsDate := StrToDate(mk_Inicio.Text);
        qryPesqPadrao.ParamByName('PCADASTROFIM').AsDate := StrToDate(mk_Fim.Text);
      end;
    end;

    //Abre Query de Pesquisa
    qryPesqPadrao.Open;
    if qryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro n�o encontrado!', TMsgDlgType.mtInformation, [mbOK], 0);
    end;
  except
    MessageDlg('Tivemos um probleminha!', TMsgDlgType.mtInformation, [mbOK], 0);
  end;

end;

procedure TForm_PesCliente.bt_TransferirClick(Sender: TObject);
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

procedure TForm_PesCliente.cb_ChavePesquisaChange(Sender: TObject);
begin
  inherited;
  //Est� Definido no objeto pai
end;

procedure TForm_PesCliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_Transferir.Click;
end;

procedure TForm_PesCliente.FormShow(Sender: TObject);
begin
  inherited;
  qryPesqPadrao.Close;
  qryPesqPadrao.Open;
end;

end.
