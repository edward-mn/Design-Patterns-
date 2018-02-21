unit UnSedanVolkswagem;

interface

uses
  System.SysUtils, UnSedanInterface, UnGlobalDefinitions;

type
  TSedanVolkswagem = class (TInterfacedObject, ISedan)
  private
    FGetDescriptionGlobalSedan : TGlobalDefinitions;
  public
    function KindPeopleUse: string;
    function SpaciousOfCar: string;
  end;

implementation

{ TSedanVolkswagem }

function TSedanVolkswagem.KindPeopleUse: string;
begin
  Result := FGetDescriptionGlobalSedan.KindPeopleUse;
end;

function TSedanVolkswagem.SpaciousOfCar: string;
begin
  Result := FGetDescriptionGlobalSedan.SpaciousOfCar;
end;

end.
