unit UnSedanFiat;

interface

uses
  System.SysUtils, UnSedanAbs, UnGlobalDefinitions;

type
  TSedanFiat = class(TSedanAbs)
  private
    FGetDescriptionSedan: TGlobalDefinitions;
  public
    function KindPeopleUse: string; override;
    function SpaciousOfCar: string; override;
  end;

implementation

{ TSedanFiat }

function TSedanFiat.KindPeopleUse: string;
begin
  inherited;
  Result := FGetDescriptionSedan.KindPeopleUse;
end;

function TSedanFiat.SpaciousOfCar: string;
begin
  inherited;
  Result := FGetDescriptionSedan.SpaciousOfCar;
end;

end.
