unit UnSorvete;

interface

uses
  UnSorveteInterface, System.SysUtils;

type
  TSorvete = class
  public
    MakeIceCream : ISorvete;
    function GetDados: string;
    function GetCust: currency;
    constructor Create (ASorvete: ISorvete);
  end;

implementation

{ TSorvete }

constructor TSorvete.Create(ASorvete: ISorvete);
begin
  Self.MakeIceCream := ASorvete;
end;

function TSorvete.GetCust: currency;
begin
  Result := MakeIceCream.GetDados;
end;

function TSorvete.GetDados: string;
begin
  Result := MakeIceCream.GetCustos;
end;

end.
