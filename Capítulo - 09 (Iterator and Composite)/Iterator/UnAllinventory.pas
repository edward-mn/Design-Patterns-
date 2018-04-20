unit UnAllinventory;

interface

uses
  UnItensOfArray, System.SysUtils, UnIteratorItensInventory,
  UnExcellentInventory, UnNormalnventory, UnInventoryInterface;

type
  TAlliventory = class
  private
    FExcellentInventory: TExcellentInventory;
    FNormalInvenory: TNormalInventory;
    FListaItens: TItensOfArray;
    FPosition: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItem(Name: string; Description: string; Quantity: Integer;
      IsAFireWeapon: Boolean; Sell: Currency);
    function CriarIterator: TInteratorItensInventory;
  end;

implementation

uses
  UnItensInventory;

{ TAlliventory }

procedure TAlliventory.AddItem(Name, Description: string; Quantity: Integer;
  IsAFireWeapon: Boolean; Sell: Currency);
var
  NewItemOfIventory: TItensInventory;
begin
  NewItemOfIventory := TItensInventory.Create(Name, Description, Quantity,
    IsAFireWeapon, Sell);
  FListaItens := FListaItens + [NewItemOfIventory];
  FPosition := FPosition + 1;
end;

constructor TAlliventory.Create;
begin
  FPosition := 0;
  FExcellentInventory := TExcellentInventory.Create;
  FNormalInvenory := TNormalInventory.Create;

  AddItem(FNormalInvenory.GetAName, FNormalInvenory.GetADescription,
    FNormalInvenory.GetAQuantity, FNormalInvenory.GetAIsFireWeapon,
    FNormalInvenory.GetAPriceToSell);

  AddItem(FExcellentInventory.GetAName, FExcellentInventory.GetADescription,
    FExcellentInventory.GetAQuantity, FExcellentInventory.GetAIsFireWeapon,
    FExcellentInventory.GetAPriceToSell);

end;

function TAlliventory.CriarIterator: TInteratorItensInventory;
var
  InventoryIterator: TInteratorItensInventory;
begin
  InventoryIterator := TInteratorItensInventory.Create(FListaItens);
  Result := InventoryIterator;
end;

destructor TAlliventory.Destroy;
begin
  FNormalInvenory.Free;
  FExcellentInventory.Free;
  inherited;
end;

end.
