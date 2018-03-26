object FormShowOnGrid: TFormShowOnGrid
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Show on grid'
  ClientHeight = 443
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelLocalHost: TLabel
    Left = 8
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Local Host'
  end
  object LabelPorta: TLabel
    Left = 8
    Top = 69
    Width = 41
    Height = 13
    Caption = 'N'#186' Porta'
  end
  object Label1: TLabel
    Left = 9
    Top = 128
    Width = 146
    Height = 13
    Caption = 'Table retrieved from database'
  end
  object DBGridProfessores: TDBGrid
    Left = 8
    Top = 147
    Width = 346
    Height = 250
    DataSource = DsProfessores
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EdtLocalHost: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'localhost'
  end
  object EdtNumPorta: TEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '211'
  end
  object BtnConectar: TBitBtn
    Left = 147
    Top = 59
    Width = 75
    Height = 35
    Caption = 'Conectar'
    TabOrder = 3
    OnClick = BtnConectarClick
  end
  object DBNavigatorProfessores: TDBNavigator
    Left = 8
    Top = 403
    Width = 340
    Height = 25
    DataSource = DsProfessores
    TabOrder = 4
  end
  object DSProviderConnectionProfessores: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnectionProfessores
    Left = 232
    Top = 88
  end
  object DsProfessores: TDataSource
    DataSet = CdsProfessores
    Left = 304
    Top = 71
  end
  object CdsProfessores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProfessor'
    RemoteServer = DSProviderConnectionProfessores
    Left = 304
    Top = 7
  end
  object SQLConnectionProfessores: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 192
    Top = 8
  end
end
