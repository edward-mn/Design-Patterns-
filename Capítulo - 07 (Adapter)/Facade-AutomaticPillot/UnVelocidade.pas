unit UnVelocidade;

interface

type
  TVelocidade = class
    procedure OnVelocidadePilotoAutomatico;
    procedure OffVelocidadePilotoAutomatico;
  end;

implementation

{ TVelocidade }

procedure TVelocidade.OffVelocidadePilotoAutomatico;
begin
  Writeln('Desligando piloto automático e sua velocidade média....');
end;

procedure TVelocidade.OnVelocidadePilotoAutomatico;
begin
  Writeln('Ligando piloto automatico e mantendo sua velocidade média....');
end;

end.
