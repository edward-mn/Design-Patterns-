unit UnCarro;

interface

type
  TCarro = class
    function Nome: string; virtual; abstract;
  end;

  TCarroClass = class of TCarro;

implementation

end.
