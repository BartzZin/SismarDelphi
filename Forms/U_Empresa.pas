unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_Empresa = class(TForm_Padrao)
    qry_PadraoID: TIntegerField;
    qry_PadraoRAZAO_SOCIAL: TStringField;
    qry_PadraoN_FANTASIA: TStringField;
    qry_PadraoENDERECO: TStringField;
    qry_PadraoNUMERO: TIntegerField;
    qry_PadraoBAIRRO: TStringField;
    qry_PadraoCIDADE: TStringField;
    qry_PadraoUF: TStringField;
    qry_PadraoTELEFONE: TStringField;
    qry_PadraoCPF_CNPJ: TStringField;
    qry_PadraoEMAIL: TStringField;
    qry_PadraoCADASTRO: TDateField;
    qry_PadraoLOGO: TBlobField;
    qry_PadraoCEP: TStringField;
    Label1: TLabel;
    dbIdEmpresa: TDBEdit;
    Label2: TLabel;
    dbRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    dbeCidadeEmpresa: TDBEdit;
    Label8: TLabel;
    dbeUfEmpresa: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    dbCpfCnpj: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    dbCdEmpresa: TDBEdit;
    Label13: TLabel;
    DBImageEmpresa: TDBImage;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    bt_Inseririmg: TButton;
    bt_Clearimg: TButton;
    OpenDialogIMG: TOpenDialog;
    RadioCPF: TRadioButton;
    RadioCNPJ: TRadioButton;
    procedure btn_NovoClick(Sender: TObject);
    procedure bt_InseririmgClick(Sender: TObject);
    procedure bt_ClearimgClick(Sender: TObject);
    procedure RadioCNPJClick(Sender: TObject);
    procedure RadioCPFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure dbeUfEmpresaExit(Sender: TObject);
    procedure dbeCidadeEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Empresa: TForm_Empresa;

implementation

{$R *.dfm}

uses U_PesqEmpresa;

procedure TForm_Empresa.btn_NovoClick(Sender: TObject);
begin
  inherited;
  dbCdEmpresa.Text := DateToStr(now);
  dbRazaoSocial.SetFocus;
end;

procedure TForm_Empresa.btn_PesquisarClick(Sender: TObject);
begin
  inherited;
  Form_PesEmpresa := TForm_PesEmpresa.Create(self);
  Form_PesEmpresa.ShowModal;
  try
    if Form_PesEmpresa.codigo > 0 then
    begin
      qry_Padrao.Close;
      qry_Padrao.Open;
      qry_Padrao.Locate('ID', Form_PesEmpresa.codigo, []);
    end;
  finally
    Form_PesEmpresa.Free;
    Form_PesEmpresa := nil;
  end;
end;

procedure TForm_Empresa.bt_ClearimgClick(Sender: TObject);
begin
  //Limpa imagem
  qry_padrao.Edit;
  qry_PadraoLOGO.AsVariant := Null;
  qry_padrao.Refresh;
  MessageDlg('Imagem deletada com sucesso!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
end;

procedure TForm_Empresa.bt_InseririmgClick(Sender: TObject);
begin
  //Insere foto:
  qry_Padrao.Edit;
  if OpenDialogIMG.Execute() then
  begin
      DBImageEmpresa.Picture.LoadFromFile(OpenDialogIMG.FileName);
    qry_Padrao.Refresh;
  end;
  MessageDlg('Imagem inserida com sucesso!', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
end;

procedure TForm_Empresa.dbeCidadeEmpresaExit(Sender: TObject);
begin
  inherited;
  dbeCidadeEmpresa.Text :=  UpperCase(dbeCidadeEmpresa.Text);
end;

procedure TForm_Empresa.dbeUfEmpresaExit(Sender: TObject);
begin
  inherited;
  dbeUfEmpresa.Text := UpperCase(dbeUfEmpresa.Text);
end;

procedure TForm_Empresa.FormShow(Sender: TObject);
begin
  inherited;
  qry_Padrao.Close;
  qry_Padrao.open;
end;

procedure TForm_Empresa.RadioCNPJClick(Sender: TObject);
begin
  qry_PadraoCPF_CNPJ.EditMask := '99.999.999/9999-99;0;_';
  dbCdEmpresa.Text := DateToStr(now);
end;

procedure TForm_Empresa.RadioCPFClick(Sender: TObject);
begin
  qry_PadraoCPF_CNPJ.EditMask := '999.999.999-99;0;_';
  dbCdEmpresa.Text := DateToStr(now);
end;

end.
