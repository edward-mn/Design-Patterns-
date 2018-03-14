unit UnPatternCommand;

interface

uses
  UnCommandInterface;

type
  TPatternCommand = class (TInterfacedObject, ICommandControl)
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TPatternCommand }

procedure TPatternCommand.Execute;
begin

end;

procedure TPatternCommand.Undo;
begin

end;

end.
