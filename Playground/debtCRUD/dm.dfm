object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 258
  Width = 427
  object driverLink: TFDPhysMySQLDriverLink
    VendorLib = 'E:\Coding\delphi\VCL\debtCRUD\libmysql.dll'
    Left = 176
    Top = 32
  end
  object con: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'Database=debtorCRUD'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 96
  end
  object dsDebts: TDataSource
    DataSet = qr
    Left = 104
    Top = 32
  end
  object qr: TFDQuery
    Connection = con
    SQL.Strings = (
      'CREATE DATABASE IF NOT EXISTS debtorCRUD;'
      ''
      'CREATE TABLE IF NOT EXISTS debts ('
      'id INT AUTO_INCREMENT PRIMARY KEY,'
      'debtDesc VARCHAR(170),'
      'debtorName VARCHAR(50),'
      'debtorPhoneNumber VARCHAR(26),'
      'debt DOUBLE,'
      'debtType ENUM('#39'PAGAR'#39', '#39'RECEBER'#39'),'
      'debtStatus BOOL'
      ');'
      ''
      'SELECT * FROM debts;')
    Left = 32
    Top = 32
  end
end
