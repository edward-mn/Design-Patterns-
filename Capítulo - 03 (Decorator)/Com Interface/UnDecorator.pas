unit UnDecorator;

interface

uses
  System.SysUtils, UnSorveteInterface;

type
  TDecorator = class (TInterfacedObject, ISorvete)
  public
    Decorator : ISorvete;
    function GetDados: string; virtual;
    function GetCusto: currency; virtual;
    constructor Create(Sorvete: ISorvete);
  end;

implementation

{ TDecorator }

constructor TDecorator.Create(Sorvete: ISorvete);
begin
  Self.Decorator := Sorvete;
end;

function TDecorator.GetCusto: currency;
begin
  Result := Decorator.GetCusto;
end;

function TDecorator.GetDados: string;
begin
  Result := Decorator.GetDados;
end;

end.
