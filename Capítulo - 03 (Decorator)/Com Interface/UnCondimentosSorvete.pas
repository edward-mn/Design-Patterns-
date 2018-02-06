unit UnCondimentosSorvete;

interface

uses
  UnCondimentosAdicionais;

type
  TCondimentosSorvete = class (TCondimentosAdicionais)
  public
    function GetDados: string;
    function GetCustos: Currency;
    constructor Create;
  end;

implementation

{ TCondimentosSorvete }

constructor TCondimentosSorvete.Create;
begin

end;

function TCondimentosSorvete.GetCustos: Currency;
begin

end;

function TCondimentosSorvete.GetDados: string;
begin
  inherited;
end;

end.
