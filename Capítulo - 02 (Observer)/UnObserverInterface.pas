unit UnObserverInterface;

interface
type
  IObserverVideo = interface
    function atualizacoes(Novo, Deletar, Notificar: Integer): Integer;
  end;

implementation

end.
