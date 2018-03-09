unit UnBananaSplit;

interface

uses
  UnSorveteriaABS;

type
  TBananaSplit = class(TSorvete)
  public
    function GetDescription: string; override;
    function Custo: Currency; override;
    function Display: string;
  end;

implementation

{ TBananaSplit }

function TBananaSplit.Custo: Currency;
begin
  inherited;
  Result := 5.00;
end;

function TBananaSplit.Display: string;
begin
  Result := GetDescription;
end;

function TBananaSplit.GetDescription: string;
begin
  inherited;
  Result := 'Banana Split';
end;

end.
