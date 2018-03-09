unit UnDecoratorCobertura;

interface

uses
  UnAdicionaisABS, UnSorveteriaABS, System.SysUtils, UnCasquinha, UnSingleton;

type
  TCobertura = class(TAdicionais)
  public
    TCobertura: TSorvete;
    function GetDescription: string; override;
    function Custo: Currency; override;
    constructor Create(Sorvete: TSorvete); reintroduce;
    Destructor Destroy; override;
  end;

implementation


{ TCobertura }

constructor TCobertura.Create(Sorvete: TSorvete);
begin
  TCobertura := Sorvete;
end;

function TCobertura.Custo: Currency;
begin
  inherited;
  Result := TCobertura.Custo + 0.60;
end;

destructor TCobertura.Destroy;
begin
  TCobertura.Free;
  inherited;
end;

function TCobertura.GetDescription: string;
begin
  inherited;
  Result := TCobertura.GetDescription + ',Cobertura';
end;

end.
