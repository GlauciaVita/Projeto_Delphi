unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Converter: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Dolar: TEdit;
    Real: TEdit;
    Compra: TButton;
    Msg: TLabel;
    procedure ConverterClick(Sender: TObject);
    procedure CompraClick(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varreal : real;
  varnome : string;

implementation

{$R *.dfm}

// procedimento para mostrar nome e valor em dolares comprador
// condi��o if ira validar se usuario digitou nome
procedure TForm1.CompraClick(Sender: TObject);
begin
  varnome := inputbox('Nome','Digite seu nome','');
  if (varnome <> '') then
     Msg.Caption := 'Valeu ' + varnome + ' vc comprou ' + Dolar.Text + ' dolares'
  else
     showmessage('Falta nome')
 end;


// procedimento para calcular a convers�o de dolar em real
// a condi��o if � para validar caso a caixa esteja vazia, o bot�o compra
// nao ser� habilitado
procedure TForm1.ConverterClick(Sender: TObject);
begin
  if (Dolar.Text = '') OR (Dolar.Text < '0') then
    begin
      showmessage('Digite valor v�lido')
    end
  else
    begin
      Compra.Enabled := TRUE;
      varreal := strtofloat(Dolar.Text) * 5.29;
      Real.Text := floattostr(varreal);
    end;
end;

end.
