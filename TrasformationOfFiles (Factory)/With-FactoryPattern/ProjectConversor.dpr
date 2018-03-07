program ProjectConversor;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {PrincipalConversor},
  UnConversorXml in 'UnConversorXml.pas',
  UnConversorCsv in 'UnConversorCsv.pas',
  UnConversorJson in 'UnConversorJson.pas',
  UnDmConversor in 'UnDmConversor.pas' {DmConversor: TDataModule},
  UnConversorAbs in 'UnConversorAbs.pas',
  UnFactoryConversor in 'UnFactoryConversor.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalConversor, PrincipalConversor);
  Application.CreateForm(TDmConversor, DmConversor);
  Application.Run;
end.
