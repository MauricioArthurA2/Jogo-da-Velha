unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, math;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    procedure StringGrid1Click(Sender: TObject);
    procedure MatrizVelha();
    procedure FormCreate(Sender: TObject);
    procedure Resposta();
    procedure romaVictor ();
    function EAQMFA (): integer;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MaV : array[0..2,0..2] of string;
implementation

{$R *.dfm}

function TForm1.EAQMFA: integer;
var seR,kaiser,palpa : integer;
begin
  seR := 0;
  for kaiser := 0 to 2 do
  Begin
    for palpa := 0 to 2 do
    Begin
      if MaV[kaiser,palpa] = '0' then
      Begin
        seR := -1;
      End;
    End;
  End;
  if (MaV[0,0] = MaV[0,1]) AND (MaV[0,1] = MaV[0,2]) then
  Begin
    if MaV[0,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[0,0] = '2' then
    Begin
      seR := 2;
    End;
  End
  Else
    if (MaV[1,0] = MaV[1,1]) AND (MaV[1,1] = MaV[1,2]) then
  Begin
    if MaV[1,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[1,0] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[2,0] = MaV[2,1]) AND (MaV[2,1] = MaV[2,2]) then
  Begin
    if MaV[2,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[2,0] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[0,0] = MaV[1,0]) AND (MaV[1,0] = MaV[2,0]) then
  Begin
    if MaV[0,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[0,0] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[0,1] = MaV[1,1]) AND (MaV[1,1] = MaV[2,1]) then
  Begin
    if MaV[0,1] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[0,1] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[0,2] = MaV[1,2]) AND (MaV[1,2] = MaV[2,2]) then
  Begin
    if MaV[0,2] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[0,2] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[0,0] = MaV[1,1]) AND (MaV[1,1] = MaV[2,2]) then
  Begin
    if MaV[0,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[0,0] = '2' then
    Begin
      seR := 2;
    End;
  End
    Else
    if (MaV[2,0] = MaV[1,1]) AND (MaV[1,1] = MaV[0,2]) then
  Begin
    if MaV[2,0] = '1' then
    Begin
      seR := 1;
    End
    Else
    if MaV[2,0] = '2' then
    Begin
      seR := 2;
    End;
  End;
  Result := seR;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MatrizVelha();
end;

procedure TForm1.MatrizVelha();
var
  conde: Integer;
  duque: Integer;
begin
  for conde := 0 to 2 do
  Begin
    for duque := 0 to 2 do
    Begin
        MaV[conde,duque] := '0';
    End;
  End;
end;

procedure TForm1.Resposta;
var col,lin,r : integer;
begin
  r := 0;
  while r <> 2 do
  Begin
    col := RandomRange(0,2);
    lin := -1;
    while lin < 3 do
    Begin
      lin := lin + 1;
      if MaV[col,lin] = '0' then
      Begin
        StringGrid1.Cells[col,lin] := '   X';
        MaV[col,lin] := '2';
        r := 2;
        lin := lin + 50;
      End;
    End;
  End;
end;

procedure TForm1.romaVictor;
var VDE : integer;
begin
  VDE := EAQMFA();
  if VDE = 1 then
  Begin
    ShowMessage('Venceu!');
  End
  Else
  if VDE = 2 then
  Begin
    ShowMessage('Perdeu!');
  End
  Else
  if VDE = 0 then
  Begin
    ShowMessage('Empate!');
  End;
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
var l,c : integer;
begin
  c := StringGrid1.Col;
  l := StringGrid1.Row;
  if StringGrid1.Cells[c,l] = '' then
  Begin
    StringGrid1.Cells[c,l] := '   O';
    MaV[c,l] := '1';
  End
  Else
  Begin
    ShowMessage('Posição inválida');
  End;
  romaVictor();
  Resposta();
  romaVictor();
end;

end.
