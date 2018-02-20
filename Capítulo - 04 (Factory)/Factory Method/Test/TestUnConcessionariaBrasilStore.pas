unit TestUnConcessionariaBrasilStore;

interface

uses
  TestFramework, UnConcessionaria, UnConcessionariaClass, System.SysUtils,
  UnConcessionariaBrasilStore;

type
  TestTConcessionariaStore = class(TTestCase)
  strict private
    FConcessionariaStore: TConcessionariaStore;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestRegisterAutomovel;
    procedure TestGetAutomovel;
  end;

implementation

uses
  UnBrasilCarGrafitado;



procedure TestTConcessionariaStore.SetUp;
begin
  FConcessionariaStore := TConcessionariaStore.Create;
end;

procedure TestTConcessionariaStore.TearDown;
begin
  FConcessionariaStore.Free;
  FConcessionariaStore := nil;
end;

procedure TestTConcessionariaStore.TestRegisterAutomovel;
//var
// c : TBrasilCarGrafitado;
begin
//  CheckEquals(FConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado), TConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado);
end;

procedure TestTConcessionariaStore.TestGetAutomovel;
var
  c : TConcessionaria;
begin
  CheckEquals( TConcessionariaStore.GetAutomovel, FConcessionariaStore.GetAutomovel('TBrasilCarGrafitado'));
end;

initialization
  RegisterTest(TestTConcessionariaStore.Suite);
end.

