program ProjectSorveteriaGelada;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnDisplayPadraoInterface in 'UnDisplayPadraoInterface.pas',
  UnCustoPadraoInterface in 'UnCustoPadraoInterface.pas',
  UnQuantidadePadraoInterface in 'UnQuantidadePadraoInterface.pas',
  UnDescricaoPadraoInterface in 'UnDescricaoPadraoInterface.pas',
  UnSorvetePadrao in 'UnSorvetePadrao.pas',
  UnCasquinhaDisplay in 'UnCasquinhaDisplay.pas',
  Unit1 in 'Unit1.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
