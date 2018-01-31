unit UnFlyWhitMagic;

interface

uses
  UnFlyAbleInterface;

type
  TFlyWhitMagic = class (TInterfacedObject, IFlyAble)
  public
    function fly: string;
    constructor create;
  end;

implementation

{ TFlyWithMagic }

constructor TFlyWhitMagic.create;
begin

end;

function TFlyWhitMagic.fly: string;
begin
  Result :='I can Fly with a Magic';
end;

end.
