unit UnConcessionariaBrasilStore;

interface

uses
  UnConcessionaria, UnConcessionariaClass, System.SysUtils;

type
  TConcessionariaStore = class
  private
//    class var FListaAutomovel: TArray<TConcessionariaClass>;
  public
    class var FListaAutomovel: TArray<TConcessionariaClass>;
    class procedure RegisterAutomovel(Automovel: TConcessionariaClass);
    class function GetAutomovel(Classe: string): TConcessionaria;
  end;

implementation

class function TConcessionariaStore.GetAutomovel(Classe: string)
  : TConcessionaria;
var
  AutomovelClass: TConcessionariaClass;
begin
  Result := nil;
  for AutomovelClass in FListaAutomovel do
    if (AutomovelClass.ClassName = Classe) then
      Exit(AutomovelClass.Create);

  if Result = nil then
    raise Exception.Create('Lista vazia na criação de automoveis');
end;

class procedure TConcessionariaStore.RegisterAutomovel
  (Automovel: TConcessionariaClass);
begin
  FListaAutomovel := FListaAutomovel + [Automovel];
end;

end.
