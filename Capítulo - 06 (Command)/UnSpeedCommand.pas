unit UnSpeedCommand;

interface

uses
  UnSpeed, UnCommandInterface;

type

THighSpeedCommand = class (TInterfacedObject, ICommandControl)
  private
    FMyspeed : TSpeedOfCar;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (Speed: TSpeedOfCar);
  end;

TMediumSpeedCommand = class (TInterfacedObject, ICommandControl)
  public
    procedure Execute;
    procedure Undo;
    constructor Create (Speed: TSpeedOfCar);
  end;

TLowSpeedCommand = class (TInterfacedObject, ICommandControl)
  public
    procedure Execute;
    procedure Undo;
    constructor Create (Speed: TSpeedOfCar);
  end;

implementation

{ THighSpeedCommand }

constructor THighSpeedCommand.Create(Speed: TSpeedOfCar);
begin
  FMySpeed := Speed;
end;

procedure THighSpeedCommand.Execute;
begin
  Velocimentro := MySpeed.Speed;
  MySpeed.HighSpeed;
end;

procedure THighSpeedCommand.Undo;
begin
  if Velocimentro = 0 then
    MySpeed.off;
  if Velocimentro = 1 then
    MySpeed.LowSpeed;
  if Velocimentro = 2 then
    MySpeed.MediuSpeed;
  if Velocimentro = 3 then
     MySpeed.HighSpeed;
end;

{ TMediumSpeedCommand }

constructor TMediumSpeedCommand.Create(Speed: TSpeedOfCar);
begin
  MySpeed := Speed;
end;

procedure TMediumSpeedCommand.Execute;
begin
  Velocimentro := MySpeed.Speed;
  MySpeed.MediuSpeed
end;

procedure TMediumSpeedCommand.Undo;
begin
  if Velocimentro = 0 then
    MySpeed.off;
  if Velocimentro = 1 then
    MySpeed.LowSpeed;
  if Velocimentro = 2 then
    MySpeed.MediuSpeed;
  if Velocimentro = 3 then
     MySpeed.HighSpeed;
end;

{ TLowSpeedCommand }

constructor TLowSpeedCommand.Create(Speed: TSpeedOfCar);
begin
  MySpeed := Speed;
end;

procedure TLowSpeedCommand.Execute;
begin
  Velocimentro := MySpeed.Speed;
  MySpeed.LowSpeed;
end;

procedure TLowSpeedCommand.Undo;
begin
   if Velocimentro = 0 then
    MySpeed.off;
  if Velocimentro = 1 then
    MySpeed.LowSpeed;
  if Velocimentro = 2 then
    MySpeed.MediuSpeed;
  if Velocimentro = 3 then
     MySpeed.HighSpeed;
end;

end.
