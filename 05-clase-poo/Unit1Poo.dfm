object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 192
    Top = 40
    Width = 275
    Height = 37
    Caption = 'Numero Natural POO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Crear: TLabel
    Left = 80
    Top = 120
    Width = 39
    Height = 20
    Caption = 'Crear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = CrearClick
  end
  object CambiarValor: TLabel
    Left = 80
    Top = 232
    Width = 113
    Height = 20
    Caption = 'CambiarValorN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = CambiarValorClick
  end
  object Edit1: TEdit
    Left = 80
    Top = 168
    Width = 433
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 80
    Top = 272
    Width = 433
    Height = 23
    TabOrder = 1
    Text = 'Edit2'
  end
  object mostrar: TButton
    Left = 80
    Top = 336
    Width = 169
    Height = 73
    Caption = 'MOSTRAR'
    TabOrder = 2
    OnClick = mostrarClick
  end
  object BitBtn1: TBitBtn
    Left = 392
    Top = 336
    Width = 137
    Height = 73
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 48
    object NaturalPOO1: TMenuItem
      Caption = 'Natural POO'
      object NaturalPOO2: TMenuItem
        Caption = 'ContarDigitos'
        OnClick = NaturalPOO2Click
      end
      object SumarDigitos1: TMenuItem
        Caption = 'SumarDigitos'
      end
      object SumarDigitos2: TMenuItem
        Caption = 'Promedio'
      end
      object Invertir1: TMenuItem
        Caption = 'Invertir'
      end
      object Invertir2: TMenuItem
        Caption = 'DigitoMayor'
      end
      object prueba1: TMenuItem
        Caption = 'prueba'
        OnClick = prueba1Click
      end
    end
  end
end
