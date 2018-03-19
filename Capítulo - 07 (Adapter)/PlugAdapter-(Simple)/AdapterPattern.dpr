program AdapterPattern;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnAdapter in 'UnAdapter.pas',
  UnPlugEuaInterface in 'UnPlugEuaInterface.pas',
  UnConcretPlugEua in 'UnConcretPlugEua.pas',
  UnPlugUkInterface in 'UnPlugUkInterface.pas',
  UnConcretPlugUk in 'UnConcretPlugUk.pas';

var
  Adapter: TAdapterSimple;
  EuaPlug: IPlugEua;
  UkPlug: IPlugUk;

begin
  Adapter := nil;
  try
    EuaPlug := TPlugEua.Create;
    UkPlug := TPlugUk.Create;
    Adapter := TAdapterSimple.Create(UkPlug);
    try
      EuaPlug.ThreeHoleOnPlug;
      EuaPlug.VoltageEua;
      Readln;
      UkPlug.TwoHoleOnPlug;
      UkPlug.VoltageUk;
      Readln;
      Adapter.ThreeHoleOnPlug;
      Adapter.VoltageEua;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    Adapter.Free;
  end;

end.
