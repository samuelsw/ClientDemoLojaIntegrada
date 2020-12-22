unit TEstoqueItem;

interface

  type
  iEstoqueItem = interface
   ['{242B758B-365D-46C1-BDCE-22A8711716B9}']

    procedure setGerenciado(aValue : Boolean);
    procedure setsituacao_em_estoque(avalue : integer);
    procedure setsituacao_sem_estoque(avalue : integer);
    procedure setquantidade(avalue : currency);

    function getGerenciado():Boolean;
    function getsituacao_em_estoque():Integer;
    function getsituacao_sem_estoque():Integer;
    function getQuantidate():Currency;
  end;



  type
  TEstoqueItens = class(TInterfacedObject,iEstoqueItem)

    private
    FGerenciado           : Boolean;
    Fsituacao_em_estoque  : Integer;
    Fsituacao_sem_estoque : Integer;
    Fquantidade           : Currency;

    public

    procedure setGerenciado(aValue : Boolean);
    procedure setsituacao_em_estoque(avalue : integer);
    procedure setsituacao_sem_estoque(avalue : integer);
    procedure setquantidade(avalue : currency);

    function getGerenciado():Boolean;
    function getsituacao_em_estoque():Integer;
    function getsituacao_sem_estoque():Integer;
    function getQuantidate():Currency;

    property gerenciado :boolean read Fgerenciado write setGerenciado;
    property situacao_em_estoque :Integer read Fsituacao_em_estoque write setsituacao_em_estoque;
    property situacao_sem_estoque :integer read Fsituacao_sem_estoque write setsituacao_sem_estoque;
    property quantidade  :Currency read Fquantidade write setquantidade;

  end;

implementation

{ TEstoqueItem }

function TEstoqueItens.getGerenciado: Boolean;
begin
  result := self.FGerenciado;
end;

function TEstoqueItens.getQuantidate: Currency;
begin
  result := self.FQuantidade;
end;

function TEstoqueItens.getsituacao_em_estoque: Integer;
begin
  result := self.Fsituacao_em_estoque;
end;

function TEstoqueItens.getsituacao_sem_estoque: Integer;
begin
  result := self.Fsituacao_sem_estoque;
end;

procedure TEstoqueItens.setGerenciado(aValue: Boolean);
begin
  self.FGerenciado := avalue;
end;

procedure TEstoqueItens.setquantidade(avalue: currency);
begin
  self.Fquantidade := avalue;
end;

procedure TEstoqueItens.setsituacao_em_estoque(avalue: integer);
begin
  self.Fsituacao_em_estoque := avalue;
end;

procedure TEstoqueItens.setsituacao_sem_estoque(avalue: integer);
begin
    self.Fsituacao_sem_estoque := avalue;
end;

end.
