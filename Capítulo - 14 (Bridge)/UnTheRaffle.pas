unit UnTheRaffle;

interface

uses
  UnRaffleAbs;

type
  TTheRaffle = class(TRaffle)
  public
    procedure ShowDrawn; override;
  end;

implementation

{ TTheRaffle }

procedure TTheRaffle.ShowDrawn;
begin
  inherited;
  Writeln('Congratulations you are new winner');
  FData.Name;
  FData.Age;
  FData.Phone;
  FData.Address;
  FData.LuckyNumber;
end;

end.
