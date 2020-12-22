unit TEnderecos;

interface

uses
   System.Generics.Collections, REST.Json.Types,TGrupos;

   type

  iEndereco = interface
    ['{736B9BCA-EE1F-4932-B400-0D9D0C96B702}']
    function getGrupo(): TGrupo;
    function getBairro():String;
    function getCep():String;
    function getCidade():String;
    function getCliente():String;
    function getComplemento():String;
    function getEndereco():String;
    function getEstado():String;
    function getId():integer;
    function getNome():String;
    function getNumero():String;
    function getPais():String;
    function getPrincipal():boolean;
    function getReferencia():String;
    function getResource_Uri():String;


    procedure setGrupo(const Value: TGrupo);
    procedure setBairro(aValue:String);
    procedure setCep(aValue:String);
    procedure setCidade(aValue:String);
    procedure setCliente(aValue:String);
    procedure setComplemento(aValue:String);
    procedure setEndereco(aValue:String);
    procedure setEstado(aValue:String);
    procedure setId(aValue:integer);
    procedure setNome(aValue:String);
    procedure setNumero(aValue:String);
    procedure setPais(aValue:String);
    procedure setPrincipal(aValue:boolean);
    procedure setReferencia(aValue:String);
    procedure setResource_Uri(aValue:String);

    property Bairro: string read getBairro write setBairro;
    property Cep: string read getCep write setCep;
    property Cidade: string read getCidade write setCidade;
    property Cliente: string read getCliente write setCliente;
    property Complemento: string read getComplemento write setComplemento;
    property Endereco: string read getEndereco write setEndereco;
    property Estado: string read getEstado write setEstado;
    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Numero: string read getNumero write setNumero;
    property Pais: string read getPais write setPais;
    property Principal: Boolean read getPrincipal write setPrincipal;
    property Referencia: string read getReferencia write setReferencia;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Grupo : TGrupo read getGrupo write setGrupo;
  end;


type
  TEndereco = class(TInterfacedobject,iEndereco)
  private
    FBairro: string;
    FCep: string;
    FCidade: string;
    FCliente: string;
    FComplemento: string;
    FEndereco: string;
    FEstado: string;
    FId: Integer;
    FNome: string;
    FNumero: string;
    FPais: string;
    FPrincipal: Boolean;
    FReferencia: string;
    FResource_Uri: string;
    FGrupo : TGrupo;
  published


    function getGrupo(): TGrupo;
    function getBairro():String;
    function getCep():String;
    function getCidade():String;
    function getCliente():String;
    function getComplemento():String;
    function getEndereco():String;
    function getEstado():String;
    function getId():integer;
    function getNome():String;
    function getNumero():String;
    function getPais():String;
    function getPrincipal():boolean;
    function getReferencia():String;
    function getResource_Uri():String;


    procedure setGrupo(const Value: TGrupo);
    procedure setBairro(aValue:String);
    procedure setCep(aValue:String);
    procedure setCidade(aValue:String);
    procedure setCliente(aValue:String);
    procedure setComplemento(aValue:String);
    procedure setEndereco(aValue:String);
    procedure setEstado(aValue:String);
    procedure setId(aValue:integer);
    procedure setNome(aValue:String);
    procedure setNumero(aValue:String);
    procedure setPais(aValue:String);
    procedure setPrincipal(aValue:boolean);
    procedure setReferencia(aValue:String);
    procedure setResource_Uri(aValue:String);

    property Bairro: string read getBairro write setBairro;
    property Cep: string read getCep write setCep;
    property Cidade: string read getCidade write setCidade;
    property Cliente: string read getCliente write setCliente;
    property Complemento: string read getComplemento write setComplemento;
    property Endereco: string read getEndereco write setEndereco;
    property Estado: string read getEstado write setEstado;
    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Numero: string read getNumero write setNumero;
    property Pais: string read getPais write setPais;
    property Principal: Boolean read getPrincipal write setPrincipal;
    property Referencia: string read getReferencia write setReferencia;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Grupo : TGrupo read getGrupo write setGrupo;
  end;

implementation

{ TEndereco }

function TEndereco.getBairro: String;
begin
  result := Self.FBairro;
end;

function TEndereco.getCep: String;
begin
  result := Self.FCep;
end;

function TEndereco.getCidade: String;
begin
  result := Self.FCidade;
end;

function TEndereco.getCliente: String;
begin
  result := Self.FCliente;
end;

function TEndereco.getComplemento: String;
begin
  result := Self.FComplemento;
end;

function TEndereco.getEndereco: String;
begin
  result := Self.FEndereco;
end;

function TEndereco.getEstado: String;
begin
  result := Self.FEstado;
end;

function TEndereco.getGrupo: TGrupo;
begin
  result := Self.FGrupo;
end;

function TEndereco.getId: integer;
begin
  result := Self.Fid;
end;

function TEndereco.getNome: String;
begin
  result := Self.FNome;
end;

function TEndereco.getNumero: String;
begin
  result := Self.FNumero;
end;

function TEndereco.getPais: String;
begin
  result := Self.FPais;
end;

function TEndereco.getPrincipal: boolean;
begin
  result := Self.FPrincipal;
end;

function TEndereco.getReferencia: String;
begin
  result := Self.FReferencia;
end;

function TEndereco.getResource_Uri: String;
begin
  result := Self.FResource_Uri;
end;

procedure TEndereco.setBairro(aValue: String);
begin
  self.FBairro := aValue;
end;

procedure TEndereco.setCep(aValue: String);
begin
  self.FCep := aValue;
end;

procedure TEndereco.setCidade(aValue: String);
begin
  self.FCidade := aValue;
end;

procedure TEndereco.setCliente(aValue: String);
begin
  self.FCliente := aValue;
end;

procedure TEndereco.setComplemento(aValue: String);
begin
  self.FComplemento := aValue;
end;

procedure TEndereco.setEndereco(aValue: String);
begin
  self.FEndereco := aValue;
end;

procedure TEndereco.setEstado(aValue: String);
begin
  self.FEstado := aValue;
end;

procedure TEndereco.setGrupo(const Value: TGrupo);
begin
  self.FGrupo := Value;
end;

procedure TEndereco.setId(aValue: integer);
begin
  self.FId := aValue;
end;

procedure TEndereco.setNome(aValue: String);
begin
  self.FNome := aValue;
end;

procedure TEndereco.setNumero(aValue: String);
begin
  self.FNumero := aValue;
end;

procedure TEndereco.setPais(aValue: String);
begin
  self.FPais := aValue;
end;

procedure TEndereco.setPrincipal(aValue: boolean);
begin
  self.FPrincipal := aValue;
end;

procedure TEndereco.setReferencia(aValue: String);
begin
  self.FReferencia := aValue;
end;

procedure TEndereco.setResource_Uri(aValue: String);
begin
  self.FResource_Uri := aValue;
end;

end.
