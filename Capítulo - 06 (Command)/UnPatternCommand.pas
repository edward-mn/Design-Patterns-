unit UnPatternCommand;

interface

uses
  UnCommandInterface;

type
  TPatternCommand = class (TInterfacedObject, ICommandControl)
  public
    procedure Execute;
  end;

implementation

{ TPatternCommand }

procedure TPatternCommand.Execute;
begin

end;

end.
