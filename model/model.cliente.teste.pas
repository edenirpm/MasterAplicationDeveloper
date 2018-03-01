unit model.cliente.teste;

interface
Type
TClienteTeste = class
  private
    Fnome: string;
    procedure Setnome(const Value: string);
  published
  property nome:string read Fnome write Setnome;
end;

implementation

{ TClienteTeste }

procedure TClienteTeste.Setnome(const Value: string);
begin
  Fnome := Value;
end;

end.
