unit TestUnRedHeadDuck;

interface

uses
  TestFramework, System.SysUtils, UnFlyAbleInterface, UnRedHeadDuck, UnDuck,
  UnFlyWithWings, UnNormalSwim, UnDisplayRedHeadDuck, UnNormalQuack;

type
  TestTRedHeadDuck = class(TTestCase)
  strict private
  FRedHeadDuck : TRedHeadDuck;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure RedHeadDuck_TypeClass;

    procedure RedHeadDuck_Test_MakeFly;

    procedure RedHeadDuck_Test_MakeSwim;

    procedure RedHeadDuck_Test_MakeQuack;

    procedure RedHeadDuck_Test_MakeDisplay;

  end;

implementation

{ TestTRedHeadDuck }

procedure TestTRedHeadDuck.RedHeadDuck_Test_MakeDisplay;
begin
  CheckEqualsString('Yo, I am a Red Head Duck !', FRedHeadDuck.display);
end;

procedure TestTRedHeadDuck.RedHeadDuck_Test_MakeFly;
begin
  CheckEqualsString('I Can Fly with my Wings', FRedHeadDuck.fly);
end;

procedure TestTRedHeadDuck.RedHeadDuck_Test_MakeQuack;
begin
  CheckEqualsString('I can also do a normal quack', FRedHeadDuck.quack);
end;

procedure TestTRedHeadDuck.RedHeadDuck_Test_MakeSwim;
begin
  CheckEqualsString('I can swim normally', FRedHeadDuck.swin);
end;

procedure TestTRedHeadDuck.RedHeadDuck_TypeClass;
begin
  CheckEquals(FRedHeadDuck.ClassType, TRedHeadDuck);
end;

procedure TestTRedHeadDuck.SetUp;
begin
  inherited;
  FRedHeadDuck := TRedHeadDuck.create;
end;

procedure TestTRedHeadDuck.TearDown;
begin
  inherited;
  FRedHeadDuck.Free;
  FRedHeadDuck := nil;
end;

initialization
  RegisterTest(TestTRedHeadDuck.Suite);
end.

