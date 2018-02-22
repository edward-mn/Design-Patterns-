program ProjectFactoryCars;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnFactoryTypeCarAbs in 'UnFactoryTypeCarAbs.pas',
  UnHatchAbs in 'UnHatchAbs.pas',
  UnSedanAbs in 'UnSedanAbs.pas',
  UnPicapeAbs in 'UnPicapeAbs.pas',
  UnFactoryFiat in 'UnFactoryFiat.pas',
  UnHatchFiat in 'UnHatchFiat.pas',
  UnPicapeFiat in 'UnPicapeFiat.pas',
  UnGlobalDefinitions in 'UnGlobalDefinitions.pas',
  UnSedanFiat in 'UnSedanFiat.pas';

var
  LojaFiat: TFactoryTypeCarAbs;
  Hatch: THatchAbs;

begin
  LojaFiat := nil;
  Hatch := nil;
  try
    LojaFiat := TFactoryFiat.Create;
    Hatch := LojaFiat.GetHatchDescription;

    try
      Writeln(Hatch.CostBenefic);
      Writeln(Hatch.DimensionOfCar);

      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    LojaFiat.Free;
    Hatch.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
