program AsksInformation;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UnInformatioAbs in 'UnInformatioAbs.pas',
  UnSubjectInformation in 'UnSubjectInformation.pas',
  UnProxyInformation in 'UnProxyInformation.pas';

var
  Informatiom : TInformation;
  Person, Address, Name :string;
  Age, Phone, Number : Integer;
  const
    Cabecalho = 'All information';
begin
  Informatiom := nil;

  Writeln('Tipo de pesoa: ');
  Readln(Person);
  Writeln('Nome da Pessa será: ');
  Readln(Name);
  Writeln('Sua idade: ');
  Readln(Age);
  Writeln('Seu telefone para contato: ');
  Readln(Phone);
  Writeln('Sua Rua: ');
  Readln(Address);
  Writeln('Numero da sua casa: ');
  Readln(Number);
  try
  Informatiom := TProxy.Create(Person);
  try
  Writeln(Cabecalho);
  Writeln(Informatiom.GetName(Name));
  Writeln(Informatiom.GetAge(Age));
  Writeln(Informatiom.GetPhone(Phone));
  Writeln(Informatiom.GetAddress(Address, Number));
  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  finally
  ReportMemoryLeaksOnShutdown := True;
  Informatiom.Free;
  end;
end.
