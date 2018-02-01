unit UnVideo;

interface

uses
  System.SysUtils, UnObserverInterface,
  System.Generics.Collections, UnSubjectInterface;

type
  TVideo = class(TInterfacedObject, ISubjectVideos)
  private
    FNovo: Integer;
    FDeletar: Integer;
    FNotificar: Integer;
    FObservers: TList<IObserverVideo>;
  public
    constructor create; reintroduce;
    destructor Destroy; override;
    function NovoVideo(Novo: IObserverVideo): Integer;
    function DeletarVideo(Deletar: IObserverVideo): Integer;
    function Notificar: Integer;
    function Mudancas: Integer;
    function AplicarMudancas(Novo, Deletar, Notificar: Integer): Integer;
  end;

implementation

{ TVideo }

constructor TVideo.create;
begin
  inherited;
  FObservers := TList<IObserverVideo>.create;
end;

function TVideo.DeletarVideo(Deletar: IObserverVideo): Integer;
begin
  FObservers.Delete(FObservers.IndexOf(Deletar));
end;

destructor TVideo.Destroy;
begin
  FObservers.Free;
  inherited;
end;

function TVideo.AplicarMudancas(Novo, Deletar, Notificar: Integer): Integer;
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  Mudancas;
end;

function TVideo.Mudancas: Integer;
var
  NotificaMudanças: Integer;
begin
  NotificaMudanças := Notificar;
  Result := NotificaMudanças;
end;

function TVideo.Notificar: Integer;
var
  IndexObservers: IObserverVideo;
begin
  for IndexObservers in FObservers do
    Result := (IndexObservers.atualizacoes(FNovo, FDeletar, FNotificar));
end;

function TVideo.NovoVideo(Novo: IObserverVideo): Integer;
begin
  Result := FObservers.Add(Novo);
end;

end.
