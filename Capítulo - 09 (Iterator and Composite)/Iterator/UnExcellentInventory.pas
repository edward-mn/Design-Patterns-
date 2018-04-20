unit UnExcellentInventory;

interface

uses
  System.SysUtils, UnInventoryInterface;

type
  TExcellentInventory = class(TInventory)
    function GetADescription: string; override;
    function GetAIsFireWeapon: Boolean; override;
    function GetAName: string; override;
    function GetAPriceToSell: Currency; override;
    function GetAQuantity: Integer; override;
  end;

implementation

function TExcellentInventory.GetADescription: string;
begin
  Result := 'Excellent Inventory';
end;

function TExcellentInventory.GetAIsFireWeapon: Boolean;
begin
  Result := True;
end;

function TExcellentInventory.GetAName: string;
begin
  Result := 'Very Big Bag';
end;

function TExcellentInventory.GetAPriceToSell: Currency;
begin
  Result := 55.35;
end;

function TExcellentInventory.GetAQuantity: Integer;
begin
  Result := 45;
end;

end.
