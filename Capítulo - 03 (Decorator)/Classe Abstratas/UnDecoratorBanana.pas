unit UnDecoratorBanana;

interface

uses
  UnAdicionaisABS, UnSorveteriaABS, System.SysUtils;

type
  TBanana = class(TAdicionais)
  public
    TBanana: TSorvete;
    function GetDescription: string; override;
    function Custo: Currency; override;
    constructor Create(Sorvete: TSorvete);
    destructor Destroy; override;
  end;

implementation

{ TBanana }

constructor TBanana.Create(Sorvete: TSorvete);
begin
  TBanana := Sorvete;
end;

function TBanana.Custo: Currency;
begin
  Result := TBanana.Custo + 1;
end;

destructor TBanana.Destroy;
begin
  TBanana.Free;
  inherited;
end;

function TBanana.GetDescription: string;
begin
  inherited;
  Result := TBanana.GetDescription + ',2 Bananas';
end;

end.
