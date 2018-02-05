program ProjectNotifyOfInformation;

{$APPTYPE CONSOLE}

{$R *.RES}

uses
  System.SysUtils,
  UnObserverInterface in 'UnObserverInterface.pas',
  UnSubjectInterface in 'UnSubjectInterface.pas',
  UnVideo in 'UnVideo.pas',
  UnTelaInterface in 'UnTelaInterface.pas',
  UnMostrar in 'UnMostrar.pas',
  UnObserverSubscribsInterface in 'UnObserverSubscribsInterface.pas',
  UnSubjectLikesInterface in 'UnSubjectLikesInterface.pas',
  UnSubjectLike in 'UnSubjectLike.pas',
  UnMostrarLikes in 'UnMostrarLikes.pas',
  UnTelaLikesInterface in 'UnTelaLikesInterface.pas';

var
  ShowAboutVideos : TMostrar;
  ShowAboutFollowers : TMostrarLikes;

  QtdNovosVideos : integer;
  QtdVideosDeletados : integer;
  QtdNotificacoes : integer;
begin
  ReportMemoryLeaksOnShutdown := True;

  ShowAboutVideos := nil;
  ShowAboutFollowers := nil;

  try
    ShowAboutFollowers := TMostrarLikes.Create;
    ShowAboutVideos := TMostrar.create;
  try
    Writeln('> Observers of Videos <');
    Writeln('Quantos videos foram adicionados?');
    Readln(QtdNovosVideos);
    Writeln('Quantos videos foram deletados?');
    Readln(QtdVideosDeletados);


    QtdNotificacoes := (QtdVideosDeletados + QtdNovosVideos);
    ShowAboutVideos.atualizacoes(QtdNovosVideos,QtdVideosDeletados,QtdNotificacoes);
    Readln;
    Writeln('> Observers of Follows <');
    ShowAboutFollowers.Updates('Jorge','Gabriel','Vagner');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
    ShowAboutVideos.Free;
    ShowAboutFollowers.Free;
  end;
end.
