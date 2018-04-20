unit UnItensInventory;

interface

uses
  System.SysUtils;

type
  TItensInventory = class
  private
    FName, FDescription: string;
    FQuantity: Integer;
    FFireWeapon: Boolean;
    FSell: Currency;
  public
    constructor Create(AName: string; ADescription: string; AQuantity: Integer;
      IsAFireWeapon: Boolean; ASell: Currency);
    function Name: string;
    function Description: string;
    function Quantity: Integer;
    function IsFireWeapon: Boolean;
    function PriceToSell: Currency;
    function ToString: string; override;
  end;

implementation

{ TItensInventory }

constructor TItensInventory.Create(AName, ADescription: string;
  AQuantity: Integer; IsAFireWeapon: Boolean; ASell: Currency);
begin
  Self.FName := AName;
  Self.FDescription := ADescription;
  Self.FQuantity := AQuantity;
  Self.FFireWeapon := IsAFireWeapon;
  Self.FSell := ASell;
end;

function TItensInventory.Description: string;
begin
  Result := FDescription;
end;

function TItensInventory.IsFireWeapon: Boolean;
begin
  Result := FFireWeapon;
end;

function TItensInventory.Name: string;
begin
  Result := FName;
end;

function TItensInventory.PriceToSell: Currency;
begin
  Result := FSell;
end;

function TItensInventory.Quantity: Integer;
begin
  Result := FQuantity;
end;

function TItensInventory.ToString: string;
begin
  // Concatenate the last object list
  Result := 'Name: ' + FName + sLineBreak + 'Description: ' + FDescription +
    sLineBreak + 'Quantity: ' + (FQuantity.ToString) + sLineBreak +
    'Fire weapon is it ? ' + (BoolToStr(FFireWeapon, True)) + sLineBreak +
    'Price: ' + CurrToStr(FSell) + ' U$';
end;

end.
