unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnSingleton;

type
  TForm1 = class(TForm)
    LbNome: TLabel;
    LbSobreNome: TLabel;
    EdtName: TEdit;
    EdtSobreNome: TEdit;
    Memo: TMemo;
    BtSalvar: TButton;
    Label3: TLabel;
    procedure BtSalvarClick(Sender: TObject);
    procedure ActiveSingleton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Singleton : TSingleton;

implementation

{$R *.dfm}

procedure TForm1.ActiveSingleton;
begin
  Singleton := TSingleton.GetInstance;
  Singleton.GetText(EdtName.Text , EdtSobreNome.Text);
end;

procedure TForm1.BtSalvarClick(Sender: TObject);
begin
   Singleton := TSingleton.GetInstance;
   Singleton.GetText(EdtName.Text , EdtSobreNome.Text);
   Memo.Lines.Add(EdtName.Text + #13#10 + EdtSobreNome.Text)
end;

end.
