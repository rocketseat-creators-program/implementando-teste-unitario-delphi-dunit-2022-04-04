unit TestCalculadora;

interface

uses TestFramework, Calculadora, Vcl.Dialogs, Winapi.Windows, System.SysUtils, Vcl.ExtCtrls, Vcl.Graphics, System.Variants,
  Winapi.Messages, Vcl.StdCtrls, Vcl.Controls, Vcl.Forms, System.Classes;

type
  TestTFrmCalculadora = class(TTestCase)
  private
    FFrmCalculadora: TFrmCalculadora;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSomar;
    procedure TestSubtrair;
    procedure TestMultiplicar;
    procedure TestDividir;
  end;

implementation

procedure TestTFrmCalculadora.SetUp;
begin
  FFrmCalculadora := TFrmCalculadora.Create(nil);
end;

procedure TestTFrmCalculadora.TearDown;
begin
  FFrmCalculadora.Free;
  FFrmCalculadora := nil;
end;

procedure TestTFrmCalculadora.TestSomar;
var
  ANumero1, ANumero2, ReturnValue: Integer;
begin
  ANumero1 := 2;
  ANumero2 := 2;

  ReturnValue := FFrmCalculadora.Somar(ANumero1, ANumero2);

  CheckEquals(4, ReturnValue);
end;

procedure TestTFrmCalculadora.TestSubtrair;
var
  ANumero1, ANumero2, ReturnValue: Integer;
begin
  ANumero1 := 5;
  ANumero2 := 2;

  ReturnValue := FFrmCalculadora.Subtrair(ANumero1, ANumero2);

  CheckEquals(3, ReturnValue);
end;

procedure TestTFrmCalculadora.TestMultiplicar;
var
  ANumero1, ANumero2, ReturnValue: Integer;
begin
  ANumero1 := 2;
  ANumero2 := 3;

  ReturnValue := FFrmCalculadora.Multiplicar(ANumero1, ANumero2);

  CheckEquals(6, ReturnValue);
end;

procedure TestTFrmCalculadora.TestDividir;
var
  ReturnValue: Double;
  ANumero1, ANumero2: Integer;
begin
  ANumero1 := 4;
  ANumero2 := 2;

  ReturnValue := FFrmCalculadora.Dividir(ANumero1, ANumero2);

  CheckEquals(2, ReturnValue);
end;

initialization

RegisterTest(TestTFrmCalculadora.Suite);

end.
