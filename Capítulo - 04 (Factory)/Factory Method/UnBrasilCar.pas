unit UnBrasilCar;

interface

uses
  UnConcessionaria;

type
  TBrasilCar = class (TConcessionaria)
  private
    FBrasilcar: TConcessionaria;
  public
    function CreateAutomovel: string; override;
  end;

implementation

{ TBrasilCar }

function TBrasilCar.CreateAutomovel: string;
begin
  Result := 'Carro criado estilo Brasil';
end;

end.
