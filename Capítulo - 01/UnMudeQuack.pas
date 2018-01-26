unit UnMudeQuack;

interface

uses
  System.SysUtils, UnQuackAbleInterface;

type
  TMudeQuack = class(TInterfacedObject, IQuackAble)
  public
    function quack: string;
    constructor create;
  end;

  implementation

{ TMudeQuack }

constructor TMudeQuack.create;
begin

end;

function TMudeQuack.quack: string;
begin
  Result :='Sorry I can not also do quack :(';
end;

end.
