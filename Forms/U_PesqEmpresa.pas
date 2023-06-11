unit U_PesqEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm_PesEmpresa = class(TForm_PesPadrao)
    qryPesqPadraoID: TIntegerField;
    qryPesqPadraoRAZAO_SOCIAL: TStringField;
    qryPesqPadraoN_FANTASIA: TStringField;
    qryPesqPadraoCPF_CNPJ: TStringField;
    qryPesqPadraoENDERECO: TStringField;
    qryPesqPadraoNUMERO: TIntegerField;
    qryPesqPadraoBAIRRO: TStringField;
    qryPesqPadraoCIDADE: TStringField;
    qryPesqPadraoUF: TStringField;
    qryPesqPadraoTELEFONE: TStringField;
    qryPesqPadraoEMAIL: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    qryPesqPadraoCEP: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure cb_ChavePesquisaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PesEmpresa: TForm_PesEmpresa;

implementation

{$R *.dfm}

procedure TForm_PesEmpresa.bt_PesquisaClick(Sender: TObject);
begin
try
  qryPesqPadrao.Close;
  qryPesqPadrao.SQL.Clear;
  qryPesqPadrao.Params.Clear;

  qryPesqPadrao.SQL.Add('SELECT '+
    'EMPRESA.ID, '+
    'EMPRESA.RAZAO_SOCIAL, '+
    'EMPRESA.N_FANTASIA, '+
    'EMPRESA.CPF_CNPJ, '+
    'EMPRESA.ENDERECO, '+
    'EMPRESA.NUMERO, '+
    'EMPRESA.BAIRRO, '+
    'EMPRESA.CIDADE, '+
    'EMPRESA.UF, '+
    'EMPRESA.TELEFONE, '+
    'EMPRESA.EMAIL, '+
    'EMPRESA.CADASTRO, '+
    'EMPRESA.CEP');
  qryPesqPadrao.SQL.Add('FROM EMPRESA');

  case cb_ChavePesquisa.ItemIndex of
    0: begin // Pesquisa Codigo
      qryPesqPadrao.SQL.Add('WHERE EMPRESA.ID = :PIDUSUARIO');
      qryPesqPadrao.ParamByName('PIDUSUARIO').AsString := ed_PesquisaNome.Text;
    end;
    1: begin // Pesquisa Nome
      qryPesqPadrao.SQL.Add('WHERE EMPRESA.RAZAO_SOCIAL LIKE :PRAZAO_SOCIAL');
      qryPesqPadrao.ParamByName('PRAZAO_SOCIAL').AsString := '%' + ed_PesquisaNome.Text + '%';

    end;
    2: begin // Pesquisa Data
      qryPesqPadrao.SQL.Add('WHERE EMPRESA.CADASTRO = :PDTCADASTRO');
      qryPesqPadrao.ParamByName('PDTCADASTRO').AsDate := StrToDate(mk_Inicio.Text);
    end;
    3: begin // Pesquisa Periodo
      qryPesqPadrao.SQL.Add('WHERE EMPRESA.CADASTRO BETWEEN :PCADASTROINI AND :PCADASTROFIM');
      qryPesqPadrao.ParamByName('PCADASTROINI').AsDate := StrToDate(mk_Inicio.Text);
      qryPesqPadrao.ParamByName('PCADASTROFIM').AsDate := StrToDate(mk_Fim.Text);
    end;
  end;

  //Abre Query de Pesquisa
  qryPesqPadrao.Open;
  if qryPesqPadrao.IsEmpty then
  begin
    MessageDlg('Registro não encontrado!', TMsgDlgType.mtInformation, [mbOK], 0);
  end;

  except
    MessageDlg('Tivemos um probleminha!', TMsgDlgType.mtInformation, [mbOK], 0);
  end;
end;

procedure TForm_PesEmpresa.bt_TransferirClick(Sender: TObject);
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

procedure TForm_PesEmpresa.cb_ChavePesquisaChange(Sender: TObject);
begin
  inherited;
  //Está Definido no objeto pai
end;

procedure TForm_PesEmpresa.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_Transferir.Click;
end;

procedure TForm_PesEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryPesqPadrao.Close;
end;

procedure TForm_PesEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TForm_PesEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  qryPesqPadrao.Close;
  qryPesqPadrao.Open;
end;

end.
