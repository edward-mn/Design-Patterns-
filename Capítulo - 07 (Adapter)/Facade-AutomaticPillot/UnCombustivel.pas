unit UnCombustivel;

interface

type
  TCombustivel = class
    procedure CombustivelPilotoAutomatico;
    procedure SemCombustivelPilotoAutomatico;
  end;

implementation

{ TCombustivel }

procedure TCombustivel.CombustivelPilotoAutomatico;
begin
  Writeln('O carro possui combustível suficiente para o piloto automático');
end;

procedure TCombustivel.SemCombustivelPilotoAutomatico;
begin
  Writeln('Falha carro não possui combustível suficiente para o piloto automático');
end;

end.
