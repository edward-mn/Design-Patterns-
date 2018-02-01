unit UnSubjectLikesInterface;

interface

uses
  UnObserverSubscribsInterface;

type
  ISubjectLikes = interface
    procedure NewFollow(Follow: IObserverSubscribs);
    procedure NotFollow(UnFollow: IObserverSubscribs);
    procedure Notify;
  end;

implementation

end.
