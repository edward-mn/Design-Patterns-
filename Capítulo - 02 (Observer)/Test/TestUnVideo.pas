unit TestUnVideo;

interface

uses
  TestFramework, UnObserverInterface, System.Generics.Collections,
  UnSubjectInterface, System.SysUtils, UnVideo, UnMostrar;

type
  TestTVideo = class(TTestCase)
  strict private
    FVideo: TVideo;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure NewObserver_Video;
    procedure DeleteObserver_Video;
    procedure ClassType_Video;
  end;

implementation

{ TestTVideo }

procedure TestTVideo.ClassType_Video;
begin
  CheckEquals(FVideo.ClassType , TVideo);
end;

procedure TestTVideo.DeleteObserver_Video;
begin
  FVideo.NovoVideo(TMostrar.Create);
  FVideo.DeletarVideo(TMostrar.Create);

  CheckEquals(0, FVideo.IndexObservers.Count);
end;

procedure TestTVideo.NewObserver_Video;
begin
  FVideo.NovoVideo(TMostrar.Create);

  CheckEquals(1, FVideo.IndexObservers.Count);
end;

procedure TestTVideo.SetUp;
begin
  inherited;
  FVideo := TVideo.create;
end;

procedure TestTVideo.TearDown;
begin
  inherited;
  FVideo.Free;
//  FVideo := nil;
end;

initialization
  RegisterTest(TestTVideo.Suite);
end.

