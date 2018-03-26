object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 275
  Width = 274
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 32
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 56
    Top = 96
  end
  object FDConnectionProfessor: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Port=5434'
      'Database=Pessoas'
      'Password=123'
      'User_Name=postgres'
      'ExtendedMetadata=True'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 32
  end
  object FDQueryProfessor: TFDQuery
    Connection = FDConnectionProfessor
    SQL.Strings = (
      'select * from professores;')
    Left = 176
    Top = 120
  end
  object dspProfessor: TDataSetProvider
    DataSet = FDQueryProfessor
    Left = 176
    Top = 192
  end
end
