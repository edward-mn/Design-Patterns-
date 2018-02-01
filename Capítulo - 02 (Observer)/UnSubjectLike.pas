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
    FObserverLikes: TList<IObserverSubscribs>;
  public
    procedure NewFollow(Follow: IObserverSubscribs);
    procedure NotFollow(UnFollow: IObserverSubscribs);
    procedure Notify;
    procedure AttDeFollowers(NewFollow, UnFollow, Notify: string);
    procedure AplicarAtt;
    constructor create; reintroduce;
    destructor destroy; reintroduce;
  end;

implementation

{ TSubjectLike }

procedure TSubjectLike.AplicarAtt;
begin
  Notify;
end;

constructor TSubjectLike.create;
begin
  FObserverLikes := TList<IObserverSubscribs>.create;
end;

destructor TSubjectLike.destroy;
begin
  FObserverLikes.Free;
  inherited;
end;

procedure TSubjectLike.NewFollow(Follow: IObserverSubscribs);
begin
  FObserverLikes.Add(Follow);
end;

procedure TSubjectLike.Notify;
var
  IndexLikes: IObserverSubscribs;
begin
  for IndexLikes in FObserverLikes do
    IndexLikes.Updates(FFollow, FUnfollow, FNotify);
end;

procedure TSubjectLike.NotFollow(UnFollow: IObserverSubscribs);
begin
  FObserverLikes.Delete(FObserverLikes.IndexOf(UnFollow));
end;

procedure TSubjectLike.AttDeFollowers(NewFollow, UnFollow, Notify: string);
begin
  FFollow := NewFollow;
  FUnfollow := UnFollow;
  FNotify := Notify;
  AplicarAtt;
end;

end.
