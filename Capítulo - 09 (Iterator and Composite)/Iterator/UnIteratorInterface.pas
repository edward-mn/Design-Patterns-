unit UnIteratorInterface;

interface

uses
  System.SysUtils, UnItensInventory;

type
  IIterator = interface
    function HasNext: Boolean;
    function Next: TItensInventory;
  end;

implementation

end.
