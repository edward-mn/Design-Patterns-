program ProjectNotifyMeVideos;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnObserverInterface in 'UnObserverInterface.pas',
  UnSubjectInterface in 'UnSubjectInterface.pas',
  UnVideoData in 'UnVideoData.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
