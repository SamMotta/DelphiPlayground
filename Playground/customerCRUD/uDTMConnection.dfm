object dtmConnection: TdtmConnection
  OldCreateOrder = False
  Height = 165
  Width = 253
  object driverLink: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Usuario\Documents\sam\SQL\CRUD_ONE\app\libmysql.dll'
    Left = 176
    Top = 32
  end
  object con: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'Database=crud_one'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 96
  end
  object dsClientes: TDataSource
    DataSet = qr
    Left = 104
    Top = 32
  end
  object qr: TFDQuery
    Active = True
    Connection = con
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS clients ('
      'id INT AUTO_INCREMENT PRIMARY KEY,'
      'nome VARCHAR(100) NOT NULL,'
      'cpfCnpj VARCHAR(25) NOT NULL,'
      'endereco VARCHAR(70) NOT NULL,'
      'divida INT'
      ');'
      ''
      'SELECT * FROM clients;')
    Left = 32
    Top = 32
  end
end
