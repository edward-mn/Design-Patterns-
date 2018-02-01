unit UnSubjectInterface;

interface

uses
  UnObserverInterface;

type
  ISubjectVideos = interface
    function NovoVideo(Novo: IObserverVideo): Integer;
    function DeletarVideo(Deletar: IObserverVideo): Integer;
    function Notificar: Integer;
  end;

implementation

end.
