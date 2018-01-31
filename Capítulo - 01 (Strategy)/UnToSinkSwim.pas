unit UnToSinkSwim;

interface

uses
  System.SysUtils, UnSwimAbleInterface;

type
  TToSinkSiwm = class (TInterfacedObject, ISwimAble)
  public
    function swim: string;
    constructor create;
  end;

implementation

{ TToSinkSiwm }

constructor TToSinkSiwm.create;
begin

end;

function TToSinkSiwm.swim: string;
begin
  Result := 'Sorry I sink on the water';
end;

end.
