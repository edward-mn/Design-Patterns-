unit UnFactoryFiat;

interface

uses
  System.SysUtils, UnFactoryTypeCarAbs, UnSedanAbs, UnHatchAbs, UnPicapeAbs;

type
  TFactoryFiat = class(TFactoryTypeCarAbs)
  public
    function GetHatchDescription: THatchAbs; override;
    function GetPicapeDescription: TPicapeAbs; override;
    function GetSedanDscripition: TSedanAbs; override;
  end;

implementation

uses
  UnHatchFiat, UnPicapeFiat, UnSedanFiat;

{ TFactoryFiat }

function TFactoryFiat.GetHatchDescription: THatchAbs;
begin
  inherited;
  Result := THatchFiat.Create;
end;

function TFactoryFiat.GetPicapeDescription: TPicapeAbs;
begin
  inherited;
  Result := TPicapeFiat.Create;
end;

function TFactoryFiat.GetSedanDscripition: TSedanAbs;
begin
  inherited;
  Result := TSedanFiat.Create;
end;

end.
