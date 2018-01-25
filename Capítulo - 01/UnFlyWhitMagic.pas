unit UnFlyWhitMagic;

interface

uses
  UnFlyAbleInterface;

type
  TFlyWhitMagic = class (TInterfacedObject, IFlyAble)
  public
    procedure fly;
    constructor create;
  end;

implementation

{ TFlyWithMagic }

constructor TFlyWhitMagic.create;
begin

end;

procedure TFlyWhitMagic.fly;
begin
  Writeln('I can Fly with a Magic');
end;

end.
