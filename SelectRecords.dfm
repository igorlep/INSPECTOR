object SelectRecordsForm: TSelectRecordsForm
  Left = 207
  Top = 332
  Width = 451
  Height = 276
  Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1090#1073#1086#1088#1072' '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1078#1091#1088#1085#1072#1083#1077' '#1089#1086#1073#1099#1090#1080#1081
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 201
    Width = 433
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      433
      30)
    object selectButton: TJvXPButton
      Left = 254
      Top = 2
      Width = 81
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100
      TabOrder = 0
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        CFFFFFFFCFFFCCCCCCFFCCCCCCFFCCCCCCCFCCCCCCCFCCCCCCCCCCCCCCFFCCCC
        CCCFFFFFCFFFCCCCCCFFFFFF9FFFFFFFCFFF999999FFFFFFFFFF9999999FFFFF
        FFFF999999FFFFFFFFFFFFFF9FFFFFFFFFFFFFFF2FFFFFFFFFFF222222FFFFFF
        FFFF2222222FFFFFFFFF222222FFFFFFFFFFFFFF2FFFFFFFFFFF}
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = selectButtonClick
    end
    object cancelButton: TJvXPButton
      Left = 342
      Top = 2
      Width = 89
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      TabOrder = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888818888888888988899188888888888889991888888
        8988888999888888988888889918888998888888899188998888888888999998
        8888888888899988888888888899991888888888899988918888888999988889
        1888889999888888998888999888888888988888888888888888}
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = cancelButtonClick
    end
  end
  object SmrtPanel1: TSmrtPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      433
      201)
    object Label1: TLabel
      Tag = 13
      Left = 208
      Top = 20
      Width = 145
      Height = 16
      AutoSize = False
      Caption = #1058#1080#1087#1099' '#1089#1086#1073#1099#1090#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Tag = 12
      Left = 208
      Top = 128
      Width = 185
      Height = 16
      AutoSize = False
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Tag = 13
      Left = 24
      Top = 12
      Width = 169
      Height = 16
      AutoSize = False
      Caption = #1048#1085#1090#1077#1088#1074#1072#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckButton: TSpeedButton
      Left = 381
      Top = 12
      Width = 20
      Height = 20
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF90FFFFFFFFFFFFF9990FFFFFFFFFFFF9990FFFF
        FFFFFFF999990FFFFFFFFF9999990FFFFFFFF7990F9990FFFFFF790FFFF990FF
        FFFFFFFFFFF9990FFFFFFFFFFFFF990FFFFFFFFFFFFFF990FFFFFFFFFFFFFF79
        0FFFFFFFFFFFFFF790FFFFFFFFFFFFFFF990FFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = CheckButtonClick
    end
    object UnCheckButton: TSpeedButton
      Left = 404
      Top = 12
      Width = 20
      Height = 20
      Hint = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FF99FFFFFFFFFFFFF999FFFFFC0FFFFF9999FFFFCCC0FFF9999FFFFFCCC0FF99
        99FFFFFCCCCC09999FFFFFCCCCCC9999FFFFF7CC0FC9999FFFFF7C0FFF9999FF
        FFFFFFFFF9999C0FFFFFFFFF9999CC0FFFFFFFF9999FFCC0FFFFFF9999FFFF7C
        0FFFF9999FFFFFF7C0FF9999FFFFFFFFFCC0999FFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = UnCheckButtonClick
    end
    object ActionsBox: TRxCheckListBox
      Tag = 15
      Left = 208
      Top = 34
      Width = 215
      Height = 87
      GraySelection = True
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      InternalVersion = 202
      Strings = (
        #1042#1093#1086#1076' / '#1042#1099#1093#1086#1076
        1
        True
        #1046#1091#1088#1085#1072#1083' '#1079#1072#1076#1072#1085#1080#1081
        1
        True
        #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' / '#1042#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077' '#1073#1072#1079#1099
        1
        True
        #1048#1084#1087#1086#1088#1090'/'#1069#1082#1089#1087#1086#1088#1090
        1
        True
        #1054#1090#1087#1088#1072#1074#1082#1072
        1
        True)
    end
    object UserBox: TComboBox
      Tag = 12
      Left = 208
      Top = 142
      Width = 121
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      ItemHeight = 13
      TabOrder = 1
      Text = 'UserBox'
    end
    object StringEdit: TEdit
      Tag = 13
      Left = 104
      Top = 184
      Width = 319
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = 'StringEdit'
    end
    object Button1: TButton
      Tag = 12
      Left = 330
      Top = 142
      Width = 30
      Height = 21
      Caption = #1042#1089#1077
      TabOrder = 3
      OnClick = Button1Click
    end
    object StrCheckBox: TCheckBox
      Tag = 12
      Left = 24
      Top = 184
      Width = 73
      Height = 17
      Alignment = taLeftJustify
      Caption = #1057#1090#1088#1086#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = StrCheckBoxClick
    end
    object SmrtPanel2: TSmrtPanel
      Tag = 15
      Left = 24
      Top = 26
      Width = 169
      Height = 146
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 5
      object Label3: TLabel
        Tag = 12
        Left = 16
        Top = 114
        Width = 25
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1087#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LastDayRB: TRadioButton
        Tag = 13
        Left = 16
        Top = 8
        Width = 137
        Height = 17
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1076#1077#1085#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object LastWeekRB: TRadioButton
        Tag = 13
        Left = 16
        Top = 28
        Width = 145
        Height = 17
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1085#1077#1076#1077#1083#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object LastMonthRB: TRadioButton
        Tag = 13
        Left = 16
        Top = 48
        Width = 137
        Height = 17
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object AllRB: TRadioButton
        Tag = 13
        Left = 16
        Top = 68
        Width = 145
        Height = 17
        Caption = #1042#1077#1089#1100' '#1078#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
      object IntervalRB: TRadioButton
        Tag = 12
        Left = 16
        Top = 90
        Width = 33
        Height = 17
        Caption = #1057
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object FromDateEdit: TDateEdit
        Tag = 13
        Left = 48
        Top = 88
        Width = 105
        Height = 21
        NumGlyphs = 2
        TabOrder = 5
      end
      object ToDateEdit: TDateEdit
        Tag = 13
        Left = 48
        Top = 112
        Width = 105
        Height = 21
        NumGlyphs = 2
        TabOrder = 6
      end
    end
  end
  object FormStorage1: TFormStorage
    IniSection = 'AccountsJournalForm'
    StoredValues = <>
    Left = 112
  end
  object R_DS: TpFIBDataSet
    Transaction = RT
    Database = SaleBookDM.DataBase
    Left = 176
  end
  object RT: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 144
  end
end
