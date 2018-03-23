object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 386
  Width = 440
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 32
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 56
    Top = 96
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Port=5434'
      'Database=Pessoas'
      'Password=123'
      'User_Name=postgres'
      'ExtendedMetadata=True'
      'DriverID=PG')
    Left = 216
    Top = 32
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 216
    Top = 120
  end
end
