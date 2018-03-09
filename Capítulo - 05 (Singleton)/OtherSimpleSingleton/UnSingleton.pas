unit UnSingleton;

interface

type
  TSingleton = class
  private
    constructor Create;
  public
    class function GetInstance: TSingleton;
    procedure GetText(Nome,Sobrenome : string);
  end;

var
  Instancia : TSingleton;
  Texto1,Texto2 : string;

implementation

{ TSingleton }

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

procedure TSingleton.GetText(Nome,Sobrenome: string);
begin
  Texto1 := Nome;
  Texto2 := Sobrenome;
end;

initialization
  Instancia := nil;

finalization
  if Assigned(Instancia) then
    Instancia.Free;
end.
