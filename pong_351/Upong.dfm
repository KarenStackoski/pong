object Form1: TForm1
  Left = 200
  Top = 176
  Width = 870
  Height = 631
  Caption = 'Form1'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bola: TPanel
    Left = 400
    Top = 256
    Width = 41
    Height = 41
    TabOrder = 0
  end
  object player1: TPanel
    Left = 792
    Top = 216
    Width = 41
    Height = 145
    TabOrder = 1
  end
  object player2: TPanel
    Left = 24
    Top = 216
    Width = 41
    Height = 145
    TabOrder = 2
  end
  object moverdireita: TTimer
    Interval = 20
    OnTimer = moverdireitaTimer
    Left = 128
    Top = 56
  end
  object moveresquerda: TTimer
    Enabled = False
    Interval = 20
    OnTimer = moveresquerdaTimer
    Left = 184
    Top = 56
  end
end
