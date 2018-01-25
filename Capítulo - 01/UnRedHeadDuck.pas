unit UnRedHeadDuck;

interface

uses
  System.SysUtils, UnDuck, UnFlyWithWings, UnFlyAbleInterface, UnNormalQuack, UnNormalSwim, UnDisplayRedHeadDuck;

type
  TRedHeadDuck = class(TDuck)
    constructor create;
  end;

implementation

{ TRedHeadDuck }

constructor TRedHeadDuck.create;
begin
  MakeFlyAble     := TFlyWhitWings.create;
  MakeQuackAble   := TNormalQuack.create;
  MakeSwimAble    := TNormalSwim.create;
  MakeDisplayAble := TDisplayRedHeadDuck.create;
end;

end.
