unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses main;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '') and (Edit2.Text = '') then
    begin
     form1.hide;
     form2.Show;
    end
  else
   Messagebox(handle, '           ����������������롣        ', '����', MB_ok);
   //showmessage('             �������           ')
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;



end.
