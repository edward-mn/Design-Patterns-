unit UnObserverSubscribsInterface;

interface

type
  IObserverSubscribs = interface
    procedure Updates(NewFollow, UnFollow, Notify: string);
  end;

implementation

end.
