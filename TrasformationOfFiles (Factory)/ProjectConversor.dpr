program ProjectConversor;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {PrincipalConversor},
  UnConversorXml in 'UnConversorXml.pas',
  UnConversorCsv in 'UnConversorCsv.pas',
  UnConversorJson in 'UnConversorJson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalConversor, PrincipalConversor);
  Application.Run;
end.
