unit ufrmBaixarPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, tpEdit, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  TfrmBaixarPagar = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
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
    Label6: TLabel;
    txt_observ: TEdit;
    Label7: TLabel;
    btn_baixar: TButton;
    txt_valor: TtpEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_baixarClick(Sender: TObject);
  private
  fvalorParcela : Currency;
  fvalorAbatido : Currency;
    { Private declarations }
  public
  fId : Integer;
    { Public declarations }
  end;

var
  frmBaixarPagar: TfrmBaixarPagar;

implementation

{$R *.dfm}

uses ModConexao, UFuncoes;

procedure TfrmBaixarPagar.btn_baixarClick(Sender: TObject);
begin
//valida��es
  if (txt_Valor.Text = '') or (StringParaFloat(txt_Valor.Text) = 0) then
  begin
    Application.MessageBox('Informe o valor a receber.','Aten��o',48);
    txt_Valor.SetFocus;
    Abort;
  end;

  try
    DmDados.cdsContas_pagar.Close;
    DmDados.cdsContas_pagar.CommandText := 'select * from contas_pagar where id = '+inttostr(fid);
    DmDados.cdsContas_pagar.Open;
    DmDados.cdsContas_pagar.Edit;
    DmDados.cdsContas_pagarvlr_abatido.AsCurrency := DmDados.cdsContas_pagarvlr_abatido.AsCurrency + StringParaFloat(txt_Valor.Text);

    if DmDados.cdsContas_pagarvlr_abatido.AsCurrency >= DmDados.cdsContas_pagarvlr_parcela.AsCurrency then
    begin
      DmDados.cdsContas_pagarstatus.AsString := 'B';
      DmDados.cdsContas_pagardt_pagamento.AsDateTime := date;
    end;

    DmDados.cdsContas_pagar.Post;
    DmDados.cdsContas_pagar.ApplyUpdates(0);
    DmDados.cdsContas_pagar.Close;

    //Hist�rico
    DmDados.cdsPagar_detalhes.Close;
    DmDados.cdsPagar_detalhes.Open;
    DmDados.cdsPagar_detalhes.Insert;
    DmDados.cdsPagar_detalhesid.AsInteger       := GetId('ID','PAGAR_DETALHES');
    DmDados.cdsPagar_detalhesid_pagar.AsInteger := fid;
    DmDados.cdsPagar_detalhesdetalhes.AsString  := txt_observ.Text;
    DmDados.cdsPagar_detalhesvalor.AsCurrency   := StringParaFloat(txt_Valor.Text);
    DmDados.cdsPagar_detalhesdata.AsDateTime    := date;
    DmDados.cdsPagar_detalhesusuario.AsString   := 'SISTEMA';
    DmDados.cdsPagar_detalhes.Post;
    DmDados.cdsPagar_detalhes.ApplyUpdates(0);

    Application.MessageBox('Baixa efetuada com sucesso!','Informa��o',64);
    ModalResult := mrOk;
  except on E: Exception do
    begin
      DmDados.cdsContas_pagar.CancelUpdates;
      DmDados.cdsPagar_detalhes.CancelUpdates;
      raise Exception.Create('Erro ao efetuar baixa: '+E.Message);
    end;
  end;
end;




procedure TfrmBaixarPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
if KEY = #27 then
     Close;
end;

procedure TfrmBaixarPagar.FormShow(Sender: TObject);
begin
with TSqlQuery.Create(nil) do
try
 SQLConnection := DmDados.SQLConnection;
    sql.Add('select id, numero_doc, parcela, vlr_parcela, vlr_abatido, dt_vencimento');
    sql.Add('from contas_pagar where id = :prm');
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
