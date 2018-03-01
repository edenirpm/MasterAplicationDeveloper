unit Controller.FrmMainTeste;

interface
uses
 fmx.dialogs;
type
IControllerMSG = interface             //
  ['{911F1D78-09CF-4248-9DF6-67821157D172}']
 function Showmsg(Amsg:string):IControllerMsg;
end;

Type
TCtrlMessage = class(TInterfacedObject,IControllerMSG)
 function Showmsg(Amsg:string):IControllerMSG;
end;

implementation

{ TMessage }

function TCtrlMessage.Showmsg(Amsg:string): IControllerMSG;
begin
 Result:=Self;
 Showmessage(Amsg);
end;

end.
