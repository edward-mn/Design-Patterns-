unit UnGlobalDefinitions;

interface

type
  TGlobalDefinitions = class
  public
    function CostBenefic: string;
    function DimensionOfCar: string;
    function EsportiveDescription: string;
    function Drive4x4: string;
    function SpaciousOfCar: string;
    function KindPeopleUse: string;
  end;

implementation

{ TGlobalDefinitions }

function TGlobalDefinitions.CostBenefic: string;
begin
  Result := 'Most economical than all others';
end;

function TGlobalDefinitions.DimensionOfCar: string;
begin
  Result := 'Most smaller than all others';
end;

function TGlobalDefinitions.Drive4x4: string;
begin
  Result := 'This picape can drive in a lot of grounds';
end;

function TGlobalDefinitions.EsportiveDescription: string;
begin
  Result := 'Bold and aggressive design ever';
end;

function TGlobalDefinitions.KindPeopleUse: string;
begin
  Result := 'The kind familiar people used it';
end;

function TGlobalDefinitions.SpaciousOfCar: string;
begin
  Result := 'Most spacious car than all others';
end;

end.
