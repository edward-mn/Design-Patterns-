unit UnToFloatSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TToFloatSwim = class (TInterfacedObject, ISwimAble)
  public
    function swim: string;
    constructor create;
  end;

implementation

{ TToFloatSwim }

constructor TToFloatSwim.create;
begin

end;

function TToFloatSwim.swim: string;
begin
  Result :='I only can to float';
end;

end.
