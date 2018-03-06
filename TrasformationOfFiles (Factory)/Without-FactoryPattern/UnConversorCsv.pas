unit UnConversorCsv;

interface

uses
  System.SysUtils, System.Variants, System.Classes, System.IOUtils,
  Datasnap.DBClient, Data.DB;

type
  TCsv = class
    class procedure Split(CampoAtual: string; DelimitadoCsv: char; ListaCsv:
        TStringList);
    class procedure Converter(PathFile: string; DataSet: TClientDataSet);
  end;

implementation

uses
  UnPrincipal;

{ TCsv }

class procedure TCsv.Split(CampoAtual: string; DelimitadoCsv: char; ListaCsv:
    TStringList);
begin
   ListaCsv.Delimiter := DelimitadoCsv;
   ListaCsv.DelimitedText := CampoAtual;
end;

class procedure TCsv.Converter(PathFile: string; DataSet: TClientDataSet);
var
  ListaItensArquivo, ListaDados: TStringList;
  ContadorGeral, SetaNomeFields, SetaDadosNosCampos: integer;
  ActualLine: string;
  Field: TField;
begin
  ListaItensArquivo := TStringList.Create;
  ListaDados := TStringList.Create;

  DataSet.Close;
  DataSet.Fields.Clear;
  try
  ListaItensArquivo.LoadFromFile(PathFile);

  for ContadorGeral := 0 to ListaItensArquivo.Count -1 do
  begin
    ActualLine := ListaItensArquivo[ContadorGeral];
    Split(ActualLine, ',' ,ListaDados);

  if ContadorGeral = 0 then
  begin
  for SetaNomeFields := 0 to ListaDados.Count -1 do
  begin
    Field := TWideStringField.Create(DataSet);
    Field.Name := '';
    Field.FieldName := ListaDados[SetaNomeFields];
    Field.DataSet := DataSet
  end;
    DataSet.CreateDataSet;
    Continue;
  end;

    DataSet.Insert;
  for SetaDadosNosCampos := 0 to ListaDados.Count -1 do
    DataSet.Fields[SetaDadosNosCampos].Value := ListaDados[SetaDadosNosCampos];
    PrincipalConversor.MemoConversorTeste.Lines.Add(ActualLine);
    DataSet.Post;
    end;
  finally
  ListaItensArquivo.Free;
  ListaDados.Free;
  end;
end;
end.
