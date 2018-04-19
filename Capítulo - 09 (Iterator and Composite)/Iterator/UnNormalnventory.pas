unit UnNormalnventory;

interface

uses
  UnInventoryInterface;

type
  TNormalInventory = class (TInterfacedObject, IInventory)
  public
    function GetDescription: string;
    function GetIsFireWeapon(IsFireWeapon: string): Boolean;
    function GetName: string;
    function GetPriceToSell: Currency;
    function GetQuantity: Integer;
//    procedure de
  end;

implementation

uses
  System.StrUtils;

{ TNormalInventory }

function TNormalInventory.GetDescription: string;
begin
  Result := 'Normal Inventory';
end;

function TNormalInventory.GetIsFireWeapon(IsFireWeapon: string): Boolean;
begin
  if IsFireWeapon = 'Yes, it is a Fire Weapon' then
   Result := True
   else
   IsFireWeapon := 'it is not a fire weapon';
   Result := False;

   Readln(IsFireWeapon);
end;

function TNormalInventory.GetName: string;
begin
  Result := 'Snow Bag'
end;

function TNormalInventory.GetPriceToSell: Currency;
begin
  Result := 18.25;
end;

function TNormalInventory.GetQuantity: Integer;
begin
  Result := 15;
end;

end.
