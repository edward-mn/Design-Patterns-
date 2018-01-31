unit UnNormalQuack;

interface

uses
  UnQuackAbleInterface, System.SysUtils;

type
  TNormalQuack = class (TInterfacedObject, IQuackAble)
  public
    function quack: string;
    constructor create;
  end;

implementation

{ TNormalQuack }

constructor TNormalQuack.create;
begin

end;

function TNormalQuack.quack: string;
begin
  Result :='I can also do a normal quack';
end;

end.
