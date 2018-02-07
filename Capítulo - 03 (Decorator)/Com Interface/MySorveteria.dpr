program MySorveteria;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnSorveteInterface in 'UnSorveteInterface.pas',
  UnDecorator in 'UnDecorator.pas',
  UnCasquinha in 'UnCasquinha.pas',
  UnDecoratorCobertura in 'UnDecoratorCobertura.pas',
  UnMilkShake in 'UnMilkShake.pas',
  UnDecoratorLeite in 'UnDecoratorLeite.pas',
  UnDecoratorBolasDeSorvete in 'UnDecoratorBolasDeSorvete.pas';

var
  PedidoCasquinha : ISorvete;
  PedidoMilkShake : ISorvete;
begin
  PedidoCasquinha := nil;
  PedidoMilkShake := nil;
  try
  PedidoCasquinha := TCasquinha.Create;
  PedidoCasquinha := TDecoratorBolasDeSorvete.Create(PedidoCasquinha);
  PedidoCasquinha := TDecoratorCobertura.Create(PedidoCasquinha);
  Writeln(PedidoCasquinha.GetDados + '.');
  Readln;
  Writeln(format('%m',[PedidoCasquinha.GetCusto]));
  Readln;

  PedidoMilkShake := TMilkShake.Create;
  PedidoMilkShake := TDecoratorCobertura.Create(PedidoMilkShake);
  PedidoMilkShake := TDecoratorBolasDeSorvete.Create(PedidoMilkShake);
  PedidoMilkShake := TDecoratorLeite.Create(PedidoMilkShake);
  Writeln(PedidoMilkShake.GetDados + '.');
  Readln;
  Writeln(format('%m',[PedidoMilkShake.GetCusto]));
  Readln;
  try
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
    ReportMemoryLeaksOnShutdown := True;
  end;
end.
