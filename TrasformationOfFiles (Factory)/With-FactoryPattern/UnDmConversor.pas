unit UnDmConversor;

interface

uses
  System.SysUtils, System.Classes, Xml.xmldom, Datasnap.Provider,
  Datasnap.Xmlxform, Data.DB, Datasnap.DBClient;

type
  TDmConversor = class(TDataModule)
    CdsConversor: TClientDataSet;
    XMLTransformProvider: TXMLTransformProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConversor: TDmConversor;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

end.
