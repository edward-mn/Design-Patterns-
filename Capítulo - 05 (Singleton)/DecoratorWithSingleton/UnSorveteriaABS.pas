unit UnSorveteriaABS;

interface

type
  TSorvete = class
  public
    function GetDescription: string; virtual; abstract;
    function Custo: Currency; virtual; abstract;
    constructor Create; virtual;
  end;

implementation

uses
  UnSingleton;

{ TSorvete }

constructor TSorvete.Create;
begin
  TSingleton.GetInstance.Adicionar(Custo);
end;

end.
