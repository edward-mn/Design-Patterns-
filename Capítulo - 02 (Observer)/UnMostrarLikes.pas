unit UnMostrarLikes;

interface

uses
  System.SysUtils, UnTelaLikesInterface, UnObserverSubscribsInterface,
  UnSubjectLikesInterface, UnSubjectLike;

type
  TMostrarLikes = class(TInterfacedObject, IObserverSubscribs, ITelaLikes)
  private
    FNewFollow: string;
    FUnFollow: string;
  public
    procedure Updates(NewFollow, UnFollow, Notify: string);
    procedure ShowInScreen;
  end;

implementation

{ TMostrarLikes }

procedure TMostrarLikes.ShowInScreen;
begin
  Writeln(Format('Novos Followers: %s' + #13#10 + 'UnFollows: %s',
    [FNewFollow, FUnFollow]));
  Readln;
end;

procedure TMostrarLikes.Updates(NewFollow, UnFollow, Notify: string);
begin
  FNewFollow := NewFollow;
  FUnFollow := UnFollow;
  ShowInScreen;
end;

end.
