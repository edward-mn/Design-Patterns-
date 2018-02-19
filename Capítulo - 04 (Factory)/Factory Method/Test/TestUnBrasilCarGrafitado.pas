unit TestUnBrasilCarGrafitado;

interface

uses
  TestFramework, UnConcessionariaBrasilStore, UnConcessionaria,
  UnBrasilCarGrafitado;

type
  TestTBrasilCarGrafitado = class(TTestCase)
  strict private
    FBrasilCarGrafitado: TBrasilCarGrafitado;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCreateAutomovel_Grafitado;
    procedure TestTypeClass_CarroGrafitado;
  end;

implementation

procedure TestTBrasilCarGrafitado.SetUp;
begin
  FBrasilCarGrafitado := TBrasilCarGrafitado.Create;
end;

procedure TestTBrasilCarGrafitado.TearDown;
begin
  FBrasilCarGrafitado.Free;
  FBrasilCarGrafitado := nil;
end;

procedure TestTBrasilCarGrafitado.TestCreateAutomovel_Grafitado;
begin
  CheckEqualsString('Automovel grafitado estilo Brasil',
    FBrasilCarGrafitado.CreateAutomovel);
end;

procedure TestTBrasilCarGrafitado.TestTypeClass_CarroGrafitado;
begin
  CheckEquals(TBrasilCarGrafitado, FBrasilCarGrafitado.ClassType);
end;

initialization

RegisterTest(TestTBrasilCarGrafitado.Suite);

end.
