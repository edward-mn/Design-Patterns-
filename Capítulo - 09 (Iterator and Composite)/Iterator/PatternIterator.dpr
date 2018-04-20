program PatternIterator;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnItensInventory in 'UnItensInventory.pas',
  UnIteratorInterface in 'UnIteratorInterface.pas',
  UnIteratorItensInventory in 'UnIteratorItensInventory.pas',
  UnItensOfArray in 'UnItensOfArray.pas',
  UnInventoryInterface in 'UnInventoryInterface.pas',
  UnNormalnventory in 'UnNormalnventory.pas',
  UnExcellentInventory in 'UnExcellentInventory.pas',
  UnAllinventory in 'UnAllinventory.pas';

var
  Inventory: TAlliventory;
  TypeInventory: TInteratorItensInventory;

begin
  Inventory := nil;
  TypeInventory := nil;
  try
    Inventory := TAlliventory.Create;
    TypeInventory := Inventory.CriarIterator;
    try
      Writeln(TypeInventory.GetName);
      Writeln(TypeInventory.GetDescription);
      Writeln(TypeInventory.GetQuantity);
      Writeln(TypeInventory.GetIsFireWeapon);
      Writeln(Format('%m', [TypeInventory.GetPriceToSell]));
      Readln;
      TypeInventory.Next;
      Writeln(TypeInventory.GetName);
      Writeln(TypeInventory.GetDescription);
      Writeln(TypeInventory.GetQuantity);
      Writeln(TypeInventory.GetIsFireWeapon);
      Writeln(Format('%m', [TypeInventory.GetPriceToSell]));
      Readln;
      Writeln(TypeInventory.Next.ToString);
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    Inventory.Free;
    TypeInventory.Free;
  end;

end.
