unit fCalculator;

interface

uses uCalc, Vcl.StdCtrls, System.Classes, Vcl.Controls;

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
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
    Btn_Clear: TButton;
    procedure Btn_SubtractionClick(Sender: TObject);
    procedure Btn_ClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Calc : TCalc;
    FStoredValue01, FStoredValue02: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Btn_ClearClick(Sender: TObject);
begin
  Edt_CalcResult.Text := '';
end;

procedure TForm3.Btn_SubtractionClick(Sender: TObject);
var
  dValue01, dValue02 : double;
begin
  if Edt_CalcResult.Text <> '' then
  begin

  end
  else
    raise Exception.Create('Please enter a number before subtracting!');
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Calc := TCalc.Create(0, 0);

end;

end.
