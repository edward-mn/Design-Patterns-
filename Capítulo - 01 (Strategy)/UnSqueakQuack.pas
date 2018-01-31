unit UnSqueakQuack;

interface

uses
  System.SysUtils, UnQuackAbleInterface;

type
  TSqueakQuack = class(TInterfacedObject, IQuackAble)
  public
    function quack: string;
    constructor create;
  end;

implementation

{ TSqueakQuack }

constructor TSqueakQuack.create;
begin

end;

function TSqueakQuack.quack: string;
begin
  Result :='I can also do diferencial quack, being a squeak';
end;

end.
