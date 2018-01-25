unit UnFlyWithWings;

interface

uses
  UnFlyAbleInterface;

type
  TFlyWhitWings = class (TInterfacedObject, IFlyAble)
  public
    procedure fly;
    constructor create;
  end;

implementation

{ TFlyWhitWings }

constructor TFlyWhitWings.create;
begin

end;

procedure TFlyWhitWings.fly;
begin
  Writeln('I Can Fly with my Wings');
end;

end.
