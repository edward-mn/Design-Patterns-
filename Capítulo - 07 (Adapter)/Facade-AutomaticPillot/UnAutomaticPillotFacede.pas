unit UnAutomaticPillotFacede;

interface

uses
  System.SysUtils, UnVelocidade, UnTurbo, UnPortas, UnCurvas, UnCombustivel;

type
  TAutomaticPillot = class
  private
    FVelocidade: TVelocidade;
    FTurbo: TTurbo;
    FPorta: TPortas;
    FCurvas: TCurvas;
    FCombustivel: TCombustivel;
  public
    procedure Attivar;
    procedure Desligar;
    constructor Create(AVelocidade: TVelocidade; ATurbo: TTurbo;
      APorta: TPortas; ACurva: TCurvas; ACombustivel: TCombustivel);
  end;

implementation

{ TAutomaticPillot }

procedure TAutomaticPillot.Attivar;
begin
  FVelocidade.OnVelocidadePilotoAutomatico;
  FTurbo.OnTurbo;
  FPorta.PortasFechadas;
  FCurvas.VirarDireita;
  FCombustivel.CombustivelPilotoAutomatico;
end;

constructor TAutomaticPillot.Create(AVelocidade: TVelocidade; ATurbo: TTurbo;
  APorta: TPortas; ACurva: TCurvas; ACombustivel: TCombustivel);
begin
  FVelocidade := AVelocidade;
  FTurbo := ATurbo;
  FPorta := APorta;
  FCurvas := ACurva;
  FCombustivel := ACombustivel;
end;

procedure TAutomaticPillot.Desligar;
begin
  FVelocidade.OffVelocidadePilotoAutomatico;
  FTurbo.OffTurbo;
  FPorta.PortasAbertas;
  FCurvas.VirarEsquerda;
  FCombustivel.SemCombustivelPilotoAutomatico;
end;

end.
