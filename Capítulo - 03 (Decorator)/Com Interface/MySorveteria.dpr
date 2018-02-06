program MySorveteria;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnSorveteInterface in 'UnSorveteInterface.pas',
  UnCondimentosAdicionais in 'UnCondimentosAdicionais.pas',
  UnCasquinha in 'UnCasquinha.pas',
  UnSorvete in 'UnSorvete.pas',
  UnCondimentosSorvete in 'UnCondimentosSorvete.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
