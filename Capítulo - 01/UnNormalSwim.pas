unit UnNormalSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TNormalSwim = class (TInterfacedObject, ISwimAble)
  public
    constructor create;
    procedure swim;
  end;

implementation

{ TNormalSwim }

constructor TNormalSwim.create;
begin

end;

procedure TNormalSwim.swim;
begin
  Writeln('I can swim normally');
  Readln;
end;

end.
