unit UnDeviceReader;

interface

type
  TDeviceReader = class
  public
    Movie : String;
    procedure StartMovie;
    procedure ReadDvd;
    procedure Voltagem;
    procedure ConfigResolution; virtual; abstract;
    procedure ConfigAudio; virtual; abstract;
  end;

implementation

{ TDeviceReader }

procedure TDeviceReader.ReadDvd;
begin
  Writeln('Pattern reading media to dvd');
end;

procedure TDeviceReader.StartMovie;
begin
  Writeln('Starting Film');
  ReadDvd;
  Voltagem;
  ConfigResolution;
  ConfigAudio;
end;

procedure TDeviceReader.Voltagem;
begin
  Writeln('Pattern Voltage of dvd is 120 v');
end;

end.
