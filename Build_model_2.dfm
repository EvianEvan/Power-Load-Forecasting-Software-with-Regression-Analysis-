object Form7: TForm7
  Left = 406
  Top = 137
  Width = 684
  Height = 412
  Caption = #26597#30475'GDP'#22238#24402#27169#22411
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 167
    Top = 56
    Width = 89
    Height = 30
    AutoSize = False
    Caption = #21442#25968' a'#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 167
    Top = 103
    Width = 89
    Height = 33
    AutoSize = False
    Caption = #21442#25968' b'#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 349
    Top = 57
    Width = 89
    Height = 33
    AutoSize = False
    Caption = #30456#20851#31995#25968#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 158
    Top = 154
    Width = 145
    Height = 33
    AutoSize = False
    Caption = ' '#22238#24402#20998#26512#27169#22411#20026#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 349
    Top = 103
    Width = 89
    Height = 33
    AutoSize = False
    Caption = #26631#20934#24046#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 226
    Top = 51
    Width = 83
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 226
    Top = 99
    Width = 83
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 424
    Top = 51
    Width = 84
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 286
    Top = 146
    Width = 234
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Button2: TButton
    Left = 158
    Top = 195
    Width = 367
    Height = 49
    Caption = #24314#31435'GDP'#22238#24402#27169#22411
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 423
    Top = 99
    Width = 86
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Button1: TButton
    Left = 214
    Top = 258
    Width = 260
    Height = 41
    Caption = #36820#22238
    TabOrder = 6
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 385
    Top = 322
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
    Left = 225
    Top = 322
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #34920'1'
    Left = 265
    Top = 322
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select '#36127#33655' from '#34920'1')
    Left = 313
    Top = 324
  end
end
