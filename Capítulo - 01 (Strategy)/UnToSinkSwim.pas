unit UnToSinkSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TToSinkSiwm = class (TInterfacedObject, ISwimAble)
  public
    constructor create;
    procedure swim;
  end;

implementation

{ TToSinkSiwm }

constructor TToSinkSiwm.create;
begin

end;

procedure TToSinkSiwm.swim;
begin
  Writeln('Sorry I sink on the water');
  Readln;
end;

end.
