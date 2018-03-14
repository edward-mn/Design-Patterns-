unit UnControl;

interface

uses
  System.Generics.Collections, UnCommandInterface, UnPatternCommand;

type
  TControl = class
  private
    FListCommandsOn: TList<ICommandControl>;
    FListCommandsOff: TList<ICommandControl>;
    FComandoPadrao: TPatternCommand;
    FUndo: ICommandControl;
  public
    procedure SetCommands(Slot: Integer; OnCommands, OffCommands: ICommandControl);
    procedure OnButtonWasPressed(Slot: Integer);
    procedure OffButtonWasPressed(Slot: Integer);
    procedure UndoWasPressed;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControl }

constructor TControl.Create;
var
  Contador: Integer;
begin
  FListCommandsOn := TList<ICommandControl>.Create;
  FListCommandsOff := TList<ICommandControl>.Create;
  FComandoPadrao := TPatternCommand.Create;
  for Contador := 0 to 2 do
  begin
    FListCommandsOn.Add(FComandoPadrao);
    FListCommandsOff.Add(FComandoPadrao);
  end;
  FUndo := FComandoPadrao;
end;

destructor TControl.Destroy;
begin
  FListCommandsOn.Free;
  FListCommandsOff.Free;
  inherited;
end;

procedure TControl.OffButtonWasPressed(Slot: Integer);
begin
  FListCommandsOff.Items[0].Execute;
  FUndo := FListCommandsOff.Items[Slot];
end;

procedure TControl.OnButtonWasPressed(Slot: Integer);
begin
  FListCommandsOn.Items[0].Execute;
  FUndo := FListCommandsOn.Items[Slot];
end;

procedure TControl.SetCommands(Slot: Integer; OnCommands, OffCommands: ICommandControl);
begin
  FListCommandsOn.Insert(Slot, OnCommands);
  FListCommandsOff.Insert(Slot, OffCommands);
end;

procedure TControl.UndoWasPressed;
begin
  Readln;
  Writeln('Botão desfazer foi precionado');
  FUndo.Undo;
end;

end.
