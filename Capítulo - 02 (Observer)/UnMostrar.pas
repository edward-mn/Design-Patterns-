unit UnMostrar;

interface

uses
  System.SysUtils, UnObserverInterface, UnSubjectInterface, UnTelaInterface,
  UnVideo;

type
  TMostrar = class(TInterfacedObject, IObserverVideo, ITela)
  private
    FNovo: Integer;
    FDeletar: Integer;
    FNotificar: Integer;
  public
    function atualizacoes(Novo, Deletar, Notificar: Integer): Integer;
    function tela: string;
  end;

implementation

{ TMostrar }

function TMostrar.atualizacoes(Novo, Deletar, Notificar: Integer): Integer;
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  tela;
end;

function TMostrar.tela: string;
begin
  Result := (Format('Novos videos: %d' + #13#10 + 'Deletados: %d' + #13#10 +
    'Notificações: %d', [FNovo, FDeletar, FNotificar]));

  Writeln(Result);
  Readln;
end;

end.
