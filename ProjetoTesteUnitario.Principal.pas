unit ProjetoTesteUnitario.Principal;

interface

uses
  DUnitX.TestFramework, Pessoa;

type
  [TestFixture]
  TMyTestObject = class
  private
    FPessoa:  TPessoa;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TesteTratarCPFCNPJ;
  end;

implementation

procedure TMyTestObject.Setup;
begin
  FPessoa:=TPessoa.Create;
end;

procedure TMyTestObject.TearDown;
begin
  FPessoa.Free;
end;

procedure TMyTestObject.TesteTratarCPFCNPJ;
var
  Resultado: string;
begin
  Resultado:= FPessoa.TratarCPFCNPJ('123.123.123-12');
  Assert.IsTrue(Resultado='12312312312','TPessoa.TratarCPFCNPJ Retornou um Erro');
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.
