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
  UnNormalnventory in 'UnNormalnventory.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
