unit UnDisplayRedHeadDuck;

interface

uses
  System.SysUtils, UnDisplayAbleInterface;
type
  TDisplayRedHeadDuck = class(TInterfacedObject, IDislplayAble)
  public
    constructor create;
    procedure display;
  end;

implementation

{ TNormalDisplay }

constructor TDisplayRedHeadDuck.create;
begin

end;

procedure TDisplayRedHeadDuck.display;
begin
  Writeln('Yo, I am a Red Head Duck !');
end;

end.
