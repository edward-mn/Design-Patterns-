unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Vcl.StdCtrls, Vcl.Buttons,
  Datasnap.Provider, Datasnap.Xmlxform, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  Xml.XMLIntf, Xml.XMLDoc,  Winapi.msxml, System.Win.ComObj;

type
  TPrincipalConversor = class(TForm)
    DBGrid1: TDBGrid;
    DsConversor: TDataSource;
    CdsConversor: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    GroupBoxCarregarArquivos: TGroupBox;
    BtnCarregarXML: TBitBtn;
    Btn2CarregarCSV: TBitBtn;
    BtnCarregarJSON: TBitBtn;
    XMLDocument1: TXMLDocument;
    MemoConversorTeste: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BtnCarregarXMLClick(Sender: TObject);
  private const
    ArquivoXml = 'C:\Users\Edward Nascimento\Dev\Teste-TrasformationOfFiles\mockdata\data.xml';
    DelimitadorXml = '/root/row';
  public
    XMLDoc : IXMLDOMDocument;
    procedure PreparaCds;
    procedure CarregaAtributos;
    procedure CarregaParaNodes;
  end;

var
  PrincipalConversor: TPrincipalConversor;

implementation

{$R *.dfm}

procedure TPrincipalConversor.FormCreate(Sender: TObject);
begin
  XMLDoc := CoDOMDocument.Create;
  XmlDoc.Async := False;
  XMLDoc.loadXML(ArquivoXml);
//  MemoConversorTeste.Lines.Text := ArquivoXml;  Le o dominio do arquivo
end;

procedure TPrincipalConversor.BtnCarregarXMLClick(Sender: TObject);
begin
//  PreparaCds;
  CarregaAtributos;
end;

{ TPrincipalConversor }

procedure TPrincipalConversor.CarregaAtributos;
var
  DelimitadorQuery : String;
  NodeList : IXmlDOMNodeList;
  Node,
  AtributosNode : IXmlDomNode;
  MapearXml : IXMLDOMNamedNodeMap;
  Field : TField;
  i : Integer;
begin
  PreparaCds;

  DelimitadorQuery := DelimitadorXml;
  NodeList := XMLDoc.selectNodes(DelimitadorQuery);
  Assert(NodeList.length > 0);
  Node := NodeList.item[0];
  MapearXml := Node.attributes;

    for i := 0 to MapearXml.length -1 do begin
    AtributosNode := MapearXml.item[i];
    Field := TWideStringField.Create(Self);    // Mudar self
    Field.Size := 80;      // Mudar tamanho
    Field.FieldName := AtributosNode.nodeName;
    Field.DataSet := CdsConversor;
    end;

    CdsConversor.CreateDataSet;

    CdsConversor.Insert;
    for i := 0 to MapearXml.length -1 do begin
      AtributosNode := MapearXml.item[i];
      CdsConversor.Fields[i].Value := AtributosNode.nodeValue;
    end;
    CdsConversor.Post;
end;

procedure TPrincipalConversor.CarregaParaNodes;
begin

end;

procedure TPrincipalConversor.PreparaCds;
begin
  if CdsConversor.Active then
    CdsConversor.Close;

  CdsConversor.FieldDefs.Clear;
  CdsConversor.Fields.Clear;
end;

end.
