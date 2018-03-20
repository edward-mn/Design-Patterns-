program MyTvSet;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnAutomaticPillotFacede in 'UnAutomaticPillotFacede.pas',
  UnVelocidade in 'UnVelocidade.pas',
  UnCurvas in 'UnCurvas.pas',
  UnTurbo in 'UnTurbo.pas',
  UnPortas in 'UnPortas.pas',
  UnCombustivel in 'UnCombustivel.pas';

var
  MyAutomaticPillot: TAutomaticPillot;
  Velocidade: TVelocidade;
  Turbo: TTurbo;
  Porta: TPortas;
  Curvas: TCurvas;
  Combustivel: TCombustivel;

begin
  MyAutomaticPillot := nil;
  Velocidade := nil;
  Turbo := nil;
  Porta := nil;
  Curvas := nil;
  Combustivel := nil;
  try
    MyAutomaticPillot := TAutomaticPillot.Create(Velocidade, Turbo, Porta,
      Curvas, Combustivel);
    try
      MyAutomaticPillot.Attivar;
      Readln;
      MyAutomaticPillot.Desligar;
      Readln;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    MyAutomaticPillot.Free;
  end;

end.
