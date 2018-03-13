 program RemoteControlOfCar;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnCommandInterface in 'UnCommandInterface.pas',
  UnVirarCommand in 'UnVirarCommand.pas',
  UnVirar in 'UnVirar.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
