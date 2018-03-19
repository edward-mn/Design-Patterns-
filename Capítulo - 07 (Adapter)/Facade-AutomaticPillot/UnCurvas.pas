unit UnCurvas;

interface

type
  TCurvas = class
    procedure VirarDireita;
    procedure VirarEsquerda;
  end;

implementation

{ TCurvas }

procedure TCurvas.VirarDireita;
begin
  Writeln('Localizado curva acentuada para direita');
end;

procedure TCurvas.VirarEsquerda;
begin
  Writeln('Localizado curva acentuada para esquerda');
end;

end.
