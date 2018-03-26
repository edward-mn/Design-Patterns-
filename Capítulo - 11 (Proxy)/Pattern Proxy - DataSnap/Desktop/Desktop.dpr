program Desktop;

uses
  Vcl.Forms,
  UnShowProfessor in 'UnShowProfessor.pas' {FormShowOnGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormShowOnGrid, FormShowOnGrid);
  Application.Run;
end.
