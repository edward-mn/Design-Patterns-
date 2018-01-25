unit UnDisplayNoWingDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayNoWingDuck = class (TInterfacedObject, IDislplayAble)
  public
    constructor create;
    procedure display;
  end;

implementation

{ TDisplayNoWingDuck }


constructor TDisplayNoWingDuck.create;
begin

end;

procedure TDisplayNoWingDuck.display;
begin
  Writeln('Yhoou, I not have wings');
end;

end.
