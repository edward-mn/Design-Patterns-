unit UnCasquinha;

interface

uses
  UnSorveteInterface, UnSorvete;

type
  TCasquinha = class(TInterfacedObject, ISorvete)
  public
    function GetDados: string;
    function GetCustos: Currency;
    constructor Create;
  end;

implementation

{ TCasquinha }

constructor TCasquinha.Create;
begin

end;

function TCasquinha.GetCustos: Currency;
begin
  Result := 2;
end;

function TCasquinha.GetDados: string;
begin
 Result := 'Casquinha';
end;

end.
