unit uCalc;

interface

type TCalc = class
  private
    FValue01, FValue02: Double;

  public
    constructor Create(dValue01, dValue02: Double);
    procedure SetValor01(dValor: Double);
    procedure SetValor02(dValor: Double);
    function GetValor01: double;
    function GetValor02: double;
    procedure SetStoredValor01(bValor: Boolean);
    procedure SetStoredValor02(bValor: Boolean);
    function GetStoredValor01: Boolean;
    function GetStoredValor02: Boolean;
    function Add: double;
    function Substract: double;
    function Multiply: double;
    function Divide: double;
end;

implementation

  constructor TCalc.Create(dValue01: Double; dValue02: Double);
  begin
    SetValor01(dValue01);
    SetValor02(dValue02);
  end;

  procedure TCalc.SetValor01(dValor: Double);
  begin
    FValue01 := dValor;
  end;

  procedure TCalc.SetValor02(dValor: Double);
  begin
    FValue02 := dValor;
  end;

  function TCalc.GetValor01;
  begin
    Result := FValue01;
  end;

  function TCalc.GetValor02;
  begin
    Result := FValue02;
  end;

  function TCalc.Add;
  begin

  end;

  function TCalc.Substract;
  begin

  end;

  function TCalc.Multiply;
  begin

  end;

  function TCalc.Divide;
  begin

  end;

end.
