unit UnBrasilCarGrafitado;

interface

uses
  UnConcessionariaBrasilStore, UnCarro;

type
  TBrasilCarGrafitado = class(TCarro)
  private
  public
    function Nome: string; override;
  end;

implementation

{ TBrasilCarGrafitado }

function TBrasilCarGrafitado.Nome: string;
begin
  Result := 'Carro grafitado';
end;

initialization

TConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado);

end.
