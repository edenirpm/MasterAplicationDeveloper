unit Controller.Efects;

interface
uses
Fmx.Objects, FMX.Edit, FMX.Ani;
Type
IEfect= Interface
  ['{3AFA7C88-AB7A-4551-989F-633A845DC863}']
  procedure EfectTextEdit(AObject:TObject);
End;
TEfectLabelsTextUP = class(TInterfacedObject,IEfect)
  procedure EfectTextEdit(AObject:TObject);
end;

implementation

{ TEfectLabelsTextUP }

procedure TEfectLabelsTextUP.EfectTextEdit(AObject:TObject);
begin
TAnimator.AnimateFloat((AObject as TText), 'Position.Y', -20,0.50);
//(AObject as TText).AnimateFloat('Position.Y',-20,0.30);Deprecated
((AObject as TText).Parent as TEdit).SetFocus;
end;

end.
