unit TMarcas;

interface

uses
  System.Generics.Collections, REST.Json.Types;

type
  iMarca = interface
    ['{15DEB5DC-3F4D-44F2-BB73-F8DF0C19BDCC}']
    function getApelido():String;
    function getAtivo():Boolean;
    function getDescricao():String;
    function getId():Integer;
    function getId_Externo():Integer;
    function getNome():String;
    function getResource_Uri():String;

    procedure setApelido(aValue:String);
    procedure setAtivo(aValue:Boolean);
    procedure setDescricao(aValue:String);
    procedure setId(aValue:Integer);
    procedure setId_Externo(aValue:Integer);
    procedure setNome(aValue:String);
    procedure setResource_Uri(aValue:String);


    property Apelido: string read getApelido write setApelido;
    property Ativo: Boolean read getAtivo write setAtivo;
    property Descricao: string read getDescricao write setDescricao;
    property Id: Integer read getId write setId;
    property Id_Externo: Integer read getId_Externo write setId_Externo;
    property Nome: string read getNome write setNome;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
  end;

type
  TMarca = class(TInterfacedObject,iMarca)
  private
    FApelido: string;
    FAtivo: Boolean;
    FDescricao: string;
    FId: Integer;
    FId_Externo: Integer;
    FNome: string;
    FResource_Uri: string;
  published
    function getApelido():String;
    function getAtivo():Boolean;
    function getDescricao():String;
    function getId():Integer;
    function getId_Externo():Integer;
    function getNome():String;
    function getResource_Uri():String;

    procedure setApelido(aValue:String);
    procedure setAtivo(aValue:Boolean);
    procedure setDescricao(aValue:String);
    procedure setId(aValue:Integer);
    procedure setId_Externo(aValue:Integer);
    procedure setNome(aValue:String);
    procedure setResource_Uri(aValue:String);


    property Apelido: string read getApelido write setApelido;
    property Ativo: Boolean read getAtivo write setAtivo;
    property Descricao: string read getDescricao write setDescricao;
    property Id: Integer read getId write setId;
    property Id_Externo: Integer read getId_Externo write setId_Externo;
    property Nome: string read getNome write setNome;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
  end;

implementation

{ TMarca }

function TMarca.getApelido: String;
begin
  result := self.FApelido;
end;

function TMarca.getAtivo: Boolean;
begin
  result := self.FAtivo;
end;

function TMarca.getDescricao: String;
begin
  result := self.FDescricao;
end;

function TMarca.getId: Integer;
begin
  result := self.FId;
end;

function TMarca.getId_Externo: Integer;
begin
  result := self.FId_Externo;
end;

function TMarca.getNome: String;
begin
  result := self.FNome;
end;

function TMarca.getResource_Uri: String;
begin
  result := self.FResource_Uri;
end;

procedure TMarca.setApelido(aValue: String);
begin
  self.FApelido := aValue;
end;

procedure TMarca.setDescricao(aValue: String);
begin
  self.FDescricao := aValue;
end;

procedure TMarca.setId(aValue: Integer);
begin
  self.FId := aValue;
end;

procedure TMarca.setId_Externo(aValue: Integer);
begin
  self.FId_Externo := aValue;
end;

procedure TMarca.setNome(aValue: String);
begin
  self.FNome := aValue;
end;

procedure TMarca.setResource_Uri(aValue: String);
begin
  self.FResource_Uri := aValue;
end;

procedure TMarca.setAtivo(aValue: Boolean);
begin
  self.FAtivo := aValue;
end;

end.
