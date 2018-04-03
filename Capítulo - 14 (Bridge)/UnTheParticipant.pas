unit UnTheParticipant;

interface

type
  TTheParticipant = class
  public
    procedure Age;
    procedure Name;
    procedure Phone;
    procedure LuckyNumber;
    procedure Address;
  end;

implementation

{ TTheParticipant }

procedure TTheParticipant.Address;
begin
  Writeln('Aracaju Street, Nº 258');
end;

procedure TTheParticipant.Age;
begin
  Writeln('25 years old');
end;

procedure TTheParticipant.LuckyNumber;
begin
  Writeln('13 is my lucky number');
end;

procedure TTheParticipant.Name;
begin
  Writeln('My name is Edward');
end;

procedure TTheParticipant.Phone;
begin
  Writeln('My number is 57118595454');
end;

end.
