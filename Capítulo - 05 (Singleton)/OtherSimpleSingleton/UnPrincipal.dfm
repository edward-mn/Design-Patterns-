object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 333
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LbNome: TLabel
    Left = 16
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object LbSobreNome: TLabel
    Left = 16
    Top = 54
    Width = 58
    Height = 13
    Caption = 'Sobre Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 125
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object EdtName: TEdit
    Left = 16
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtSobreNome: TEdit
    Left = 16
    Top = 73
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Memo: TMemo
    Left = 16
    Top = 144
    Width = 201
    Height = 177
    TabOrder = 2
  end
  object BtSalvar: TButton
    Left = 176
    Top = 23
    Width = 81
    Height = 30
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtSalvarClick
  end
end
