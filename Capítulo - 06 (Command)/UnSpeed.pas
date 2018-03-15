unit UnSpeed;

interface

uses
  UnCommandInterface;

type
  TSpeedOfCar = class
    Speed: Integer;
    procedure HighSpeed;
    procedure MediuSpeed;
    procedure LowSpeed;
    procedure off;
    constructor Create;
  end;

implementation

{ TSpeedOfCar }

constructor TSpeedOfCar.Create;
begin
  Speed := 0;
end;

procedure TSpeedOfCar.HighSpeed;
begin
  Speed := 3;
  Writeln('Carro está extremamente rápido, exatamente com 100 Km/h');
end;

procedure TSpeedOfCar.LowSpeed;
begin
  Speed := 1;
  Writeln('Carro está bem devagar, exatamente com 20 Km/h');
end;

procedure TSpeedOfCar.MediuSpeed;
begin
  Speed := 2;
  Writeln('Carro está em uma velocidade média, exatamente com 50 km/h');
end;

procedure TSpeedOfCar.off;
begin
  Speed := 0;
  Writeln('Carro está parado, exatamente com 0 Km/h');
end;

end.
