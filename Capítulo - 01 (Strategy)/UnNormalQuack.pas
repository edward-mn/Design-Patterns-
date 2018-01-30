unit UnNormalQuack;

interface

uses
  UnQuackAbleInterface, System.SysUtils;

type
  TNormalQuack = class (TInterfacedObject, IQuackAble)
  public
    procedure quack;
    constructor create;
  end;

implementation

{ TNormalQuack }

constructor TNormalQuack.create;
begin

end;

procedure TNormalQuack.quack;
begin
  Writeln('I can also do a normal quack');
end;

end.
