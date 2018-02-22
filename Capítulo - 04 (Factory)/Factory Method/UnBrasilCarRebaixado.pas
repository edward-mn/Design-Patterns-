unit UnBrasilCarRebaixado;

interface

uses
   UnConcessionariaBrasilStore, UnCarro;

type
  TBrasilCarRebaixado = class(TCarro)
  public
    function Nome: string; override;
  end;

implementation

{ TBrasilCarRebaixado }

function TBrasilCarRebaixado.Nome: string;
begin
  Result := 'Carro rebaixado';
end;

initialization

TConcessionariaStore.RegisterAutomovel(TBrasilCarRebaixado);

end.
