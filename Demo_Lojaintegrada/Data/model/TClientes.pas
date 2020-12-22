unit TClientes;

interface

uses
  System.Generics.Collections, REST.Json.Types,  TEnderecos;

{$M+}

type
  iCliente = interface
    ['{931C7B47-6FE9-48F5-A539-A0729EEF1E5B}']
     procedure setAceita_Newsletter(aValue : Boolean);
    procedure setCpf(aValue : String);
    procedure setData_Criacao(aValue : TDate);
    procedure setData_Modificacao(aValue : TDate);
    procedure setData_Nascimento(aValue : TDate);
    procedure setEmail(aValue : String);
    procedure setId(aValue : integer);
    procedure setNewsletter(aValue : Boolean);
    procedure setNome(aValue : String);
    procedure setResource_Uri(aValue : String);
    procedure setRg(aValue : String);
    procedure setSexo(aValue : String);
    procedure setTelefone_Celular(aValue : String);
    procedure setTelefone_Comercial(aValue : String);
    procedure setTelefone_Principal(aValue : String);
    procedure setTipo(aValue : String);
    procedure setEnderecos(aValue : TList<TEndereco>);

    function getAceita_Newsletter():Boolean;
    function getCpf():String;
    function getData_Criacao():TDate;
    function getData_Modificacao():TDate;
    function getData_Nascimento():TDate;
    function getEmail():String;
    function getId():integer;
    function getNewsletter():Boolean;
    function getNome():String;
    function getResource_Uri():String;
    function getRg():String;
    function getSexo():String;
    function getTelefone_Celular():String;
    function getTelefone_Comercial():String;
    function getTelefone_Principal():String;
    function getTipo():String;
    function getEnderecos(): TList<TEndereco>;




    property Aceita_Newsletter: Boolean read getAceita_Newsletter write setAceita_Newsletter;
    property Cpf: string read getCpf write setCpf;
    property Data_Criacao: TDate read getData_Criacao write setData_Criacao;
    property Data_Modificacao: TDate read getData_Modificacao write setData_Modificacao;
    property Data_Nascimento: TDate read getData_Nascimento write setData_Nascimento;
    property Email: string read getEmail write setEmail;
    property Id: Integer read getId write setId;
    property Newsletter: Boolean read getNewsletter write setNewsletter;
    property Nome: string read getNome write setNome;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Rg: string read getRg write setRg;
    property Sexo: string read getSexo write setSexo;
    property Telefone_Celular: string read getTelefone_Celular write setTelefone_Celular;
    property Telefone_Comercial: string read getTelefone_Comercial write setTelefone_Comercial;
    property Telefone_Principal: string read getTelefone_Principal write setTelefone_Principal;
    property Tipo: string read getTipo write setTipo;
    property Enderecos : TList<TEndereco> read  getEnderecos write setEnderecos;
  end;

type
  TCliente = class(TInterfacedobject,iCliente)
  private
    FAceita_Newsletter: Boolean;
    FCpf: String;
    FData_Criacao: TDate;
    FData_Modificacao: TDate;
    FData_Nascimento: TDate;
    FEmail: string;
    FId: Integer;
    FNewsletter: Boolean;
    FNome: string;
    FResource_Uri: string;
    FRg: string;
    FSexo: string;
    FTelefone_Celular: String;
    FTelefone_Comercial: String;
    FTelefone_Principal: String;
    FTipo: string;
    FEnderecos : TList<TEndereco>;
  published
    procedure setAceita_Newsletter(aValue : Boolean);
    procedure setCpf(aValue : String);
    procedure setData_Criacao(aValue : TDate);
    procedure setData_Modificacao(aValue : TDate);
    procedure setData_Nascimento(aValue : TDate);
    procedure setEmail(aValue : String);
    procedure setId(aValue : integer);
    procedure setNewsletter(aValue : Boolean);
    procedure setNome(aValue : String);
    procedure setResource_Uri(aValue : String);
    procedure setRg(aValue : String);
    procedure setSexo(aValue : String);
    procedure setTelefone_Celular(aValue : String);
    procedure setTelefone_Comercial(aValue : String);
    procedure setTelefone_Principal(aValue : String);
    procedure setTipo(aValue : String);
    procedure setEnderecos(aValue : TList<TEndereco>);

    function getAceita_Newsletter():Boolean;
    function getCpf():String;
    function getData_Criacao():TDate;
    function getData_Modificacao():TDate;
    function getData_Nascimento():TDate;
    function getEmail():String;
    function getId():integer;
    function getNewsletter():Boolean;
    function getNome():String;
    function getResource_Uri():String;
    function getRg():String;
    function getSexo():String;
    function getTelefone_Celular():String;
    function getTelefone_Comercial():String;
    function getTelefone_Principal():String;
    function getTipo():String;
    function getEnderecos(): TList<TEndereco>;




    property Aceita_Newsletter: Boolean read getAceita_Newsletter write setAceita_Newsletter;
    property Cpf: string read getCpf write setCpf;
    property Data_Criacao: TDate read getData_Criacao write setData_Criacao;
    property Data_Modificacao: TDate read getData_Modificacao write setData_Modificacao;
    property Data_Nascimento: TDate read getData_Nascimento write setData_Nascimento;
    property Email: string read getEmail write setEmail;
    property Id: Integer read getId write setId;
    property Newsletter: Boolean read getNewsletter write setNewsletter;
    property Nome: string read getNome write setNome;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Rg: string read getRg write setRg;
    property Sexo: string read getSexo write setSexo;
    property Telefone_Celular: string read getTelefone_Celular write setTelefone_Celular;
    property Telefone_Comercial: string read getTelefone_Comercial write setTelefone_Comercial;
    property Telefone_Principal: string read getTelefone_Principal write setTelefone_Principal;
    property Tipo: string read getTipo write setTipo;
    property Enderecos : TList<TEndereco> read  getEnderecos write setEnderecos;
  end;

implementation


{ TCliente }

function TCliente.getAceita_Newsletter: Boolean;
begin
   result := self.FNewsletter;
end;

function TCliente.getCpf: String;
begin
  result := self.FCpf;
end;

function TCliente.getData_Criacao(): TDate;
begin
  result := self.FData_Criacao;
end;

function TCliente.getData_Modificacao(): TDate;
begin
  result := self.FData_Modificacao;
end;

function TCliente.getData_Nascimento(): TDate;
begin
  result := self.FData_Nascimento;
end;

function TCliente.getEmail: String;
begin
  result := self.FEmail;
end;

function TCliente.getEnderecos: TList<TEndereco>;
begin
  result := self.FEnderecos;
end;

function TCliente.getId: integer;
begin
  result := self.FId;
end;

function TCliente.getNewsletter: Boolean;
begin
  result := self.FNewsletter;
end;

function TCliente.getNome: String;
begin
  result := self.FNome;
end;

function TCliente.getResource_Uri: String;
begin
  result := self.FResource_Uri;
end;

function TCliente.getRg: String;
begin
  result := self.FRg;
end;

function TCliente.getSexo: String;
begin
  result := self.FSexo;
end;

function TCliente.getTelefone_Celular: String;
begin
  result := self.FTelefone_Celular;
end;

function TCliente.getTelefone_Comercial: String;
begin
  result := self.FTelefone_Comercial;
end;

function TCliente.getTelefone_Principal: String;
begin
  result := self.FTelefone_Principal;
end;

function TCliente.getTipo: String;
begin
  result := self.FTipo;
end;

//function TCliente.getEnderecos():TList<TEndereco>;
//begin
//  result := self.FEndereco;
//end;

procedure TCliente.setAceita_Newsletter(aValue: Boolean);
begin
  self.FAceita_Newsletter := aValue;
end;

procedure TCliente.setCpf(aValue: String);
begin
  self.FCpf := aValue;
end;

procedure TCliente.setData_Criacao(aValue : TDate);
begin
  self.FData_Criacao := aValue;
end;

procedure TCliente.setData_Modificacao(aValue : TDate);
begin
  self.FData_Modificacao := aValue;
end;

procedure TCliente.setData_Nascimento(aValue : TDate);
begin
  self.FData_Nascimento := aValue;
end;

procedure TCliente.setEmail(aValue: String);
begin
  self.FEmail := aValue;
end;

procedure TCliente.setEnderecos(aValue: TList<TEndereco>);
begin
  self.FEnderecos := aValue;
end;

procedure TCliente.setId(aValue: integer);
begin
  self.FId := aValue;
end;

procedure TCliente.setNewsletter(aValue: Boolean);
begin
  self.FNewsletter := aValue;
end;

procedure TCliente.setNome(aValue: String);
begin
  self.FNome := aValue;
end;

procedure TCliente.setResource_Uri(aValue: String);
begin
  self.FResource_Uri := aValue;
end;

procedure TCliente.setRg(aValue: String);
begin
  self.FRg := aValue;
end;

procedure TCliente.setSexo(aValue: String);
begin
  self.FSexo := aValue;
end;

procedure TCliente.setTelefone_Celular(aValue: String);
begin
  self.FTelefone_Celular := aValue;
end;

procedure TCliente.setTelefone_Comercial(aValue: String);
begin
  self.FTelefone_Comercial := aValue;
end;

procedure TCliente.setTelefone_Principal(aValue: String);
begin
  self.FTelefone_Principal := aValue;
end;

procedure TCliente.setTipo(aValue: String);
begin
  self.FTipo := aValue;
end;


end.
