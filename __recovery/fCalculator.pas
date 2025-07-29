unit fCalculator;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCalc;

type
  TCalculator = class(TForm)
    Edt_CalcResult: TEdit;
    Btn_01: TButton;
    Btn_02: TButton;
    Btn_03: TButton;
    Btn_04: TButton;
    Btn_05: TButton;
    Btn_06: TButton;
    Btn_07: TButton;
    Btn_08: TButton;
    Btn_09: TButton;
    Btn_00: TButton;
    Btn_DecimalPoint: TButton;
    Btn_PlusMinus: TButton;
    Btn_Subtraction: TButton;
    Btn_Multiplication: TButton;
    Btn_Division: TButton;
    Btn_Addition: TButton;
    Btn_ClearAll: TButton;
    Btn_Equal: TButton;
    Btn_Back: TButton;
    procedure Btn_SubtractionClick(Sender: TObject);
    procedure Btn_ClearAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_01Click(Sender: TObject);
    procedure Edt_CalcResultChange(Sender: TObject);
    procedure Btn_02Click(Sender: TObject);
    procedure Btn_03Click(Sender: TObject);
    procedure Btn_00Click(Sender: TObject);
    procedure Btn_06Click(Sender: TObject);
    procedure Btn_05Click(Sender: TObject);
    procedure Btn_04Click(Sender: TObject);
    procedure Btn_09Click(Sender: TObject);
    procedure Btn_08Click(Sender: TObject);
    procedure Btn_07Click(Sender: TObject);
    procedure Btn_PlusMinusClick(Sender: TObject);
  private
    Calc : TCalc;
    FStoredValue01, FStoredValue02: Boolean;
    { Private declarations }
  public
    procedure AddNumberResult(sNumber: String);
    { Public declarations }
  end;

var
  Calculator: TCalculator;

implementation

{$R *.dfm}

procedure TCalculator.AddNumberResult(sNumber: String);
var
  dCalcResult: double;
begin
  if Length(Edt_CalcResult.Text) > 12 then
    Exit;

  if Edt_CalcResult.Text = '0' then
    Edt_CalcResult.Text := sNumber
  else
    Edt_CalcResult.Text := Edt_CalcResult.Text + sNumber;
end;

procedure TCalculator.Btn_00Click(Sender: TObject);
begin
  AddNumberResult('0');
end;

procedure TCalculator.Btn_01Click(Sender: TObject);
begin
  AddNumberResult('1');
end;

procedure TCalculator.Btn_02Click(Sender: TObject);
begin
  AddNumberResult('2');
end;

procedure TCalculator.Btn_03Click(Sender: TObject);
begin
  AddNumberResult('3');
end;

procedure TCalculator.Btn_04Click(Sender: TObject);
begin
  AddNumberResult('4');
end;

procedure TCalculator.Btn_05Click(Sender: TObject);
begin
  AddNumberResult('5');
end;

procedure TCalculator.Btn_06Click(Sender: TObject);
begin
  AddNumberResult('6');
end;

procedure TCalculator.Btn_07Click(Sender: TObject);
begin
  AddNumberResult('7');
end;

procedure TCalculator.Btn_08Click(Sender: TObject);
begin
  AddNumberResult('8');
end;

procedure TCalculator.Btn_09Click(Sender: TObject);
begin
  AddNumberResult('9');
end;

procedure TCalculator.Btn_ClearAllClick(Sender: TObject);
begin
  Edt_CalcResult.Text := '0';
  FStoredValue01 := False;
  FStoredValue01 := False;
  Calc.SetValor01(0);
  Calc.SetValor02(0);
end;

procedure TCalculator.Btn_PlusMinusClick(Sender: TObject);
begin

end;

procedure TCalculator.Btn_SubtractionClick(Sender: TObject);
var
  dValue01, dValue02 : double;
begin
  if Edt_CalcResult.Text <> '' then
  begin
    FStoredValue01 := True;
    Calc.SetValor01(strToFloat(Edt_CalcResult.Text));
    Edt_CalcResult.Clear;
  end
  else
    raise Exception.Create('Please enter a number before subtracting!');
end;

procedure TCalculator.Edt_CalcResultChange(Sender: TObject);
var
  sTextResult, sTextResultFormatted : string;
  dValueResult : double;
begin
  Edt_CalcResult.OnChange := nil;
  sTextResult := StringReplace(Edt_CalcResult.Text, '.', '', [rfReplaceAll]);
  sTextResult := StringReplace(sTextResult, ',', '.', [rfReplaceAll]);

  if TryStrToFloat(sTextResult, dValueResult) then
  begin
    sTextResultFormatted := FormatFloat('#,##0.##', dValueResult);

    sTextResultFormatted := StringReplace(sTextResultFormatted, '.', '#', [rfReplaceAll]);
    sTextResultFormatted := StringReplace(sTextResultFormatted, ',', ',', [rfReplaceAll]);
    sTextResultFormatted := StringReplace(sTextResultFormatted, '#', '.', [rfReplaceAll]);

    Edt_CalcResult.Text := sTextResultFormatted;
  end;

  Edt_CalcResult.OnChange := Edt_CalcResultChange;
end;

procedure TCalculator.FormCreate(Sender: TObject);
begin
  Calc := TCalc.Create(0, 0);

end;

end.
