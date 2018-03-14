unit UnCommandInterface;

interface

type
  ICommandControl = Interface
    procedure Execute;
    procedure Undo;
  End;

implementation

end.
