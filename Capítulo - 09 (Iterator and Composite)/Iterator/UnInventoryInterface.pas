unit UnInventoryInterface;

interface

type
  IInventory = interface
    function GetName: string;
    function GetDescription: string;
    function GetQuantity: Integer;
    function GetIsFireWeapon(IsFireWeapon: string): Boolean;
    function GetPriceToSell: Currency;
  end;

implementation

end.
