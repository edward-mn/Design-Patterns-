unit UnLigarCommand;

interface

type
  TOnAndOffCar = Class
    procedure OnCar;
    procedure OffCar;
  End;

implementation

{ TLigar }

procedure TOnAndOffCar.OffCar;
begin
  Writeln('Carro foi desligado');
end;

procedure TOnAndOffCar.OnCar;
begin
  Writeln('Carro foi ligado');
end;

end.
