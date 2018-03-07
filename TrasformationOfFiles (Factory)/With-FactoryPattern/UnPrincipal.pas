unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Vcl.StdCtrls, Vcl.Buttons,
  Datasnap.Provider, Datasnap.Xmlxform, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, UnFactoryConversor, UnDmConversor, UnConversorAbs;

type
  TPrincipalConversor = class(TForm)
    DBGridShow: TDBGrid;
    DsConversor: TDataSource;
    GroupBoxCarregarArquivos: TGroupBox;
    BtnCarregarXML: TBitBtn;
    BtnCarregarCSV: TBitBtn;
    BtnCarregarJSON: TBitBtn;
    MemoConversorTeste: TMemo;
    procedure BtnCarregarCSVClick(Sender: TObject);
    procedure BtnCarregarJSONClick(Sender: TObject);
    procedure BtnCarregarXMLClick(Sender: TObject);
  private const
    ArquivoJson =
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.json';
    ArquivoXml =
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.xml';
    ArquivoCsv =
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.csv';
  private
    FDados: TDmConversor;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  PrincipalConversor: TPrincipalConversor;
  Factory: TFactoryConversor;
  Conversor: TConversorAbs;

implementation

uses
  UnConversorJson, UnConversorXml, UnConversorCsv;

{$R *.dfm}

procedure TPrincipalConversor.BtnCarregarCSVClick(Sender: TObject);
begin
  Factory := TFactoryConversor.Create(FDados);
  try
    Conversor := Factory.CriaConversor(TpConversorCsv);
    Conversor.Converter(ArquivoCsv, FDados.CdsConversor);
  finally
    Factory.Free;
    Conversor.Free;
  end;
end;

procedure TPrincipalConversor.BtnCarregarJSONClick(Sender: TObject);
begin
  Factory := TFactoryConversor.Create(FDados);
  try
    Conversor := Factory.CriaConversor(TpConversorJson);
    Conversor.Converter(ArquivoJson, FDados.CdsConversor);
  finally
    Factory.Free;
    Conversor.Free;
  end;
end;

procedure TPrincipalConversor.BtnCarregarXMLClick(Sender: TObject);
begin
  Factory := TFactoryConversor.Create(FDados);
  try
    Conversor := Factory.CriaConversor(TpConversorXml);
    Conversor.Converter(ArquivoXml, FDados.CdsConversor);
  finally
    Factory.Free;
    Conversor.Free;
  end;
  { CdsConversor.ProviderName := XMLTransformProvider.Name;
    CdsConversor.Fields.Clear;
    CdsConversor.Active := True;
    - Utilizando XMLTransformProvider }
end;

constructor TPrincipalConversor.Create(AOwner: TComponent);
begin
  inherited;
  FDados := TDmConversor.Create(Self);
  DsConversor.DataSet := FDados.CdsConversor;
end;

end.
