unit UnBrasilCarRebaixado;

interface

uses
  UnConcessionaria, UnConcessionariaBrasilStore;

type
  TBrasilCarRebaixado = class(TConcessionaria)
  private
    FBrasilCar: TConcessionaria;
  public
    function CreateAutomovel: string; override;
    destructor Destroy; override;
  end;

implementation

function TBrasilCarRebaixado.CreateAutomovel: string;
begin
  inherited;
  Result := 'Automovel rebaixado estilo Brasil';
end;

destructor TBrasilCarRebaixado.Destroy;
begin
  FBrasilCar.Free;
  inherited;
end;

initialization

TConcessionariaStore.RegisterAutomovel(TBrasilCarRebaixado);

end.
