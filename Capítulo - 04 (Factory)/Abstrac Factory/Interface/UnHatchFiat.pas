unit UnHatchFiat;

interface

uses
  UnHatchInterface, System.SysUtils, UnGlobalDefinitions;

type
  THatch = class(TInterfacedObject, IHatch)
  private
    FGetDescritonGlobalHatch: TGlobalDefinitions;
  public
    function CostBenefic: string;
    function DimensionOfCar: string;
  end;

implementation

{ THatch }

function THatch.CostBenefic: string;
begin
  Result := FGetDescritonGlobalHatch.CostBenefic;
end;

function THatch.DimensionOfCar: string;
begin
  Result := FGetDescritonGlobalHatch.DimensionOfCar;
end;

end.
