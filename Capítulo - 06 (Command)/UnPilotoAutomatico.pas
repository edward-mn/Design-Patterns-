unit UnPilotoAutomatico;

interface

uses UnSpeed, UnVirar, UnLigarCommand,  UnSpeedCommand;

type
  TPilotoAutomatico = class
  private
    FIdealSpeed : TSpeedOfCar;
    FVirarTempoCertp : TVirar;
    FOnOrOffCar : TOnAndOffCar;
    FMyAutomaticSpeed :TSpeedOfCar;
    FAutomaticSpeed: Integer;
    FHighSpeed: THighSpeedCommand;
    FLowSpeed: TLowSpeedCommand;
  public
    procedure OnAutomaticPillot;
    procedure OffAutomaticPillot;
  end;

implementation


{ TPilotoAutomatico }

procedure TPilotoAutomatico.OffAutomaticPillot;
begin
  FOnOrOffCar.OffCar;
//  FAutomaticSpeed := FMyAutomaticSpeed.Speed;
  FHighSpeed.Execute;
  FVirarTempoCertp.Esquerda;
  Writeln('Desligando piloto automático');
end;

procedure TPilotoAutomatico.OnAutomaticPillot;
begin
  FOnOrOffCar.OnCar;
//  Writeln(FMyAutomaticSpeed.Speed);
//  FLowSpeed.Execute;
  FVirarTempoCertp.Direita;
  Writeln('Ligando piloto automático');
end;

end.


