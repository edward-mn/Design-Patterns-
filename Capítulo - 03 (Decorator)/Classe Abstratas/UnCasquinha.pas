unit UnCasquinha;

interface

uses
  UnSorveteriaABS, System.SysUtils;

type
  TCasquinha = class(TSorvete)
  public
    function Custo: Currency; override;
    function GetDescription: string; override;
  end;

implementation

function TCasquinha.Custo: Currency;
begin
  inherited;
  Result := 2.00;
end;

function TCasquinha.GetDescription: string;
begin
  inherited;
  Result := '>> Casquinha, ';
end;

end.
