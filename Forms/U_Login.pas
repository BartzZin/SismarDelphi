unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, ShellAPI;

type
  TForm_Login = class(TForm)
    Qry_Login: TFDQuery;
    Ds_Login: TDataSource;
    pnl_Principal: TPanel;
    lbl_SisErp: TLabel;
    lbl_TelaLogin: TLabel;
    pnl_Central: TPanel;
    lbl_Login: TLabel;
    lbl_Senha: TLabel;
    edt_Senha: TEdit;
    btn_logar: TButton;
    btn_Ajuda: TButton;
    Edt_Login: TEdit;
    Qry_LoginID: TIntegerField;
    Qry_LoginNOME: TStringField;
    Qry_LoginSENHA: TStringField;
    Qry_LoginTIPO: TStringField;
    Qry_LoginCADASTRO: TDateField;
    procedure btn_logarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_AjudaClick(Sender: TObject);
  private
    { Private declarations }
    contTentativas : Integer;

  public
    { Public declarations }
    usuarioLogado : String;
    trocaUsuario : boolean;
  end;

var
  Form_Login: TForm_Login;

implementation

{$R *.dfm}

uses U_DM, U_Principal, U_Utilitarios;

procedure TForm_Login.btn_AjudaClick(Sender: TObject);
begin
  ShellExecute(handle,'open',PChar('https://api.whatsapp.com/send?phone=46984159384'), '','',SW_SHOWNORMAL);
end;

procedure TForm_Login.btn_logarClick(Sender: TObject);
begin

  Qry_Login.Close;

  Qry_Login.ParamByName('PNOME').Text   := Edt_Login.Text;
  Qry_Login.ParamByName('PSENHA').Text  := Form_Utilitarios.CodificarSenha(edt_Senha.Text);


  Qry_Login.Open;

  if Qry_Login.RecordCount > 0 then
  begin
    Form_Login.Visible := False;
    usuarioLogado := Qry_Login.FieldByName('NOME').Text;
    Qry_Login.Close;
    try
      Form_Principal := TForm_Principal.Create(Self);
      Form_Principal.ShowModal;
    finally
      if trocaUsuario <> True then
      begin
        Form_Principal.Free;
        Form_Principal := nil;
        Close;
      end else
      begin
        trocaUsuario := False;
      end;

    end;
  end
  else
  begin
    MessageDlg('Login Invalido!'+#13+
    'Voce possui um maximo de 03 tentativas!'+#13+
    'Tentativa numero: ' + IntToStr(contTentativas), TMsgDlgType.mtInformation, [mbOk], 0);
  end;
  contTentativas := contTentativas +1;
  if contTentativas > 3 then
    close;

end;

procedure TForm_Login.FormShow(Sender: TObject);
begin
  if DM.stConexao = False then
   begin
      Close;
   end;
  if trocaUsuario = true then
  begin
    lbl_SisErp.Caption := 'Troca de Usu�rio';
    Edt_Login.Text := '';
    edt_Senha.Text := '';
    lbl_TelaLogin.Visible := false;
  end;

  contTentativas := 1;
  Edt_Login.SetFocus;
end;

end.
