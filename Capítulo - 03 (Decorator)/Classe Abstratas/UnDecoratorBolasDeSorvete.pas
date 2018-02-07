unit UnDecoratorBolasDeSorvete;

interface

uses
  UnAdicionaisABS, UnSorveteriaABS, System.SysUtils;

type
  TBolasDeSorvete = class(TAdicionais)

  public
    BolaDeSorvete: TSorvete;
    function GetDescription: string; override;
    function Custo: Currency; override;
    constructor Create(Sorvete: TSorvete);
    destructor Destroy; override;
  end;

implementation

{ TBolasDeSorvete }

constructor TBolasDeSorvete.Create(Sorvete: TSorvete);
begin
  BolaDeSorvete := Sorvete;
end;

function TBolasDeSorvete.Custo: Currency;
begin
  inherited;
  Result := BolaDeSorvete.Custo + 0.50;
end;

destructor TBolasDeSorvete.Destroy;
begin
  BolaDeSorvete.Free;
  inherited;
end;

function TBolasDeSorvete.GetDescription: string;
begin
  inherited;
  Result := BolaDeSorvete.GetDescription + ',Bolas de sorvete';
end;

end.
