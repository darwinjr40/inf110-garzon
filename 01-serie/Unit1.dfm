object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 470
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edit1: TEdit
    Left = 152
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edit2: TEdit
    Left = 152
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 152
    Top = 144
    Width = 281
    Height = 217
    ItemHeight = 13
    TabOrder = 2
  end
  object Button1: TButton
    Left = 152
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object numero1: TMenuItem
      Caption = 'numero'
      object ejercicio11: TMenuItem
        Caption = 'ejercicio1'
        OnClick = ejercicio11Click
      end
      object ejercicio21: TMenuItem
        Caption = 'ejercicio2'
      end
    end
  end
end
