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
  Result := inherited + 1.50;
end;

function TDecoratorBolasDeSorvete.GetDados: string;
begin
  Result := inherited + ',Bolas de Sorvete';
end;

end.
