unit UnToFloatSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TToFloatSwim = class (TInterfacedObject, ISwimAble)
  public
    constructor create;
    procedure swim;
  end;

implementation

{ TToFloatSwim }

constructor TToFloatSwim.create;
begin

end;

procedure TToFloatSwim.swim;
begin
  Writeln('I only can to float');
  Readln;
end;

end.
