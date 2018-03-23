unit UnProxyInformation;

interface

uses
 System.SysUtils, UnInformatioAbs, UnSubjectInformation;

type
  TProxy = class (TInformation)
  private
    FSubjectInformation : TSubjectInformation;
    FPerson : string;
  public
    function GetAddress(Address: string; Number: Integer): string; override;
    function GetName(Name: string): string; override;
    function GetAge(Age: Integer): string; override;
    function GetPhone(Tel: Integer): string; override;
    constructor Create(Person: string);
    destructor Destroy; override;
  end;

implementation

{ TProxy }

constructor TProxy.Create(Person: string);
begin
  Self.FPerson := Person;
end;

destructor TProxy.Destroy;
begin
  FSubjectInformation.Free;
  inherited;
end;

function TProxy.GetAddress(Address: string; Number: Integer): string;
begin
  if FSubjectInformation = nil then
  begin
    FSubjectInformation := TSubjectInformation.Create(FPerson);
  end;
  Result := FSubjectInformation.GetAddress(Address , Number);
end;

function TProxy.GetAge(Age: Integer): string;
begin
  if FSubjectInformation = nil then
  begin
    FSubjectInformation := TSubjectInformation.Create(FPerson);
  end;
  Result := FSubjectInformation.GetAge(Age);
end;

function TProxy.GetName(Name: string): string;
begin
  if FSubjectInformation = nil then
  begin
    FSubjectInformation := TSubjectInformation.Create(FPerson);
  end;
  Result := FSubjectInformation.GetName(Name);
end;

function TProxy.GetPhone(Tel: Integer): string;
begin
  if FSubjectInformation = nil then
  begin
    FSubjectInformation := TSubjectInformation.Create(FPerson);
  end;
  Result := FSubjectInformation.GetPhone(Tel);
end;

end.
