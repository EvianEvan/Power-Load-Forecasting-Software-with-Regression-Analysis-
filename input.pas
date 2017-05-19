unit input;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type

    TMyNavigator = class(TDBNavigator);
    TForm3 = class(TForm)
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

//取消按钮
procedure TForm3.Button2Click(Sender: TObject);
begin
  form3.Close;
end;


//输入数据按钮
//procedure TForm3.Button1Click(Sender: TObject);
//var number: integer;
//begin
  //number:=123;
  //ADOQuery1.Close;
  //ADOQuery1.sql.text:=
  //'Insert into 表1 (年份, 负荷量) values ('+dbEDIT1.TEXT+','+dbEDIT2.TEXT+' )';
  //ADOQuery1.ExecSQL;
 // ADOTable1.Active:=false;
 // ADOTable1.Active:=true;
 // dbEDIT1.TEXT:='';
 // dbEDIT2.TEXT:='';
//end;


//navigator按钮
procedure   TForm3.FormCreate(Sender:   TObject);   
begin
   //TMyNavigator(DBNavigator1).Buttons[nbFirst].Caption:= '第一条 ';
   //TMyNavigator(DBNavigator1).Buttons[nbPrior].Caption:= '上一条 ';
   //TMyNavigator(DBNavigator1).Buttons[nbNext].Caption:= '下一条 ';
   //TMyNavigator(DBNavigator1).Buttons[nbLast].Caption:= '最后一条 ';
   TMyNavigator(DBNavigator1).Buttons[nbInsert].Caption:= '添加数据 ';
   TMyNavigator(DBNavigator1).Buttons[nbDelete].Caption:= '删除数据 ';
   TMyNavigator(DBNavigator1).Buttons[nbEdit].Caption:= '修改数据 ';
   TMyNavigator(DBNavigator2).Buttons[nbPost].Caption:= '确定 ';
   TMyNavigator(DBNavigator2).Buttons[nbCancel].Caption:= '取消 ';
   TMyNavigator(DBNavigator2).Buttons[nbRefresh].Caption:= '刷新 ';
   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbFirst].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbPrior].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbNext].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbLast].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbInsert].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbDelete].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator1).Buttons[nbEdit].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator2).Buttons[nbPost].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator2).Buttons[nbCancel].Glyph:=nil;   //不显示图标
   TMyNavigator(DBNavigator2).Buttons[nbRefresh].Glyph:=nil;   //不显示图标
end;





end.
