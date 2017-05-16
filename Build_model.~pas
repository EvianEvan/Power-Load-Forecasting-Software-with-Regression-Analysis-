unit Build_model;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, math;

type
  TForm5 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    Label7: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

//求平均值函数,但会出现下行的错误，动态数组不能使用函数？
//Incompatible types: 'Double' and 'dynamic array'
(*function avg(doublearray: array of double):double;
  var sum:double;
  var i:integer;
  begin
    sum := 0;
    for i:=0 to count-1 do
      begin
      sum := sum + doublearray[i];
      end;
    avg := sum/count;
  end;
*)




//预测分析按钮
procedure TForm5.Button2Click(Sender: TObject);
  var n,i,count:integer;   //n和i循环变量，count为数据个数；

  var ya,la,ea,eb,
  year_sum,load_sum,
  xy,xx,yy,cc,sd:double;   //la为load avg（负荷平均值）；
                           //ya为year avg（年份平均值）；
                           //a、b的估计值(ea:estimate_a;eb)：
  Data_1: array of double; //动态定义输入Data_1（年份）数组
  Data_2: array of double; //动态定义输入Data_2（负荷）数组

  begin
  count := ADOQuery1.RecordCount;
  //判断数据量是否过少
  if ADOQuery1.RecordCount <= 1  then
  begin
    Messagebox(handle, ' 数据量过少，请添加数据！', '提醒', MB_ok);
    Exit;
  end;

  //part1:取数据并存入数组
  //取年份数据
  //with ADOQuery1 do;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.sql.add('select 年份 from 表1 order by 年份');
  ADOQuery1.open;
  //遍历年份数据并存入Data_1数组
  setlength(data_1, ADOQuery1.RecordCount); //设定动态数组的长度
  i := 0;
  ADOQuery1.first;
  while not ADOQuery1.eof do
  begin
    n := ADOQuery1.fieldbyname('年份').value; //取name字段
    data_1[i] := n;
    i:=i+1;
    ADOQuery1.next;
  end;
  //取负荷数据
  //with ADOQuery1 do;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.sql.add('select 负荷 from 表1 order by 年份');
  ADOQuery1.open;
   //遍历负荷数据并存入Data_2数组
  setlength(data_2, ADOQuery1.RecordCount); //设定动态数组的长度
  i := 0;
  ADOQuery1.first;
  while not ADOQuery1.eof do
  begin
    n := ADOQuery1.fieldbyname('负荷').value; //取name字段
    data_2[i] := n;
    i:=i+1;
    ADOQuery1.next;
  end;

  //pairt2：求出年份、负荷的平均值（ya、la）
    i := 0;
  while i<count do
  begin
      year_sum := year_sum + data_1[i];
      load_sum := load_sum + data_2[i];
      i:=i+1;
  end;
  ya := year_sum/count;
  la := load_sum/count;

  //part3：求出a、b的估计值(ea:estimate_a;eb)：
  i := 0;
  n := 0;
  while i<count do
  begin
   xy := xy + ((data_1[i] - ya)*(data_2[i] - la));
   xx := xx + ((data_1[i] - ya)*(data_1[i] - ya));
   yy := yy + ((data_2[i] - la)*(data_2[i] - la));
   i:=i+1;
  end;
  eb := xy/xx;
  ea := la - eb*ya;

  //part4：求相关系数(cc:Correlation coefficient)：
  cc := xy/sqrt(xx*yy);

  //part4：求回归方程的标准差(sd:Standard Deviation)：
  sd := sqrt((yy-eb*xy)/(count-2));

    EDIT1.TEXT := FloatToStr(roundto(ea,-2));
    EDIT2.TEXT := FloatToStr(roundto(eb,-2));
    EDIT3.TEXT := FloatToStr(roundto(cc,-2));
    EDIT4.TEXT := FloatToStr(roundto(sd,-2));
    
    if eb<0 then
    EDIT5.TEXT := 'y = '+FloatToStr(roundto(ea,-2))+FloatToStr(roundto(eb,-2))+'x'
    else
    EDIT5.TEXT := 'y = '+FloatToStr(roundto(ea,-2))+'+'+FloatToStr(roundto(eb,-2))+'x';
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  form5.Close;
end;


end.
