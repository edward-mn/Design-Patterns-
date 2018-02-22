unit UnPicapeFiat;

interface

uses
  System.SysUtils, UnPicapeAbs, UnGlobalDefinitions;

type
  TPicapeFiat = class(TPicapeAbs)
  private
    FGetDescriptionPicape: TGlobalDefinitions;
  public
    function Drive4x4: string; override;
    function EsportiveDescription: string; override;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPicapeFiat }

constructor TPicapeFiat.Create;
begin
  FGetDescriptionPicape := TGlobalDefinitions.Create;
end;

destructor TPicapeFiat.Destroy;
begin
  FGetDescriptionPicape.Free;
  inherited;
end;

function TPicapeFiat.Drive4x4: string;
begin
  inherited;
  Result := FGetDescriptionPicape.Drive4x4;
end;

function TPicapeFiat.EsportiveDescription: string;
begin
  inherited;
  Result := FGetDescriptionPicape.EsportiveDescription;
end;

end.
