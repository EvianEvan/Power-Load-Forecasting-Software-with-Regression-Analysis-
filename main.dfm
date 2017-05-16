object Form2: TForm2
  Left = 214
  Top = 114
  Width = 1006
  Height = 510
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
    Left = 385
    Top = 258
    Width = 219
    Height = 49
    Caption = #36864#20986
    TabOrder = 0
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 277
    Top = 89
    Width = 193
    Height = 57
    Caption = #24314#31435#39044#27979#27169#22411
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 277
    Top = 178
    Width = 193
    Height = 57
    Caption = #31649#29702#25968#25454#24211
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 517
    Top = 178
    Width = 193
    Height = 57
    Caption = #20851#20110
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button2: TButton
    Left = 517
    Top = 89
    Width = 193
    Height = 57
    Caption = #36827#34892#36127#33655#39044#27979
    TabOrder = 4
    OnClick = Button2Click
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
