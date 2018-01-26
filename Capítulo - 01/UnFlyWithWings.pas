unit UnFlyWithWings;

interface

uses
  UnFlyAbleInterface;

type
  TFlyWhitWings = class (TInterfacedObject, IFlyAble)
  public
    function fly: string;
    constructor create;
  end;

implementation

{ TFlyWhitWings }

constructor TFlyWhitWings.create;
begin

end;

function TFlyWhitWings.fly: string;
begin
  Result := 'I Can Fly with my Wings';
//Writeln(Result);
end;

end.
