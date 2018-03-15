unit UnLigar;

interface

uses
  UnCommandInterface, UnLigarCommand;

type
  TOnCarCommand = class (TInterfacedObject, ICommandControl)
  private
    FOnCar : TOnAndOffCar;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (OnCar : TOnAndOffCar);
  end;

  TOffCarCommand = class (TInterfacedObject, ICommandControl)
  private
    FOffCar : TOnAndOffCar;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (OffCar : TOnAndOffCar);
  end;


implementation



{ TOnAndOffCarCommand }

constructor TOnCarCommand.Create(OnCar: TOnAndOffCar);
begin
  FOnCar := OnCar;
end;

procedure TOnCarCommand.Execute;
begin
  FOnCar.OnCar;
end;

procedure TOnCarCommand.Undo;
begin
  FOnCar.OffCar;
end;

{ TOffCarCommand }

constructor TOffCarCommand.Create(OffCar: TOnAndOffCar);
begin
  FOffCar := OffCar;
end;

procedure TOffCarCommand.Execute;
begin
  FOffCar.OffCar;
end;

procedure TOffCarCommand.Undo;
begin
  FOffCar.OnCar;
end;

end.
