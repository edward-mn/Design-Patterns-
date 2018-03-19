unit UnConcretPlugEua;

interface

uses
  UnPlugEuaInterface;

type
  TPlugEua = class(TInterfacedObject, IPlugEua)
  public
    procedure ThreeHoleOnPlug;
    procedure VoltageEua;
  end;

implementation

{ TPlugEua }

procedure TPlugEua.ThreeHoleOnPlug;
begin
  Writeln('Model EUA of three holes');
end;

procedure TPlugEua.VoltageEua;
begin
  Writeln('Voltage of this plug it is 155V');
end;

end.
