unit UnAutenticacao;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    BtnLogar: TBitBtn;
    EdPorta: TEdit;
    Label1: TLabel;
    procedure BtnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  ServerContainerUnit1;

{$R *.dfm}

procedure TFormPrincipal.BtnLogarClick(Sender: TObject);
begin
  if BtnLogar.Caption = 'Iniciar' then
  begin
    ServerContainer1.DSTCPServerTransport1.Port := StrToInt (EdPorta.Text);
    ServerContainer1.DSServer1.Start;
    if ServerContainer1.DSServer1.Started then BtnLogar.Caption := 'Parar';
  end
  else
  begin
    ServerContainer1.DSServer1.Stop;
    if not ServerContainer1.DSServer1.Started then BtnLogar.Caption := 'Iniciar';
  end;

end;

end.

