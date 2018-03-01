object PrincipalConversor: TPrincipalConversor
  Left = 0
  Top = 0
  Caption = 'PrincipalConversor'
  ClientHeight = 635
  ClientWidth = 616
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
  object DBGrid1: TDBGrid
    Left = 199
    Top = 8
    Width = 408
    Height = 283
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBoxCarregarArquivos: TGroupBox
    Left = 8
    Top = 8
    Width = 167
    Height = 145
    Caption = 'Selecione:'
    TabOrder = 1
  end
  object BtnCarregarXML: TBitBtn
    Left = 31
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo XML'
    TabOrder = 2
    OnClick = BtnCarregarXMLClick
  end
  object Btn2CarregarCSV: TBitBtn
    Left = 31
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo CSV'
    TabOrder = 3
  end
  object BtnCarregarJSON: TBitBtn
    Left = 31
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo JSON'
    TabOrder = 4
  end
  object MemoConversorTeste: TMemo
    Left = 199
    Top = 304
    Width = 409
    Height = 225
    TabOrder = 5
  end
  object DsConversor: TDataSource
    Left = 48
    Top = 176
  end
  object CdsConversor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 176
  end
  object XMLTransformProvider1: TXMLTransformProvider
    Left = 40
    Top = 240
  end
  object XMLDocument1: TXMLDocument
    Left = 128
    Top = 240
  end
end
