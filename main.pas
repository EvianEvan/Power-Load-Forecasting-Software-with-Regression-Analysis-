unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    Button5: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Button1: TButton;
    Button3: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Button4: TButton;
    Button2: TButton;
    Button6: TButton;
    Button7: TButton;

    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses login, input, forecast, Build_model, about, Build_model_2, forecast_2;

{$R *.dfm}





procedure TForm2.Button3Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  form6.show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  form1.Close;
  form2.Close;
end;


procedure TForm2.N2Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
   form4.Show;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
  form1.Close;
  form2.Close;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
  form6.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  form5.Show;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  form7.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  form4.Show;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  form8.Show;
end;

end.
