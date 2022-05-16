unit Cliente;

interface

type

TEndereco = class
public
  rua: String;
  bairro: String;
  numero: String;
  CEP: String;
  cidade: String;
  area: String;
  complemento: String;
end;

TCliente = class (TEndereco)
public
  id: integer;
  nome: String;
  telefone: String;
  excluido: Boolean;
  endereco: TEndereco;
end;

implementation

end.
