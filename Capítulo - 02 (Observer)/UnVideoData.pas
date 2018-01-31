unit UnVideoData;

interface

uses
  System.SysUtils, UnObserverInterface,
  System.Generics.Collections, UnSubjectInterface;

type
  TVideoData = class (TInterfacedObject, ISubjectVideos)
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
    function AplicarMudancas(Novo, Deletar, Notificar : Integer): Integer;
  end;

implementation

{ TVideoData }

constructor TVideoData.create;
begin
  inherited;
  FObservers := TList<IObserverVideo>.Create;
end;

function TVideoData.DeletarVideo(Deletar: IObserverVideo): Integer;
begin
  FObservers.Delete(Notificar);
//  FObservers.Delete(FObservers.IndexOf(Deletar));
end;

destructor TVideoData.Destroy;
begin
  FObservers.Free;
  inherited;
end;


function TVideoData.AplicarMudancas(Novo, Deletar, Notificar : Integer): Integer;
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  Mudancas;
end;

function TVideoData.Mudancas: Integer;
var
  NotificaMudanças : integer;
begin
  NotificaMudanças := Notificar;
  Result := NotificaMudanças;
end;

function TVideoData.Notificar: Integer;
var
  IndexObservers : IObserverVideo;
begin
  for IndexObservers in FObservers do
   Result := IndexObservers.atualizacoes(FNovo, FDeletar, FNotificar);
end;

function TVideoData.NovoVideo(Novo: IObserverVideo): Integer;
begin
  Result := FObservers.Add(Novo);
end;

end.
