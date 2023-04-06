unit ufrmSaldoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uCaixa;

type
  TfrmSaldoCaixa = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    txt_dt_inicial: TDateTimePicker;
    txt_dt_final: TDateTimePicker;
    btn_filtrar: TButton;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lblEntradas: TLabel;
    lblSaidas: TLabel;
    lblSaldo: TLabel;
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure btn_filtrarClick(Sender: TObject);
  private
  Caixa : TCaixa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaldoCaixa: TfrmSaldoCaixa;

implementation

{$R *.dfm}

//uses uCaixa, uGetConexao, uSQL;

procedure TfrmSaldoCaixa.btn_filtrarClick(Sender: TObject);
begin
Caixa.GetSaldoAtual(FormatDateTime('yyyy/MM/dd',txt_dt_inicial.Date),
FormatDateTime('yyyy/MM/dd',txt_dt_final.Date));
lblEntradas.Caption := FormatFloat('0,#0.00', Caixa.Entradas);
lblSaidas.Caption := FormatFloat('0,#0.00', Caixa.saidas);
lblSaldo.Caption := FormatFloat('0,#0.00', Caixa.Saldo);
end;

procedure TfrmSaldoCaixa.FormDestroy(Sender: TObject);
begin
FreeAndNil(Caixa);
end;

procedure TfrmSaldoCaixa.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
Caixa := TCaixa.Create;
Caixa.GetSaldoAtual('','');
lblEntradas.Caption := FormatFloat('0,#0.00', Caixa.Entradas);
lblSaidas.Caption := FormatFloat('0,#0.00', Caixa.saidas);
lblSaldo.Caption := FormatFloat('0,#0.00', Caixa.Saldo);
end;

end.
