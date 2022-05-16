unit ListaClientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  TFormListarClientes = class(TForm)
    Layout1: TLayout;
    Edit1: TEdit;
    btnBuscarCliente: TButton;
    Layout2: TLayout;
    ListView1: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListarClientes: TFormListarClientes;

implementation

{$R *.fmx}

end.
