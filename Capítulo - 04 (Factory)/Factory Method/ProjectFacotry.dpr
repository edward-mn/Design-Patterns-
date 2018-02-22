program ProjectFacotry;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnCarro in 'UnCarro.pas',
  UnConcessionariaBrasilStore in 'UnConcessionariaBrasilStore.pas',
  UnBrasilCarRebaixado in 'UnBrasilCarRebaixado.pas',
  UnBrasilCarGrafitado in 'UnBrasilCarGrafitado.pas';

var
  CarroRebaixado: TCarro;
  CarroGrafitado: TCarro;

begin
  CarroRebaixado := nil;
  CarroGrafitado := nil;
  try
    CarroRebaixado := TConcessionariaStore.GetAutomovel('TBrasilCarRebaixado');
    CarroGrafitado := TConcessionariaStore.GetAutomovel('TBrasilCarGrafitado');
    try
      Writeln(CarroRebaixado.Nome);
      Readln;
      Writeln(CarroGrafitado.Nome);
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
