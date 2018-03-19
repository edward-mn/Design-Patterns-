unit UnAutomaticPillotFacede;

interface

uses
   System.SysUtils, UnVelocidade, UnTurbo, UnPortas, UnCurvas, UnCombustivel;

type
  TAutomaticPillot = class
  private
    FVelocidade : TVelocidade;
    FTurbo : TTurbo;
    FPorta : TPortas;
    FCurvas : TCurvas;
    FCombustivel : TCombustivel;
  public
    procedure Attivar;
    procedure Desligar;
    constructor Create (AVelocidade: TVelocidade; ATurbo: TTurbo; APorta: TPortas; ACurva: TCurvas; ACombustivel: TCombustivel);
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
  AVelocidade := TVelocidade.Create;
  ATurbo := TTurbo.Create;
  APorta := TPortas.Create;
  ACurva := TCurvas.Create;
  ACombustivel := TCombustivel.Create;
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
