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
  object Edit1: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object ListBox1: TListBox
    Left = 176
    Top = 40
    Width = 41
    Height = 1
    ItemHeight = 13
    TabOrder = 2
  end
  object ListBox2: TListBox
    Left = 128
    Top = 99
    Width = 321
    Height = 241
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
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
