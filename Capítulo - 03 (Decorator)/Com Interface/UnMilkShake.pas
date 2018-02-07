unit UnMilkShake;

interface

uses
  UnSorveteInterface;

type
  TMilkShake = class (TInterfacedObject, ISorvete)
  public
    function GetDados: string;
    function GetCusto: currency;
  end;

implementation

{ TMilkShake }

function TMilkShake.GetCusto: currency;
begin
  Result := 5;
end;

function TMilkShake.GetDados: string;
begin
  Result := 'Milk Shake';
end;

end.
