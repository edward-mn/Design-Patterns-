program ProjectFacotry;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnConcessionaria in 'UnConcessionaria.pas',
  UnConcessionariaBrasilStore in 'UnConcessionariaBrasilStore.pas',
  UnConcessionariaClass in 'UnConcessionariaClass.pas',
  UnBrasilCarRebaixado in 'UnBrasilCarRebaixado.pas',
  UnBrasilCarGrafitado in 'UnBrasilCarGrafitado.pas';

var
  CarroRebaixado: TConcessionaria;
  CarroGrafitado: TConcessionaria;

begin
  CarroRebaixado := nil;
  CarroGrafitado := nil;
  try
    CarroRebaixado := TConcessionariaStore.GetAutomovel('TBrasilCarRebaixado');
    CarroGrafitado := TConcessionariaStore.GetAutomovel('TBrasilCarGrafitado');
    try
      Writeln(CarroRebaixado.CreateAutomovel);
      Readln;
      Writeln(CarroGrafitado.CreateAutomovel);
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    CarroRebaixado.Free;
    CarroGrafitado.Free;
  end;

end.
