program MySimDuck;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnFlyAbleInterface in 'UnFlyAbleInterface.pas',
  UnNormalQuack in 'UnNormalQuack.pas',
  UnDuck in 'UnDuck.pas',
  UnFlyWithWings in 'UnFlyWithWings.pas',
  UnFlyWhitMagic in 'UnFlyWhitMagic.pas',
  UnFlyNoWay in 'UnFlyNoWay.pas',
  UnNoWingDuck in 'UnNoWingDuck.pas',
  UnRedHeadDuck in 'UnRedHeadDuck.pas',
  UnRubberDuck in 'UnRubberDuck.pas',
  UnQuackAbleInterface in 'UnQuackAbleInterface.pas',
  UnSqueakQuack in 'UnSqueakQuack.pas',
  UnMudeQuack in 'UnMudeQuack.pas',
  UnSwimAbleInterface in 'UnSwimAbleInterface.pas',
  UnNormalSwim in 'UnNormalSwim.pas',
  UnToFloatSwim in 'UnToFloatSwim.pas',
  UnToSinkSwim in 'UnToSinkSwim.pas',
  UnDisplayRedHeadDuck in 'UnDisplayRedHeadDuck.pas',
  UnDisplayAbleInterface in 'UnDisplayAbleInterface.pas',
  UnDisplayRubberDuck in 'UnDisplayRubberDuck.pas',
  UnDisplayNoWingDuck in 'UnDisplayNoWingDuck.pas';

var
  RedHeadDuck: TDuck;
  RubberDuck: TDuck;
  NoWingDuck: TDuck;

begin
  RedHeadDuck := nil;
  RubberDuck := nil;
  NoWingDuck := nil;
  try
    try
      RedHeadDuck := TDuck.Create(TFlyWhitWings.Create, TNormalQuack.Create,
        TNormalSwim.Create, TDisplayRedHeadDuck.create);
      RubberDuck := TDuck.Create(TFlyWhitMagic.Create, TSqueakQuack.Create,
        TToFloatSwim.Create, TDisplayRubberDuck.create);
     NoWingDuck := TDuck.Create(TFlyNoWay.Create, TMudeQuack.Create,
        TToSinkSiwm.Create, TDisplayNoWingDuck.create);

      RedHeadDuck.display;
      RedHeadDuck.fly;
      RedHeadDuck.Quack;
      RedHeadDuck.swin;

      RubberDuck.display;
      RubberDuck.fly;
      RubberDuck.Quack;
      RubberDuck.swin;

      NoWingDuck.display;
      NoWingDuck.fly;
      NoWingDuck.Quack;
      NoWingDuck.swin;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;

  finally
    RedHeadDuck.Free;
    RubberDuck.Free;
    NoWingDuck.Free;
  end;
end.
