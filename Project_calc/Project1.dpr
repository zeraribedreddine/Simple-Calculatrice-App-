program Project1;

uses
  Vcl.Forms,
  Unit1 in '..\unit_proji\Unit1.pas' {calculatrice_home},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(Tcalculatrice_home, calculatrice_home);
  Application.Run;
end.
