program Project_Rybakova_SportCompetition;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitSport in 'UnitSport.pas' {FormSport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormSport, FormSport);
  Application.Run;
end.
