unit UnDisplayNoWingDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayNoWingDuck = class (TInterfacedObject, IDislplayAble)
  public
    function display: string;
    constructor create;
  end;

implementation

{ TDisplayNoWingDuck }


constructor TDisplayNoWingDuck.create;
begin

end;

function TDisplayNoWingDuck.display: string;
begin
  Result := 'Yhoou, I not have wings';
end;

end.
