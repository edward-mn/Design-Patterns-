unit UnSingleton;

interface

type
  TSingleton = class
  private
  constructor Create;
  class var Singleton : TSingleton;
  public
    class function GetInstance: TSingleton;
    class function NewInstance: TObject; override;
    class function Soma(Num1: Double; Num2: Double): Double;
  end;



implementation

uses
  System.SysUtils;

{ TSingleton }

class function TSingleton.Soma(Num1: Double; Num2: Double): Double;
begin
  Result := Num1 + Num2;
end;

constructor TSingleton.Create;
begin
  inherited
end;

class function TSingleton.GetInstance: TSingleton;
begin
  Result := TSingleton.Create;
end;

class function TSingleton.NewInstance: TObject;
begin
  if not Assigned(Singleton) then
    Singleton := TSingleton(inherited NewInstance);

  Result := Singleton;
end;

initialization

finalization
  FreeAndNil(TSingleton.Singleton);
end.
