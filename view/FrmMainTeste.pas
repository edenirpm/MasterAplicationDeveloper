unit FrmMainTeste;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses
  Controller.FrmMainTeste; // Unico uses para poder utilizar o que tem no controller
{$R *.fmx}

procedure TForm3.SpeedButton1Click(Sender: TObject);
 var
  Controller:IControllerMSG; //Instancia da interface
begin
  Controller:=TCtrlMessage.create; // Qual objeto sera criado que contemple essa interface
  Controller.Showmsg('Teste de uma mensagem showmessage');// metodo da interface
end;

end.
