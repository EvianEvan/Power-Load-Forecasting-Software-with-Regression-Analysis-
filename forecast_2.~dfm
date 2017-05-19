object Form8: TForm8
  Left = 407
  Top = 140
  Width = 680
  Height = 401
  Caption = #26681#25454'GDP'#36827#34892#36127#33655#39044#27979
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 201
    Top = 56
    Width = 121
    Height = 25
    AutoSize = False
    Caption = #35831#36755#20837#39044#27979'GDP'#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 201
    Top = 112
    Width = 129
    Height = 33
    AutoSize = False
    Caption = #36127#33655#39044#27979#32467#26524#20026#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 330
    Top = 48
    Width = 145
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button2: TButton
    Left = 202
    Top = 160
    Width = 276
    Height = 49
    Caption = #24320#22987#39044#27979#20998#26512
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 251
    Top = 230
    Width = 180
    Height = 41
    Caption = #36820#22238
    Default = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 330
    Top = 104
    Width = 145
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 405
    Top = 280
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=1.mdb' +
      ';Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Syst' +
      'em database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pas' +
      'sword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode' +
      '=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tra' +
      'nsactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create ' +
      'System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB' +
      ':Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Re' +
      'plica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 245
    Top = 280
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select '#36127#33655' from '#34920'1')
    Left = 325
    Top = 280
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #34920'1'
    Left = 285
    Top = 280
  end
end
