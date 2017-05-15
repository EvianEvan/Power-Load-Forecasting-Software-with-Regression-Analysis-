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

//��ƽ��ֵ����,����������еĴ��󣬶�̬���鲻��ʹ�ú�����
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




//Ԥ�������ť
procedure TForm5.Button2Click(Sender: TObject);
  var n,i,count:integer;   //n��iѭ��������countΪ���ݸ�����

  var ya,la,ea,eb,
  year_sum,load_sum,
  xy,xx,yy,cc,sd:double;   //laΪload avg������ƽ��ֵ����
                           //yaΪyear avg�����ƽ��ֵ����
                           //a��b�Ĺ���ֵ(ea:estimate_a;eb)��
  Data_1: array of double; //��̬��������Data_1����ݣ�����
  Data_2: array of double; //��̬��������Data_2�����ɣ�����

  begin
  count := ADOQuery1.RecordCount;
  //�ж��������Ƿ����
  if ADOQuery1.RecordCount <= 1  then
  begin
    Messagebox(handle, ' ���������٣���������ݣ�', '����', MB_ok);
    Exit;
  end;

  //part1:ȡ���ݲ���������
  //ȡ�������
  //with ADOQuery1 do;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.sql.add('select ��� from ��1 order by ���');
  ADOQuery1.open;
  //����������ݲ�����Data_1����
  setlength(data_1, ADOQuery1.RecordCount); //�趨��̬����ĳ���
  i := 0;
  ADOQuery1.first;
  while not ADOQuery1.eof do
  begin
    n := ADOQuery1.fieldbyname('���').value; //ȡname�ֶ�
    data_1[i] := n;
    i:=i+1;
    ADOQuery1.next;
  end;
  //ȡ��������
  //with ADOQuery1 do;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.sql.add('select ���� from ��1 order by ���');
  ADOQuery1.open;
   //�����������ݲ�����Data_2����
  setlength(data_2, ADOQuery1.RecordCount); //�趨��̬����ĳ���
  i := 0;
  ADOQuery1.first;
  while not ADOQuery1.eof do
  begin
    n := ADOQuery1.fieldbyname('����').value; //ȡname�ֶ�
    data_2[i] := n;
    i:=i+1;
    ADOQuery1.next;
  end;

  //pairt2�������ݡ����ɵ�ƽ��ֵ��ya��la��
    i := 0;
  while i<count do
  begin
      year_sum := year_sum + data_1[i];
      load_sum := load_sum + data_2[i];
      i:=i+1;
  end;
  ya := year_sum/count;
  la := load_sum/count;

  //part3�����a��b�Ĺ���ֵ(ea:estimate_a;eb)��
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

  //part4�������ϵ��(cc:Correlation coefficient)��
  cc := xy/sqrt(xx*yy);

  //part4����ع鷽�̵ı�׼��(sd:Standard Deviation)��
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
