unit UnSedanFiat;

interface

uses
  UnSedanInterface, System.SysUtils, UnGlobalDefinitions;

type
  TSedan = class(TInterfacedObject, ISedan)
  private
    FGetDiscriptionGlobalSedan: TGlobalDefinitions;
  public
    function KindPeopleUse: string;
    function SpaciousOfCar: string;
  end;

implementation

{ TSedan }

function TSedan.KindPeopleUse: string;
begin
  Result := FGetDiscriptionGlobalSedan.KindPeopleUse;
end;

function TSedan.SpaciousOfCar: string;
begin
  Result := FGetDiscriptionGlobalSedan.SpaciousOfCar;
end;

end.
