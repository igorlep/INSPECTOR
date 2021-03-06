object OrganizationsForm: TOrganizationsForm
  Left = 1199
  Top = 358
  Width = 621
  Height = 469
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 603
    Height = 424
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Splitter1: TSplitter
        Left = 0
        Top = 161
        Width = 595
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        ResizeStyle = rsUpdate
      end
      object bottomPanel: TPanel
        Left = 0
        Top = 164
        Width = 595
        Height = 229
        Align = alClient
        Caption = 'bottomPanel'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Panel1: TPanel
          Left = 1
          Top = 19
          Width = 26
          Height = 209
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 3
            Top = 8
            Width = 20
            Height = 20
            Hint = #1048#1079#1084#1077#1085#1080#1090#1100
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF000000
              0000FFFF000BBBBBBBB0FF000A0B0000BBB0000E0A0BBBBBBBB00D0E0A0B0000
              00B00D0E0A0BBBBBBBB00D0E0A0B000000B00D0E0A0BBBBBBBB00D0E0A0B000B
              BBB00D0E0A0BBBBB00000D0E0A0B00BB080F0D0E0A0BBBBB00FF0D0E0A000000
              0FFF0D0E0000000FFFFF0D0000000FFFFFFF0000000FFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
        end
        object bottomHeader: TJvNavPanelHeader
          Left = 1
          Top = 1
          Width = 593
          Height = 18
          Align = alTop
          Alignment = taCenter
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ColorTo = clWhite
          ImageIndex = 0
        end
        object constPanel: TPanel
          Left = 27
          Top = 19
          Width = 567
          Height = 209
          Align = alClient
          BevelOuter = bvNone
          Caption = 'constPanel'
          TabOrder = 2
          object ConstGrid: TDBGridEh
            Left = 0
            Top = 0
            Width = 567
            Height = 166
            Align = alClient
            AutoFitColWidths = True
            DataSource = ConstSource
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghHighlightFocus, dghClearSelection]
            ReadOnly = True
            SortLocal = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'CONST_KIND'
                Footers = <>
                ImageList = ImageList
                KeyList.Strings = (
                  '0'
                  '1')
                NotInKeyListIndex = 0
                PickList.Strings = (
                  '0'
                  '1')
                Title.Caption = ' '
                Width = 18
              end
              item
                Alignment = taCenter
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'ID'
                Footers = <>
                Width = 52
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'ConstName'
                Footers = <>
                Width = 177
              end
              item
                EditButtons = <>
                FieldName = 'ConstValue'
                Footers = <>
                Width = 218
              end
              item
                Alignment = taCenter
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'ConstDate'
                Footers = <>
                Width = 88
              end>
          end
          object constDataPanel: TPanel
            Left = 0
            Top = 182
            Width = 567
            Height = 27
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              567
              27)
            object constDateLabel: TLabel
              Left = 0
              Top = 6
              Width = 473
              Height = 13
              Alignment = taRightJustify
              Anchors = [akLeft, akTop, akRight]
              AutoSize = False
              Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1080#1093' '#1082#1086#1085#1089#1090#1072#1085#1090' '#1091#1082#1072#1079#1072#1085#1099' '#1085#1072' '#1076#1072#1090#1091
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DateEdit: TDateEdit
              Left = 480
              Top = 4
              Width = 89
              Height = 19
              Color = clBtnFace
              DirectInput = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Anchors = [akTop, akRight]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 0
              Text = '01.01.2000'
              OnChange = DateEditChange
            end
          end
          object hintPanel: TPanel
            Left = 0
            Top = 166
            Width = 567
            Height = 16
            Align = alBottom
            BevelOuter = bvNone
            Color = clWindow
            TabOrder = 2
            object Image1: TImage
              Left = 4
              Top = 0
              Width = 16
              Height = 16
              Picture.Data = {
                07544269746D6170F6000000424DF60000000000000076000000280000001000
                0000100000000100040000000000800000000000000000000000100000000000
                0000000000000000800000800000008080008000000080008000808000008080
                8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFCFCCFCFFFFFFFFFCCFCCFCCFFFFFFFFFFCCCCFFFFFFFFFFCCCFFCCC
                FFFFFFFFCCCFFCCCFFFFFFFFFFCCCCFFFFFFFFFFCCFCCFCCFFFFFFFFFCFCCFCF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF}
            end
            object hintLabel: TLabel
              Left = 24
              Top = 0
              Width = 138
              Height = 13
              Caption = '- '#1087#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1072#1103' '#1082#1086#1085#1089#1090#1072#1085#1090#1072
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 595
        Height = 161
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 26
          Height = 161
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            26
            161)
          object SaveButton: TSpeedButton
            Left = 3
            Top = 27
            Width = 20
            Height = 22
            Cursor = crHandPoint
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888882882222282222888788777778777788882088888888
              888888778888888888888800008882222288887777888777778888800F008888
              888888877F77888888888880FFF0388222888887FFF73887778888880F023388
              888888887F78338888888888002223388888888877888338888888888A222233
              88888888878888338888888888A22223388888888878888338888888888A2222
              3388888888878888338888888888A22223388888888878888338888888888A22
              223888888888878888388888888888A22228888888888878887888888888888A
              2228888888888887777888888888888888888888888888888888}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Spacing = 3
            OnClick = SaveButtonClick
          end
          object AddButton: TSpeedButton
            Left = 3
            Top = 3
            Width = 20
            Height = 22
            Cursor = crHandPoint
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFCFFFFFF
              FFFFFCCCCCCFFFFFFFFFCCCCCCCCCF999999CCCCCCCCCF999999CCCCCCCFFFFF
              FFFFCCCFFCF777777777CCCF7F7777777777CCCFFFFFFFFFFFFFCCC777777777
              7777FFF7777777777777FFFFFFFFFFFFFFFFFFF7777777777777FFF777777777
              7777FFFFFFFFFFFFFFFFFFF7777777777777FFF7777777777777}
            ParentShowHint = False
            ShowHint = True
            Spacing = 3
            OnClick = AddButtonClick
          end
          object DelButton: TSpeedButton
            Left = 3
            Top = 75
            Width = 20
            Height = 22
            Cursor = crHandPoint
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF777777777
              7777FFF7777777777777FFF7777777777777FFF7777777777777FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF7777777777777FFF7777777777777999777999777
              77777777777777777777F999F999FFFFFFFFF777F777FFFFFFFFFF99999FFFFF
              FFFFFF77777FFFFFFFFFFFF999CCCCCCCCCCFFF7777777777777FF99999CCCCC
              CCCCFFF7777777777777F999F999FFFFFFFFF777F777FFFFFFFF999FFF999FFF
              FFFF777FFF777FFFFFFFFFF7777777777777FFF7777777777777FFF777777777
              7777FFF7777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777777
              7777FFF7777777777777FFF7777777777777FFF7777777777777}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Spacing = 3
            OnClick = DelButtonClick
          end
          object CancelButton: TSpeedButton
            Left = 3
            Top = 52
            Width = 20
            Height = 20
            Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888889982222992222888778777777777788899988899988
              8888877788877788888888999099922222888877777777777788888999998888
              8888888777777888888888809990388222888887777738877788888999993388
              888888877777338888888899909993388888887777777338888889998A299933
              88888777878777338888899888A29923388887788878778338888888888A2222
              3388888888878888338888888888A22223388888888878888338888888888A22
              223888888888878888388888888888A22228888888888878887888888888888A
              2228888888888887777888888888888888888888888888888888}
            NumGlyphs = 2
            OnClick = CancelButtonClick
          end
          object ExitButton: TSpeedButton
            Left = 3
            Top = 133
            Width = 20
            Height = 20
            Hint = #1042#1099#1093#1086#1076
            Anchors = [akLeft, akBottom]
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF00FF00F08
              0070F00FF00FF00870070000000008087700FFFFFF0880087770FFFFFF000008
              7770FFFFFF0777087770FFFFFF0777087770FF00000007080770FF0999990708
              7770F099999077087770F090990777087770F000900777087770FFF00F077770
              8770FFFFFF0777770870FFFFFF0777777080FFFFFF0000000000}
            OnClick = ExitButtonClick
          end
        end
        object OrgGrid: TDBGridEh
          Left = 26
          Top = 0
          Width = 569
          Height = 161
          Align = alClient
          AutoFitColWidths = True
          DataSource = OrgSource
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghRowHighlight]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID'
              Footers = <>
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Width = 272
            end
            item
              AutoDropDown = True
              EditButtons = <>
              FieldName = 'BEGIN_DATE'
              Footers = <>
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'INN'
              Footers = <>
              Title.Caption = #1048#1053#1053
              Visible = False
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'KPP'
              Footers = <>
              Title.Caption = #1050#1055#1055
              Visible = False
              Width = 66
            end>
        end
      end
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 392
    Top = 8
  end
  object ConstSource: TDataSource
    DataSet = ConstDS
    Left = 80
    Top = 296
  end
  object OrgDS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ORGANIZATIONS'
      'SET '
      '    NAME = ?NAME,'
      '    BEGIN_DATE = ?BEGIN_DATE,'
      '    INN = ?INN,'
      '    KPP = ?KPP,'
      '    DELETE_FLG = ?DELETE_FLG'
      'WHERE'
      '    ID = ?OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ORGANIZATIONS'
      'WHERE'
      '        ID = ?OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ORGANIZATIONS('
      '    ID,'
      '    NAME,'
      '    BEGIN_DATE,'
      '    INN,'
      '    KPP,'
      '    DELETE_FLG'
      ')'
      'VALUES('
      '    ?ID,'
      '    ?NAME,'
      '    ?BEGIN_DATE,'
      '    ?INN,'
      '    ?KPP,'
      '    ?DELETE_FLG'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    BEGIN_DATE,'
      '    INN,'
      '    KPP,'
      '    DELETE_FLG'
      'FROM'
      '    ORGANIZATIONS '
      ' WHERE '
      '        ORGANIZATIONS.ID = ?OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    BEGIN_DATE,'
      '    INN,'
      '    KPP,'
      '    DELETE_FLG'
      'FROM'
      '    ORGANIZATIONS ')
    AutoUpdateOptions.UpdateTableName = 'ORGANIZATIONS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.GeneratorName = 'GEN_ORGANIZATIONS_ID'
    Transaction = OrgT
    Database = SaleBookDM.DataBase
    AutoCommit = True
    Left = 104
    Top = 112
    object OrgDSID: TFIBSmallIntField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
      Origin = 'ORGANIZATIONS.ID'
    end
    object OrgDSNAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      FieldName = 'NAME'
      Origin = 'ORGANIZATIONS.NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object OrgDSBEGIN_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081
      FieldName = 'BEGIN_DATE'
      Origin = 'ORGANIZATIONS.BEGIN_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object OrgDSINN: TFIBStringField
      FieldName = 'INN'
      Size = 15
      EmptyStrToNull = True
    end
    object OrgDSKPP: TFIBStringField
      FieldName = 'KPP'
      Size = 15
      EmptyStrToNull = True
    end
    object OrgDSDELETE_FLG: TFIBBooleanField
      FieldName = 'DELETE_FLG'
    end
  end
  object OrgSource: TDataSource
    DataSet = OrgDS
    OnStateChange = OrgSourceStateChange
    OnDataChange = OrgSourceDataChange
    Left = 152
    Top = 112
  end
  object ConstDS: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftSmallint
      end
      item
        Name = 'ConstName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ConstValue'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'ConstDate'
        DataType = ftDate
      end>
    IndexFieldNames = 'ID'
    IndexName = 'ConstDSIndex'
    IndexDefs = <
      item
        Name = 'ConstDSIndex'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    SortOptions = [mtcoDescending]
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '3.01'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 296
    object ConstDSCONST_KIND: TSmallintField
      FieldName = 'CONST_KIND'
    end
    object ConstDSID: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
    end
    object ConstDSConstName: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'ConstName'
      Size = 50
    end
    object ConstDSConstValue: TStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      DisplayWidth = 120
      FieldName = 'ConstValue'
      Size = 120
    end
    object ConstDSConstDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
      FieldName = 'ConstDate'
    end
    object ConstDSIDENTIFIER: TStringField
      FieldName = 'IDENTIFIER'
      Size = 30
    end
  end
  object CDS: TpFIBDataSet
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
      '    CONST_TYPE,'
      '    CONST_KIND'
      'FROM'
      '    CONSTANT '
      'ORDER BY CONST_KIND DESC')
    Transaction = CT
    Database = SaleBookDM.DataBase
    AutoCommit = True
    Left = 232
    Top = 296
  end
  object ValueQ: TpFIBQuery
    Transaction = SaleBookDM.ReadTransaction
    Database = SaleBookDM.DataBase
    Left = 264
    Top = 296
  end
  object OrgT: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 64
    Top = 112
  end
  object RST: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 200
    Top = 112
  end
  object CT: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 200
    Top = 296
  end
  object ImageList: TImageList
    Left = 136
    Top = 296
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF000000FF00000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF000000FF00000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FF000000FF00000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF000000FF00000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFA5F00000000FFFFF24F00000000
      FFFFFC3F00000000FFFFF18F00000000FFFFF18F00000000FFFFFC3F00000000
      FFFFF24F00000000FFFFFA5F00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
