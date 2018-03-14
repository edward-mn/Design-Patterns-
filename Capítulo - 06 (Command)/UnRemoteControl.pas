unit UnRemoteControl;

interface

uses
  UnCommandInterface;

type
  TRemoteControl = class
  private
    FSlot : ICommandControl;
  public
    procedure ButtonWasPressed;
    procedure UtilizarCommando (Command : ICommandControl);
  end;

implementation

{ TRemoteControl }

procedure TRemoteControl.ButtonWasPressed;
begin
  FSlot.Execute;
end;

procedure TRemoteControl.UtilizarCommando(Command: ICommandControl);
begin
  FSlot := Command;
end;

end.
