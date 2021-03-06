object MoveRecordsForm: TMoveRecordsForm
  Left = 436
  Top = 284
  Width = 480
  Height = 367
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu]
  Caption = #1055#1077#1088#1077#1085#1086#1089' '#1079#1072#1087#1080#1089#1077#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000000000CACCCCCCC0222222AA0FFFFFC022222AAA00000FC02A22
    AAAAAAAA0FC02A2AAAAAAAAA0FC02A22AAAAAAAA0FC02A222AAA00000FC02A22
    22AA0FFFFFC02A2222CA0F000FC02AA222CFFFFFFFC02AAA22CCCCCCCCC02AAA
    A222222200002222222222220000222220000000000022220000000000008000
    0000800000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000F0000000F000007FF00000FFF0000}
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 462
    Height = 57
    Align = alTop
    Alignment = taCenter
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      #1059#1082#1072#1078#1080#1090#1077' '#1082#1072#1082#1086#1084#1091' '#1087#1086#1095#1090#1072#1083#1100#1086#1085#1091' '#1085#1091#1078#1085#1086' '
      #1087#1077#1088#1077#1076#1072#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1079#1072#1076#1072#1085#1080#1077)
    ParentFont = False
    TabOrder = 0
    OnResizeRequest = RichEdit1ResizeRequest
  end
  object SmrtPanel2: TSmrtPanel
    Left = 0
    Top = 281
    Width = 462
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      462
      41)
    object SaveButton: TBitBtn
      Left = 235
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1055#1077#1088#1077#1076#1072#1090#1100
      TabOrder = 0
      OnClick = SaveButtonClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00700000000000
        0000700000CACCCCCCC0222222AA0FFFFFC022222AAA00000FC02A22AAAAAAAA
        0FC02A2AAAAAAAAA0FC02A22AAAAAAAA0FC02A222AAA00000FC02A2222AA0FFF
        FFC02A2222CA0F000FC02AA222CFFFFFFFC02AAA22CCCCCCCCC02AAAA2222222
        7777222222222222777722222777777777772222777777777777}
    end
    object CancelButton: TBitBtn
      Left = 357
      Top = 8
      Width = 107
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100#1089#1103
      TabOrder = 1
      OnClick = CancelButtonClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888818888888888988899188888888888889991888888
        8988888999888888988888889918888998888888899188998888888888999998
        8888888888899988888888888899991888888888899988918888888999988889
        1888889999888888998888999888888888988888888888888888}
    end
    object CopyButton: TBitBtn
      Left = 117
      Top = 8
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      Visible = False
      OnClick = CopyButtonClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888888888CCCCCCCCC8888888CFFFFFFFC8888888CF0000
        0FC8777777CFFFFFFFC87FFFFFCF00000FC87F7777CFFFFFFFC87FFFFFCF00FC
        CCC87F7777CFFFFCFC887FFFFFCFFFFCC8887F77F7CCCCCC88887FFFF7F78888
        88887FFFF7788888888877777788888888888888888888888888}
    end
  end
  object EIGrid: TDBGridEh
    Left = 0
    Top = 57
    Width = 462
    Height = 224
    Align = alClient
    AutoFitColWidths = True
    DataSource = DataSource
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'DESCRIPTION'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end>
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 208
    Top = 128
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = SaleBookDM.EIDS
    Left = 208
    Top = 72
  end
  object TempQ: TpFIBQuery
    Transaction = DT
    Database = SaleBookDM.DataBase
    Left = 288
    Top = 112
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object DT: TpFIBTransaction
    Active = True
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 880
    Top = 176
  end
end
