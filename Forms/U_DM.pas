unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    OpenDialog1: TOpenDialog;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stConexao : Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_Utilitarios;


{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    Conexao.Params.Database := Form_Utilitarios.fncLerArquivoINI;
    Conexao.Connected := True;
    stConexao := True;
  except
      MessageDlg('Para continuar é necessário selecionar um banco de dados.', mtConfirmation, [TMsgDlgBtn.mbYes], 0);
      if OpenDialog1.Execute() then
      begin
        Conexao.Params.Database := OpenDialog1.FileName;
        Form_Utilitarios.prcGravarArquivoINI(OpenDialog1.FileName);
        try
          Conexao.Connected := True;
          stConexao := True;
        except
          MessageDlg('Banco de Dados não foi conectado!', TMsgDlgType.mtError, [mbOk], 0);
          stConexao := False;
        end;
      end;
  end;
end;

end.
