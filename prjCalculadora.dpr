program prjCalculadora;

uses
  Vcl.Forms,
  Calculadora in 'src\Calculadora.pas' {FrmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
