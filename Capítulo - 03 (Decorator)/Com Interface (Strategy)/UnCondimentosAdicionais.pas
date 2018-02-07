unit UnCondimentosAdicionais;

interface

uses
  UnSorveteInterface;

type
  TCondimentosAdicionais = class (TInterfacedObject, ISorvete)
  public
    function GetDados: string;
    function GetCustos: Currency;
  end;

implementation

end.
