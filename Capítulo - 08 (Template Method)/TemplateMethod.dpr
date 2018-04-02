program TemplateMethod;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnDeviceReader in 'UnDeviceReader.pas',
  UnTypeDvd in 'UnTypeDvd.pas';

var
  MyDiviceDvdReader: TDeviceReader;
  BlueRayDvd: TNewDvd;
  NormalDvdPlayer: TOldDvd;

begin
  MyDiviceDvdReader := nil;
  BlueRayDvd := nil;
  NormalDvdPlayer := nil;
  try
    BlueRayDvd := TNewDvd.Create('Ninja Turtles in 4K');
    NormalDvdPlayer := TOldDvd.Create('The bumblers in 428p');
    try
      Writeln('All DVDs can does');
      MyDiviceDvdReader.ReadDvd;
      MyDiviceDvdReader.Voltagem;
      Readln;
      BlueRayDvd.StartMovie;
      Readln;
      NormalDvdPlayer.StartMovie;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    BlueRayDvd.Free;
    NormalDvdPlayer.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
