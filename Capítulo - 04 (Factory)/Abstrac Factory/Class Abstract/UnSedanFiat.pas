unit UnSedanFiat;

interface

uses
  System.SysUtils, UnSedanAbs, UnGlobalDefinitions;

type
  TSedanFiat = class(TSedanAbs)
  private
    FGetDescriptionSedan: TGlobalDefinitions;
  public
    function KindPeopleUse: string; override;
    function SpaciousOfCar: string; override;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSedanFiat }

constructor TSedanFiat.Create;
begin
  FGetDescriptionSedan := TGlobalDefinitions.Create;
end;

destructor TSedanFiat.Destroy;
begin
  FGetDescriptionSedan.Free;
  inherited;
end;

function TSedanFiat.KindPeopleUse: string;
begin
  inherited;
  Result := FGetDescriptionSedan.KindPeopleUse;
end;

function TSedanFiat.SpaciousOfCar: string;
begin
  inherited;
  Result := FGetDescriptionSedan.SpaciousOfCar;
end;

end.
