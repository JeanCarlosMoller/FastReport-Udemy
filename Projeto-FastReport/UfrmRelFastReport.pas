unit UfrmRelFastReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, UdmFastReport, frxDBSet, Vcl.Menus, frxExportBaseDialog,
  frxExportPDF,
  frxExportXLSX, frxExportXLS, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    frxEstado: TfrxReport;
    QryEstado: TFDQuery;
    frxDSEstado: TfrxDBDataset;
    QryEmpresa: TFDQuery;
    frxDSEmpresa: TfrxDBDataset;
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    Estado1: TMenuItem;
    Sair1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCliente: TfrxReport;
    QryPedido: TFDQuery;
    frxDSPedidos: TfrxDBDataset;
    QryItens: TFDQuery;
    frxDSPItens: TfrxDBDataset;
    Pedido1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    procedure Estado1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pedido1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ImprimirRelatorio(pFrxReport: TfrxReport; pTitulo: String);
    procedure AbreQuery(pTipo: Integer);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
{ TForm1 }

procedure TfrmPrincipal.AbreQuery(pTipo: Integer);
begin
  QryEmpresa.Close;
  QryEmpresa.open();

  case pTipo of
  0 :
  begin
    QryEstado.Close;
    QryEstado.open();

  end;
  1 :
  begin
    QryPedido.Close;
    QryPedido.open();

    QryItens.Close;
    QryItens.open();
  end;
end;
end;

procedure TfrmPrincipal.Estado1Click(Sender: TObject);
begin
  AbreQuery(0);
  ImprimirRelatorio(frxEstado, 'Relatório de Estado');
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmPrincipal := nil;
end;

procedure TfrmPrincipal.ImprimirRelatorio(pFrxReport: TfrxReport;
  pTitulo: String);
begin
  pFrxReport.Variables.Clear;
  pFrxReport.Variables['pTitulo'] := QuotedStr(pTitulo);
  pFrxReport.ShowReport();

end;

procedure TfrmPrincipal.Pedido1Click(Sender: TObject);
begin
  AbreQuery(1);
  ImprimirRelatorio(frxCliente, 'Relatórios de Pedidos dos Clientes');
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
