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
  QtdNovosVideos : integer;
  QtdVideosDeletados : integer;
  QtdNotificacoes : integer;
begin
  try
    Video := TVideoData.create;
    Show := TMostrar.create(Video);
  try
    Writeln('Quantos videos foram adicionados?');
    Readln(QtdNovosVideos);
    Writeln('Quantos videos foram deletados?');
    Readln(QtdVideosDeletados);

    Readln;
    QtdNotificacoes := (QtdVideosDeletados + QtdNovosVideos);
    Show.atualizacoes(QtdNovosVideos,QtdVideosDeletados,QtdNotificacoes);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  end;
end.
