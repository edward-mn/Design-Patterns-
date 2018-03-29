unit UnTypeDvd;

interface

uses
  System.SysUtils, UnDeviceReader;

type
  TOldDvd = class (TDeviceReader)
  public
    procedure ConfigAudio; override;
    procedure ConfigResolution; override;
    constructor Create(MovieName: string);
    destructor Destroy; override;
  end;

  TNewDvd = class (TDeviceReader)
  public
    procedure ConfigAudio; override;
    procedure ConfigResolution; override;
    constructor Create(MovieName: string);
    destructor Destroy; override;
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

destructor TOldDvd.Destroy;
begin

  inherited;
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

destructor TNewDvd.Destroy;
begin

  inherited;
end;

end.
