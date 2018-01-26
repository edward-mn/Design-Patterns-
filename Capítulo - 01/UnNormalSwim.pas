unit UnNormalSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TNormalSwim = class (TInterfacedObject, ISwimAble)
  public
    function swim: string;
    constructor create;
  end;

implementation

{ TNormalSwim }

constructor TNormalSwim.create;
begin

end;

function TNormalSwim.swim: string;
begin
  Result :='I can swim normally';
end;

end.
