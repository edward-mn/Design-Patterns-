unit UnVirarCommand;

interface

uses
  System.SysUtils, UnCommandInterface, UnVirar;

type
  TVirarDireita = class (TInterfacedObject, ICommandControl)
  private
    FVirar : TVirar;
  public
    procedure Execute;
    constructor Create(Virar: TVirar);
  end;

  TVirarEsquarda = class (TInterfacedObject, ICommandControl)
  private
    FVirar : TVirar;
  public
    procedure Execute;
    constructor Create(Virar: TVirar);
  end;

implementation

{ TVirarCommand }

constructor TVirarDireita.Create(Virar: TVirar);
begin
  FVirar := Virar;
end;

procedure TVirarDireita.Execute;
begin
  FVirar.Direita;
end;

{ TVirarEsquarda }

constructor TVirarEsquarda.Create(Virar: TVirar);
begin
  FVirar := Virar;
end;

procedure TVirarEsquarda.Execute;
begin
  FVirar.Esquerda;
end;

end.
