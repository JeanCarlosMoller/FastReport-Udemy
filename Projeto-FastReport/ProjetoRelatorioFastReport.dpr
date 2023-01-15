program ProjetoRelatorioFastReport;

uses
  Vcl.Forms,
  UfrmRelFastReport in 'UfrmRelFastReport.pas' {frmPrincipal},
  UdmFastReport in 'UdmFastReport.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
