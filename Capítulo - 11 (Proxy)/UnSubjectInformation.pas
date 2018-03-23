unit UnSubjectInformation;

interface

uses
  UnInformatioAbs, System.SysUtils;

type
  TSubjectInformation = class (TInformation)
  private
    FPerson : string;
  public
    function GetAddress(Address: string;  Number: Integer): string; override;
    function GetName(Name: string): string; override;
    function GetAge(Age: Integer): string; override;
    function GetPhone(Tel: Integer): string; override;
    constructor Create(Person : string);
  end;

implementation

{ TSubjectInformation }

constructor TSubjectInformation.Create(Person: string);
begin
  Self.FPerson := Person;
end;

function TSubjectInformation.GetAddress(Address: string;  Number: Integer): string;
begin
  Result := 'Live at: ' + Address + 'street, Nº: ' + IntToStr(Number);
end;

function TSubjectInformation.GetAge(Age: Integer): string;
var
  TextAge: string;
begin
  TextAge := 'Your age is: ' + IntToStr(Age);
  Result := (TextAge);
end;

function TSubjectInformation.GetName(Name: string): string;
begin
  Result := 'Your name is: ' + Name;
end;

function TSubjectInformation.GetPhone(Tel: Integer): string;
begin
  Result := 'Your Phone is: '+ IntToStr(Tel);
end;

end.
