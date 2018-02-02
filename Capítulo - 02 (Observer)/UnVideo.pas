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
  public
    IndexObservers: TList<IObserverVideo>;
    constructor Create;
    destructor Destroy; override;
    function NovoVideo(Novo: IObserverVideo): Boolean;
    function DeletarVideo(Deletar: IObserverVideo): Boolean;
    function Notificar: Boolean;
    function Mudancas: Boolean;
    function AplicarMudancas(Novo, Deletar, Notificar: Integer): Boolean;
  end;

implementation

{ TVideo }

constructor TVideo.Create;
begin
  IndexObservers := TList<IObserverVideo>.Create;
end;

function TVideo.DeletarVideo(Deletar: IObserverVideo): Boolean;
begin
  for Deletar in IndexObservers do
  IndexObservers.Delete(IndexObservers.IndexOf(Deletar));
  Result := True
end;

destructor TVideo.Destroy;
begin
  IndexObservers.Free;
  inherited;
end;

function TVideo.AplicarMudancas(Novo, Deletar, Notificar: Integer): Boolean;
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  Mudancas;
  Result := True;
end;

function TVideo.Mudancas: Boolean;
begin
  Notificar;
  Result := True;
end;

function TVideo.Notificar: Boolean;
var
  ListaDeObservers: IObserverVideo;
begin
  for ListaDeObservers in IndexObservers do
  begin
    ListaDeObservers.atualizacoes(FNovo, FDeletar, FNotificar);
  end;
  Result := True
end;

function TVideo.NovoVideo(Novo: IObserverVideo): Boolean;
begin
  IndexObservers.Add(Novo);
  Result := True;
end;

end.
