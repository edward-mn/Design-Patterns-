unit UnAdapter;

interface

uses
  UnPlugEuaInterface, UnPlugUkInterface;

type
  TAdapterSimple = class (TInterfacedObject, IPlugEua)
  private
    FPlugAdapted : IPlugUk;
  public
    procedure ThreeHoleOnPlug;
    procedure VoltageEua;
    constructor Create (Adapter :IPlugUk);
  end;

implementation

{ TAdapterSimple }

constructor TAdapterSimple.Create(Adapter: IPlugUk);
begin
  FPlugAdapted := Adapter;
end;

procedure TAdapterSimple.ThreeHoleOnPlug;
begin
  Writeln('Adapting Holes model of EUA from Uk....');
  FPlugAdapted.TwoHoleOnPlug;
end;

procedure TAdapterSimple.VoltageEua;
begin
  Writeln('Adapting Voltage model of EUA from Uk...');
  FPlugAdapted.VoltageUk;
end;

end.
