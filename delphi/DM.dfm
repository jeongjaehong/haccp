object frmDM: TfrmDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 825
  Top = 393
  Height = 306
  Width = 431
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\'#54620#50864#48708#50977#50864#45453#51109'HACCP'#48143#44060#52404#44288 +
      #47532'\db\haccp.mdb;Persist Security Info=False;Jet OLEDB:Database Pa' +
      'ssword=haccp0630'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object qryCodeMaster: TADOQuery
    Connection = con
    CursorType = ctDynamic
    AfterScroll = qryCodeMasterAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from code_m')
    Left = 88
    Top = 16
    object qryCodeMasterCodeNo: TWideStringField
      FieldName = 'CodeNo'
      Size = 2
    end
    object qryCodeMasterCodeNoName: TWideStringField
      FieldName = 'CodeNoName'
    end
    object qryCodeMasterUseYn: TWideStringField
      FieldName = 'UseYn'
      Size = 1
    end
  end
  object qryCodeDetail: TADOQuery
    Connection = con
    CursorType = ctDynamic
    Parameters = <
      item
        Name = 'codeno'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    Prepared = True
    SQL.Strings = (
      'select * from code_d'
      'where codeno = :codeno')
    Left = 88
    Top = 80
    object qryCodeDetailCodeNo: TWideStringField
      FieldName = 'CodeNo'
      Size = 2
    end
    object qryCodeDetailCodeDetailNo: TWideStringField
      FieldName = 'CodeDetailNo'
      Size = 2
    end
    object qryCodeDetailCodeDetailName: TWideStringField
      FieldName = 'CodeDetailName'
    end
    object qryCodeDetailUseYn: TWideStringField
      FieldName = 'UseYn'
      Size = 1
    end
  end
  object dsCodeDetail: TDataSource
    DataSet = qryCodeDetail
    Left = 169
    Top = 73
  end
  object dsCodeMaster: TDataSource
    DataSet = qryCodeMaster
    Left = 161
    Top = 17
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.mdb'
    FileName = 'haccp.mdb'
    Filter = 'HACCP Database (.mdb)|*.mdb'
    InitialDir = 'c:\'
    Title = 'Select Database'
    Left = 256
    Top = 32
  end
end
