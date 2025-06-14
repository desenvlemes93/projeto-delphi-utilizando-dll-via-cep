unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Json, REST.Client, REST.HttpClient,Rest.Types;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    edtCep: TEdit;
    Button1: TButton;
    Label1: TLabel;
    lblCidade: TLabel;
    Label2: TLabel;
    lblUf: TLabel;
    procedure Button1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

function BuscarDadosViaCep(pCep: Integer) : TJSONObject; stdcall external 'BuscarCidade.dll';
var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
var
  endereco: TJSONObject;
  obj: TJSONObject;
begin
  try
   endereco :=  BuscarDadosViaCep(StrToInt(edtCep.Text));
    if endereco is TJSONObject then
    begin
      lblCidade.Caption := endereco.Values['localidade'].Value;
      lblUf.Caption  :=    endereco.Values['uf'].Value;
    end;
  finally
    endereco.Free;
  end;
end;
end.
