unit ufrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    tbsCadastro: TPageControl;
    TabSheet1: TTabSheet;
    tbsPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    ActionManagercadastro: TActionManager;
    ImageListcadastro: TImageList;
    actinserir: TAction;
    acteditar: TAction;
    actexcluir: TAction;
    actsalvar: TAction;
    actcancelar: TAction;
    actpesquisar: TAction;
    actimprimir: TAction;
    actfechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actinserirExecute(Sender: TObject);
    procedure acteditarExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure actpesquisarExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBasico: TfrmCadastroBasico;

implementation

{$R *.dfm}

procedure TfrmCadastroBasico.actcancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.acteditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actexcluirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actfecharExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actinserirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actpesquisarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actsalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
    close;
if key = #13 then
    Perform (WM_NEXTDLGCTL, 0, 0);
end;

end.