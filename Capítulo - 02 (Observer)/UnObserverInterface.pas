unit UnObserverInterface;

interface

type
  IObserverVideo = interface
    function atualizacoes(Novo, Deletar, Notificar: Integer): Boolean;
  end;

implementation

end.
