unit uConfigurarConexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Phys.MySQLDef, FireDAC.Comp.Client,
  System.SysUtils;

procedure ConfigurarConexao;

var
  CONEXAO: TFDConnection;

implementation

procedure ConfigurarConexao;
  var
  ConexaoDef: IFDStanConnectionDef;
  ConexaoParametros: TFDPhysMYSQLConnectionDefParams;
begin
  try
    CONEXAO.Close;

    FDManager.CloseConnectionDef('MemoCashPooled');
    FDManager.ConnectionDefs.Clear;
    FDManager.ConnectionDefs.AddConnectionDef;
    FDManager.Open;

    ConexaoDef := FDManager.ConnectionDefs.AddConnectionDef;
    ConexaoDef.Name := 'MemoCashPooled';

    ConexaoParametros := TFDPhysMYSQLConnectionDefParams(ConexaoDef.Params);
    ConexaoParametros.DriverID := 'MySQL';
    ConexaoParametros.Database := 'memocash';
    ConexaoParametros.UserName := 'root';
    ConexaoParametros.Password := '123456789';
    ConexaoParametros.Server   := '127.0.0.1';
    ConexaoParametros.Pooled   := false;
    ConexaoDef.Apply;

    CONEXAO.ConnectionDefName := 'MemoCashPooled';
  except
    on E: Exception do
      //LogErro(E.Message);
  end;
end;

end.
