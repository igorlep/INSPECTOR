object AccountsJournalForm: TAccountsJournalForm
  Left = 383
  Top = 254
  Width = 1334
  Height = 615
  Caption = #1046#1091#1088#1085#1072#1083' '#1079#1072#1076#1072#1085#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000222222222222222222FFFFFFFFFFFFF22AFA
    AAFAAAFAAAF222FFFFFFFFFFFFF22AFAAAFAAAFAAAF222FFFFFFFFFFFFF22AFA
    AAFAAAFAAAF222FFFFFFFFFFFFF22AFAAAFAAAFAAAF222FFFFFFFFFFFFF22222
    222222222222222FFF2FFF2FFF2222222222222222220000000000000000FFFF
    0000FFFF00000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000FFFF0000}
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 424
    Width = 1316
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object SmrtPanel1: TSmrtPanel
    Left = 0
    Top = 0
    Width = 1316
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1316
      30)
    object EditButton: TSpeedButton
      Left = 24
      Top = 8
      Width = 20
      Height = 18
      Hint = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099'/'#1085#1077#1086#1087#1083#1072#1090#1099
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
      OnClick = EditButtonClick
    end
    object AddButton: TSpeedButton
      Left = 8
      Top = 6
      Width = 16
      Height = 20
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFCFFFFFF
        FFFFFFFFF7FFFFFFFFFFFCCCCCCFFFFFFFFFF777777FFFFFFFFFCCCCCCCCCF99
        9999777777777F777777CCCCCCCCCF999999777777777F777777CCCCCCCFFFFF
        FFFF7777777FFFFFFFFFCCCFFCF777777777777FF7F777777777CCCF7F777777
        7777777F7F7777777777CCCFFFFFFFFFFFFF777FFFFFFFFFFFFFCCC777777777
        77777777777777777777FFF7777777777777FFF7777777777777FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7777777777777FFF7777777777777FFF777777777
        7777FFF7777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777777
        7777FFF7777777777777FFF7777777777777FFF7777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = AddButtonClick
    end
    object DelButton: TSpeedButton
      Left = 44
      Top = 6
      Width = 20
      Height = 20
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
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
      OnClick = DelButtonClick
    end
    object FirstButton: TSpeedButton
      Left = 945
      Top = 6
      Width = 20
      Height = 20
      Hint = #1055#1077#1088#1074#1072#1103#0#1079#1072#1087#1080#1089#1100
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFF444444444CFFFFFF8888888887FFFFFFF4444444C
        FFFFFFFF88888887FFFFFFFFF44444CFFFFFFFFFF888887FFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFFF4CFFFFFFFFFFFFFF87FFFFFFFFF4444444444
        CFFFFF88888888887FFFFF4444444444CFFFFF88888888887FFFFFFCCCCCCCCC
        CFFFFFF7777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = FirstButtonClick
    end
    object LastButton: TSpeedButton
      Left = 1017
      Top = 6
      Width = 20
      Height = 20
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCCCCCCCCCCFFFFFF7777777777FFFFF4444444444
        CFFFFF88888888887FFFFF4444444444CFFFFF88888888887FFFFFFFFFF4CFFF
        FFFFFFFFFFF87FFFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFF44444CF
        FFFFFFFFF888887FFFFFFFFF4444444CFFFFFFFF88888887FFFFFFF444444444
        CFFFFFF8888888887FFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = LastButtonClick
    end
    object PriorButton: TSpeedButton
      Left = 969
      Top = 6
      Width = 20
      Height = 20
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFF444444444CFFFFFF8888888887FFFFFFF4444444C
        FFFFFFFF88888887FFFFFFFFF44444CFFFFFFFFFF888887FFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFFF4CFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = PriorButtonClick
    end
    object NextButton: TSpeedButton
      Left = 993
      Top = 6
      Width = 20
      Height = 20
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CFFF
        FFFFFFFFFFF87FFFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFF44444CF
        FFFFFFFFF888887FFFFFFFFF4444444CFFFFFFFF88888887FFFFFFF444444444
        CFFFFFF8888888887FFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFF444CFFFFFFFFFFFF8887FFFFFFFFFFFF444CFF
        FFFFFFFFFF8887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = NextButtonClick
    end
    object UpDateButton: TSpeedButton
      Left = 1041
      Top = 6
      Width = 20
      Height = 20
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFFFFFFFFF
        FFFFFC44FFFFCCCCCCFFFC44FFFFC444444FC44FFFFFFC44444FC44FFFFFFFC4
        444FC44FFFFFFC44444FFC44FFFC444FF44FFC44444444FFFF4FFFFC4444FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = UpDateButtonClick
    end
    object PrintButton: TSpeedButton
      Left = 224
      Top = 6
      Width = 20
      Height = 20
      Hint = #1055#1077#1095#1072#1090#1072#1090#1100
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00E00EEEEEEEEE
        E00E0000000000000000088888888888888000000000000000000F7F7F7F7F7F
        7F7007F7F7F7F2F2F9F00F7F7F7F7F7F7F700000000000000000E080FFFFFFFF
        080EE070F0000F07070EE080FFFFFF78080EE070F00F0000070EE080FFFF0F70
        780EEE00F077070000EEEEE0FF7800EEEEEEEEE000000EEEEEEE}
      ParentShowHint = False
      ShowHint = True
      OnClick = PrintButtonClick
    end
    object ExitButton: TSpeedButton
      Left = 1299
      Top = 6
      Width = 20
      Height = 20
      Hint = #1042#1099#1093#1086#1076
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
      OnClick = ExitButtonClick
    end
    object increaseButton: TSpeedButton
      Left = 278
      Top = 6
      Width = 20
      Height = 20
      Hint = #1059#1074#1077#1083#1080#1095#1080#1090#1100
      Flat = True
      Glyph.Data = {
        9E050000424D9E05000000000000360400002800000012000000120000000100
        0800000000006801000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFF608FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FF08A4A507FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF086F66A507FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFF6B76F66A507FFFFFFFFFFFFFFFFFFFFFF0000FFFF
        F6B76F66A507FFFFFFFFFFFFFFFFFFFF0000FFFFFFF6B76F66A5080909ED0909
        F6FFFFFF0000FFFFFFFFF6B76FF7EDED090909090909FFFF0000FFFFFFFFFFF6
        08ED0909FFFFFFFF0809F6FF0000FFFFFFFFFFFF09ED090909FCFFFFFF0909FF
        0000FFFFFFFFFFFF0909090909FC0909FF09EDFF0000FFFFFFFFFFFFED0909FC
        FCFCFCFCFFFFEDFF0000FFFFFFFFFFFF0909090909FC0909FF09EDFF0000FFFF
        FFFFFFFF0909FFF609FCFF09FF0909FF0000FFFFFFFFFFFFF6EDF6FF09090909
        09EDF6FF0000FFFFFFFFFFFFFF09ED0909090909ED09FFFF0000FFFFFFFFFFFF
        FFFFF609EDEDED0909FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = increaseButtonClick
    end
    object reduceButton: TSpeedButton
      Left = 300
      Top = 6
      Width = 20
      Height = 20
      Hint = #1059#1084#1077#1085#1100#1096#1080#1090#1100
      Flat = True
      Glyph.Data = {
        9E050000424D9E05000000000000360400002800000012000000120000000100
        0800000000006801000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFF608FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FF08A4A507FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF086F66A507FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFF6B76F66A507FFFFFFFFFFFFFFFFFFFFFF0000FFFF
        F6B76F66A507FFFFFFFFFFFFFFFFFFFF0000FFFFFFF6B76F66A5080909ED0909
        F6FFFFFF0000FFFFFFFFF6B76FF7EDED090909090909FFFF0000FFFFFFFFFFF6
        08ED0909FFFFFFFF0809F6FF0000FFFFFFFFFFFF09ED0909FFFFFFFFFF0909FF
        0000FFFFFFFFFFFF0909090909090909FF09EDFF0000FFFFFFFFFFFFED0909FC
        FCFCFCFCFFFFEDFF0000FFFFFFFFFFFF0909090909090909FF09EDFF0000FFFF
        FFFFFFFF0909FFF60909FFFFFF0909FF0000FFFFFFFFFFFFF6EDF6FF09090909
        09EDF6FF0000FFFFFFFFFFFFFF09ED0909090909ED09FFFF0000FFFFFFFFFFFF
        FFFFF609EDEDED0909FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = reduceButtonClick
    end
    object Label18: TLabel
      Left = 528
      Top = 2
      Width = 121
      Height = 41
      Alignment = taCenter
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1055#1086#1080#1089#1082' '#1076#1077#1083#1072' '#1087#1086' '#1053#1086#1084#1077#1088#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object SelectPer: TSpeedButton
      Left = 72
      Top = 6
      Width = 18
      Height = 20
      Hint = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
        00FFF0FFFFF2FFFFF0FFFFFFFF222FFFFFFFFFFFF22222FFFFFFFFFF2222222F
        FFFFFFFFFF222FFFFFFFFFFFFF222FFFFFFFFFFFFF222FFFFFFFFFFFFF222FFF
        FFFFFFFFFF222FFFFFFFFFFFFF222FFFFFFFFFFF2222222FFFFFFFFFF22222FF
        FFFFFFFFFF222FFFFFFFF0FFFFF2FFFFF0FFF0000000000000FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SelectPerClick
    end
    object Month: TComboBox
      Left = 827
      Top = 5
      Width = 87
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Anchors = [akTop, akRight]
      Ctl3D = False
      DropDownCount = 12
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 8
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = #1089#1077#1085#1090#1103#1073#1088#1100
      OnChange = MonthChange
      Items.Strings = (
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
    end
    object Year: TRxSpinEdit
      Left = 759
      Top = 6
      Width = 64
      Height = 19
      ButtonKind = bkStandard
      EditorEnabled = False
      MaxValue = 2030
      MinValue = 2004
      Value = 2004
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = YearChange
    end
    object MonthUpDown: TUpDown
      Left = 917
      Top = 5
      Width = 18
      Height = 21
      Anchors = [akTop, akRight]
      Min = 0
      Max = 13
      Position = 1
      TabOrder = 0
      Visible = False
      Wrap = False
      OnClick = MonthUpDownClick
    end
    object Edit1: TEdit
      Left = 650
      Top = 6
      Width = 100
      Height = 19
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1089#1095#1077#1090#1072
      Anchors = [akTop, akRight]
      Constraints.MaxWidth = 100
      Constraints.MinWidth = 60
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 96
      Top = 8
      Width = 113
      Height = 17
      Caption = #1042#1082#1083'. '#1087#1088#1086#1074#1077#1088#1082#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = CheckBox1Click
    end
  end
  object SmrtPanel2: TSmrtPanel
    Left = 0
    Top = 427
    Width = 1316
    Height = 143
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object SoldGoodsGrid: TDBGridEh
      Left = 0
      Top = 0
      Width = 1316
      Height = 143
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = GoodsSource
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FooterColor = clMoneyGreen
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghRowHighlight]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      RowSizingAllowed = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = SoldGoodsGridGetCellParams
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'LCHET1'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0'
          Footer.FieldName = 'LCHET1'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.ValueType = fvtCount
          Footers = <>
          MaxWidth = 70
          MinWidth = 45
          Title.Caption = #8470' '#1076#1077#1083#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'SUMMA'
          Footer.Alignment = taCenter
          Footer.FieldName = 'SUMMA'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = [fsBold]
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 70
          MinWidth = 45
          Title.Caption = #1057#1091#1084#1084#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'WORD'
          Footers = <>
          MaxWidth = 105
          MinWidth = 80
          Title.Caption = #1044#1072#1090#1072' '#1076#1086#1083#1075#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
        end
        item
          EditButtons = <>
          FieldName = 'FAMILY'
          Footers = <>
          MaxWidth = 160
          MinWidth = 124
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 154
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          MaxWidth = 160
          MinWidth = 124
          Title.Caption = #1048#1084#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 147
        end
        item
          EditButtons = <>
          FieldName = 'FATHER'
          Footers = <>
          MaxWidth = 160
          MinWidth = 124
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 147
        end
        item
          EditButtons = <>
          FieldName = 'METKA1'
          Footers = <>
          MaxWidth = 60
          MinWidth = 30
          Title.Caption = #1054'/'#1057
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'PRICH'
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1055#1088#1080#1095#1080#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'FAKT_DAT'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end>
    end
  end
  object SmrtPanel3: TSmrtPanel
    Left = 0
    Top = 30
    Width = 1316
    Height = 394
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object AccountsGrid: TDBGridEh
      Left = 0
      Top = 49
      Width = 1316
      Height = 345
      Align = alClient
      AutoFitColWidths = True
      Ctl3D = False
      DataSource = AccountsS
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FooterColor = clMoneyGreen
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = [fsBold]
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PopupMenu = Menu
      ShowHint = True
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Visible = False
      OnDblClick = AccountsGridDblClick
      OnTitleBtnClick = AccountsGridTitleBtnClick
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'COUNT_DATE'
          Footer.Alignment = taCenter
          Footers = <>
          MaxWidth = 70
          MinWidth = 45
          Title.Caption = #1044#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 70
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'COUNT_NUMBER'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0'
          Footer.FieldName = 'COUNT_NUMBER'
          Footer.ValueType = fvtCount
          Footers = <>
          MaxWidth = 70
          MinWidth = 45
          Title.Caption = #1053#1086#1084#1077#1088' '#1079#1072#1076#1072#1085#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Title.TitleButton = True
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'CUSTOMER_NAME'
          Footers = <>
          MaxWidth = 180
          MinWidth = 150
          Title.Caption = #1060#1048#1054' '#1087#1086#1095#1090#1072#1083#1100#1086#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
          Width = 180
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0'
          EditButtons = <>
          FieldName = 'COUNT_TOTALI'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0'
          Footer.FieldName = 'COUNT_TOTALI'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' ('#1096#1090'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_TOTAL'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_TOTAL'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0'
          EditButtons = <>
          FieldName = 'COUNT_OPLI'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0'
          Footer.FieldName = 'COUNT_OPLI'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1086#1087#1083' ('#1096#1090'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_OPL'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_OPL'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1086#1087#1083' ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0'
          EditButtons = <>
          FieldName = 'COUNT_NEOPLI'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0'
          Footer.FieldName = 'COUNT_NEOPLI'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1085#1077#1086#1087#1083' ('#1096#1090'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_NEOPL'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_NEOPL'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1085#1077#1086#1087#1083' ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_TEK'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_TEK'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1090#1077#1082' ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_PR'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_PR'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1087#1088#1086#1096#1083#1086#1077' ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_RAZ'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_RAZ'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1088#1072#1079#1076#1077#1083' 1 ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_NEOPLP'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_NEOPLP'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1085#1077#1086#1087#1083' '#1087#1088#1086#1096#1083#1086#1077' + '#1088'1 ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          DisplayFormat = '#0.00'
          EditButtons = <>
          FieldName = 'COUNT_OPLP'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '#0.00'
          Footer.FieldName = 'COUNT_OPLP'
          Footer.ValueType = fvtSum
          Footers = <>
          MaxWidth = 80
          MinWidth = 40
          Title.Caption = #1042#1089#1077#1075#1086' '#1086#1087#1083' '#1087#1088#1086#1096#1083#1086#1077' + '#1088'1 ('#1088#1091#1073'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          EditButtons = <>
          FieldName = 'AVTOR'
          Footers = <>
          MaxWidth = 180
          MinWidth = 150
          Title.Caption = #1040#1074#1090#1086#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
        end>
    end
    object MainHeader: TJvNavPanelHeader
      Left = 0
      Top = 0
      Width = 1316
      Height = 49
      Align = alTop
      Alignment = taCenter
      Caption = 'MainHeader'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ColorFrom = clMoneyGreen
      ColorTo = 16776176
      ImageIndex = 0
    end
  end
  object FormStorage1: TFormStorage
    IniSection = 'AccountsJournalForm'
    StoredValues = <>
    Left = 648
    Top = 80
  end
  object GoodsSource: TDataSource
    DataSet = SG_DS
    Left = 224
    Top = 496
  end
  object Menu: TPopupMenu
    Left = 648
    Top = 136
    object AddItem: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFCFFFFFF
        FFFFFCCCCCCFFFFFFFFFCCCCCCCCCF999999CCCCCCCCCF999999CCCCCCCFFFFF
        FFFFCCCFFCF777777777CCCF7F7777777777CCCFFFFFFFFFFFFFCCC777777777
        7777FFF7777777777777FFFFFFFFFFFFFFFFFFF7777777777777FFF777777777
        7777FFFFFFFFFFFFFFFFFFF7777777777777FFF7777777777777}
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1103
      OnClick = AddItemClick
    end
    object EditItem: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
        00008CCCCCCCCCCCCCC08CFFFFFFFFFFFFC08C0F000F000F00C08CFFFFFFFFFF
        FFC08C0F000F000F00C08CFFFFFFFFFFFFC08C0F000F000F00C08CFFFFFFFFFF
        FFC08C000000000000C08CF0FFF0FFF0FFC08C000000000000C08CFFFFFFFFFF
        FFC08CFFF00F0000FFC08CFFFFFFFFFFFFC08CCCCCCCCCCCCCC7}
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103
      OnClick = EditItemClick
    end
    object DelItem: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF777777777
        7777FFF7777777777777FFFFFFFFFFFFFFFFFFF7777777777777999777999777
        7777F999F999FFFFFFFFFF99999FFFFFFFFFFFF999CCCCCCCCCCFF99999CCCCC
        CCCCF999F999FFFFFFFF999FFF999FFFFFFFFFF7777777777777FFF777777777
        7777FFFFFFFFFFFFFFFFFFF7777777777777FFF7777777777777}
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1103
      OnClick = DelItemClick
    end
    object PrintItem: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00E00EEEEEEEEE
        E00E0000000000000000088888888888888000000000000000000F7F7F7F7F7F
        7F7007F7F7F7F2F2F9F00F7F7F7F7F7F7F700000000000000000E080FFFFFFFF
        080EE070F0000F07070EE080FFFFFF78080EE070F00F0000070EE080FFFF0F70
        780EEE00F077070000EEEEE0FF7800EEEEEEEEE000000EEEEEEE}
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100
      OnClick = PrintButtonClick
    end
  end
  object A_DS: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'select t1.*, t4.LOGIN as Avtor from ACCOUNTS t1 '
      'left outer join USERS t4 on t1.USER_ID=t4.ID'
      '')
    Transaction = ATransaction
    Database = SaleBookDM.DataBase
    AutoCommit = True
    Left = 40
    Top = 88
    poSQLINT64ToBCD = True
    object A_DSORG_ID: TFIBSmallIntField
      FieldName = 'ORG_ID'
    end
    object A_DSCOUNT_DATE: TFIBDateField
      FieldName = 'COUNT_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object A_DSCOUNT_NUMBER: TFIBSmallIntField
      FieldName = 'COUNT_NUMBER'
    end
    object A_DSCUSTOMER_ID: TFIBIntegerField
      FieldName = 'CUSTOMER_ID'
    end
    object A_DSCUSTOMER_NAME: TFIBStringField
      FieldName = 'CUSTOMER_NAME'
      Size = 120
      EmptyStrToNull = True
    end
    object A_DSUSER_ID: TFIBSmallIntField
      FieldName = 'USER_ID'
    end
    object A_DSRS_ID: TFIBSmallIntField
      FieldName = 'RS_ID'
    end
    object A_DSCOUNT_TOTAL: TFIBFloatField
      FieldName = 'COUNT_TOTAL'
    end
    object A_DSEDIT_KEY: TFIBBooleanField
      DefaultExpression = '1'
      FieldName = 'EDIT_KEY'
    end
    object A_DSCOUNT_TYPE: TFIBSmallIntField
      FieldName = 'COUNT_TYPE'
    end
    object A_DSCOUNT_OPL: TFIBFloatField
      FieldName = 'COUNT_OPL'
    end
    object A_DSCOUNT_NEOPL: TFIBFloatField
      FieldName = 'COUNT_NEOPL'
    end
    object A_DSCOUNT_TOTALI: TFIBIntegerField
      FieldName = 'COUNT_TOTALI'
    end
    object A_DSCOUNT_OPLI: TFIBIntegerField
      FieldName = 'COUNT_OPLI'
    end
    object A_DSCOUNT_NEOPLI: TFIBIntegerField
      FieldName = 'COUNT_NEOPLI'
    end
    object A_DSCOUNT_TEK: TFIBFloatField
      FieldName = 'COUNT_TEK'
    end
    object A_DSCOUNT_PR: TFIBFloatField
      FieldName = 'COUNT_PR'
    end
    object A_DSCOUNT_RAZ: TFIBFloatField
      FieldName = 'COUNT_RAZ'
    end
    object A_DSCOUNT_NEOPLP: TFIBFloatField
      FieldName = 'COUNT_NEOPLP'
    end
    object A_DSCOUNT_OPLP: TFIBFloatField
      FieldName = 'COUNT_OPLP'
    end
    object A_DSM: TFIBIntegerField
      FieldName = 'M'
    end
    object A_DSY: TFIBIntegerField
      FieldName = 'Y'
    end
    object A_DSAVTOR: TFIBStringField
      FieldName = 'AVTOR'
      EmptyStrToNull = True
    end
  end
  object SG_DS: TpFIBDataSet
    CachedUpdates = True
    UpdateSQL.Strings = (
      'UPDATE SGB'
      'SET '
      '    ORG_ID = :ORG_ID,'
      '    COUNT_DATE = :COUNT_DATE,'
      '    COUNT_NUMBER = :COUNT_NUMBER,'
      '    LCHET1 = :LCHET1,'
      '    SUMMA = :SUMMA,'
      '    WORD = :WORD,'
      '    METKA = :METKA,'
      '    NEOPL = :NEOPL,'
      '    PNN = :PNN,'
      '    LCHET = :LCHET,'
      '    FAMILY = :FAMILY,'
      '    NAME = :NAME,'
      '    FATHER = :FATHER,'
      '    KOD = :KOD,'
      '    C = :C,'
      '    DOC = :DOC,'
      '    SERIA = :SERIA,'
      '    NOMER = :NOMER,'
      '    DOST = :DOST,'
      '    D_VIPL = :D_VIPL,'
      '    ULIC = :ULIC,'
      '    ADRES = :ADRES,'
      '    CHEL = :CHEL,'
      '    METKA1 = :METKA1,'
      '    VNOM = :VNOM,'
      '    PRICH = :PRICH,'
      '    IST = :IST,'
      '    BSUMMA = :BSUMMA,'
      '    BWORD = :BWORD,'
      '    FAKT_CHEL = :FAKT_CHEL,'
      '    FAKT_DAT = :FAKT_DAT,'
      '    NSP = :NSP,'
      '    KEM_VID = :KEM_VID,'
      '    DATA_VID = :DATA_VID'
      'WHERE'
      '    ORG_ID = :OLD_ORG_ID'
      '    and COUNT_DATE = :OLD_COUNT_DATE'
      '    and COUNT_NUMBER = :OLD_COUNT_NUMBER'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SGB'
      'WHERE'
      '        ORG_ID = :OLD_ORG_ID'
      '    and COUNT_DATE = :OLD_COUNT_DATE'
      '    and COUNT_NUMBER = :OLD_COUNT_NUMBER'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SGB('
      '    ORG_ID,'
      '    COUNT_DATE,'
      '    COUNT_NUMBER,'
      '    LCHET1,'
      '    SUMMA,'
      '    WORD,'
      '    METKA,'
      '    NEOPL,'
      '    PNN,'
      '    LCHET,'
      '    FAMILY,'
      '    NAME,'
      '    FATHER,'
      '    KOD,'
      '    C,'
      '    DOC,'
      '    SERIA,'
      '    NOMER,'
      '    DOST,'
      '    D_VIPL,'
      '    ULIC,'
      '    ADRES,'
      '    CHEL,'
      '    METKA1,'
      '    VNOM,'
      '    PRICH,'
      '    IST,'
      '    BSUMMA,'
      '    BWORD,'
      '    FAKT_CHEL,'
      '    FAKT_DAT,'
      '    NSP,'
      '    KEM_VID,'
      '    DATA_VID'
      ')'
      'VALUES('
      '    :ORG_ID,'
      '    :COUNT_DATE,'
      '    :COUNT_NUMBER,'
      '    :LCHET1,'
      '    :SUMMA,'
      '    :WORD,'
      '    :METKA,'
      '    :NEOPL,'
      '    :PNN,'
      '    :LCHET,'
      '    :FAMILY,'
      '    :NAME,'
      '    :FATHER,'
      '    :KOD,'
      '    :C,'
      '    :DOC,'
      '    :SERIA,'
      '    :NOMER,'
      '    :DOST,'
      '    :D_VIPL,'
      '    :ULIC,'
      '    :ADRES,'
      '    :CHEL,'
      '    :METKA1,'
      '    :VNOM,'
      '    :PRICH,'
      '    :IST,'
      '    :BSUMMA,'
      '    :BWORD,'
      '    :FAKT_CHEL,'
      '    :FAKT_DAT,'
      '    :NSP,'
      '    :KEM_VID,'
      '    :DATA_VID'
      ')')
    RefreshSQL.Strings = (
      'select * from sgb'
      ''
      ' WHERE '
      '        SGB.ORG_ID = :OLD_ORG_ID'
      '    and SGB.COUNT_DATE = :OLD_COUNT_DATE'
      '    and SGB.COUNT_NUMBER = :OLD_COUNT_NUMBER'
      '    ')
    SelectSQL.Strings = (
      'select * from sgb')
    Transaction = SGTransaction
    Database = SaleBookDM.DataBase
    AutoCommit = True
    DataSource = AccountsS
    Left = 48
    Top = 496
    poSQLINT64ToBCD = True
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
    object SG_DSORG_ID: TFIBSmallIntField
      FieldName = 'ORG_ID'
    end
    object SG_DSCOUNT_DATE: TFIBDateField
      FieldName = 'COUNT_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object SG_DSCOUNT_NUMBER: TFIBSmallIntField
      FieldName = 'COUNT_NUMBER'
    end
    object SG_DSLCHET1: TFIBStringField
      FieldName = 'LCHET1'
      Size = 10
      EmptyStrToNull = True
    end
    object SG_DSSUMMA: TFIBFloatField
      FieldName = 'SUMMA'
    end
    object SG_DSWORD: TFIBStringField
      FieldName = 'WORD'
      EmptyStrToNull = True
    end
    object SG_DSMETKA: TFIBIntegerField
      FieldName = 'METKA'
    end
    object SG_DSNEOPL: TFIBIntegerField
      FieldName = 'NEOPL'
    end
    object SG_DSPNN: TFIBIntegerField
      FieldName = 'PNN'
    end
    object SG_DSLCHET: TFIBIntegerField
      FieldName = 'LCHET'
    end
    object SG_DSFAMILY: TFIBStringField
      FieldName = 'FAMILY'
      EmptyStrToNull = True
    end
    object SG_DSNAME: TFIBStringField
      FieldName = 'NAME'
      EmptyStrToNull = True
    end
    object SG_DSFATHER: TFIBStringField
      FieldName = 'FATHER'
      EmptyStrToNull = True
    end
    object SG_DSKOD: TFIBIntegerField
      FieldName = 'KOD'
    end
    object SG_DSC: TFIBDateField
      FieldName = 'C'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object SG_DSDOC: TFIBDateField
      FieldName = 'DOC'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object SG_DSSERIA: TFIBStringField
      FieldName = 'SERIA'
      Size = 8
      EmptyStrToNull = True
    end
    object SG_DSNOMER: TFIBIntegerField
      FieldName = 'NOMER'
    end
    object SG_DSDOST: TFIBIntegerField
      FieldName = 'DOST'
    end
    object SG_DSD_VIPL: TFIBIntegerField
      FieldName = 'D_VIPL'
    end
    object SG_DSULIC: TFIBStringField
      FieldName = 'ULIC'
      EmptyStrToNull = True
    end
    object SG_DSADRES: TFIBStringField
      FieldName = 'ADRES'
      Size = 14
      EmptyStrToNull = True
    end
    object SG_DSCHEL: TFIBIntegerField
      FieldName = 'CHEL'
    end
    object SG_DSMETKA1: TFIBIntegerField
      FieldName = 'METKA1'
    end
    object SG_DSVNOM: TFIBIntegerField
      FieldName = 'VNOM'
    end
    object SG_DSPRICH: TFIBStringField
      FieldName = 'PRICH'
      Size = 6
      EmptyStrToNull = True
    end
    object SG_DSIST: TFIBIntegerField
      FieldName = 'IST'
    end
    object SG_DSBSUMMA: TFIBIntegerField
      FieldName = 'BSUMMA'
    end
    object SG_DSBWORD: TFIBStringField
      FieldName = 'BWORD'
      Size = 11
      EmptyStrToNull = True
    end
    object SG_DSFAKT_CHEL: TFIBIntegerField
      FieldName = 'FAKT_CHEL'
    end
    object SG_DSFAKT_DAT: TFIBIntegerField
      FieldName = 'FAKT_DAT'
    end
    object SG_DSNSP: TFIBIntegerField
      FieldName = 'NSP'
    end
    object SG_DSKEM_VID: TFIBStringField
      FieldName = 'KEM_VID'
      Size = 40
      EmptyStrToNull = True
    end
    object SG_DSDATA_VID: TFIBDateField
      FieldName = 'DATA_VID'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object SG_DSM: TFIBIntegerField
      FieldName = 'M'
    end
    object SG_DSY: TFIBIntegerField
      FieldName = 'Y'
    end
    object SG_DSKODPEN: TFIBIntegerField
      FieldName = 'KODPEN'
    end
    object SG_DSFOND: TFIBIntegerField
      FieldName = 'FOND'
    end
    object SG_DSKASSA: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'KASSA'
    end
  end
  object AccountsS: TDataSource
    DataSet = A_DS
    OnDataChange = AccountsSDataChange
    Left = 288
    Top = 488
  end
  object WQ: TpFIBQuery
    Transaction = WriteTransaction
    Database = SaleBookDM.DataBase
    Left = 200
    Top = 152
  end
  object WriteTransaction: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 72
    Top = 160
  end
  object ImageList: TImageList
    Left = 304
    Top = 88
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
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00808080008080800080808000808080008080800080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00808080008080800080808000808080008080800080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0080808000808080008080800080808000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000FF000000FF000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00808080008080800080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000FFFFFF000000FF000000FF000000FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
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
      F007F00700000000E007E00700000000E007E00700000000E007E00700000000
      E007E00700000000E007E00700000000E007E00700000000E007E00700000000
      E007E00700000000E007E00700000000E007E00700000000E007E00700000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ATransaction: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 72
    Top = 216
  end
  object SGTransaction: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 128
    Top = 488
  end
  object searchTimer: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = searchTimerTimer
    Left = 400
    Top = 144
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 504
    Top = 128
  end
  object DB1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE '
      'SET '
      'WHERE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    '
      'WHERE'
      '        ')
    InsertSQL.Strings = (
      'INSERT INTO ('
      ')'
      'VALUES('
      ')')
    Transaction = ReadTransaction
    Database = SaleBookDM.DataBase
    AutoCommit = True
    Left = 48
    Top = 48
  end
  object ReadTransaction: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 144
    Top = 80
  end
  object TempQ: TpFIBQuery
    Transaction = QT
    Database = SaleBookDM.DataBase
    Left = 216
    Top = 80
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object QT: TpFIBTransaction
    DefaultDatabase = SaleBookDM.DataBase
    TimeoutAction = TARollback
    Left = 448
    Top = 160
  end
  object TQ: TpFIBQuery
    Transaction = QT
    Database = SaleBookDM.DataBase
    Left = 184
    Top = 32
  end
end
