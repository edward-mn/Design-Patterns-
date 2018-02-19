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
begin

end;

procedure TestTConcessionariaStore.TestGetAutomovel;
var
  i : TConcessionaria;
  c : TBrasilCarGrafitado;
begin
//  FConcessionariaStore.GetAutomovel('TBrasilCarGrafitado');
  CheckEquals( c.CreateAutomovel ,i.CreateAutomovel('TBrasilCarGrafitado'));
end;

initialization
  RegisterTest(TestTConcessionariaStore.Suite);
end.

