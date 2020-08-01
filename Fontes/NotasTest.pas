unit NotasTest;

interface

uses
  TestFramework, Notas, SysUtils;

type
  TNotasTestes = class(TTestCase)
  private
    FNotas: TNotas;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestMedia;
    procedure TestMediaFalha;
  end;

implementation

{ TNotasTestes }

procedure TNotasTestes.SetUp;
begin
  inherited;
  FNotas := TNotas.Create;
end;

procedure TNotasTestes.TearDown;
begin
  inherited;
  FreeAndNil(FNotas);
end;

procedure TNotasTestes.TestMedia;
begin
  FNotas.Nota1 := 10;
  FNotas.Nota2 := 10;
  FNotas.Nota3 := 10;
  FNotas.Nota4 := 10;
  CheckEquals(10, FNotas.Media);
end;

procedure TNotasTestes.TestMediaFalha;
begin
  FNotas.Nota1 := 10;
  FNotas.Nota2 := 10;
  FNotas.Nota3 := 10;
  FNotas.Nota4 := 10;
  CheckEquals(5, FNotas.Media);
end;

initialization
  TestFramework.RegisterTest('NotasTest', TNotasTestes.Suite);

end.
