unit UnDecoratorLeite;

interface

uses
  UnDecorator;

type
  TDecoratorLeite = class (TDecorator)
  public
    function GetDados: string; override;
    function GetCusto: Currency; override;
  end;

implementation

{ TDecoratorLeite }

function TDecoratorLeite.GetCusto: Currency;
begin
  Result := inherited GetCusto;
  Result := Result + 1;
end;

function TDecoratorLeite.GetDados: string;
begin
  Result := inherited GetDados;
  Result := Result + ',Leite';
end;

end.
