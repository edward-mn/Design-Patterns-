unit UnHatchVolkswagem;

interface

uses
  System.SysUtils, UnHatchInterface;

type
  THatchVolkswagem = class (TInterfacedObject, IHatch)
  public
    function CostBenefic: string;
    function DimensionOfCar: string;
  end;

implementation

{ THatchVolkswagem }

function THatchVolkswagem.CostBenefic: string;
begin
//  Result :=
end;

function THatchVolkswagem.DimensionOfCar: string;
begin

end;

end.
