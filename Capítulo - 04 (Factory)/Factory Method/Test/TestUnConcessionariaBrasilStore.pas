unit TestUnConcessionariaBrasilStore;

interface

uses
  TestFramework, System.SysUtils, UnConcessionariaBrasilStore;

type
  TestTConcessionariaStore = class(TTestCase)
  strict private
    FConcessionariaStore: TConcessionariaStore;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Test_GetAutomovel;
    procedure Test_Automovel_NaoRegistrado;
  end;

implementation

uses
  UnBrasilCarGrafitado, UnCarro;

procedure TestTConcessionariaStore.SetUp;
begin
  FConcessionariaStore := TConcessionariaStore.Create;
end;

procedure TestTConcessionariaStore.TearDown;
begin
  FConcessionariaStore.Free;
  FConcessionariaStore := nil;
end;

procedure TestTConcessionariaStore.Test_Automovel_NaoRegistrado;
begin
  StartExpectingException(ECarroNotFound);
  TConcessionariaStore.GetAutomovel('TesteTBrasilCarGrafitado');
  StopExpectingException('Classe não encontrada.');
end;

procedure TestTConcessionariaStore.Test_GetAutomovel;
var
  CarroBrEstilizado: TCarro;
begin
  TConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado);

  CarroBrEstilizado := TConcessionariaStore.GetAutomovel('TBrasilCarGrafitado');

  try
    CheckTrue(CarroBrEstilizado is TBrasilCarGrafitado);
  finally
    CarroBrEstilizado.Free;
  end;

end;

initialization

RegisterTest(TestTConcessionariaStore.Suite);

end.
