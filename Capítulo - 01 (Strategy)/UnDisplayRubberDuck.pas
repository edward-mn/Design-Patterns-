unit UnDisplayRubberDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayRubberDuck = class (TInterfacedObject, IDislplayAble)
  public
    constructor create;
    procedure display;
  end;

implementation

{ TDisplayRubberDuck }

constructor TDisplayRubberDuck.create;
begin

end;

procedure TDisplayRubberDuck.display;
begin
  Writeln('Yah, I am a Rubber Duck');
end;

end.
