unit UnAutomaticPillotCommand;

interface

uses
  UnCommandInterface, UnPilotoAutomatico;

type
  TAutomaticPillotCommand = class (TInterfacedObject, ICommandControl)
  private
    FAutomaticPillot : TPilotoAutomatico;
  public
    procedure Execute;
    procedure Undo;
    constructor Create (AutomaticPillot : TPilotoAutomatico);
  end;

implementation

{ TAutomaticPillotCommand }

constructor TAutomaticPillotCommand.Create(AutomaticPillot: TPilotoAutomatico);
begin
  FAutomaticPillot := AutomaticPillot;
end;

procedure TAutomaticPillotCommand.Execute;
begin
  FAutomaticPillot.OnAutomaticPillot;
end;

procedure TAutomaticPillotCommand.Undo;
begin
  FAutomaticPillot.OffAutomaticPillot;
end;

end.
