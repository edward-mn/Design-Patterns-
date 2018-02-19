unit UnBrasilCarGrafitado;

interface

uses
  UnConcessionaria, UnConcessionariaBrasilStore;

type
  TBrasilCarGrafitado = class(TConcessionaria)
  private
    FPneuStyleBrasil: TConcessionaria;
  public
    function CreateAutomovel: string; override;
    destructor Destroy; override;
  end;

implementation

function TBrasilCarGrafitado.CreateAutomovel: string;
begin
  Result := 'Automovel grafitado estilo Brasil'
end;

destructor TBrasilCarGrafitado.Destroy;
begin
  FPneuStyleBrasil.Free;
  inherited;
end;

initialization

TConcessionariaStore.RegisterAutomovel(TBrasilCarGrafitado);

end.
