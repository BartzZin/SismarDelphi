unit U_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TForm_Usuarios = class(TForm_Padrao)
    qry_PadraoID: TIntegerField;
    qry_PadraoNOME: TStringField;
    qry_PadraoSENHA: TStringField;
    qry_PadraoTIPO: TStringField;
    qry_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbId: TDBEdit;
    Label2: TLabel;
    dbNome: TDBEdit;
    Label3: TLabel;
    dbSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbCadastro: TDBEdit;
    dbTipo: TDBComboBox;
    procedure btn_NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_GravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Usuarios: TForm_Usuarios;

implementation

{$R *.dfm}

uses U_Utilitarios, U_PesqUsuario, U_DM, U_Login;

procedure TForm_Usuarios.btn_AlterarClick(Sender: TObject);
begin
  if UpperCase(Form_Login.usuarioLogado) = UpperCase(qry_PadraoNOME.AsString) then
  begin
    inherited;
  end Else
  begin
    MessageDlg('O usu�rio logado pode alterar somente seu usu�rio', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
  end;
end;

procedure TForm_Usuarios.btn_GravarClick(Sender: TObject);
begin
  dbSenha.Text := Form_Utilitarios.CodificarSenha(dbSenha.Text);
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

procedure TForm_Usuarios.btn_NovoClick(Sender: TObject);
begin
  inherited;
  dbCadastro.Text := DateToStr(now);
  dbNome.SetFocus;

end;

procedure TForm_Usuarios.btn_PesquisarClick(Sender: TObject);
begin
  inherited;

  Form_PesUsuarios := TForm_PesUsuarios.Create(self);
  Form_PesUsuarios.ShowModal;
  try
    if Form_PesUsuarios.codigo > 0 then
    begin
      qry_Padrao.Close;
      qry_Padrao.Open;
      qry_Padrao.Locate('ID', Form_PesUsuarios.codigo, []);
    end;
  finally
    Form_PesUsuarios.Free;
    Form_PesUsuarios := nil;
  end;
end;

procedure TForm_Usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qry_Padrao.Close;
end;

procedure TForm_Usuarios.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.open;
  dbCadastro.Text := DateToStr(now);
end;


end.
