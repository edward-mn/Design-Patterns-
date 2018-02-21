program ProjectCars;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnPicapeInterface in 'UnPicapeInterface.pas',
  UnFactoryTypeCarInterface in 'UnFactoryTypeCarInterface.pas',
  UnSedanInterface in 'UnSedanInterface.pas',
  UnHatchInterface in 'UnHatchInterface.pas',
  UnFactoryFiat in 'UnFactoryFiat.pas',
  UnHatchFiat in 'UnHatchFiat.pas',
  UnPicapeFiat in 'UnPicapeFiat.pas',
  UnSedanFiat in 'UnSedanFiat.pas',
  UnFactoryVolkswagem in 'UnFactoryVolkswagem.pas',
  UnHatchVolkswagem in 'UnHatchVolkswagem.pas',
  UnGlobalDefinitions in 'UnGlobalDefinitions.pas',
  UnPicapeVolkswagem in 'UnPicapeVolkswagem.pas',
  UnSedanVolkswagem in 'UnSedanVolkswagem.pas';

var
  ConcessionariaFiat : IFactoryTypeCar;
  PicapeToro : IPicape;

  ConcessionariaVolkswagem : IFactoryTypeCar;
  Up: IHatch;
begin
  try
  ConcessionariaFiat := TFactoryFiat.Create;
  PicapeToro := ConcessionariaFiat.GetPicapeDescription;

  ConcessionariaVolkswagem := TFactoryVolkswagem.Create;
  Up := ConcessionariaVolkswagem.GetHatchDescripton;
  try
  Writeln('Picape Toro - Picape from FIAT');
  Writeln(PicapeToro.Drive4x4);
  Writeln(PicapeToro.EsportiveDescription);
  Readln;
  Writeln('Grand Siena - Sedan from Volkswagem');
  Writeln(Up.CostBenefic);
  Writeln(Up.DimensionOfCar);
  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
