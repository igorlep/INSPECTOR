object InvoiceEditForm: TInvoiceEditForm
  Left = 277
  Top = 145
  Width = 525
  Height = 234
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object SmrtPanel2: TSmrtPanel
    Left = 0
    Top = 164
    Width = 509
    Height = 32
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      509
      32)
    object SaveButton: TJvXPButton
      Left = 306
      Top = 6
      Width = 92
      Height = 20
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880330000008803088033000000880308803300000088
        0308803300000000030880333333333333088033000000003308803088888888
        0308803088888888030880308888888803088030888888880308803088888888
        0008803088888888080880000000000000088888888888888888}
      Anchors = [akTop, akRight]
      OnClick = SaveButtonClick
    end
    object CancelButton: TJvXPButton
      Left = 410
      Top = 6
      Width = 92
      Height = 20
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
      OnClick = CancelButtonClick
    end
  end
  object SmrtPanel1: TSmrtPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 164
    Align = alClient
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      509
      164)
    object Label1: TLabel
      Tag = 13
      Left = 113
      Top = 18
      Width = 146
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 370
      Top = 18
      Width = 25
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1086#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 62
      Width = 113
      Height = 16
      AutoSize = False
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 86
      Width = 113
      Height = 16
      AutoSize = False
      Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 93
      Top = 40
      Width = 402
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Label6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PADocsLabel: TLabel
      Left = 16
      Top = 134
      Width = 193
      Height = 21
      AutoSize = False
      Caption = #1050' '#1087#1083#1072#1090#1077#1078#1085#1086' '#1088#1072#1089#1095#1077#1090#1085#1086#1084#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1091':'
    end
    object SelectNumberButton: TSpeedButton
      Left = 355
      Top = 16
      Width = 18
      Height = 19
      Hint = #1044#1088#1091#1075#1086#1081' '#1085#1086#1084#1077#1088
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SelectNumberButtonClick
    end
    object SpeedButton2: TSpeedButton
      Left = 480
      Top = 84
      Width = 19
      Height = 19
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Anchors = [akTop, akRight]
      Caption = 'X'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 458
      Top = 138
      Width = 19
      Height = 19
      Hint = #1055#1088#1080#1089#1086#1077#1076#1080#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Anchors = [akTop, akRight]
      Glyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 480
      Top = 138
      Width = 19
      Height = 19
      Hint = #1059#1089#1082#1086#1088#1077#1085#1085#1099#1081' '#1074#1074#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Anchors = [akTop, akRight]
      Glyph.Data = {
        8A000000424D8A00000000000000760000002800000005000000050000000100
        0400000000001400000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00870780007000
        7000000000007000700087078000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label5: TLabel
      Left = 16
      Top = 110
      Width = 108
      Height = 16
      AutoSize = False
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object InvoiceNumberEdit: TComboEdit
      Left = 266
      Top = 16
      Width = 86
      Height = 19
      Alignment = taCenter
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ButtonWidth = 0
      Anchors = [akTop, akRight]
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'InvoiceNumberEdit'
    end
    object PADocs: TRichEdit
      Left = 208
      Top = 136
      Width = 246
      Height = 26
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Lines.Strings = (
        'PADocs')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object InvoiceTypeBox: TComboBox
      Left = 128
      Top = 108
      Width = 73
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = #1058#1086#1074#1072#1088
      OnChange = InvoiceTypeBoxChange
      Items.Strings = (
        #1058#1086#1074#1072#1088
        #1059#1089#1083#1091#1075#1072)
    end
    object advanceCheckbox: TJvXPCheckbox
      Left = 208
      Top = 110
      Width = 65
      Height = 17
      Caption = #1040#1074#1072#1085#1089
      TabOrder = 5
    end
    object revisionCheckbox: TJvXPCheckbox
      Left = 280
      Top = 110
      Width = 89
      Height = 17
      Caption = #1059#1090#1086#1095#1085#1077#1085#1082#1072
      TabOrder = 6
    end
    object invoiceDateEdit: TJvDateEdit
      Left = 402
      Top = 16
      Width = 97
      Height = 21
      ButtonFlat = True
      ButtonWidth = 20
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnChange = invoiceDateEditChange
    end
    object buyerEdit: TJvComboEdit
      Left = 128
      Top = 60
      Width = 370
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ButtonFlat = True
      ButtonWidth = 17
      Glyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
      TabOrder = 2
      Text = 'buyerEdit'
      OnButtonClick = buyerEditButtonClick
    end
    object consigneeEdit: TJvComboEdit
      Left = 128
      Top = 84
      Width = 349
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ButtonFlat = True
      ButtonWidth = 17
      Glyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
        0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
      TabOrder = 3
      Text = 'consigneeEdit'
      OnButtonClick = consigneeEditButtonClick
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 72
    Top = 8
  end
  object TQ: TpFIBQuery
    Transaction = TempTransaction
    Database = SaleBookDM.DataBase
    Left = 32
    Top = 40
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object AddInvoiceProc: TpFIBStoredProc
    Transaction = TempTransaction
    Database = SaleBookDM.DataBase
    Left = 72
    Top = 40
  end
  object UpDateQ: TpFIBQuery
    Transaction = TempTransaction
    Database = SaleBookDM.DataBase
    Left = 112
    Top = 40
  end
  object TempTransaction: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 72
    Top = 72
  end
end
