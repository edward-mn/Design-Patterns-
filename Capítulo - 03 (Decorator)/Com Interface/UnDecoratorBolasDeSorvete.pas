unit UnDecoratorBolasDeSorvete;

interface

uses
  UnDecorator;

type
  TDecoratorBolasDeSorvete = class (TDecorator)
  public
    function GetCusto: Currency; override;
    function GetDados: string; override;
  end;

implementation

{ TBolasDeSorvete }

function TDecoratorBolasDeSorvete.GetCusto: Currency;
begin
  Result := inherited GetCusto;
  Result := Result + 1.50;
end;

function TDecoratorBolasDeSorvete.GetDados: string;
begin
  Result := inherited GetDados;
  Result := Result + ',Bolas de Sorvete';
end;

end.
