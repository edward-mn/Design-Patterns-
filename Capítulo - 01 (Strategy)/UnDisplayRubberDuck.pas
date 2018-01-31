unit UnDisplayRubberDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayRubberDuck = class (TInterfacedObject, IDislplayAble)
  public
    function display: string;
    constructor create;
  end;

implementation

{ TDisplayRubberDuck }

constructor TDisplayRubberDuck.create;
begin

end;

function TDisplayRubberDuck.display: string;
begin
  Result :='Yah, I am a Rubber Duck';
end;

end.
