program MySimDuckTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}


uses
  DUnitTestRunner,
  TestUnRedHeadDuck in 'TestUnRedHeadDuck.pas',
  UnRedHeadDuck in '..\UnRedHeadDuck.pas',
  TestUnRubberDuck in 'TestUnRubberDuck.pas',
  TestUnNoWingDuck in 'TestUnNoWingDuck.pas',
  UnNoWingDuck in '..\UnNoWingDuck.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

