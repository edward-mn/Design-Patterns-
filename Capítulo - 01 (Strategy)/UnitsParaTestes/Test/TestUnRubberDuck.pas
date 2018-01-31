unit TestUnRubberDuck;

interface

uses
  TestFramework, System.SysUtils, UnFlyAbleInterface, UnRubberDuck, UnDuck,
  UnFlyWhitMagic, UnSqueakQuack, UnDisplayRubberDuck, UnToFloatSwim;

type
  TestTRubberDuck = class(TTestCase)
  strict private
    FRubberDuck: TRubberDuck;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure RubberDuck_TypeClass;

    procedure RubberDuck_Test_MakeFly;

    procedure RubberDuck_Test_MakeSwim;

    procedure RubberDuck_Test_MakeQuack;

    procedure RubberDuck_Test_MakeDisplay;
  end;

implementation

procedure TestTRubberDuck.RubberDuck_Test_MakeDisplay;
begin
  CheckEqualsString('Yah, I am a Rubber Duck', FRubberDuck.display);
end;

procedure TestTRubberDuck.RubberDuck_Test_MakeFly;
begin
  CheckEqualsString('I can Fly with a Magic', FRubberDuck.fly);
end;

procedure TestTRubberDuck.RubberDuck_Test_MakeQuack;
begin
  CheckEqualsString('I can also do diferencial quack, being a squeak', FRubberDuck.quack);
end;

procedure TestTRubberDuck.RubberDuck_Test_MakeSwim;
begin
  CheckEqualsString('I only can to float', FRubberDuck.swin);
end;

procedure TestTRubberDuck.RubberDuck_TypeClass;
begin
  CheckEquals(FRubberDuck.ClassType, TRubberDuck);
end;

procedure TestTRubberDuck.SetUp;
begin
  FRubberDuck := TRubberDuck.Create;
end;

procedure TestTRubberDuck.TearDown;
begin
  FRubberDuck.Free;
  FRubberDuck := nil;
end;

initialization
  RegisterTest(TestTRubberDuck.Suite);
end.

