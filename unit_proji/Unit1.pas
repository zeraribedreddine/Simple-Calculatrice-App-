unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tcalculatrice_home = class(TForm)
    Edit1: TEdit;
    btn_equal: TButton;
    btn_clear: TButton;
    btn_plus: TButton;
    btn_div: TButton;
    btn_fi: TButton;
    btn_moin: TButton;
    btn6: TButton;
    btn9: TButton;
    btn2: TButton;
    btn5: TButton;
    btn8: TButton;
    btn3: TButton;
    btn1: TButton;
    btn4: TButton;
    btn7: TButton;
    btn0: TButton;
    Button3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_moinClick(Sender: TObject);
    procedure btn_plusClick(Sender: TObject);
    procedure btn_equalClick(Sender: TObject);
    procedure btn_fiClick(Sender: TObject);
  private

  public
    { DÈclarations publiques }
  end;

var
  calculatrice_home: Tcalculatrice_home;
   operateur :string ;              //  + , - , / , *  ,    «· ’—ÌÕ »„ €Ì—« 
  num1 , num2 , somme : real ;     // «·⁄œœ «·«Ê· +«·⁄œœ «·À«‰Ì +«·‰ ÌÃ…


implementation

{$R *.dfm}

procedure Tcalculatrice_home.btn0Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '0';                    // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn1Click(Sender: TObject);
begin
edit1.Text := edit1.text + '1';                    // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn2Click(Sender: TObject);
begin
      edit1.Text := edit1.Text + '2';               // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn3Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '3';                   // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn4Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '4';                    // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn5Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '5';                   // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn6Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '6';                  // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn7Click(Sender: TObject);
begin
   edit1.Text := edit1.Text + '7';                // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn8Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '8';                 // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn9Click(Sender: TObject);
begin
 edit1.Text := edit1.Text + '9';                 // ⁄‰œ «·÷€ÿ ⁄·Ï «·—ﬁ„
end;

procedure Tcalculatrice_home.btn_clearClick(Sender: TObject);
begin
edit1.Clear ;                  //        «·«·… «·Õ«”»…)   „”Õ «·‘«‘…)
end;

procedure Tcalculatrice_home.btn_divClick(Sender: TObject);
begin
num1:= strtofloat(edit1.Text);
operateur:= '/';
edit1.Text := '';
end;

procedure Tcalculatrice_home.btn_equalClick(Sender: TObject);
begin

  num2:= strtofloat(edit1.Text);
                                                     // ⁄„·Ì… «·Ã„⁄
    if operateur = '+' then
     edit1.Text := floattostr (num1+num2);

                                                   //⁄„·Ì… «·ﬁ”„…
    if operateur = '/' then
     edit1.text := floattostr (num1/num2);

                                                  // ⁄„·Ì… «·ÿ—Õ
      if operateur = '-' then
       edit1.Text := floattostr (num1-num2);

                                                    // ⁄„·Ì… «·÷—»

       if operateur = '*' then
        edit1.Text := floattostr (num1*num2);


end;

               ////////////////////////////////////////////
              /// ///////////////////////////////////////////


procedure Tcalculatrice_home.btn_fiClick(Sender: TObject);
begin
num1:= strtofloat(edit1.Text);
operateur:= '*';
edit1.Text := '';
end;

procedure Tcalculatrice_home.btn_moinClick(Sender: TObject);
begin
       num1:= strtofloat(edit1.Text);
       operateur:= '-';
       edit1.Text := '';
end;

procedure Tcalculatrice_home.btn_plusClick(Sender: TObject);
begin
    num1:= strtofloat(edit1.Text);
    operateur:= '+';
    edit1.Text:= '';
end;

procedure Tcalculatrice_home.Button3Click(Sender: TObject);
begin
edit1.Text := edit1.Text + ',' ;
end;

end.
