unit UnPortas;

interface

type
  TPortas = class
    procedure PortasFechadas;
    procedure PortasAbertas;
  end;

implementation

{ TPortas }

procedure TPortas.PortasAbertas;
begin
  Writeln('Portas Abertas');
end;

procedure TPortas.PortasFechadas;
begin
  Writeln('Portas fechadas');
end;

end.
