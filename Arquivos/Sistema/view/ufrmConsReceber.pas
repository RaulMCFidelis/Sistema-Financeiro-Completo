unit ufrmConsReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, tpEdit, Vcl.ExtCtrls, Vcl.Buttons, Datasnap.DBClient,
  Vcl.ComCtrls;

type
  Tfrm_cons_receber = class(TForm)
    cdsconsultas: TClientDataSet;
    dsconsulta: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    txt_doc: TEdit;
    rdgPeriodo: TRadioGroup;
    txt_dtinicio: TtpEdit;
    txt_dtfinal: TtpEdit;
    rdgStatus: TRadioGroup;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    cdsconsultasid: TIntegerField;
    cdsconsultasdocumento: TStringField;
    cdsconsultasdescricao: TStringField;
    cdsconsultasparcela: TIntegerField;
    cdsconsultasvlr_parcela: TFMTBCDField;
    cdsconsultasvlr_compra: TFMTBCDField;
    cdsconsultasvlr_abatido: TFMTBCDField;
    cdsconsultasdt_compra: TDateField;
    cdsconsultasdt_vencimento: TDateField;
    cdsconsultasdt_cadastro: TDateField;
    cdsconsultasdt_pagamento: TDateField;
    cdsconsultasstatus: TStringField;
    txt_parcela: TEdit;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    cdsconsultasTotal: TAggregateField;
    btn_baixar: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_baixarClick(Sender: TObject);
  private
  procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cons_receber: Tfrm_cons_receber;

implementation

{$R *.dfm}

uses UFuncoes, ufrmBaixarReceber;

procedure Tfrm_cons_receber.btn_baixarClick(Sender: TObject);
begin
if (cdsconsultasstatus.AsString = 'B') then
  begin
    Application.MessageBox('N�o � poss�vel baixar um documento j� baixado!','Aten��o', MB_OK+MB_ICONWARNING);
    Abort;
  end;

  if(cdsconsultasstatus.AsString = 'C') then
  begin
    Application.MessageBox('N�o � poss�vel baixar um documento cancelado!','Aten��o', MB_OK+MB_ICONWARNING);
    Abort;
  end;
frmBaixarReceber := TfrmBaixarReceber.Create(nil);
  try
  frmBaixarReceber.fId := cdsconsultasid.AsInteger;
    frmBaixarReceber.ShowModal;

  finally
    FreeAndNil(frmBaixarReceber);

  end;

end;



procedure Tfrm_cons_receber.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cons_receber.Button2Click(Sender: TObject);
begin
rdgPeriodo.ItemIndex := -1;
rdgStatus.ItemIndex := -1;
txt_doc.Clear;
txt_dtfinal.Clear;
txt_dtinicio.Clear;
cdsconsultas.Close;

end;

procedure Tfrm_cons_receber.Pesquisar;
var Sql : TStringList;

  begin
   Sql := TStringList.Create;


  try
    Sql.Add('SELECT * FROM CONTAS_RECEBER');
    Sql.Add('where id > 0');

    // Pesquisa por Data

    if (rdgPeriodo.ItemIndex > -1) and (txt_dtinicio.Text <> '') and (txt_dtfinal.Text <> '') then

    begin
      case rdgPeriodo.ItemIndex of
        0 : Sql.Add('and dt_compra between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
        1 : Sql.Add('and dt_pagamento between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
        2 : Sql.Add('and dt_vencimento between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
      end;
    end;

     //Pesquisar por documento
     if txt_doc.Text <> '' then
      Sql.Add('and documento = '+QuotedStr(trim(txt_doc.Text)));

     //Pesquisa por parcela
     if txt_parcela.Text <> '' then
      Sql.Add('and parcela ='+txt_parcela.Text);

     // Pesuisar por Status
     if rdgStatus.ItemIndex > -1 then
     begin
       case rdgStatus.ItemIndex of
        0 : sql.Add('and status = ''A''');
        1 : sql.Add('and status = ''C''');
        2 : sql.Add('and status = ''B''');
       end;
     end;
  try
    cdsconsultas.Close;
    cdsconsultas.CommandText := Sql.Text;
    cdsconsultas.Open;

    if cdsconsultas.IsEmpty then
      Application.MessageBox('Nenhum registro encontrado!', 'Aten��o', MB_OK+MB_ICONWARNING);

      StatusBar1.Panels[0].Text := 'Registro(s) encontrado(s): '+IntToStr(cdsconsultas.RecordCount);
      StatusBar1.Panels[1].Text := 'Total a receber: ' +FormatFloat('R$ #,0.00', cdsconsultasTotal.AsVariant);
      btn_baixar.Enabled := not cdsconsultas.IsEmpty;

  except on E: Exception do
    raise Exception.Create('Erro ao consultar contas a receber: ' +E.Message);

  end;

  finally
    FreeAndNil(Sql);
  end;
  end;



procedure Tfrm_cons_receber.SpeedButton1Click(Sender: TObject);
begin
 Pesquisar;
end;

end.
