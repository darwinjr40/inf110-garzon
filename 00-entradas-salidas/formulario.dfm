object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 501
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 256
    Top = 192
    Width = 40
    Height = 15
    Caption = 'entrada'
  end
  object Label2: TLabel
    Left = 262
    Top = 283
    Width = 30
    Height = 15
    Caption = 'salida'
  end
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 209
    Height = 73
    Caption = 'proceso1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 328
    Top = 168
    Width = 233
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 328
    Top = 280
    Width = 233
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
end
