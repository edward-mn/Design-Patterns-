unit UnTurbo;

interface

type
  TTurbo = class
    procedure OnTurbo;
    procedure OffTurbo;
  end;

implementation

{ TTurbo }

procedure TTurbo.OffTurbo;
begin
  Writeln('Modo turbo Desligado');
end;

procedure TTurbo.OnTurbo;
begin
  Writeln('Modo turbo Ligado');
end;

end.
