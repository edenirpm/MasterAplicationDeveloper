unit FrmMainTeste;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Text1: TText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Efeito(Sender:TObject);
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

procedure TForm3.Efeito(Sender: TObject);
begin
 TFactory.EfectTextUp(Sender);
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
 var
 Controller:IMessage;
begin
  Controller:=TFactory.FactoryMSG
  .ShowMessageType(TpError)
  .ShowMessageType(TpAccept);

end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
var
 Controller:IDisplay;
begin
 Controller:=TFactory.FactoryDisplay
  .Display(Label1,'Mensagem para aparecer no label')
  .Display(Self,'Mensagem para aparecer no form')
  .Display(edit1,'Mensagem para aparecer no edit');
end;
initialization
ReportMemoryLeaksOnShutdown:=true;
end.
