unit UnShowProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFormShowOnGrid = class(TForm)
    LabelLocalHost: TLabel;
    LabelPorta: TLabel;
    DBGridProfessores: TDBGrid;
    EdtLocalHost: TEdit;
    EdtNumPorta: TEdit;
    BtnConectar: TBitBtn;
    DBNavigatorProfessores: TDBNavigator;
    DSProviderConnectionProfessores: TDSProviderConnection;
    DsProfessores: TDataSource;
    CdsProfessores: TClientDataSet;
    SQLConnectionProfessores: TSQLConnection;
    Label1: TLabel;
    procedure BtnConectarClick(Sender: TObject);
  private
    procedure CommandsToSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormShowOnGrid: TFormShowOnGrid;

implementation

{$R *.dfm}

procedure TFormShowOnGrid.BtnConectarClick(Sender: TObject);
begin
  if BtnConectar.Caption = 'Conectar' then
  begin
    CommandsToSQL;
    if SQLConnectionProfessores.Connected then
      BtnConectar.Caption := 'Desconectar';
  end
  else
  begin
    SQLConnectionProfessores.Close;
    CdsProfessores.Close;
    if not SQLConnectionProfessores.Connected then
      BtnConectar.Caption := 'Conectar';
  end;
end;

procedure TFormShowOnGrid.CommandsToSQL;
begin
  SQLConnectionProfessores.Close;
  SQLConnectionProfessores.Params.Clear;
  SQLConnectionProfessores.Params.Add('DriverUnit=Data.DBXDataSnap');
  SQLConnectionProfessores.Params.Add('HostName=' + EdtLocalHost.Text);
  SQLConnectionProfessores.Params.Add('Port=' + EdtNumPorta.Text);
  SQLConnectionProfessores.Params.Add('CommunicationProtocol=tcp/ip');
  SQLConnectionProfessores.Params.Add('DatasnapContext=datasnap/');
  SQLConnectionProfessores.Params.Add
    ('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
  SQLConnectionProfessores.Params.Add('Filters={}');
  SQLConnectionProfessores.Connected := True;
  CdsProfessores.Open;
end;

end.
