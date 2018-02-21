unit TestUnSedanFiat;

interface

uses
  TestFramework, UnSedanAbs, UnSedanFiat, UnGlobalDefinitions, System.SysUtils;

type
  TestTSedanFiat = class(TTestCase)
  strict private
    FSedanFiat: TSedanFiat;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestKindPeopleUse_Fiat;
    procedure TestSpaciousOfCar_Fiat;
    procedure TestTypeClass_SedanFiat;
  end;

implementation

{ TesteTSedanFiat }

procedure TestTSedanFiat.SetUp;
begin
  FSedanFiat := TSedanFiat.Create;
end;

procedure TestTSedanFiat.TearDown;
begin
  FSedanFiat.Free;
  FSedanFiat := nil;
end;

procedure TestTSedanFiat.TestKindPeopleUse_Fiat;
begin
  CheckEqualsString('The kind familiar people used it',
    FSedanFiat.KindPeopleUse);
end;

procedure TestTSedanFiat.TestSpaciousOfCar_Fiat;
begin
  CheckEqualsString('Most spacious car than all others',
    FSedanFiat.SpaciousOfCar);
end;

procedure TestTSedanFiat.TestTypeClass_SedanFiat;
begin
  CheckEquals(FSedanFiat.ClassType, TSedanFiat);
end;

initialization

RegisterTest(TestTSedanFiat.Suite);

end.
