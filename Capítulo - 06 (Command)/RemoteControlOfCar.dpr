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
  UnSpeedCommand in 'UnSpeedCommand.pas',
  UnPilotoAutomatico in 'UnPilotoAutomatico.pas',
  UnAutomaticPillotCommand in 'UnAutomaticPillotCommand.pas',
  UnLigar in 'UnLigar.pas',
  UnLigarCommand in 'UnLigarCommand.pas',
  UnMicroCommand in 'UnMicroCommand.pas';

var
  Remote: TControl;
  Ligar : TOnAndOffCar;
  Virar : TVirar;
  Velocidade : TSpeedOfCar;
//  MyPilotoAutomatico : TPilotoAutomatico;
  EstadoLigado, EstadoDesligado : ICommandControl;
  VirarDireita, VirarEsquerda : ICommandControl;
  HighSpeed, MediumSpeed, LowSpeed : ICommandControl;
//  OnPilotoAutomatico, OffPilotoAutomatico :ICommandControl;
//  EvaidationError: Exception;
begin
  Remote := nil;
  Ligar := nil;
  Virar := nil;
  Velocidade := nil;
//  MyPilotoAutomatico := nil;
  try
  Remote := TControl.Create;
  Ligar := TOnAndOffCar.Create;
  Virar := TVirar.Create;
  Velocidade := TSpeedOfCar.Create;
//  MyPilotoAutomatico := TPilotoAutomatico.Create;

  EstadoLigado := TOnCarCommand.Create(Ligar);
  EstadoDesligado := TOffCarCommand.Create(Ligar);

  VirarDireita := TVirarDireita.Create(Virar);
  VirarEsquerda := TVirarEsquarda.Create(Virar);

  HighSpeed := THighSpeedCommand.Create(Velocidade);
  MediumSpeed := TMediumSpeedCommand.Create(Velocidade);
  LowSpeed := TLowSpeedCommand.Create(Velocidade);

//  OnPilotoAutomatico := TAutomaticPillotCommand.Create(MyPilotoAutomatico);
//  OffPilotoAutomatico := TAutomaticPillotCommand.Create(MyPilotoAutomatico);


  try
  Remote.SetCommands(0, EstadoLigado, EstadoDesligado);
  Remote.OnButtonWasPressed(0);
  Remote.OffButtonWasPressed(0);
  Remote.UndoWasPressed;
  Readln;
  Remote.SetCommands(1, HighSpeed, LowSpeed);
  Remote.OnButtonWasPressed(1);
  Remote.OffButtonWasPressed(1);
  Remote.UndoWasPressed;
  Readln;
  Remote.SetCommands(2, VirarDireita, VirarEsquerda);
  Remote.OnButtonWasPressed(2);
  Remote.OffButtonWasPressed(2);
  Remote.UndoWasPressed;
  Readln;
//  Remote.SetCommands(3, OnPilotoAutomatico,OffPilotoAutomatico);
//  Remote.OnButtonWasPressed(3);
//  Remote.OffButtonWasPressed(3);
//  Remote.UndoWasPressed;
//  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  Remote.Free;
  Ligar.Free;
  Virar.Free;
  Velocidade.Free;
//  MyPilotoAutomatico.Free;
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
