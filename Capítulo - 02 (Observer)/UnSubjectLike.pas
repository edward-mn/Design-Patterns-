unit UnSubjectLike;

interface

uses
  UnObserverSubscribsInterface, UnSubjectLikesInterface, System.SysUtils,
  System.Generics.Collections;

type
  TSubjectLike = class(TInterfacedObject, ISubjectLikes)
  private
    FFollow: string;
    FUnfollow: string;
    FNotify: string;
  public
    ListaObserverLikes: TList<IObserverSubscribs>;
    procedure NewFollow(Follow: IObserverSubscribs);
    procedure NotFollow(UnFollow: IObserverSubscribs);
    procedure Notify;
    procedure AttDeFollowers(NewFollow, UnFollow, Notify: string);
    procedure AplicarAtt;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSubjectLike }

procedure TSubjectLike.AplicarAtt;
begin
  Notify;
end;

constructor TSubjectLike.Create;
begin
  ListaObserverLikes := TList<IObserverSubscribs>.Create;
end;

destructor TSubjectLike.Destroy;
begin
  ListaObserverLikes.Free;
end;

procedure TSubjectLike.NewFollow(Follow: IObserverSubscribs);
begin
  ListaObserverLikes.Add(Follow);
end;

procedure TSubjectLike.Notify;
var
  IndexLikes: IObserverSubscribs;
begin
  for IndexLikes in ListaObserverLikes do
    IndexLikes.Updates(FFollow, FUnfollow, FNotify);
end;

procedure TSubjectLike.NotFollow(UnFollow: IObserverSubscribs);
begin
  for UnFollow in ListaObserverLikes do
    ListaObserverLikes.Delete(ListaObserverLikes.IndexOf(UnFollow));
end;

procedure TSubjectLike.AttDeFollowers(NewFollow, UnFollow, Notify: string);
begin
  FFollow := NewFollow;
  FUnfollow := UnFollow;
  FNotify := Notify;

  AplicarAtt;
end;

end.
