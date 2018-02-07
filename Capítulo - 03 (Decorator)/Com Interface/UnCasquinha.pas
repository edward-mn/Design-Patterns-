unit UnCasquinha;

interface

uses
  UnSorveteInterface;

type
  TCasquinha = class (TInterfacedObject, ISorvete)
  public
    function GetDados: string;
    function GetCusto: currency;
  end;

implementation

{ TCasquinha }

function TCasquinha.GetCusto: currency;
begin
  Result := 2.00;
end;

function TCasquinha.GetDados: string;
begin
  Result := 'Casquinha';
end;

end.
