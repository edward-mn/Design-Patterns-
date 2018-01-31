unit UnMostrar;

interface

uses
  System.SysUtils, UnObserverInterface, UnSubjectInterface, UnTelaInterface,
  UnVideoData;


type
  TMostrar = class (TInterfacedObject, IObserverVideo, ITela)
  private
    FNovo : string;
    FDeletar : string;
    FSujectVideos : ISubjectVideos;
  public
    procedure atualizações(Novo, Deletar, Notificar : string);
    constructor create (dia: ISubjectVideos);
    procedure tela;
  end;

implementation
{ TMostrar }

procedure TMostrar.atualizações(Novo, Deletar, Notificar: string);
begin
  FNovo := Novo;
  FDeletar := Deletar;
  tela;
end;

constructor TMostrar.create(dia: ISubjectVideos);
begin
  FSujectVideos := dia;
  FSujectVideos.NovoVideo(Self);
end;

procedure TMostrar.tela;
begin
  Writeln(Format('Novos videos:%s' + #13#10 + 'deletados: %s' ,[Fnovo, FDeletar]));
  Readln;
end;

end.
