unit UnMudeQuack;

interface

uses
  System.SysUtils, UnQuackAbleInterface;

type
  TMudeQuack = class(TInterfacedObject, IQuackAble)
  public
    procedure quack;
    constructor create;
  end;

  implementation

{ TMudeQuack }

constructor TMudeQuack.create;
begin

end;

procedure TMudeQuack.quack;
begin
  Writeln('Sorry I can not also do quack :(');
end;

end.
