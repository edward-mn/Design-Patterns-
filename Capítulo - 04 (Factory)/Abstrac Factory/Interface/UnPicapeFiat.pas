unit UnPicapeFiat;

interface

uses
  System.SysUtils, UnPicapeInterface, UnGlobalDefinitions;

type
  TPicape = class(TInterfacedObject, IPicape)
  private
    FGetDiscriptionGlobalPicape: TGlobalDefinitions;
  public
    function Drive4x4: string;
    function EsportiveDescription: string;
  end;

implementation

{ TPicape }

function TPicape.Drive4x4: string;
begin
  Result := FGetDiscriptionGlobalPicape.Drive4x4
end;

function TPicape.EsportiveDescription: string;
begin
  Result := FGetDiscriptionGlobalPicape.EsportiveDescription;
end;

end.
