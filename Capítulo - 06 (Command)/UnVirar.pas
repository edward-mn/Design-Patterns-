unit UnVirar;

interface

type
  TVirar = class
    procedure Direita;
    procedure Esquerda;
  end;

implementation

{ TVirar }

procedure TVirar.Direita;
begin
  Writeln('Virando para Direita');
end;

procedure TVirar.Esquerda;
begin
  Writeln('Virando para Esquerda');
end;

end.
