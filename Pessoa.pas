unit Pessoa;

interface

type
  TPessoa = class
    function TratarCPFCNPJ(aValue: string): string;
  end;

implementation

{ TPessoa }

function TPessoa.TratarCPFCNPJ(aValue: string): string;
var
  i: integer;
begin
  for i:=1 to Length(aValue) do
  begin
    if aValue[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Result:=Result+aValue[i];
  end;


end;

end.
