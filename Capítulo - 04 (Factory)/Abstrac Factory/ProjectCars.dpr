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
  UnGlobalDefinitions in 'UnGlobalDefinitions.pas';

var
  LojaFiat : IFactoryTypeCar;
  PicapeToro : IPicape;
  GrandSiena : ISedan;
begin
  try
  LojaFiat := TFactoryFiat.Create;
  PicapeToro := LojaFiat.GetPicapeDescription;
  GrandSiena := LojaFiat.GetSedanDescription;
  try
  Writeln('Picape Toro - Picape');
  Writeln(PicapeToro.Drive4x4);
  Writeln(PicapeToro.EsportiveDescription);
  Readln;
  Writeln('Grand Siena - Sedan');
  Writeln(GrandSiena.SpaciousOfCar);
  Writeln(GrandSiena.KindPeopleUse);
  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  ReportMemoryLeaksOnShutdown := True;
  end;
end.
