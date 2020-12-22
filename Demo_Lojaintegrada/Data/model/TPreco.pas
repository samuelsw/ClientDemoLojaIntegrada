unit TPreco;

interface

  type
  iPreco = interface
    ['{86EF278F-2A23-4774-8212-D16EC724E414}']

    procedure setPrecoCheio(aValue : Currency);
    procedure setPrecoCusto(aValue : Currency);
    procedure setPrecoPromocional(aValue : Currency);

    function getPrecoCheio():Currency;
    function getPrecoCusto():Currency;
    function getPrecoPromocional():Currency;
  end;


  type
  TPrecos = class(TInterfacedObject,iPreco)

    private

    FCheio : Currency;
    FCusto : Currency;
    FPromocional : Currency;

    public

    procedure setPrecoCheio(aValue : Currency);
    procedure setPrecoCusto(aValue : Currency);
    procedure setPrecoPromocional(aValue : Currency);

    function getPrecoCheio():Currency;
    function getPrecoCusto():Currency;
    function getPrecoPromocional():Currency;


    property cheio : Currency read FCheio write setPrecoCheio;
    property custo : Currency read FCusto write setPrecoCusto;
    property promocional : Currency read FPromocional write setPrecoPromocional;

 end;

implementation

{ TPrecos }

function TPrecos.getPrecoCheio: Currency;
begin
  result := FCheio;
end;

function TPrecos.getPrecoCusto: Currency;
begin
  result := FCusto;
end;

function TPrecos.getPrecoPromocional: Currency;
begin
  result := FPromocional;
end;

procedure TPrecos.setPrecoCheio(aValue: Currency);
begin
   self.FCheio := aValue;
end;

procedure TPrecos.setPrecoCusto(aValue: Currency);
begin
   self.FCusto := aValue;
end;

procedure TPrecos.setPrecoPromocional(aValue: Currency);
begin
   self.FPromocional := aValue;
end;

end.
