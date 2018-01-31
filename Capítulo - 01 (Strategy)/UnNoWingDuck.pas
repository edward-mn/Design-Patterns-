unit UnNoWingDuck;

interface

uses
  System.SysUtils, UnDuck, UnFlyNoWay, UnFlyAbleInterface, UnMudeQuack, UnToSinkSwim, UnDisplayNoWingDuck;

type
  TNoWingDuck = class (TDuck)
    constructor create;
  end;

implementation

{ TNoWingDuck }

constructor TNoWingDuck.create;
begin
  MakeFlyAble     := TFlyNoWay.create;
  MakeQuackAble   := TMudeQuack.create;
  MakeSwimAble    := TToSinkSiwm.create;
  MakeDisplayAble := TDisplayNoWingDuck.create
end;


end.
