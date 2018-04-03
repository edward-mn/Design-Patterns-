program BridgePattern;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnRaffleAbs in 'UnRaffleAbs.pas',
  UnTheRaffle in 'UnTheRaffle.pas',
  UnIData in 'UnIData.pas',
  UnSomeParticipant in 'UnSomeParticipant.pas',
  UnTheParticipant in 'UnTheParticipant.pas';

var
  GetData: TRaffle;
  Data: IData;
  Edward: TTheParticipant;

begin
  Edward := nil;
  GetData := nil;
  try
    Data := TSomeParticipant.Create(Edward);
    GetData := TTheRaffle.Create(Data);
    try
      GetData.ShowDrawn;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    GetData.Free;
    ReportMemoryLeaksOnShutdown := True;
  end;

end.
