program Projeto;

uses
  Vcl.Forms,
  Projeto.Principal in 'Projeto.Principal.pas' {ProjetoPrincipal},
  Pessoa in 'Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProjetoPrincipal, ProjetoPrincipal);
  Application.Run;
end.
