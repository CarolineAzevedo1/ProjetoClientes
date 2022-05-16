program ProjetoClientes;

uses
  System.StartUpCopy,
  FMX.Forms,
  ListaClientes in 'View\ListaClientes.pas' {FormListarClientes},
  ServiceCliente in 'Service\ServiceCliente.pas',
  CadastroClientes in 'View\CadastroClientes.pas' {FormCadastroClientes},
  Cliente in 'Model\Cliente.pas',
  RepositoryCliente in 'Repository\RepositoryCliente.pas',
  uConfigurarConexao in 'uConfigurarConexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormListarClientes, FormListarClientes);
  Application.CreateForm(TFormCadastroClientes, FormCadastroClientes);
  Application.Run;
end.
