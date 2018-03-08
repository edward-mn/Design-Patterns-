program ProjectSingleton;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnSingleton in 'UnSingleton.pas';

var
  MySingleton: TSingleton;
begin
  try
    MySingleton := TSingleton.GetInstance;
    Writeln(Format('%n', [MySingleton.Soma(2,5)]));
    Readln;
  try
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
