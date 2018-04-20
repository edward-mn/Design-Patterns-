unit UnIteratorItensInventory;

interface

uses
  System.SysUtils, UnIteratorInterface, UnItensInventory, UnItensOfArray;

type
  TInteratorItensInventory = class(TInterfacedObject, IIterator)
  private
    FListItens: TItensOfArray;
    FPosition: Integer;
    FInventory: TItensInventory;
  public
    function HasNext: Boolean;
    function Next: TItensInventory;
    function GetName: string;
    function GetDescription: string;
    function GetQuantity: Integer;
    function GetIsFireWeapon: Boolean;
    function GetPriceToSell: Currency;
    constructor Create(AListItens: TItensOfArray);
    destructor Destroy; override;
  end;

implementation

{ TInteratorItensInventory }

constructor TInteratorItensInventory.Create(AListItens: TItensOfArray);
begin
  Self.FListItens := AListItens;
  FPosition := 0;
end;

destructor TInteratorItensInventory.Destroy;
var
  Item: TItensInventory;
begin
  for Item in Self.FListItens do
    Item.Free;
  inherited;
end;

function TInteratorItensInventory.GetDescription: string;
begin
  FInventory := FListItens[FPosition];
  Result := FInventory.Description;
end;

function TInteratorItensInventory.GetIsFireWeapon: Boolean;
begin
  FInventory := FListItens[FPosition];
  Result := FInventory.IsFireWeapon;
end;

function TInteratorItensInventory.GetName: string;
begin
  FInventory := FListItens[FPosition];
  Result := FInventory.Name;
end;

function TInteratorItensInventory.GetPriceToSell: Currency;
begin
  FInventory := FListItens[FPosition];
  Result := FInventory.PriceToSell;
end;

function TInteratorItensInventory.GetQuantity: Integer;
begin
  FInventory := FListItens[FPosition];
  Result := FInventory.Quantity;
end;

function TInteratorItensInventory.HasNext: Boolean;
begin
  if (FPosition > Length(FListItens)) and (FListItens[FPosition] = nil) then
    Result := False
  else
    Result := True;
end;

function TInteratorItensInventory.Next: TItensInventory;
begin
  FInventory := FListItens[FPosition];
  FPosition := FPosition + 1;
  Result := FInventory;
end;

end.
