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
  function performfly: string;
  function display: string;
  function swin: string;
  function fly: string;
  function quack: string;
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

function TDuck.display: string;
begin
  Result := MakeDisplayAble.display;
end;

function TDuck.fly: string;
begin
  Result := MakeFlyAble.fly;
end;

function TDuck.quack: string;
begin
  Result := MakeQuackAble.quack;
end;

function TDuck.performfly: string;
begin

end;

function TDuck.swin: string;
begin
  Result := MakeSwimAble.swim;
end;

end.
