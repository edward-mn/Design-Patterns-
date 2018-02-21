unit UnFactoryVolkswagem;

interface

uses
  UnFactoryTypeCarInterface, System.SysUtils, UnHatchInterface,
  UnPicapeInterface, UnSedanInterface;

type
  TFactoryVolkswagem = class (TInterfacedObject, IFactoryTypeCar)
  public
    function GetHatchDescripton: IHatch;
    function GetPicapeDescription: IPicape;
    function GetSedanDescription: ISedan;
  end;

implementation

uses
  UnHatchVolkswagem, UnPicapeVolkswagem, UnSedanVolkswagem;

{ TFactoryVolkswagem }

function TFactoryVolkswagem.GetHatchDescripton: IHatch;
begin
  Result := THatchVolkswagem.Create;
end;

function TFactoryVolkswagem.GetPicapeDescription: IPicape;
begin
  Result := TPicapeVolkswagem.Create;
end;

function TFactoryVolkswagem.GetSedanDescription: ISedan;
begin
  Result := TSedanVolkswagem.Create;
end;

end.
