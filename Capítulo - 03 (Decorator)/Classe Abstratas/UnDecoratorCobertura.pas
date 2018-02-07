unit UnDecoratorCobertura;

interface

uses
  UnAdicionaisABS, UnSorveteriaABS, System.SysUtils, UnCasquinha;

type
  TCobertura = class(TAdicionais)
  public
    Cobertura: TSorvete;
    function GetDescription: string; override;
    function Custo: Currency; override;
    constructor Create(Sorvete: TSorvete);
    Destructor Destroy; override;
  end;

implementation

{ TCobertura }

constructor TCobertura.Create(Sorvete: TSorvete);
begin
  Cobertura := Sorvete;
end;

function TCobertura.Custo: Currency;
begin
  inherited;
  Result := Cobertura.Custo + 0.60;
end;

destructor TCobertura.Destroy;
begin
  Cobertura.Free;
  inherited;
end;

function TCobertura.GetDescription: string;
begin
  inherited;
  Result := Cobertura.GetDescription + ',Cobertura';
end;

end.
