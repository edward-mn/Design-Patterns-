unit UnTypeDvd;

interface

uses
  System.SysUtils, UnDeviceReader;

type
  TOldDvd = class(TDeviceReader)
  public
    procedure ConfigAudio; override;
    procedure ConfigResolution; override;
    procedure NameDvd; override;
    constructor Create(MovieName: string);
  end;

  TNewDvd = class(TDeviceReader)
  public
    procedure ConfigAudio; override;
    procedure ConfigResolution; override;
    procedure NameDvd; override;
    constructor Create(MovieName: string);
  end;

implementation

{ TOldDvd }

procedure TOldDvd.ConfigAudio;
begin
  inherited;
  Writeln('Old audio 5.1 Htz');
end;

procedure TOldDvd.ConfigResolution;
begin
  inherited;
  Writeln('Old resolution 480p');
end;

constructor TOldDvd.Create(MovieName: string);
begin
  Movie := MovieName;
end;

procedure TOldDvd.NameDvd;
begin
  inherited;
  Writeln('Old Dvd model - SempToshiba');
end;

{ TNewDvd }

procedure TNewDvd.ConfigAudio;
begin
  inherited;
  Writeln('New audio 7.9 Htz');
end;

procedure TNewDvd.ConfigResolution;
begin
  inherited;
  Writeln('New resolution 1080p');
end;

constructor TNewDvd.Create(MovieName: string);
begin
  Movie := MovieName;
end;

procedure TNewDvd.NameDvd;
begin
  inherited;
  Writeln('New Dvd model - BlueRayDvd');
end;

end.
