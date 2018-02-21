unit UnPicapeVolkswagem;


interface

uses
  System.SysUtils, UnPicapeInterface, UnGlobalDefinitions;

type
  TPicapeVolkswagem = class (TInterfacedObject, IPicape)
  private
    FGetDescriptionGlobalPicape : TGlobalDefinitions;
  public
    function Drive4x4: string;
    function EsportiveDescription: string;
  end;

implementation

{ TPicapeVolkswagem }

function TPicapeVolkswagem.Drive4x4: string;
begin
  Result := FGetDescriptionGlobalPicape.Drive4x4;
end;

function TPicapeVolkswagem.EsportiveDescription: string;
begin
  Result := FGetDescriptionGlobalPicape.EsportiveDescription;
end;

end.
