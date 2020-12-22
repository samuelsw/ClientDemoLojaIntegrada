program LojaIntegrada;

uses
  Vcl.Forms,
  UGerenciadorLoja in 'UGerenciadorLoja.pas' {FrmGerenciadorLoja},
  ULojaIntegrada in 'Controller\ULojaIntegrada.pas',
  RestConsumeAPI in 'JSON\RestConsumeAPI.pas',
  TPreco in 'Data\model\TPreco.pas',
  TEstoqueItem in 'Data\model\TEstoqueItem.pas',
  TSituacaoPedidos in 'Data\model\TSituacaoPedidos.pas',
  TPedidos in 'Data\model\TPedidos.pas',
  TCategorias in 'Data\model\TCategorias.pas',
  TMarcas in 'Data\model\TMarcas.pas',
  TProdutos in 'Data\model\TProdutos.pas',
  ULojaIntegrada.data in 'Data\ULojaIntegrada.data.pas',
  TEnderecos in 'Data\model\TEnderecos.pas',
  TGrupos in 'Data\model\TGrupos.pas',
  TClientes in 'Data\model\TClientes.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmGerenciadorLoja, FrmGerenciadorLoja);
  Application.Run;
end.
