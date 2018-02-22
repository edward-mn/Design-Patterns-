unit UnConcessionariaBrasilStore;

interface

uses
  System.SysUtils,
  System.Generics.Collections, UnCarro;

type
  ECarroNotFound = class(Exception);

  TConcessionariaStore = class
  private
    class var FListaAutomovel: TArray<TCarroClass>;
  public
    class procedure RegisterAutomovel(Automovel: TCarroClass);
    class function GetAutomovel(Classe: string): TCarro;
  end;

implementation

class function TConcessionariaStore.GetAutomovel(Classe: string): TCarro;
var
  AutomovelClass: TCarroClass;
begin
  Result := nil;
  for AutomovelClass in FListaAutomovel do
    if (AutomovelClass.ClassName = Classe) then
      Exit(AutomovelClass.Create);

  if Result = nil then
    raise ECarroNotFound.Create('Classe não encontrada.');
end;

class procedure TConcessionariaStore.RegisterAutomovel(Automovel: TCarroClass);
begin
  FListaAutomovel := FListaAutomovel + [Automovel];
end;

end.
