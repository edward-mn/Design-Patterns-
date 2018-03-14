unit UnControl;

interface

uses
  System.Generics.Collections, UnCommandInterface, UnPatternCommand;

type
  TControl = class
    ListCommandsOn: TList<ICommandControl>;
    ListCommandsOff: TList<ICommandControl>;
    ComandoPadrao: TPatternCommand;
    procedure SetCommands(Slot: Integer; OnCommands, OffCommands: ICommandControl);
    procedure OnButtonWasPressed(Slot: Integer);
    procedure OffButtonWasPressed(Slot: Integer);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControl }

constructor TControl.Create;
var
  Contador: Integer;
begin
  ListCommandsOn := TList<ICommandControl>.Create;
  ListCommandsOff := TList<ICommandControl>.Create;
  ComandoPadrao := TPatternCommand.Create;
  for Contador := 0 to 2 do
  begin
    ListCommandsOn.Add(ComandoPadrao);
    ListCommandsOff.Add(ComandoPadrao);
  end;
//  ComandoPadrao :=
end;

destructor TControl.Destroy;
begin
//  ListCommandsOn.Free;
//  ListCommandsOff.Free;
  inherited;
end;

procedure TControl.OffButtonWasPressed(Slot: Integer);
begin
  ListCommandsOff.Items[0].Execute;
end;

procedure TControl.OnButtonWasPressed(Slot: Integer);
begin
  ListCommandsOn.Items[0].Execute;
end;

procedure TControl.SetCommands(Slot: Integer; OnCommands, OffCommands: ICommandControl);
begin
  ListCommandsOn.Insert(Slot, OnCommands);
  ListCommandsOff.Insert(Slot, OffCommands);
end;

end.
