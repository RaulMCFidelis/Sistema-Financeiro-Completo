program Sistema_Financas;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  ModConexao in 'ModConexao.pas' {dmDados: TDataModule},
  ufrmCadastroBasico in 'view\ufrmCadastroBasico.pas' {frmCadastroBasico},
  UFuncoes in 'classes\UFuncoes.pas',
  ufrmCadastroUsuarios in 'view\ufrmCadastroUsuarios.pas' {frmcadastrousuarios},
  ufrmCadastroCaixa in 'view\ufrmCadastroCaixa.pas' {frmcadastrocaixa},
  ufrmCadastroPagar in 'view\ufrmCadastroPagar.pas' {frmcadastropagar},
  ufrmCadastroReceber in 'view\ufrmCadastroReceber.pas' {frmcadastroreceber},
  udmRelatorios in 'datamodule\udmRelatorios.pas' {dmrelatorios: TDataModule},
  ufrmConsReceber in 'view\ufrmConsReceber.pas' {frm_cons_receber},
  ufrmConsPagar in 'view\ufrmConsPagar.pas' {frm_cons_pagar},
  ufrmBaixarPagar in 'view\ufrmBaixarPagar.pas' {frmBaixarPagar},
  ufrmBaixarReceber in 'view\ufrmBaixarReceber.pas' {frmBaixarReceber},
  ufrmDetalhesPagar in 'view\ufrmDetalhesPagar.pas' {frmDetalhesPagar},
  ufrmLogin in 'view\ufrmLogin.pas' {frmLogin},
  uUsuario in 'classes\uUsuario.pas',
  uSistema in 'classes\uSistema.pas',
  ufrmSaldoCaixa in 'view\ufrmSaldoCaixa.pas' {frmSaldoCaixa},
  uGetConexao in 'classes\uGetConexao.pas',
  uSQL in 'classes\uSQL.pas',
  uCaixa in 'classes\uCaixa.pas',
  ufrmEmitirRecibo in 'view\ufrmEmitirRecibo.pas' {frmEmitirRecibo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmEmitirRecibo, frmEmitirRecibo);
  Application.Run;
end.
