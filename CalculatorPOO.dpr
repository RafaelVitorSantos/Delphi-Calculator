program CalculatorPOO;

uses
  Vcl.Forms,
  fCalculator in 'fCalculator.pas' {Form3},
  uCalc in 'uCalc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
