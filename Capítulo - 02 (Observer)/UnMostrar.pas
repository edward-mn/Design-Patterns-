unit UnMostrar;

interface

uses
  System.SysUtils, UnObserverInterface, UnSubjectInterface, UnTelaInterface,
  UnVideoData;


type
  TMostrar = class (TInterfacedObject, IObserverVideo, ITela)
  private
    FNovo: Integer;
    FDeletar: Integer;
    FNotificar : Integer;
    FSujectVideos : ISubjectVideos;
  public
    function atualizacoes(Novo, Deletar, Notificar: Integer): Integer;
    constructor create (dia: ISubjectVideos);
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

constructor TMostrar.create(dia: ISubjectVideos);
begin
  FSujectVideos := dia;
  FSujectVideos.NovoVideo(Self);
end;

function TMostrar.tela: string;
begin
  Result := (Format('Novos videos: %d' + #13#10 + 'Deletados: %d' + #13#10 +
  'Notificados: %d',[Fnovo, FDeletar, FNotificar]));

  Writeln(Result);
  Readln;
end;

end.
