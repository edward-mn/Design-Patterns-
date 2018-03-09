program MySorverteria;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UnSorveteriaABS in 'UnSorveteriaABS.pas',
  UnAdicionaisABS in 'UnAdicionaisABS.pas',
  UnCasquinha in 'UnCasquinha.pas',
  UnDecoratorCobertura in 'UnDecoratorCobertura.pas',
  UnBananaSplit in 'UnBananaSplit.pas',
  UnDecoratorBanana in 'UnDecoratorBanana.pas',
  UnDecoratorBolasDeSorvete in 'UnDecoratorBolasDeSorvete.pas',
  UnSingleton in 'UnSingleton.pas';

var
  PedidoCasquinhaSimples: TSorvete;
  PedidoBananaSplit: TSorvete;

  Total: Double;

const
  DescripValorTotal = 'Valor Total';
begin
  PedidoCasquinhaSimples := nil;
  PedidoBananaSplit := nil;
  try
    PedidoCasquinhaSimples := TCasquinha.Create;
    PedidoCasquinhaSimples := TCobertura.Create(PedidoCasquinhaSimples);
    Writeln(PedidoCasquinhaSimples.GetDescription + '.');
    Writeln(format('%m', [PedidoCasquinhaSimples.Custo]));
    Readln;

    PedidoBananaSplit := TBananaSplit.Create;
    PedidoBananaSplit := TBanana.Create(PedidoBananaSplit);
    PedidoBananaSplit := TBolasDeSorvete.Create(PedidoBananaSplit);
    PedidoBananaSplit := TCobertura.Create(PedidoBananaSplit);
    Writeln(PedidoBananaSplit.GetDescription + '.');
    Writeln(format('%m', [PedidoBananaSplit.Custo]));
    Readln;

    Writeln(Format('%m', [TSingleton.GetInstance.TotalValor]));
    Readln;

    Writeln(DescripValorTotal);
    Total := (PedidoCasquinhaSimples.Custo + PedidoBananaSplit.Custo);
    Writeln(Format('%m', [Total]));
    Readln;
    try
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    ReportMemoryLeaksOnShutdown := True;
    PedidoCasquinhaSimples.Free;
    PedidoBananaSplit.Free;
  end;

end.
