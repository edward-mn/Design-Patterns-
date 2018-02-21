unit TestUnHatchFiat;

interface

uses
  TestFramework, UnHatchFiat, UnHatchInterface, System.SysUtils, UnGlobalDefinitions;

type
  TestTHatch = class(TTestCase)
  strict private
    FHatch: THatch;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCostBenefic_Fiat;
    procedure TestDimensionOfCar_Fiat;
    procedure TesteCreate_Fiat;
  end;

implementation

{TestTHatch}

procedure TestTHatch.SetUp;
begin
  FHatch := THatch.Create;
end;

procedure TestTHatch.TearDown;
begin
  FHatch.Free;
  FHatch := nil;
end;

procedure TestTHatch.TestCostBenefic_Fiat;
begin
  CheckEqualsString('Most economical than all others', FHatch.CostBenefic);
end;

procedure TestTHatch.TestDimensionOfCar_Fiat;
begin
  CheckEqualsString('Most smaller than all others', FHatch.DimensionOfCar);
end;

procedure TestTHatch.TesteCreate_Fiat;
begin
  CheckEquals(FHatch.ClassType, THatch);
end;

initialization
  RegisterTest(TestTHatch.Suite);
end.

