unit UnRubberDuck;

interface

uses
  System.SysUtils, UnDuck, UnFlyAbleInterface, UnFlyWhitMagic, UnSqueakQuack,
  UnToFloatSwim, UnDisplayRubberDuck;

type
  TRubberDuck = class(TDuck)
    constructor create;
  end;

implementation

{ TRubberDuck }

constructor TRubberDuck.create;
begin
  MakeFlyAble := TFlyWhitMagic.create;
  MakeQuackAble := TSqueakQuack.create;
  MakeSwimAble := TToFloatSwim.create;
  MakeDisplayAble := TDisplayRubberDuck.create;
end;

end.
