unit UnFlyNoWay;

interface

uses
  UnFlyAbleInterface;

type
  TFlyNoWay = class (TInterfacedObject, IFlyAble)
  public
    procedure fly;
    constructor create;
  end;

implementation

{ TFlyNoWay }

constructor TFlyNoWay.create;
begin

end;

procedure TFlyNoWay.fly;
begin
  Writeln('Sorry I can not fly :(');
end;

end.
