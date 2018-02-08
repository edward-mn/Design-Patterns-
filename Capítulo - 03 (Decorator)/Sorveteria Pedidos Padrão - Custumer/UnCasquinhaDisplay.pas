unit UnCasquinhaDisplay;

interface

uses
  UnDisplayPadraoInterface, System.SysUtils;

type
  TCasquinhaDisplay = class (TInterfacedObject, IDisplayPadrao)
  public
    function GetNome: string;
    constructor Create;
  end;

implementation

{ TCasquinhaDisplay }

constructor TCasquinhaDisplay.Create;
begin

end;

function TCasquinhaDisplay.GetNome: string;
begin
  Result := 'Casquinha, ' ;
end;

end.
