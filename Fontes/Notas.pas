unit Notas;

interface

type
  TNotas = class
  private
    FNota1: Integer;
    FNota2: Integer;
    FNota3: Integer;
    FNota4: Integer;
  public
    property Nota1: Integer read FNota1 write FNota1;
    property Nota2: Integer read FNota2 write FNota2;
    property Nota3: Integer read FNota3 write FNota3;
    property Nota4: Integer read FNota4 write FNota4;
    function Media: Real;
  end;

implementation

{ TNotas }

function TNotas.Media: Real;
begin
  Result := (Nota1 + Nota2 + Nota3 + Nota4) / 4;
end;

end.
