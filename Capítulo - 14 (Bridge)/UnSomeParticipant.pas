unit UnSomeParticipant;

interface

uses
  UnIData, System.SysUtils, UnTheParticipant;

type
  TSomeParticipant = class(TInterfacedObject, IData)
  private
    FPartipicipant: TTheParticipant;
  public
    procedure Address;
    procedure Age;
    procedure LuckyNumber;
    procedure Name;
    procedure Phone;
    constructor Create(AParticipant: TTheParticipant);
    destructor Destroy; override;
  end;

implementation

{ TSomeParticipant }

procedure TSomeParticipant.Address;
begin
  FPartipicipant.Address;
end;

procedure TSomeParticipant.Age;
begin
  FPartipicipant.Age;
end;

procedure TSomeParticipant.LuckyNumber;
begin
  FPartipicipant.LuckyNumber;
end;

procedure TSomeParticipant.Name;
begin
  FPartipicipant.Name;
end;

procedure TSomeParticipant.Phone;
begin
  FPartipicipant.Phone;
end;

constructor TSomeParticipant.Create(AParticipant: TTheParticipant);
begin
  Self.FPartipicipant := AParticipant;
end;

destructor TSomeParticipant.Destroy;
begin
  FPartipicipant.Free;
  inherited;
end;

end.
