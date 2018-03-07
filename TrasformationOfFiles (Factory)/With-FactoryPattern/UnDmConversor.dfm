object DmConversor: TDmConversor
  OldCreateOrder = False
  Height = 155
  Width = 154
  object CdsConversor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 30
  end
  object XMLTransformProvider: TXMLTransformProvider
    TransformRead.TransformationFile = 
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfF' +
      'iles (Factory)\mockdata\ToDp.xtr'
    XMLDataFile = 
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfF' +
      'iles (Factory)\mockdata\data.xml'
    Left = 64
    Top = 78
  end
end
