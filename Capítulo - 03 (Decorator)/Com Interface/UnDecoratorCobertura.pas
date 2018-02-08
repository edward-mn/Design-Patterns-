unit UnDecoratorCobertura;

interface

uses
  UnDecorator;

type
  TDecoratorCobertura = class(TDecorator)
  public
    function GetDados: string; override;
    function GetCusto: currency; override;
  end;


implementation

{ TDecoratorCobertura }

function TDecoratorCobertura.GetCusto: currency;
begin
  Result := inherited + 0.75;
end;

function TDecoratorCobertura.GetDados: string;
begin
  Result := inherited + ',Cobertura';
end;

end.
