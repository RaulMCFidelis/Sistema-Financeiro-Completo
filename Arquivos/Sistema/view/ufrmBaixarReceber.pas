unit ufrmBaixarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, tpEdit, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  TfrmBaixarReceber = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lb_documento: TLabel;
    lb_parcela: TLabel;
    lb_vencimento: TLabel;
    lb_vlrparcela: TLabel;
    lb_vlrabatido: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    txt_observ: TEdit;
    btn_baixar: TButton;
    txt_valor: TtpEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    fvalorParcela : Currency;
  fvalorAbatido : Currency;
    { Private declarations }
  public
  fId : Integer;
  end;

var
  frmBaixarReceber: TfrmBaixarReceber;

implementation

{$R *.dfm}

uses ModConexao;

procedure TfrmBaixarReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
if KEY = #27 then
       Close;
end;

procedure TfrmBaixarReceber.FormShow(Sender: TObject);
begin
with TSqlQuery.Create(nil) do
try
 SQLConnection := DmDados.SQLConnection;
    sql.Add('select id, documento, parcela, vlr_parcela, vlr_abatido, dt_vencimento');
    sql.Add('from contas_receber where id = :prm');
    Params[0].AsInteger := fId;
    Open;

    lb_documento.Caption  := Fields[1].AsString;
    lb_parcela.Caption    := Fields[2].AsString;
    lb_VlrParcela.Caption := FormatFloat('R$ ,#0.00',Fields[3].AsCurrency);
    lb_VlrAbatido.Caption := FormatFloat('R$ ,#0.00',Fields[4].AsCurrency);
    lb_Vencimento.Caption := Fields[5].AsString;

    fValorParcela := Fields[3].AsCurrency;
    fValorAbatido := Fields[4].AsCurrency;

finally
  Close;
  Free;

end;

end;

end.
