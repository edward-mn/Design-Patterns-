unit UnFactoryFiat;

interface

uses
  UnFactoryTypeCarInterface, System.SysUtils, UnHatchInterface,
  UnSedanInterface,
  UnPicapeInterface;

type
  TFactoryFiat = class(TInterfacedObject, IFactoryTypeCar)
  public
    function GetHatchDescripton: IHatch;
    function GetPicapeDescription: IPicape;
    function GetSedanDescription: ISedan;
  end;

implementation

uses
  UnHatchFiat, UnPicapeFiat, UnSedanFiat;

{ TFactoryFiat }

function TFactoryFiat.GetHatchDescripton: IHatch;
begin
  Result := THatch.Create;
end;

function TFactoryFiat.GetPicapeDescription: IPicape;
begin
  Result := TPicape.Create;
end;

function TFactoryFiat.GetSedanDescription: ISedan;
begin
  Result := TSedan.Create;
end;

end.
