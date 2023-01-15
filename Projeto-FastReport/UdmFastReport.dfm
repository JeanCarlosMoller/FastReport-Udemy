object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 234
  Width = 285
  object FDDataBase: TFDConnection
    Params.Strings = (
      'Database=fastreportudemy'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 141
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\GIT\FastReport-Udemy\Biblioteca\libmysql.dll'
    Left = 141
    Top = 120
  end
end
