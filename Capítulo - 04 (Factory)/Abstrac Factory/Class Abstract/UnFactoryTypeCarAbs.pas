unit UnFactoryTypeCarAbs;

interface

uses
  UnHatchAbs, UnPicapeAbs, UnSedanAbs;

type
  TFactoryTypeCarAbs = class
    function GetHatchDescription: THatchAbs; virtual; abstract;
    function GetPicapeDescription: TPicapeAbs; virtual; abstract;
    function GetSedanDscripition: TSedanAbs; virtual; abstract;
  end;

implementation

end.
