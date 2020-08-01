program DUnit;

uses
  Vcl.Forms,
  TestFrameWork,
  GuiTestRunner,
  Notas in 'Notas.pas',
  NotasTest in 'NotasTest.pas';

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
