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

{ TFactoryVolkswagem }

function TFactoryVolkswagem.GetHatchDescripton: IHatch;
begin

end;

function TFactoryVolkswagem.GetPicapeDescription: IPicape;
begin

end;

function TFactoryVolkswagem.GetSedanDescription: ISedan;
begin

end;

end.
