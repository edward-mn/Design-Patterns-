unit UnConcessionariaBrasilStore;

interface

uses
  UnConcessionaria, UnConcessionariaClass;

type
  TConcessionariaStore = class
  private
    class var FListaAutomovel: TArray<TConcessionariaClass>;
  public
    class procedure RegisterAutomovel(Automovel: TConcessionariaClass);
    class function GetAutomovel(Classe: string): TConcessionaria;
  end;

implementation

class function TConcessionariaStore.GetAutomovel(Classe: string)
  : TConcessionaria;
var
  AutomovelClass: TConcessionariaClass;
begin
  for AutomovelClass in FListaAutomovel do
    if (AutomovelClass.ClassName = Classe) then
      Exit(AutomovelClass.Create);
  // Result := AutomovelClass.Create;
end;

class procedure TConcessionariaStore.RegisterAutomovel
  (Automovel: TConcessionariaClass);
begin
  FListaAutomovel := FListaAutomovel + [Automovel];
end;

end.
