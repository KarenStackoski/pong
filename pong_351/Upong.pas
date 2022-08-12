unit Upong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    bola: TPanel;
    player1: TPanel;
    player2: TPanel;
    moverdireita: TTimer;
    moveresquerda: TTimer;
    procedure moverdireitaTimer(Sender: TObject);
    procedure moveresquerdaTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure colisaoPlayer1;
var
  corpo: integer;
begin
  corpo:= form1.bola.Left + form1.bola.Width;
  if corpo >= form1.player1.Left then
  begin
    form1.moverDireita.Enabled := false;
    form1.moveresquerda.Enabled := true;
  end;
end;
procedure TForm1.moverdireitaTimer(Sender: TObject);
begin
  bola.Left := bola.Left + 5;
  colisaoPlayer1;
end;

procedure TForm1.moveresquerdaTimer(Sender: TObject);
begin
  bola.Left := bola.Left - 5;
  colisaoPlayer1;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 40 then
  begin
    player1.Top := player1.top + 10;
  end;
  if key = 38 then
  begin
    player1.Top := player1.top - 10;
  end;
end;

end.
