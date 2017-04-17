unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    SpinEdit1: TSpinEdit;
    Memo2: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function JieCheng(n: integer): INT64;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    i,j:  integer;
    m: INT64;
    d: double;
begin
    m:=1;
    d := m;
    for i:= 1 to 1000 do begin
        m:=sqr(i);
        if m > 100 then
           break;
        //如果他不是偶数他将会继续
        if ((m mod 2)<>0) then
           continue;// 继续下一个，本一个跳过剩下的语句

        //以下是偶数
            m:= jiecheng(m);
            d:= jiecheng(m);


        memo1.Lines.Add(intTostr(m) + ', ' + FloatTOStr(d));
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
    i,j,n:integer;
begin
    memo2.Lines.Clear;
    for i:= 1 to SpinEdit1.Value do begin
        n:=1;
        for j:= 1 to i do begin
            n:=n*j;
        end;
        memo2.Lines.Add(inttostr(n));
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
    i:  integer;
    m: INT64;
begin
    for i:= 1 to 20 do begin
        m := JieCheng(i);

        memo1.Lines.Add(intToStr(i) + '! = ' + intTostr(m));
    end;
end;

function TForm1.JieCheng(n: integer): INT64;
var
    i:  integer;
    m:  int64;
begin
    m := 1;
    for i:= 1 to n do begin
        m:= m*i;
    end;

    result := m;
end;

end.
