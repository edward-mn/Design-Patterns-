unit UnMicroCommand;

interface

uses
  UnCommandInterface, System.Generics.Collections;

type
  TMicroCommand = class (TInterfacedObject, ICommandControl)
  private
    FListaMicroCommand :TList<ICommandControl>;
  public
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TMicroCommand }

procedure TMicroCommand.Execute;
var
  I: Integer;
begin
  for I := 0 to FListaMicroCommand.Items[-1] do
      FListaMicroCommand.Items[0].Execute;
end;

procedure TMicroCommand.Undo;
begin

end;

end.
