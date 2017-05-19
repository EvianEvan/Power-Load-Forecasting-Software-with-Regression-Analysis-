object Form2: TForm2
  Left = 214
  Top = 114
  Width = 1027
  Height = 519
  BorderStyle = bsSizeToolWin
  Caption = #30005#21147#31995#32479#20013#38271#26399#36127#33655#39044#27979#36719#20214
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button5: TButton
    Left = 383
    Top = 320
    Width = 256
    Height = 49
    Caption = #36864#20986
    TabOrder = 0
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 275
    Top = 144
    Width = 193
    Height = 57
    Caption = #26597#30475#24180#20221#22238#24402#39044#27979#27169#22411
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 275
    Top = 232
    Width = 193
    Height = 57
    Caption = #31649#29702#25968#25454#24211
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 555
    Top = 232
    Width = 196
    Height = 55
    Caption = #20851#20110
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button2: TButton
    Left = 275
    Top = 55
    Width = 193
    Height = 57
    Caption = #26681#25454#24180#20221#36827#34892#36127#33655#39044#27979
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button6: TButton
    Left = 555
    Top = 55
    Width = 193
    Height = 57
    Caption = #26681#25454'GDP'#36827#34892#36127#33655#39044#27979
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 555
    Top = 144
    Width = 193
    Height = 57
    Caption = #26597#30475'GDP'#22238#24402#39044#27979#27169#22411
    TabOrder = 6
    OnClick = Button7Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = #33756#21333
      object N2: TMenuItem
        Caption = #24405#20837#25968#25454
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #36127#33655#39044#27979
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #36864#20986
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #20851#20110
      OnClick = N5Click
    end
  end
end
