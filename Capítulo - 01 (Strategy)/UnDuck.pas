unit UnDuck;

interface

uses
  System.SysUtils,UnFlyAbleInterface, UnQuackAbleInterface,
  UnSwimAbleInterface, UnDisplayAbleInterface;

Type
 TDuck = class
  public
  MakeFlyAble : IFlyAble;
  MakeQuackAble : IQuackAble;
  MakeSwimAble : ISwimAble;
  MakeDisplayAble : IDislplayAble;
  procedure performfly;
  procedure display;
  procedure swin;
  procedure fly;
  procedure quack;
  constructor Create(AFlyAble: IFlyAble; AQuakAble: IQuackAble; ASwimAble:
      ISwimAble; ADisplayAble: IDislplayAble); reintroduce;
 end;

implementation

{ TDuck }

constructor TDuck.Create(AFlyAble: IFlyAble; AQuakAble: IQuackAble; ASwimAble:
    ISwimAble; ADisplayAble: IDislplayAble);
begin
  Self.MakeFlyAble     := AFlyAble;
  Self.MakeQuackAble   := AQuakAble;
  Self.MakeSwimAble    := ASwimAble;
  Self.MakeDisplayAble := ADisplayAble;
end;

procedure TDuck.Display;
begin
  MakeDisplayAble.display;
end;

procedure TDuck.fly;
begin
  MakeFlyAble.fly;
end;

procedure TDuck.Quack;
begin
  MakeQuackAble.quack;
end;

procedure TDuck.performfly;
begin

end;

procedure TDuck.Swin;
begin
  MakeSwimAble.swim;
end;

end.
