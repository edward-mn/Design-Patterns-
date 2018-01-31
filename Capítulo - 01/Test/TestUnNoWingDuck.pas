unit TestUnNoWingDuck;

interface

uses
  TestFramework, System.SysUtils, UnFlyAbleInterface, UnNoWingDuck, UnDuck,
  UnToSinkSwim, UnMudeQuack, UnFlyNoWay, UnDisplayNoWingDuck;

type
  TestTNoWingDuck = class(TTestCase)
  strict private
    FNoWingDuck: TNoWingDuck;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure NoWingDuck_ClassType;

    procedure NoWingDuck_Test_MakeFly;

    procedure NoWingDuck_Test_MakeSwim;

    procedure NoWingDuck_Test_MakeQuack;

    procedure NoWingDuck_Test_MakeDisplay;
  end;

implementation

procedure TestTNoWingDuck.NoWingDuck_ClassType;
begin
  CheckEquals(FNoWingDuck.ClassType, TNoWingDuck);
end;

procedure TestTNoWingDuck.NoWingDuck_Test_MakeDisplay;
begin
  CheckEqualsString('Yhoou, I not have wings', FNoWingDuck.display);
end;

procedure TestTNoWingDuck.NoWingDuck_Test_MakeFly;
begin
  CheckEquals('Sorry I can not fly :(', FNoWingDuck.fly);
end;

procedure TestTNoWingDuck.NoWingDuck_Test_MakeQuack;
begin
  CheckEqualsString('Sorry I can not also do quack :(', FNoWingDuck.quack);
end;

procedure TestTNoWingDuck.NoWingDuck_Test_MakeSwim;
begin
  CheckEqualsString('Sorry I sink on the water', FNoWingDuck.swin);
end;

procedure TestTNoWingDuck.SetUp;
begin
  FNoWingDuck := TNoWingDuck.Create;
end;

procedure TestTNoWingDuck.TearDown;
begin
  FNoWingDuck.Free;
  FNoWingDuck := nil;
end;

initialization
  RegisterTest(TestTNoWingDuck.Suite);
end.

