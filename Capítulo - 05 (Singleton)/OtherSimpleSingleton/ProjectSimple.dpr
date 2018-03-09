program ProjectSimple;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {Form1},
  UnSingleton in 'UnSingleton.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
