program ProjectFacotry;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnConcessionaria in 'UnConcessionaria.pas',
  UnConcessionariaStore in 'UnConcessionariaStore.pas',
  UnConcessionariaClass in 'UnConcessionariaClass.pas',
  UnBrasilCar in 'UnBrasilCar.pas';

var
  Automovel : TConcessionaria;

begin
  Automovel := TConcessionariaStore.GetAutomovel('TBrasilCar');
try
//  Automovel := TConcessionariaStore.GetAutomovel('TBrasilCar');
  try
  Writeln(Automovel.CreateAutomovel);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
finally
  Automovel.Free;
end;
end.
