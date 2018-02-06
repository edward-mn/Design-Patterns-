unit UnAdicionaisABS;

interface

uses
  UnSorveteriaABS;

type
  TAdicionais = class abstract(TSorvete)
  public
    function GetDescription: string; override; abstract;
  end;

implementation

end.
