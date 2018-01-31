unit UnVideoData;

interface

uses
  System.SysUtils, UnObserverInterface,
  System.Generics.Collections, UnSubjectInterface;

type
  TVideoData = class (TInterfacedObject, ISubjectVideos)
  private
    FNovo: string;
    FDeletar: string;
    FNotificar: string;
    FObservers: TList<IObserverVideo>;
  public
    constructor create; reintroduce;
    destructor Destroy; override;
    procedure NovoVideo(Novo: IObserverVideo);
    procedure DeletarVideo(Deletar: IObserverVideo);
    procedure Notificar;
    procedure Mudanças;
    procedure AplicarMudanças(Novo, Deletar, Notificar : string);
  end;

implementation

{ TVideoData }

constructor TVideoData.create;
begin
  inherited;
  FObservers := TList<IObserverVideo>.Create;
end;

procedure TVideoData.DeletarVideo(Deletar: IObserverVideo);
begin
  FObservers.Delete(FObservers.IndexOf(Deletar));
end;

destructor TVideoData.Destroy;
begin
  FObservers.Free;
  inherited;
end;


procedure TVideoData.AplicarMudanças(Novo, Deletar, Notificar : string);
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  Mudanças;
end;

procedure TVideoData.Mudanças;
begin
  Notificar;
end;

procedure TVideoData.Notificar;
var
  IndexObservers : IObserverVideo;
begin
  for IndexObservers in FObservers do
    IndexObservers.atualizações(FNovo, FDeletar, FNotificar);
end;

procedure TVideoData.NovoVideo(Novo: IObserverVideo);
begin
  FObservers.Add(Novo);
end;

end.
