unit UnFlyNoWay;

interface

uses
  UnFlyAbleInterface;

type
  TFlyNoWay = class (TInterfacedObject, IFlyAble)
  public
    function fly: string;
    constructor create;
  end;

implementation

{ TFlyNoWay }

constructor TFlyNoWay.create;
begin

end;

function TFlyNoWay.fly: string;
begin
  Result :='Sorry I can not fly :(';
end;

end.
