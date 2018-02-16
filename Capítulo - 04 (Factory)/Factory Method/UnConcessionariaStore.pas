unit UnConcessionariaStore;

interface

uses
  UnConcessionaria, UnConcessionariaClass, System.Generics.Collections;

type
  TConcessionariaStore = class
  private
    FListaAutomovel: TArray<TConcessionariaClass>;
  public
    procedure RegisterAutomovel(Automovel: TConcessionariaClass);
    function GetAutomovel(Classe: string): TConcessionaria;
  end;

implementation

function TConcessionariaStore.GetAutomovel(Classe: string): TConcessionaria;
var
  AutomovelClass: TConcessionariaClass;
begin
  for AutomovelClass in FListaAutomovel do
    if AutomovelClass.ClassName = Classe then
     Exit(AutomovelClass.Create);
end;

procedure TConcessionariaStore.RegisterAutomovel
  (Automovel: TConcessionariaClass);
begin
  FListaAutomovel := FListaAutomovel + [Automovel];
end;

end.
