unit UnDeviceReader;

interface

uses
  System.Classes;

type
  TDeviceReader = class
  protected const
    ArrayTypeYes: array of string = ['Yes', 'y'];
    ArrayTypeNo: array of string = ['No', 'n'];
  private
    FYesAndNo: string;
  public
    Movie: String;
    procedure StartMovie;
    procedure ReadDvd;
    procedure Voltagem;
    procedure Karaoke;
    procedure QuestionKaraoke;
    procedure NameDvd; virtual; abstract;
    procedure ConfigResolution; virtual; abstract;
    procedure ConfigAudio; virtual; abstract;
  end;

implementation

uses
  System.StrUtils;

{ TDeviceReader }

procedure TDeviceReader.Karaoke;
begin
  QuestionKaraoke;
  if MatchText(FYesAndNo, ArrayTypeYes) then
    Writeln('Has Karaoke ')
  else if MatchText(FYesAndNo, ArrayTypeNo) then
    Writeln('Has not Karaoke')
  else
    Writeln('Sorry does not has this option');
end;

procedure TDeviceReader.QuestionKaraoke;
begin
  Writeln('The DvD has karaoke ?(Y/N)');
  Readln(FYesAndNo);
end;

procedure TDeviceReader.ReadDvd;
begin
  Writeln('Pattern reading media to the dvd');
end;

procedure TDeviceReader.StartMovie;
begin
  NameDvd;
  Writeln('Starting Film');
  ReadDvd;
  Voltagem;
  ConfigResolution;
  ConfigAudio;
  Karaoke;
end;

procedure TDeviceReader.Voltagem;
begin
  Writeln('Pattern Voltage of dvd is 120 v');
end;

end.
