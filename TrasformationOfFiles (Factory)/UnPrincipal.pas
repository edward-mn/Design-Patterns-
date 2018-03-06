unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Vcl.StdCtrls, Vcl.Buttons,
  Datasnap.Provider, Datasnap.Xmlxform, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TPrincipalConversor = class(TForm)
    DBGridShow: TDBGrid;
    DsConversor: TDataSource;
    CdsConversor: TClientDataSet;
    XMLTransformProvider: TXMLTransformProvider;
    GroupBoxCarregarArquivos: TGroupBox;
    BtnCarregarXML: TBitBtn;
    Btn2CarregarCSV: TBitBtn;
    BtnCarregarJSON: TBitBtn;
    MemoConversorTeste: TMemo;
    procedure Btn2CarregarCSVClick(Sender: TObject);
    procedure BtnCarregarJSONClick(Sender: TObject);
    procedure BtnCarregarXMLClick(Sender: TObject);
  private const
    ArquivoJson = 'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.json';
    ArquivoXml = 'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.xml';
    ArquivoCsv = 'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfFiles (Factory)\mockdata\data.csv';
  public

  end;

var
  PrincipalConversor: TPrincipalConversor;

implementation

uses
  UnConversorJson, UnConversorXml, UnConversorCsv;

{$R *.dfm}

procedure TPrincipalConversor.Btn2CarregarCSVClick(Sender: TObject);
begin
  MemoConversorTeste.Lines.Clear;
  TCsv.Converter(ArquivoCsv, CdsConversor);
end;

procedure TPrincipalConversor.BtnCarregarJSONClick(Sender: TObject);
begin
  MemoConversorTeste.Lines.Clear;
  TJson.Converter(ArquivoJson, CdsConversor);
end;

procedure TPrincipalConversor.BtnCarregarXMLClick(Sender: TObject);
begin
  MemoConversorTeste.Lines.Clear;
  TXml.Converter(ArquivoXml, CdsConversor);
  { CdsConversor.ProviderName := XMLTransformProvider.Name;
    CdsConversor.Fields.Clear;
    CdsConversor.Active := True;
  - Utilizando XMLTransformProvider }
end;

end.
