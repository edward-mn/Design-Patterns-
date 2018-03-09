unit UnSingleton;

interface

uses
  UnSorveteriaABS;

type
  TSingleton = class
  private
    Fvalor : Currency;
    constructor Create;
  public
    class function GetInstance : TSingleton;
    procedure Adicionar(Valor: Currency);
    function TotalValor: Currency;
  end;

implementation

var
  Instancia : TSingleton;

{ TSingleton }

procedure TSingleton.Adicionar(Valor: Currency);
begin
  Fvalor := Fvalor + Valor;
end;

constructor TSingleton.Create;
begin
  inherited;
end;

class function TSingleton.GetInstance: TSingleton;
begin
  if Instancia = nil then
    Instancia := TSingleton.Create;

  Result := Instancia;
end;

function TSingleton.TotalValor: Currency;
begin
  Result := Fvalor;
end;

initialization
  Instancia := nil;

finalization
  if Assigned(Instancia) then
    Instancia.Free;
end.
