unit UnFactoryConversor;

interface

uses
  UnConversorXml, UnConversorCsv, UnConversorJson, UnDmConversor,
  UnConversorAbs;

type
  TTipoDeConversor = (TpConversorXml, TpConversorCsv, TpConversorJson); { Enum }

  TFactoryConversor = class
  private
    FDados: TDmConversor;
  public
    function CriaConversor(const ATipoConversor: TTipoDeConversor)
      : TConversorAbs;
    constructor Create(Dados: TDmConversor);
  end;

implementation

{ TFactoryConversor }

constructor TFactoryConversor.Create(Dados: TDmConversor);
begin
  FDados := Dados;
end;

function TFactoryConversor.CriaConversor(const ATipoConversor: TTipoDeConversor)
  : TConversorAbs;
begin
  Result := nil;
  case ATipoConversor of
    TpConversorXml:
      Result := TXml.Create(FDados);
    TpConversorCsv:
      Result := TCsv.Create(FDados);
    TpConversorJson:
      Result := TJson.Create(FDados);
  end;
end;

end.
