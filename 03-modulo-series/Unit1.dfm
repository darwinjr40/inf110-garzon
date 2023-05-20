object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 567
  ClientWidth = 822
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
    Left = 248
    Top = 112
    Width = 329
    Height = 50
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 248
    Top = 168
    Width = 345
    Height = 50
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object Serie1: TMenuItem
      Caption = 'Serie'
      object Preguntaexamen11: TMenuItem
        Caption = 'Pregunta examen 1'
        OnClick = Preguntaexamen11Click
      end
    end
  end
end
