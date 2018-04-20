unit UnNormalnventory;

interface

uses
  UnInventoryInterface;

type
  TNormalInventory = class(TInventory)
  public
    function GetADescription: string; override;
    function GetAIsFireWeapon: Boolean; override;
    function GetAName: string; override;
    function GetAPriceToSell: Currency; override;
    function GetAQuantity: Integer; override;
  end;

implementation

uses
  System.StrUtils, System.SysUtils;

{ TNormalInventory }

function TNormalInventory.GetADescription: string;
begin
  Result := 'Normal Inventory';
end;

function TNormalInventory.GetAIsFireWeapon: Boolean;
begin
  Result := False;
end;

function TNormalInventory.GetAName: string;
begin
  Result := 'Snow Bag';
end;

function TNormalInventory.GetAPriceToSell: Currency;
begin
  Result := 12.22;
end;

function TNormalInventory.GetAQuantity: Integer;
begin
  Result := 10;
end;

end.
