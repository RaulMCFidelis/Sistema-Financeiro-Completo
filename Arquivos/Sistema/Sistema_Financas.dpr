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
  ufrmCadastroCaixa in 'view\ufrmCadastroCaixa.pas' {frmcadastrocaixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(Tfrmcadastrocaixa, frmcadastrocaixa);
  Application.Run;
end.
