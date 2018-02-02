unit UnSubjectInterface;

interface

uses
  UnObserverInterface;

type
  ISubjectVideos = interface
    function NovoVideo(Novo: IObserverVideo): Boolean;
    function DeletarVideo(Deletar: IObserverVideo): Boolean;
    function Notificar: Boolean;
  end;

implementation

end.
