object AdjustConnectionForm: TAdjustConnectionForm
  Left = 716
  Top = 129
  Width = 586
  Height = 451
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 372
    Width = 570
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      570
      41)
    object ConnectButton: TBitBtn
      Left = 312
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = ConnectButtonClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880330000008803088033000000880308803300000088
        0308803300000000030880333333333333088033000000003308803088888888
        0308803088888888030880308888888803088030888888880308803088888888
        0008803088888888080880000000000000088888888888888888}
    end
    object CancelButton: TBitBtn
      Left = 452
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 68
    Align = alTop
    TabOrder = 1
    DesignSize = (
      570
      68)
    object Label5: TLabel
      Left = 24
      Top = 12
      Width = 536
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = #1055#1089#1077#1074#1076#1086#1085#1080#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 24
      Top = 28
      Width = 528
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object SmrtPanel2: TSmrtPanel
    Left = 0
    Top = 68
    Width = 570
    Height = 235
    Align = alClient
    TabOrder = 2
    DesignSize = (
      570
      235)
    object Label1: TLabel
      Tag = 12
      Left = 24
      Top = 16
      Width = 169
      Height = 16
      AutoSize = False
      Caption = #1057#1077#1088#1074#1077#1088':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Tag = 12
      Left = 24
      Top = 64
      Width = 233
      Height = 16
      AutoSize = False
      Caption = #1089#1077#1090#1077#1074#1086#1077' '#1080#1084#1103' '#1080#1083#1080' IP '#1072#1076#1088#1077#1089
    end
    object Label4: TLabel
      Tag = 12
      Left = 280
      Top = 64
      Width = 121
      Height = 16
      AutoSize = False
      Caption = #1087#1088#1086#1090#1086#1082#1086#1083
    end
    object Label6: TLabel
      Left = 18
      Top = 117
      Width = 388
      Height = 24
      AutoSize = False
      Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1089' '#1087#1088#1072#1074#1072#1084#1080' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072' '#1041#1044
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 17
      Top = 169
      Width = 331
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = #1055#1072#1088#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1089' '#1087#1088#1072#1074#1072#1084#1080' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072' '#1041#1044
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioButton1: TRadioButton
      Tag = 12
      Left = 24
      Top = 40
      Width = 209
      Height = 17
      Caption = #1083#1086#1082#1072#1083#1100#1085#1099#1081
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Tag = 12
      Left = 256
      Top = 40
      Width = 153
      Height = 17
      Caption = #1091#1076#1072#1083#1077#1085#1085#1099#1081
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object ComboBox1: TComboBox
      Tag = 12
      Left = 280
      Top = 80
      Width = 121
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = 'TCP'
      Items.Strings = (
        'TCP')
    end
    object Edit1: TComboBox
      Tag = 12
      Left = 24
      Top = 80
      Width = 225
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'localhost'
      Items.Strings = (
        'localhost')
    end
    object Edit4: TEdit
      Left = 18
      Top = 139
      Width = 430
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 19
      Top = 189
      Width = 430
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 303
    Width = 570
    Height = 69
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      570
      69)
    object Label3: TLabel
      Tag = 13
      Left = 24
      Top = 13
      Width = 482
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = #1055#1086#1083#1085#1099#1081' '#1087#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091' '#1089' '#1073#1072#1079#1086#1081' '#1076#1072#1085#1085#1099#1093
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TComboBox
      Tag = 13
      Left = 24
      Top = 29
      Width = 485
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 0
      Text = '.\DB201\db201.gdb'
      Items.Strings = (
        '.\DB201\db201.gdb')
    end
    object Button3: TButton
      Tag = 12
      Left = 517
      Top = 28
      Width = 33
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = '.\RPOCheck.ini'
    IniSection = 'AdjustConnectionForm'
    StoredValues = <>
    Left = 416
    Top = 312
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'gdb'
    Filter = #1060#1072#1081#1083' '#1089' '#1073#1072#1079#1086#1081' '#1076#1072#1085#1085#1099#1093' (*.gdb)|*.gdb'
    Left = 376
    Top = 312
  end
end
