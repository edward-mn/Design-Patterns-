unit UnInventoryInterface;

interface

type
  TInventory = class abstract
  public
    function GetAName: string; virtual; abstract;
    function GetADescription: string; virtual; abstract;
    function GetAQuantity: Integer; virtual; abstract;
    function GetAIsFireWeapon: Boolean; virtual; abstract;
    function GetAPriceToSell: Currency; virtual; abstract;
  end;

implementation

{ TInventory }

end.
