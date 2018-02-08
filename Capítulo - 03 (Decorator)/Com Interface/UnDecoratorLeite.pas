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
  Result := inherited + 1;
end;

function TDecoratorLeite.GetDados: string;
begin
  Result := inherited + ',Leite';
end;

end.
