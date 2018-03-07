unit UnConversorAbs;

interface

uses
  UnDmConversor, Datasnap.DBClient;

type
  TConversorAbs = class
  private
    FDados: TDmConversor;
  public
    procedure Converter(Const PathFile: string; DataSet: TClientDataSet);
      virtual; abstract;
    constructor Create(Dados: TDmConversor);
  end;

implementation

{ TConversorAbs }

constructor TConversorAbs.Create(Dados: TDmConversor);
begin
  FDados := Dados;
end;

end.
