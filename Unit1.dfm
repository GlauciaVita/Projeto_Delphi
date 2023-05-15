object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 28
    Height = 15
    Caption = 'Dolar'
  end
  object Label2: TLabel
    Left = 208
    Top = 40
    Width = 22
    Height = 15
    Caption = 'Real'
  end
  object Msg: TLabel
    Left = 32
    Top = 204
    Width = 23
    Height = 15
    Caption = 'Msg'
  end
  object Converter: TButton
    Left = 32
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 0
    OnClick = ConverterClick
  end
  object Dolar: TEdit
    Left = 32
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Dolar'
  end
  object Real: TEdit
    Left = 208
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Real'
  end
  object Compra: TButton
    Left = 32
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Compra'
    Enabled = False
    TabOrder = 3
    OnClick = CompraClick
  end
end
