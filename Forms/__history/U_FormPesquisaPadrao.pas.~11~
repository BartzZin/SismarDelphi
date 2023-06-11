unit U_FormPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, frxClass, frxDBSet;

type
  TForm_PesPadrao = class(TForm)
    Pnl_topPesquisa: TPanel;
    cb_ChavePesquisa: TComboBox;
    lbl_opsPesquisa: TLabel;
    ed_PesquisaNome: TEdit;
    mk_Inicio: TMaskEdit;
    mk_Fim: TMaskEdit;
    lbl_descPesquisa: TLabel;
    lbl_dtinicio: TLabel;
    lbl_dtFim: TLabel;
    DBGrid1: TDBGrid;
    pnl_PesFooter: TPanel;
    bt_Pesquisa: TBitBtn;
    bt_Transferir: TBitBtn;
    bt_Imprimir: TBitBtn;
    qryPesqPadrao: TFDQuery;
    dsPesqPadrao: TDataSource;
    procedure cb_ChavePesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo : Integer;
  end;

var
  Form_PesPadrao: TForm_PesPadrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TForm_PesPadrao.cb_ChavePesquisaChange(Sender: TObject);
begin
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

    1: begin // Pesquisa Nome
      ed_PesquisaNome.Visible := True;
      lbl_descPesquisa.Visible := True;
      lbl_descPesquisa.Caption := 'Nome';

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
  end;
end;

end.
