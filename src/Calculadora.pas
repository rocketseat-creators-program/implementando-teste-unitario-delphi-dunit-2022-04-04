unit Calculadora;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmCalculadora = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtNumero1: TEdit;
    Label2: TLabel;
    edtNumero2: TEdit;
    edtResultado: TEdit;
    Label3: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  public
    function Somar(const ANumero1, ANumero2: Integer): Integer;
    function Subtrair(const ANumero1, ANumero2: Integer): Integer;
    function Multiplicar(const ANumero1, ANumero2: Integer): Integer;
    function Dividir(const ANumero1, ANumero2: Integer): Double;
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.dfm}

procedure TFrmCalculadora.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text := Dividir(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text := Multiplicar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFrmCalculadora.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text := Somar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TFrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text := Subtrair(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

function TFrmCalculadora.Dividir(const ANumero1, ANumero2: Integer): Double;
begin
  Result := ANumero1 / ANumero2;
end;

function TFrmCalculadora.Multiplicar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 * ANumero2;
end;

function TFrmCalculadora.Somar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 + ANumero2;
end;

function TFrmCalculadora.Subtrair(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 - ANumero2;
end;

end.
