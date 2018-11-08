object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Jogo da velha'
  ClientHeight = 270
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 64
    Top = 8
    Width = 233
    Height = 233
    ColCount = 3
    DefaultColWidth = 75
    DefaultRowHeight = 75
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = StringGrid1Click
    ColWidths = (
      75
      75
      75)
    RowHeights = (
      75
      75
      75)
  end
end
