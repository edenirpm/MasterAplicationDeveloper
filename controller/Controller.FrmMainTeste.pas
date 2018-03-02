unit Controller.FrmMainTeste;

interface
uses
 fmx.dialogs,FMX.Objects,FMX.StdCtrls,Fmx.Edit,Fmx.Forms, System.UITypes,
 Controller.Efects,
  FMX.Graphics;
type
  tpMSG=(TpError,TpAccept);



  IDisplay = interface
   ['{97D54A02-D5CB-4585-9B38-7BD824B8F159}']
   function Display(ADisplay:TLabel;amsg:string):IDisplay;overload;
   function Display(ADisplay:TText;amsg:string):IDisplay;overload;
   function Display(ADisplay:TEdit;amsg:string):IDisplay;overload;
   function Display(ADisplay:TForm;amsg:string):IDisplay;overload;
  end;
  TDisplay = class(TinterfacedObject,IDisplay)
   function Display(ADisplay:TLabel;amsg:string):IDisplay;overload;
   function Display(ADisplay:TText;amsg:string):IDisplay;overload;
   function Display(ADisplay:TEdit;amsg:string):IDisplay;overload;
   function Display(ADisplay:TForm;amsg:string):IDisplay;overload;
  end;

  IMessage = interface
    ['{80587644-2D9C-426B-A496-7365F8E068CD}']
    function ShowMessageType(AtpMSG:tpMSG):Imessage;
  end;

  TFactory = class
    class function FactoryMSG:IMessage;
    class function FactoryDisplay:IDisplay;
    class function EfectTextUp(AObject:TObject):IEfect;
  end;

  
  TMEssage = class(TinterfacedObject,Imessage)
   function ShowMessageType(AtpMSG:tpMSG):Imessage;
  end;

implementation

{ TMEssage }


function TMEssage.ShowMessageType(AtpMSG:tpMSG): Imessage;
 var
 MsgError,MsgAccept:string;
begin
Result:=self;
 MsgError:='Uma mensagem de Error';
 MsgAccept:='Uma Mensagem Correta';

  Case AtpMSG of
      TpError  :
         Showmessage(MsgError);
      TpAccept :
         Showmessage(MsgAccept);
  end;
end;





{ TFactory }

class function TFactory.EfectTextUp(AObject: TObject): IEfect;
 var
 Efect:IEfect;
begin
 Efect:=TEfectLabelsTextUP.Create;
 Efect.EfectTextEdit(AObject);
end;

class function TFactory.FactoryDisplay: IDisplay;
begin
 Result:=TDisplay.Create;
end;

class function TFactory.FactoryMSG: IMessage;
begin
 Result:=TMEssage.Create;
end;

{ TDisplay }

function TDisplay.Display(ADisplay: TText; amsg: string): IDisplay;
begin
Result:=self;
Adisplay.Text:=amsg;
end;

function TDisplay.Display(ADisplay: TLabel; amsg: string): IDisplay;
begin
 Result:=self;
Adisplay.Text:=amsg;
end;

function TDisplay.Display(ADisplay: TForm; amsg: string): IDisplay;
begin
 Result:=self;
 Adisplay.Caption:=amsg;
 Adisplay.Fill.Kind:=Tbrushkind.solid;
 Adisplay.Fill.Color:=TAlphaColorRec.Red;
end;

function TDisplay.Display(ADisplay: TEdit; amsg: string): IDisplay;
begin
 Result:=self;
 Adisplay.Text:=amsg;
end;

end.
