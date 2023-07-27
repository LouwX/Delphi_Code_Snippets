object myDataModule: TmyDataModule
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conDb: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\RuanDelphiCode\e' +
      'coMe.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 88
  end
  object myQry: TADOQuery
    Connection = conDb
    Parameters = <>
    Left = 248
    Top = 88
  end
  object dsQuery: TDataSource
    Left = 360
    Top = 88
  end
end
