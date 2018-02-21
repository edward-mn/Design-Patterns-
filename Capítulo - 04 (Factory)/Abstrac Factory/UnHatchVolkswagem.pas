unit UnHatchVolkswagem;

interface

uses
  System.SysUtils, UnHatchInterface, UnGlobalDefinitions;

type
  THatchVolkswagem = class (TInterfacedObject, IHatch)
  private
    FGetDescriptionGlobalHatch : TGlobalDefinitions;
  public
    function CostBenefic: string;
    function DimensionOfCar: string;
  end;

implementation

{ THatchVolkswagem }

function THatchVolkswagem.CostBenefic: string;
begin
  Result := FGetDescriptionGlobalHatch.CostBenefic;
end;

function THatchVolkswagem.DimensionOfCar: string;
begin
  Result := FGetDescriptionGlobalHatch.DimensionOfCar;
end;

end.
