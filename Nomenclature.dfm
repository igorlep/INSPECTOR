object NomenclatureForm: TNomenclatureForm
  Left = 751
  Top = 422
  Width = 989
  Height = 526
  BorderIcons = []
  Caption = #1050#1072#1088#1090#1072' '#1091#1095#1072#1089#1090#1082#1086#1074
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
    00000000000000077777777770000007AAAAAAAA70000007AAAAAAAA70000007
    A00000AA70000007AAAAAAAA70000007A000000A70000007AAAAAAAA70000007
    A000000A70000007AAAAAAAA70000007A000AAAA70000007AAAAA77770000007
    A00AA78700000007AAAAA770000000077777770000000000000000000000C00F
    0000C0070000C0070000C0070000C0070000C0070000C0070000C0070000C007
    0000C0070000C0070000C0070000C00F0000C01F0000E03F0000FFFF0000}
  OldCreateOrder = False
  Scaled = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 233
    Top = 0
    Width = 4
    Height = 399
    Cursor = crHSplit
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 399
    Width = 971
    Height = 4
    Cursor = crVSplit
    Align = alBottom
  end
  object Memo1: TMemo
    Left = 0
    Top = 403
    Width = 971
    Height = 78
    TabStop = False
    Align = alBottom
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object SmrtPanel1: TSmrtPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 399
    Align = alLeft
    TabOrder = 1
    object SmrtPanel2: TSmrtPanel
      Left = 1
      Top = 1
      Width = 231
      Height = 26
      Align = alTop
      TabOrder = 0
      object FAddChButton: TSpeedButton
        Left = 3
        Top = 2
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1079#1076#1077#1083
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0070AAAAAAAAAA
          AAAA22A2AAAAAA22AAAA22A2AAAAAA22AAAA22A2AAAA222222AA22A2AAAA2222
          22AA22A2AAAAAA22AAAA22A22AAAAA22AAAA22A222AAAAAAAAAA22A222222222
          22AA22AAAAAAAAAAAAAA22AAAAA22222222022AAAA2222222220222222222222
          2220222222222222222722222777777777772222777777777777}
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
        OnClick = FAddChButtonClick
      end
      object FSubButton: TSpeedButton
        Left = 24
        Top = 2
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1079#1076#1077#1083
        Flat = True
        Glyph.Data = {
          FE000000424DFE00000000000000760000002800000010000000110000000100
          0400000000008800000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00700000000000
          00007000000000000000222222222222222022222222222222202A2222222222
          22202A222222222222202A222244444442202A222AAAAAAA42202A222AAAAAAA
          22202A222222222222202A222222222222202AA22222222222202AAA22222222
          22202AAAAAAAAAAAA22022222222222222272222227777777777222227777777
          7777}
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
        Transparent = False
        OnClick = FSubButtonClick
      end
    end
    object TreeView1: TTreeView
      Left = 1
      Top = 27
      Width = 231
      Height = 351
      Align = alClient
      Images = ImageList2
      Indent = 19
      TabOrder = 1
      OnChange = TreeView1Change
      OnDblClick = TreeView1DblClick
      OnEdited = TreeView1Edited
      OnKeyDown = TreeView1KeyDown
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 378
      Width = 231
      Height = 20
      Align = alBottom
      BorderStyle = sbsSingle
      Caption = 'StaticText1'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 2
    end
  end
  object SmrtPanel3: TSmrtPanel
    Left = 237
    Top = 0
    Width = 734
    Height = 399
    Align = alClient
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 732
      Height = 26
      Align = alTop
      TabOrder = 0
      DesignSize = (
        732
        26)
      object CancelButton: TSpeedButton
        Left = 712
        Top = 3
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1047#1072#1082#1088#1099#1090#1100
        Anchors = [akTop, akRight]
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
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
        OnClick = CancelButtonClick
      end
      object SelectButton: TSpeedButton
        Left = 4
        Top = 3
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        Action = SelRec
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00877877777777
          7777877877777777777777787777777777777778777777777777FFFFF90FFFFF
          FFFFFFFFF80FFFFFFFFF77789990777777777777888077777777777899907777
          77777777888077777777FFF999990FFFFFFFFFF888880FFFFFFFCC9999990CCC
          CCCC7788888807777777C8990C9990CCCCCC77880788807777778908CCC990CC
          CCCC7807777880777777CCC8CCC9990CCCCC7777777888077777FFFFFFFF990F
          FFFFFFFFFFFF880FFFFF77787777799077777778777778807777777877777790
          77777778777777807777FFFFFFFFFFF90FFFFFFFFFFFFFF80FFF777877777777
          9907777877777777880777787777777777777778777777777777}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
      end
      object NewButton: TSpeedButton
        Left = 48
        Top = 3
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
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
        OnClick = NewButtonClick
      end
      object DelButton: TSpeedButton
        Left = 70
        Top = 3
        Width = 20
        Height = 20
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
      object EditButton: TSpeedButton
        Left = 26
        Top = 3
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        Action = EditRec
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FF44444444
          444FF7FF44444444444F4F20FFFFFFFFFF4F4F88FFFFFFFFFF4F4F0000FFFF00
          0F4F4F8888FFFF000F4F4FF00F00FFFFFF4F4FF88F00FFFFFF4F4FF0FFF03F00
          0F4F4FF8FFF07F000F4F4FFF0F0233FFFF4F4FFF8F0873FFFF4F4F0F00222330
          0F4F4F0F888883300F4F4FFFFA222233FF4F4FFFF7888833FF4F4F000FA22223
          3F4F4F000F7888833F4F4FFFFFFA2222334F4FFFFFF78888774F44444444A222
          233F444444447888877F4F444F444A22223F4F444F444788887F4444444444A2
          222F444444444478888FFFFFFFFFFFFA222FFFFFFFFFFFF7888F}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
      end
      object SortButton: TSpeedButton
        Left = 92
        Top = 3
        Width = 20
        Height = 20
        Hint = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F98888C99CCC
          8880F7FFFF877888FFF0998888C99CCCC88077FFFF8778888FF0998888C9988C
          CC8077FFFF877FF888F0999888C99888CC80777FFF877FFF88F089999999988C
          CC80777777777FF888F0899999999CCCC8807777777778888FF0889988C99CCC
          8880FF77FF877888FFF0889998C998888880FF777F877FFFFFF0888998C99CCC
          C880FFF77F8778888FF0888999C99CCCC880FFF7778778888FF0888899899888
          8880FFFF77F77FFFFFF08888998998888880FFFF77F77FFFFFF0888889999888
          0000FFFFF7777FFF00008888899998880F0FFFFFF7777FFF0F0F888888888888
          00FFFFFFFFFFFFFF00FF0000000000000FFF0000000000000FFF}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SortButtonClick
      end
    end
    object DBGrid: TDBGridEh
      Left = 1
      Top = 27
      Width = 732
      Height = 371
      Align = alClient
      AutoFitColWidths = True
      DataSource = DataSource
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGridDblClick
      OnKeyDown = DBGridKeyDown
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'DESCRIPTION'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088' '#1091#1095#1072#1089#1090#1082#1072
          Width = 176
        end
        item
          EditButtons = <>
          FieldName = 'EI'
          Footers = <>
          Title.Caption = #1060#1048#1054
          Width = 154
        end>
    end
  end
  object DataSource: TDataSource
    DataSet = DataSet
    OnDataChange = DataSourceDataChange
    Left = 352
    Top = 176
  end
  object ActionList1: TActionList
    Left = 24
    Top = 40
    object SelRec: TAction
      Checked = True
      ImageIndex = 1
      OnExecute = SelRecExecute
    end
    object EditRec: TAction
      ImageIndex = 1
      OnExecute = EditRecExecute
    end
    object Cancel: TAction
      Caption = 'Cancel'
      OnExecute = CancelButtonClick
    end
  end
  object ImageList2: TImageList
    Left = 56
    Top = 40
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000084000000840000008400000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000084000000840000008400000084
      0000008400000084000000840000000000000000000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000000000000000000000000000C6C6C60000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000000000000000000000000000CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000084000000840000008400000084
      0000008400000084000000840000000000000000000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000000000000840000C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000000000000840000C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C60000840000C6C6
      C600008400000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE000000000000840000C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600008400000084
      0000C6C6C6000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949CAD00949CAD00949CAD00949C
      AD00949CAD00949CAD00949CAD00949CAD000000000000840000C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600008400000084
      000000840000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000840000C6C6C60000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6DE00949CAD00949CAD00949C
      AD00949CAD00949CAD00949CAD00949CAD000000000000840000C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600C6C6C6000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000840000C6C6C60000840000C6C6C6000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000840000C6C6C600C6C6
      C600008400000084000000840000008400000084000000840000008400000084
      00000084000000000000000000000000000000840000C6C6C600C6C6C600C6C6
      C600008400000084000000840000008400000084000000840000008400000084
      000000840000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000840000C6C6C600008400000084000000840000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000840000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000084
      00000084000000000000000000000000000000840000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000840000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000840000C6C6C600C6C6C600C6C6C6000084000000840000008400000084
      0000008400000084000000840000008400000084000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008400000084000000840000008400000084000000840000008400000084
      00000084000000840000008400000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      0000008400000084000000000000000000000000000000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000840000008400000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      0000008400000084000000840000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949CAD00949CAD00949CAD00949C
      AD00949CAD00949CAD00949CAD00949CAD00424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C003800300000000
      C003800300000000800300030000000080030003000000008003000300000000
      8003000000000000800300000000000080030000000000008003000300000000
      80030003000000008003000310002010800700074449335387FF07FFEC006F20
      8FFF0FFF00000000FFFFFFFFB072670300000000000000000000000000000000
      000000000000}
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'Memo1.Height'
      'SmrtPanel1.Width')
    StoredValues = <>
    Left = 88
    Top = 40
  end
  object TempQuery: TpFIBQuery
    Transaction = WriteTransaction
    Left = 432
    Top = 176
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object WriteTransaction: TpFIBTransaction
    TimeoutAction = TARollback
    Left = 504
    Top = 80
  end
  object StoredProc: TpFIBStoredProc
    Transaction = WriteTransaction
    SQL.Strings = (
      'EXECUTE PROCEDURE CONTRACTOR_ADD (?FILE_ID)')
    Left = 424
    Top = 80
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object ReadTransaction: TpFIBTransaction
    TimeoutAction = TARollback
    Left = 336
    Top = 80
  end
  object SQuery: TpFIBDataSet
    Transaction = ReadTransaction
    AutoCommit = True
    Left = 272
    Top = 80
    poSQLINT64ToBCD = True
  end
  object DataSet: TpFIBDataSet
    CachedUpdates = True
    UpdateRecordTypes = [cusUnmodified, cusModified, cusInserted, cusDeleted, cusDeletedApplied]
    UpdateSQL.Strings = (
      'UPDATE NOMENCLATURE'
      'SET '
      '    EI = :EI,'
      '    CODP = :CODP'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    FILE_ID,'
      '    REC_TYPE,'
      '    DESCRIPTION,'
      '    EI,'
      '    CODP,'
      '    INDEXOPS'
      'FROM'
      '    NOMENCLATURE ')
    Transaction = RT
    Database = SaleBookDM.DataBase
    AutoCommit = True
    RefreshTransactionKind = tkUpdateTransaction
    Left = 304
    Top = 168
    object DataSetID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DataSetFILE_ID: TFIBIntegerField
      FieldName = 'FILE_ID'
    end
    object DataSetREC_TYPE: TFIBSmallIntField
      FieldName = 'REC_TYPE'
    end
    object DataSetDESCRIPTION: TFIBStringField
      FieldName = 'DESCRIPTION'
      Size = 120
      EmptyStrToNull = True
    end
    object DataSetEI: TFIBStringField
      FieldName = 'EI'
      Size = 50
      EmptyStrToNull = True
    end
    object DataSetCODP: TFIBIntegerField
      FieldName = 'CODP'
    end
    object DataSetINDEXOPS: TFIBIntegerField
      FieldName = 'INDEXOPS'
    end
  end
  object RT: TpFIBTransaction
    Active = True
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 264
    Top = 168
  end
  object TempQuery1: TpFIBQuery
    Transaction = WriteTransaction
    Left = 520
    Top = 216
    qoAutoCommit = True
    qoStartTransaction = True
  end
end
