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
  UnPatternCommand in 'UnPatternCommand.pas',
  UnSpeed in 'UnSpeed.pas',
  UnSpeedCommand in 'UnSpeedCommand.pas';

var
  Remote: TControl;
  Virar : TVirar;
  Velocidade : TSpeedOfCar;
  VirarDireita, VirarEsquerda : ICommandControl;
  HighSpeed, MediumSpeed, LowSpeed : ICommandControl;

  EvaidationError: Exception;
begin
  Remote := nil;
  Virar := nil;
  try
  Remote := TControl.Create;
  Virar := TVirar.Create;
  Velocidade := TSpeedOfCar.Create;

  VirarDireita := TVirarDireita.Create(Virar);
  VirarEsquerda := TVirarEsquarda.Create(Virar);

  HighSpeed := THighSpeedCommand.Create(TSpeedOfCar);
  MediumSpeed := TMediumSpeedCommand.Create(TSpeedOfCar);
  LowSpeed := TLowSpeedCommand.Create(TSpeedOfCar);
  try
  Remote.SetCommands(0, VirarDireita, VirarEsquerda);
  Remote.OnButtonWasPressed(0);
  Remote.OffButtonWasPressed(0);
  Remote.UndoWasPressed;
  Readln;
  Remote.SetCommands(1, HighSpeed, MediumSpeed);
  Remote.OnButtonWasPressed(1);
  Remote.OffButtonWasPressed(1);
  Remote.UndoWasPressed;
  Readln;
  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
      raise EvaidationError.Create('Error Message');
  end;
  finally
  Remote.Free;
  Virar.Free;
  Velocidade.Free;
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
