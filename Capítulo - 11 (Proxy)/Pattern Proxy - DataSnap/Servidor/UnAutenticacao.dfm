object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Autentica'#231#227'o de Portas'
  ClientHeight = 111
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 28
    Width = 83
    Height = 13
    Caption = 'Selecione a porta'
  end
  object BtnLogar: TBitBtn
    Left = 163
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = BtnLogarClick
  end
  object EdPorta: TEdit
    Left = 27
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '211'
  end
end
