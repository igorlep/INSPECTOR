object SaleBookDM: TSaleBookDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 841
  Top = 153
  Height = 375
  Width = 596
  object DataBase: TpFIBDatabase
    Connected = True
    DBName = 'localhost:C:\INSPECTOR\DB\NEWSALEBOOK.GDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'lc_ctype=WIN1251'
      'sql_role_name='
      'password=masterkey')
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 1000
    OnLostConnect = DataBaseLostConnect
    OnErrorRestoreConnect = DataBaseErrorRestoreConnect
    AfterRestoreConnect = DataBaseAfterRestoreConnect
    Left = 32
    Top = 16
  end
  object ReadTransaction: TpFIBTransaction
    Active = True
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 112
    Top = 16
  end
  object WriteTransaction: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 200
    Top = 16
  end
  object TempQuery: TpFIBQuery
    Transaction = ReadTransaction
    Database = DataBase
    Left = 96
    Top = 72
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object pFibErrorHandler1: TpFibErrorHandler
    OnFIBErrorEvent = pFibErrorHandler1FIBErrorEvent
    Left = 296
    Top = 16
  end
  object EIDS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE EI'
      'SET '
      '    DESCRIPTION = ?DESCRIPTION'
      'WHERE'
      '    ID = ?OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    EI'
      'WHERE'
      '        ID = ?OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO EI('
      '    ID,'
      '    DESCRIPTION'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?DESCRIPTION'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCRIPTION'
      'FROM'
      '    EI '
      ' WHERE '
      '        EI.ID = ?OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCRIPTION'
      'FROM'
      '    EI ')
    AutoUpdateOptions.UpdateTableName = 'EI'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_EI_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = EIRT
    Database = DataBase
    UpdateTransaction = EIWT
    AutoCommit = True
    Left = 208
    Top = 168
    poSQLINT64ToBCD = True
    object EIDSID: TFIBSmallIntField
      FieldName = 'ID'
    end
    object EIDSDESCRIPTION: TFIBStringField
      FieldName = 'DESCRIPTION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object UsersMonitorTimer: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = UsersMonitorTimerTimer
    Left = 32
    Top = 176
  end
  object UMQuery: TpFIBQuery
    Transaction = UMT
    Database = DataBase
    Left = 144
    Top = 176
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object ConstantDS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONSTANT'
      'SET '
      '    IDENTIFIER = ?IDENTIFIER,'
      '    CONST_NAME = ?CONST_NAME,'
      '    CONST_TYPE = ?CONST_TYPE'
      'WHERE'
      '    ID = ?OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONSTANT'
      'WHERE'
      '        ID = ?OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONSTANT('
      '    ID,'
      '    IDENTIFIER,'
      '    CONST_NAME,'
      '    CONST_TYPE'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?IDENTIFIER,'
      '    ?CONST_NAME,'
      '    ?CONST_TYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDENTIFIER,'
      '    CONST_NAME,'
      '    CONST_TYPE'
      'FROM'
      '    CONSTANT '
      ' WHERE '
      '        CONSTANT.ID = ?OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDENTIFIER,'
      '    CONST_NAME,'
      '    CONST_TYPE'
      'FROM'
      '    CONSTANT ')
    AutoUpdateOptions.UpdateTableName = 'CONSTANT'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_CONSTANT_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = ReadTransaction
    Database = DataBase
    UpdateTransaction = WriteTransaction
    AutoCommit = True
    Left = 32
    Top = 72
  end
  object ConstProc: TpFIBStoredProc
    Transaction = ConstTransaction
    Database = DataBase
    Left = 416
    Top = 128
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object ConstTransaction: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 432
    Top = 192
  end
  object TQ: TpFIBQuery
    Transaction = TT
    Database = DataBase
    Left = 72
    Top = 232
  end
  object TT: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 32
    Top = 232
  end
  object WQ: TpFIBQuery
    Transaction = WriteTransaction
    Database = DataBase
    Left = 144
    Top = 72
  end
  object UMT: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 104
    Top = 176
  end
  object EIRT: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 256
    Top = 168
  end
  object EIWT: TpFIBTransaction
    DefaultDatabase = DataBase
    TimeoutAction = TARollback
    Left = 304
    Top = 168
  end
  object NDOST: TpFIBDataSet
    Transaction = ReadTransaction
    Database = DataBase
    AutoCommit = True
    Left = 136
    Top = 232
  end
  object NOMDS: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CODP,'
      '    EI'
      'FROM'
      '    NOMENCLATURE ')
    AutoUpdateOptions.UpdateTableName = 'EI'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_EI_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = EIRT
    Database = DataBase
    UpdateTransaction = EIWT
    AutoCommit = True
    Left = 280
    Top = 216
    poSQLINT64ToBCD = True
    object NOMDSCODP: TFIBIntegerField
      FieldName = 'CODP'
    end
    object NOMDSEI: TFIBStringField
      FieldName = 'EI'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object SGBT: TpFIBDataSet
    Transaction = ReadTransaction
    Database = DataBase
    AutoCommit = True
    Left = 184
    Top = 232
  end
  object RDS: TpFIBDataSet
    Transaction = ReadTransaction
    Database = DataBase
    AutoCommit = True
    Left = 384
    Top = 40
  end
  object TDS: TpFIBDataSet
    Transaction = ReadTransaction
    Database = DataBase
    AutoCommit = True
    Left = 328
    Top = 72
  end
  object DNI: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE EID'
      'SET '
      '    DAYS = :DAYS'
      'WHERE'
      '    IDAY = :OLD_IDAY'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    EID'
      'WHERE'
      '        IDAY = :OLD_IDAY'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO EID('
      '    IDAY,'
      '    DAYS'
      ')'
      'VALUES('
      '    :IDAY,'
      '    :DAYS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    IDAY,'
      '    DAYS'
      'FROM'
      '    EID '
      ''
      ' WHERE '
      '        EID.IDAY = :OLD_IDAY'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    IDAY,'
      '    DAYS'
      'FROM'
      '    EID ')
    AutoUpdateOptions.UpdateTableName = 'EID'
    AutoUpdateOptions.KeyFields = 'IDAY'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorStep = 0
    Transaction = EIRT
    Database = DataBase
    UpdateTransaction = EIWT
    AutoCommit = True
    Left = 480
    Top = 32
    poSQLINT64ToBCD = True
    object DNIIDAY: TFIBSmallIntField
      FieldName = 'IDAY'
    end
    object DNIDAYS: TFIBStringField
      FieldName = 'DAYS'
      Size = 50
      EmptyStrToNull = True
    end
  end
end
