unit TestUnVideo;

interface

uses
  TestFramework, UnObserverInterface, System.Generics.Collections,
  UnSubjectInterface, System.SysUtils, UnVideo;

type
  TestTVideo = class(TTestCase)
  strict private
    FVideo: TVideo;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure
  end;

implementation

procedure TestTVideo.SetUp;
begin
  FVideo := TVideo.Create;
end;

procedure TestTVideo.TearDown;
begin
  FVideo.Free;
  FVideo := nil;
end;

initialization
  RegisterTest(TestTVideo.Suite);
end.

