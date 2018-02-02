unit TestUnSubjectLike;

interface

uses
  TestFramework, UnObserverSubscribsInterface, System.Generics.Collections,
  UnSubjectLikesInterface, System.SysUtils, UnSubjectLike, UnMostrarLikes;

type
  TestTSubjectLike = class(TTestCase)
  strict private
    FSubjectLike: TSubjectLike;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure NewFollow_Like;
    procedure UnFollow_Like;
    procedure ClassType_Like;
  end;

implementation

procedure TestTSubjectLike.ClassType_Like;
begin
  CheckEquals(FSubjectLike.ClassType, TSubjectLike);
end;

procedure TestTSubjectLike.NewFollow_Like;
begin
  FSubjectLike.NewFollow(TMostrarLikes.Create);

  CheckEquals(1, FSubjectLike.ListaObserverLikes.Count);
end;

procedure TestTSubjectLike.SetUp;
begin
  inherited;
  FSubjectLike := TSubjectLike.Create;
end;

procedure TestTSubjectLike.TearDown;
begin
  inherited;
  FSubjectLike.Free;
//  FSubjectLike := nil;
end;

procedure TestTSubjectLike.UnFollow_Like;
begin
  FSubjectLike.NewFollow(TMostrarLikes.Create);
  FSubjectLike.NotFollow(TMostrarLikes.Create);

  CheckEquals(0, FSubjectLike.ListaObserverLikes.Count);
end;

initialization
  RegisterTest(TestTSubjectLike.Suite);
end.

