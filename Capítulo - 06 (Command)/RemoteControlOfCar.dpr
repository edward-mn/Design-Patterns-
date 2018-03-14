 program RemoteControlOfCar;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnCommandInterface in 'UnCommandInterface.pas',
  UnVirarCommand in 'UnVirarCommand.pas',
  UnVirar in 'UnVirar.pas',
  UnRemoteControl in 'UnRemoteControl.pas',
  UnControl in 'UnControl.pas',
  UnPatternCommand in 'UnPatternCommand.pas';

var
  Remote: TControl;
  Virar : TVirar;
  VirarDireita: ICommandControl;
  VirarEsquerda: ICommandControl;
begin
  Remote := nil;
  Virar := nil;
  try
  Remote := TControl.Create;
  Virar := TVirar.Create;
  VirarDireita := TVirarDireita.Create(Virar);
  VirarEsquerda := TVirarEsquarda.Create(Virar);
  try
  Remote.SetCommands(0, VirarDireita, VirarEsquerda);
  Remote.OnButtonWasPressed(0);
  Remote.OffButtonWasPressed(0);
  Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  Remote.Free;
  Virar.Free;
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
