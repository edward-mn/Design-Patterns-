object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Autentica'#231#227'o de Portas'
  ClientHeight = 121
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LbSelecionePort: TLabel
    Left = 43
    Top = 28
    Width = 83
    Height = 13
    Caption = 'Selecione a porta'
  end
  object LbServidor: TLabel
    Left = 13
    Top = 86
    Width = 247
    Height = 19
    Caption = 'Aguardando Estado Servidor...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnLogar: TBitBtn
    Left = 179
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = BtnLogarClick
  end
  object EdPorta: TEdit
    Left = 43
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '211'
  end
end
