program Sismar;

uses
  Winapi.Windows,
  System.UITypes,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Menus,
  U_Principal in '..\Forms\U_Principal.pas' {Form_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {Form_Padrao},
  U_Usuarios in '..\Forms\U_Usuarios.pas' {Form_Usuarios},
  U_Empresa in '..\Forms\U_Empresa.pas' {Form_Empresa},
  U_Clientes in '..\Forms\U_Clientes.pas' {Form_Clientes},
  U_Utilitarios in '..\Forms\U_Utilitarios.pas' {Form_Utilitarios},
  U_Produtos in '..\Forms\U_Produtos.pas' {Form_Produtos},
  U_PesqProdFornecedor in '..\Forms\U_PesqProdFornecedor.pas' {Form_PesForneProduto},
  U_FormaPagamento in '..\Forms\U_FormaPagamento.pas' {Form_Pagamentos},
  U_Login in '..\Forms\U_Login.pas' {Form_Login},
  U_FormPesquisaPadrao in '..\Forms\U_FormPesquisaPadrao.pas' {Form_PesPadrao},
  U_PesqUsuario in '..\Forms\U_PesqUsuario.pas' {Form_PesUsuarios},
  U_PesqCliente in '..\Forms\U_PesqCliente.pas' {Form_PesCliente},
  U_PesqProduto in '..\Forms\U_PesqProduto.pas' {Form_PesProduto},
  U_PesqEmpresa in '..\Forms\U_PesqEmpresa.pas' {Form_PesEmpresa},
  U_FortesRelPadrao in '..\Forms\U_FortesRelPadrao.pas' {Form_RelPAdrao},
  U_FortesRelCliente in '..\Forms\U_FortesRelCliente.pas' {Form_RelClientes},
  U_FortesRelUsuario in '..\Forms\U_FortesRelUsuario.pas' {Form_RelUsuario},
  U_FortesRelProduto in '..\Forms\U_FortesRelProduto.pas' {Form_RelProduto},
  U_MovimentoPadrao in '..\Forms\U_MovimentoPadrao.pas' {Form_PadraoMovimento},
  U_Compras in '..\Forms\U_Compras.pas' {Form_Compras},
  U_pesqFormaPGTO in '..\Forms\U_pesqFormaPGTO.pas' {Form_PesPGTOcp},
  U_PesqCompra in '..\Forms\U_PesqCompra.pas' {Form_PesqCompra},
  U_Vendas in '..\Forms\U_Vendas.pas' {Form_Vendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm_Login, Form_Login);
  Application.CreateForm(TForm_RelClientes, Form_RelClientes);
  Application.CreateForm(TForm_RelUsuario, Form_RelUsuario);
  Application.CreateForm(TForm_RelProduto, Form_RelProduto);
  Application.CreateForm(TForm_PadraoMovimento, Form_PadraoMovimento);
  Application.CreateForm(TForm_Compras, Form_Compras);
  Application.CreateForm(TForm_PesPGTOcp, Form_PesPGTOcp);
  Application.CreateForm(TForm_PesqCompra, Form_PesqCompra);
  Application.CreateForm(TForm_Vendas, Form_Vendas);
  Application.Run;






end.
