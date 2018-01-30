unit UnSqueakQuack;

interface

uses
  System.SysUtils, UnQuackAbleInterface;

type
  TSqueakQuack = class(TInterfacedObject, IQuackAble)
  public
    procedure quack;
    constructor create;
  end;

implementation

{ TSqueakQuack }

constructor TSqueakQuack.create;
begin

end;

procedure TSqueakQuack.quack;
begin
  Writeln('I can also do diferencial quack, being a squeak');
end;

end.
