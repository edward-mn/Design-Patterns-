unit UnSorveteriaABS;

interface

type
  TSorvete = class abstract
  public
    function GetDescription: string; virtual; abstract;
    function Custo: Currency; virtual; abstract;
  end;

implementation

end.
