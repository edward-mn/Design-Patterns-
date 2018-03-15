unit UnSpeedCommand;

interface

uses
  UnSpeed, UnCommandInterface;

type

THighSpeedCommand = class (TInterfacedObject, ICommandControl)
  private
    FMyspeed : TSpeedOfCar;
    FVelocimentro : Integer;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (Speed: TSpeedOfCar);
  end;

TMediumSpeedCommand = class (TInterfacedObject, ICommandControl)
 private
    FMyspeed : TSpeedOfCar;
    FVelocimentro : Integer;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (Speed: TSpeedOfCar);
  end;

TLowSpeedCommand = class (TInterfacedObject, ICommandControl)
 private
    FMyspeed : TSpeedOfCar;
    FVelocimentro : Integer;
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
  FVelocimentro := FMyspeed.Speed;
  FMyspeed.HighSpeed;
end;

procedure THighSpeedCommand.Undo;
begin
  if FVelocimentro = 0 then
    FMySpeed.off;
  if FVelocimentro = 1 then
    FMySpeed.LowSpeed;
  if FVelocimentro = 2 then
    FMySpeed.MediuSpeed;
  if FVelocimentro = 3 then
     FMySpeed.HighSpeed;
end;

{ TMediumSpeedCommand }

constructor TMediumSpeedCommand.Create(Speed: TSpeedOfCar);
begin
  FMySpeed := Speed;
end;

procedure TMediumSpeedCommand.Execute;
begin
  FVelocimentro := FMySpeed.Speed;
  FMySpeed.MediuSpeed
end;

procedure TMediumSpeedCommand.Undo;
begin
  if FVelocimentro = 0 then
    FMySpeed.off;
  if FVelocimentro = 1 then
    FMySpeed.LowSpeed;
  if FVelocimentro = 2 then
    FMySpeed.MediuSpeed;
  if FVelocimentro = 3 then
     FMySpeed.HighSpeed;
end;

{ TLowSpeedCommand }

constructor TLowSpeedCommand.Create(Speed: TSpeedOfCar);
begin
  FMySpeed := Speed;
end;

procedure TLowSpeedCommand.Execute;
begin
  FVelocimentro := FMySpeed.Speed;
  FMySpeed.LowSpeed;
end;

procedure TLowSpeedCommand.Undo;
begin
   if FVelocimentro = 0 then
    FMySpeed.off;
  if FVelocimentro = 1 then
    FMySpeed.LowSpeed;
  if FVelocimentro = 2 then
    FMySpeed.MediuSpeed;
  if FVelocimentro = 3 then
    FMySpeed.HighSpeed;
end;

end.
