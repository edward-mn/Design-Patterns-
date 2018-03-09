unit UnSorveteriaABS;

interface

type
  TSorvete = class
  public
    function GetDescription: string; virtual; abstract;
    function Custo: Currency; virtual; abstract;
  end;

implementation

end.
