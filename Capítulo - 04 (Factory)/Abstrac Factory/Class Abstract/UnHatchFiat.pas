unit UnHatchFiat;

interface

uses
  System.SysUtils, UnHatchAbs, UnGlobalDefinitions;

type
  THatchFiat = class(THatchAbs)
  private
    FGetDescriptionHatch: TGlobalDefinitions;
  public
    function CostBenefic: string; override;
    function DimensionOfCar: string; override;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ THatchFiat }

function THatchFiat.CostBenefic: string;
begin
  inherited;
  Result := FGetDescriptionHatch.CostBenefic;
end;

constructor THatchFiat.Create;
begin
  FGetDescriptionHatch := TGlobalDefinitions.Create;
end;

destructor THatchFiat.Destroy;
begin
  FGetDescriptionHatch.Free;
  inherited;
end;

function THatchFiat.DimensionOfCar: string;
begin
  inherited;
  Result := FGetDescriptionHatch.DimensionOfCar;
end;

end.
