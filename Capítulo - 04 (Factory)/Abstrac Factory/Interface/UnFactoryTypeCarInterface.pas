unit UnFactoryTypeCarInterface;

interface

uses
  UnPicapeInterface, UnSedanInterface, UnHatchInterface;

type
  IFactoryTypeCar = interface
    function GetPicapeDescription: IPicape;
    function GetSedanDescription: ISedan;
    function GetHatchDescripton: IHatch;
  end;

implementation

end.
