program ProjectNotifyMeVideos;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnObserverInterface in 'UnObserverInterface.pas',
  UnSubjectInterface in 'UnSubjectInterface.pas',
  UnVideoData in 'UnVideoData.pas',
  UnTelaInterface in 'UnTelaInterface.pas',
  UnMostrar in 'UnMostrar.pas';

var
  Video : TVideoData;
  Show : TMostrar;

begin
  try
    Video := TVideoData.create;
    Show := TMostrar.create(Video);
  try
    Show.atualizações('1','2','9');
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally

  end;
end.
