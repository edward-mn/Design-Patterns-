unit UnRaffleAbs;

interface

uses
  UnIData, System.SysUtils;

type
  TRaffle = class
  protected
    FData: IData;
  public
    constructor Create(AData: IData);
    procedure ShowDrawn; virtual; abstract;
  end;

implementation

{ TRaffle }

constructor TRaffle.Create(AData: IData);
begin
  Self.FData := AData;
end;

end.
