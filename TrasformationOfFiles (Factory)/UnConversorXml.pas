unit UnConversorXml;

interface

uses
  System.SysUtils, Winapi.msxml, System.Win.ComObj, System.IOUtils,
  Datasnap.DBClient, Data.DB;

type
  MyEvaidationError = class(EVariantError);

  TXml = class
  private const
    DelimitadorXml = '/root/row';
  public
    class procedure Converter(const PathFile: string; DataSet: TClientDataSet);
  end;

implementation

uses
  UnPrincipal;

{ TXml }

class procedure TXml.Converter(const PathFile: string; DataSet: TClientDataSet);
var
  XmlDoc: IXMLDOMDocument;
  DentroRowNode: IXMLDOMNode;
  FilhoRowNode: IXMLDOMNode;
  ListaNodeRow: IXMLDOMNodeList;
  Field: TField;
begin
  DataSet.Close;
  DataSet.Fields.Clear;
  XmlDoc := CreateOleObject('Microsoft.XMLDOM') as IXMLDOMDocument;
  XmlDoc.load(PathFile);
  if XmlDoc.parseError.errorCode <> 0 then
    raise MyEvaidationError.Create('Error: ' + XmlDoc.parseError.reason);

  ListaNodeRow := XmlDoc.selectNodes(DelimitadorXml);
  if ListaNodeRow.length = 0 then
    Exit;

  DentroRowNode := ListaNodeRow.item[0];

  while DentroRowNode <> nil do
  begin
    FilhoRowNode := DentroRowNode.childNodes.item[0];
    while FilhoRowNode <> nil do
    begin
      Field := TWideStringField.Create(DataSet);
      Field.Name := '';
      Field.FieldName := FilhoRowNode.nodeName;
      Field.DataSet := DataSet;

      FilhoRowNode := FilhoRowNode.nextSibling;
    end;
    Break;
  end;
  DataSet.Close;
  DataSet.CreateDataSet;
  while DentroRowNode <> nil do
  begin
    FilhoRowNode := DentroRowNode.childNodes.item[0];
    DataSet.Insert;
    while FilhoRowNode <> nil do
    begin
      DataSet.FieldByName(FilhoRowNode.nodeName).Value := FilhoRowNode.text;
      PrincipalConversor.MemoConversorTeste.Lines.Add(FilhoRowNode.nodeName +
        ': ' + FilhoRowNode.text);
      FilhoRowNode := FilhoRowNode.nextSibling;
    end;
    DentroRowNode := DentroRowNode.nextSibling;
    if DentroRowNode <> nil then
      DataSet.Insert;
  end;
end;

end.
