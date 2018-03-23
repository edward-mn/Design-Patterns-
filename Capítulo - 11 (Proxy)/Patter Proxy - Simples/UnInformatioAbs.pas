unit UnInformatioAbs;

interface

type
  TInformation = class
    function GetName(Name: string): string; virtual; abstract;
    function GetAge(Age: Integer): string; virtual; abstract;
    function GetPhone(Tel : Integer): string; virtual; abstract;
    function GetAddress(Address: string; Number: Integer): string; virtual;
        abstract;
  end;

implementation

end.
