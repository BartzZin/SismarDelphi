unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.UITypes;

type
  TForm_Padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_Novo: TBitBtn;
    btn_Deletar: TBitBtn;
    btn_Alterar: TBitBtn;
    btn_Gravar: TBitBtn;
    btn_Cancelar: TBitBtn;
    btn_Atualizar: TBitBtn;
    btn_Pesquisar: TBitBtn;
    qry_Padrao: TFDQuery;
    ds_Padrao: TDataSource;
    btn_Sair: TBitBtn;
    bnt_qryPrior: TButton;
    bnt_qryNext: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_DeletarClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_AtualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure btn_SairClick(Sender: TObject);
    procedure bnt_qryPriorClick(Sender: TObject);
    procedure bnt_qryNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Padrao: TForm_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TForm_Padrao.bnt_qryNextClick(Sender: TObject);
begin
    try
    qry_Padrao.Next;
  except
    Abort
  end;
end;

procedure TForm_Padrao.bnt_qryPriorClick(Sender: TObject);
begin
  try
    qry_Padrao.Prior;
  except
    Abort
  end;
end;

procedure TForm_Padrao.btn_AlterarClick(Sender: TObject);
begin
  try
    Tratabotoes;
    if MessageDlg('Deseja editar este registro ?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      qry_Padrao.Edit;
    end
    else
    begin
      abort
    end;
  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_AtualizarClick(Sender: TObject);
begin
  try
    Tratabotoes;
    qry_Padrao.Refresh;
    MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOk], 0);
  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_CancelarClick(Sender: TObject);
begin
  try
    Tratabotoes;
    qry_Padrao.Cancel;
    MessageDlg('A��o cancelada pelo usu�rio!', mtInformation, [mbOk], 0);
  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_DeletarClick(Sender: TObject);
begin
  try
    if MessageDlg('Deseja deletar este registro ?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      qry_Padrao.delete;
      Tratabotoes;
    end
    else
    begin
      Tratabotoes;
      Abort
    end;

  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_GravarClick(Sender: TObject);
begin
  try
    Tratabotoes;
    qry_Padrao.Post;
    MessageDlg('Registro gravado com sucesso!', mtInformation, [mbOk], 0);
    qry_Padrao.Close;
    qry_Padrao.Open;
  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_NovoClick(Sender: TObject);
begin
  try
    Tratabotoes;
    qry_Padrao.Close;
    qry_Padrao.Open();
    qry_Padrao.Append;
  except
    MessageDlg('N�o foi possivel realizar esta opera��o.', mtInformation, [mbOk], 0);
  end;

end;

procedure TForm_Padrao.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //Faz a fun��o da tecla tab
  if key=#13 then
  begin
    key:= #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TForm_Padrao.Tratabotoes;
begin
  btn_Novo.Enabled      := not btn_Novo.Enabled;
  btn_Deletar.Enabled   := not btn_Deletar.Enabled;
  btn_Alterar.Enabled   := not btn_Alterar.Enabled;
  btn_Gravar.Enabled    := not btn_Gravar.Enabled;
  btn_Atualizar.Enabled := not btn_Atualizar.Enabled;
end;

end.
