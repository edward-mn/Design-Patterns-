unit UnDisplayRedHeadDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayRedHeadDuck = class(TInterfacedObject, IDislplayAble)
  public
    function display: string;
    constructor create;
  end;

implementation

{ TNormalDisplay }

constructor TDisplayRedHeadDuck.create;
begin

end;

function TDisplayRedHeadDuck.display: string;
begin
  Result := 'Yo, I am a Red Head Duck !';
end;

end.
