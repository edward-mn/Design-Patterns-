unit UnBrasilCarGrafitado;

interface

uses
  UnConcessionaria, UnConcessionariaBrasilStore;

type
  TBrasilCarGrafitado = class(TConcessionaria)
  private
    FCarroGrafitado: TConcessionaria;
  public
    function CreateAutomovel: string; override;
    destructor Destroy; override;
  end;

implementation

function TBrasilCarGrafitado.CreateAutomovel: string;
begin
  inherited;
  Result := 'Automovel grafitado estilo Brasil'
end;

destructor TBrasilCarGrafitado.Destroy;
begin
  FCarroGrafitado.Free;
  inherited;
end;

initialization

TConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado);

end.
