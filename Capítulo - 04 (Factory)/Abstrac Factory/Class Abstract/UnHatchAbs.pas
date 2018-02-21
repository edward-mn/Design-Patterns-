unit UnHatchAbs;

interface

type
  THatchAbs = class
    function CostBenefic: String; virtual; abstract;
    function DimensionOfCar: string; virtual; abstract;
  end;

implementation

end.
