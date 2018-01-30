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
//    property NovoVideo: string read FNovo write FNovo;
//    property DeletarVideo: string read FDeletar write FDeletar;
//    property Notificar: string read FNotificar write FNotificar;
    constructor create; reintroduce;
    destructor Destroy; override;
    procedure NovoVideo(Novo: IObserverVideo);
    procedure DeletarVideo(Deletar: IObserverVideo);
    procedure Notificar(Notificar: IObserverVideo);
    procedure Mudanças;
    procedure display(Novo, Deletar, Notificar : string);
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

end;

destructor TVideoData.Destroy;
begin
  FObservers.Free;
  inherited;
end;


procedure TVideoData.display(Novo, Deletar, Notificar: string);
begin

end;

procedure TVideoData.Mudanças;
begin

end;

procedure TVideoData.Notificar(Notificar: IObserverVideo);
begin

end;

procedure TVideoData.NovoVideo(Novo: IObserverVideo);
begin
  FObservers.Add(Novo);
end;

end.
