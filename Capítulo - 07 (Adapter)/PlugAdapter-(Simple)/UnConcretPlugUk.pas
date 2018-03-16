unit UnConcretPlugUk;

interface

uses
  UnPlugUkInterface;

type
  TPlugUk = class (TInterfacedObject, IPlugUk)
  public
    procedure TwoHoleOnPlug;
    procedure VoltageUk;
  end;

implementation

{ TPlugUk }

procedure TPlugUk.TwoHoleOnPlug;
begin
  Writeln('Model UK of two holes');
end;

procedure TPlugUk.VoltageUk;
begin
  Writeln('Voltage of this plug it is 175 V');
end;

end.
