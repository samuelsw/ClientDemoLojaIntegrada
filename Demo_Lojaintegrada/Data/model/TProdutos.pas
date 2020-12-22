unit TProdutos;

interface

uses
  System.Generics.Collections, REST.Json.Types, System.Classes,TMarcas;


type
  TVariacoes = class
  end;

  TGrades = class
  end;

type
  iProduto = interface
    ['{A0E41470-781B-4CF6-AF3C-BA13DA9E257C}']
    procedure setApelido(aValue : String);
    procedure setAtivo(aValue : Boolean);
    procedure setBloqueado(aValue : Boolean);
    procedure setDescricao_Completa(aValue : String);
    procedure setGtin(aValue : String);
    procedure setId(aValue : Integer);
    procedure setId_Externo(aValue : Integer);
    procedure setMpn(aValue : String);
    procedure setNcm(aValue: String);
    procedure setNome(aValue : String);
    procedure setRemovido(aValue : Boolean);
    procedure setResource_Uri(aValue : String);
    procedure setSeo(aValue : String);
    procedure setSku(aValue : String);
    procedure setTipo(aValue : String);
    procedure setUrl(aValue : String);
    procedure setUrl_Video_Youtube(aValue : String);
//    procedure setgrades(aValue : TObjectList<TGrades>);
    procedure setcategorias(aValue :  TArray<string>);
//    procedure setvariacoes(aValue : TObjectList<TVariacoes>);
    procedure setdestaque(avalue : boolean);
    procedure setpeso(avalue : Currency);
    procedure setaltura(avalue : Currency);
    procedure setlargura(avalue : Currency);
    procedure setprofundidade(avalue : Currency);
    procedure setusado(aValue  : Boolean);
    procedure setMarca(aValue : TMarca);

    function getApelido()            : String;
    function getAtivo()              : Boolean;
    function getBloqueado()          : Boolean;
    function getDescricao_Completa() : String;
    function getGtin()               : String;
    function getId()                 : Integer;
    function getId_Externo()         : Integer;
    function getMpn()                : String;
    function getNcm()                : String;
    function getNome()               : String;
    function getRemovido()           : Boolean;
    function getResource_Uri()       : String;
    function getSeo()                : String;
    function getSku()                : String;
    function getTipo()               : String;
    function getUrl()                : String;
    function getUrl_Video_Youtube()  : String;
//    function GetGrades         : TObjectList<TGrades>;
//    function GetVariacoes      : TObjectList<TVariacoes>;
    function getcategorias()   : TArray<string>;
    function getDestaque()     : boolean;
    function getPeso()         : Currency;
    function getAltura()       : Currency;
    function getLargura()      : Currency;
    function getProfundidade() : Currency;
    function getUsado()        : boolean;
    function getMarca()        : TMarca;


    property Apelido: string read getApelido write setApelido;
    property Ativo: Boolean read getAtivo write setAtivo;
    property Bloqueado: Boolean read getBloqueado write setBloqueado;
    property Descricao_Completa: string read getDescricao_Completa write setDescricao_Completa;
    property Gtin: string read getGtin write setGtin;
    property Id: Integer read getId write setId;
    property id_externo: Integer read getId_Externo write setId_Externo;
    property Mpn: string read getMpn write setMpn;
    property Ncm: string read getNcm write setNcm;
    property Nome: string read getNome write setNome;
    property Removido: Boolean read getRemovido write setRemovido;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Seo: string read getSeo write setSeo;
    property Sku: String read getSku write setSku;
    property Tipo: string read getTipo write setTipo;
    property Url: string read getUrl write setUrl;
    property Url_Video_Youtube: string read getUrl_Video_Youtube write setUrl_Video_Youtube;

//    property Grades: TObjectList<TGrades> read GetGrades;
    property Categorias: TArray<string> read getCategorias write setCategorias;
//    property Variacoes: TObjectList<TVariacoes> read GetVariacoes;

    property Destaque     : boolean  read getDestaque write setDestaque;
    property Peso         : Currency read getPeso write setPeso;
    property Altura       : Currency read getAltura write setAltura;
    property Largura      : Currency read getLargura write setLargura;
    property Profundidade : Currency read getProfundidade write setProfundidade;
    property Usado        : boolean  read getUsado write setUsado;
    property Marca        : TMarca read getMarca write setMarca;

  end;

type
  TProduto = class(TinterfacedObject,iProduto)
  private
    FApelido            : string;
    FAtivo              : Boolean;
    FBloqueado          : Boolean;
    FDescricao_Completa : string;
    FGtin               : string;
    FId                 : Integer;
    FId_Externo         : Integer;
    FMpn                : string;
    FNcm                : String;
    FNome               : string;
    FRemovido           : Boolean;
    FResource_Uri       : string;
    FSeo                : string;
    FSku                : string;
    FTipo               : string;
    FUrl                : string;
    FUrl_Video_Youtube  : string;
    FMarca              : TMarca;

//    [JSONName('grades')]
//    FGradesArray:TArray<TGrades>;

//     [GenericListReflect]
//    FGrades: TObjectList<TGrades>;

//     [JSONName('variacoes')]
//    FVariacoesArray: TArray<TVariacoes>;

//    [GenericListReflect]
//    FVariacoes: TObjectList<TVariacoes>;

    FCategorias: TArray<string>;

    Fdestaque     : boolean;
    Fpeso         : Currency;
    Faltura       : Currency;
    Flargura      : Currency;
    Fprofundidade : Currency;
    Fusado        : Boolean;


  published
    procedure setApelido(aValue : String);
    procedure setAtivo(aValue : Boolean);
    procedure setBloqueado(aValue : Boolean);
    procedure setDescricao_Completa(aValue : String);
    procedure setGtin(aValue : String);
    procedure setId(aValue : Integer);
    procedure setId_Externo(aValue : Integer);
    procedure setMpn(aValue : String);
    procedure setNcm(aValue: String);
    procedure setNome(aValue : String);
    procedure setRemovido(aValue : Boolean);
    procedure setResource_Uri(aValue : String);
    procedure setSeo(aValue : String);
    procedure setSku(aValue : String);
    procedure setTipo(aValue : String);
    procedure setUrl(aValue : String);
    procedure setUrl_Video_Youtube(aValue : String);
//    procedure setgrades(aValue : TObjectList<TGrades>);
    procedure setcategorias(aValue :  TArray<string>);
//    procedure setvariacoes(aValue : TObjectList<TVariacoes>);
    procedure setdestaque(avalue : boolean);
    procedure setpeso(avalue : Currency);
    procedure setaltura(avalue : Currency);
    procedure setlargura(avalue : Currency);
    procedure setprofundidade(avalue : Currency);
    procedure setusado(aValue  : Boolean);
    procedure setMarca(aValue : TMarca);

    function getApelido()            : String;
    function getAtivo()              : Boolean;
    function getBloqueado()          : Boolean;
    function getDescricao_Completa() : String;
    function getGtin()               : String;
    function getId()                 : Integer;
    function getId_Externo()         : Integer;
    function getMpn()                : String;
    function getNcm()                : String;
    function getNome()               : String;
    function getRemovido()           : Boolean;
    function getResource_Uri()       : String;
    function getSeo()                : String;
    function getSku()                : String;
    function getTipo()               : String;
    function getUrl()                : String;
    function getUrl_Video_Youtube()  : String;
//    function GetGrades         : TObjectList<TGrades>;
//    function GetVariacoes      : TObjectList<TVariacoes>;
    function getcategorias()   : TArray<string>;
    function getDestaque()     : boolean;
    function getPeso()         : Currency;
    function getAltura()       : Currency;
    function getLargura()      : Currency;
    function getProfundidade() : Currency;
    function getUsado()        : boolean;
    function getMarca()        : TMarca;


    property Apelido: string read getApelido write setApelido;
    property Ativo: Boolean read getAtivo write setAtivo;
    property Bloqueado: Boolean read getBloqueado write setBloqueado;
    property Descricao_Completa: string read getDescricao_Completa write setDescricao_Completa;
    property Gtin: string read getGtin write setGtin;
    property Id: Integer read getId write setId;
    property id_externo: Integer read getId_Externo write setId_Externo;
    property Mpn: string read getMpn write setMpn;
    property Ncm: string read getNcm write setNcm;
    property Nome: string read getNome write setNome;
    property Removido: Boolean read getRemovido write setRemovido;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
    property Seo: string read getSeo write setSeo;
    property Sku: String read getSku write setSku;
    property Tipo: string read getTipo write setTipo;
    property Url: string read getUrl write setUrl;
    property Url_Video_Youtube: string read getUrl_Video_Youtube write setUrl_Video_Youtube;

//    property Grades: TObjectList<TGrades> read GetGrades;
    property Categorias: TArray<string> read getCategorias write setCategorias;
//    property Variacoes: TObjectList<TVariacoes> read GetVariacoes;

    property Destaque     : boolean  read getDestaque write setDestaque;
    property Peso         : Currency read getPeso write setPeso;
    property Altura       : Currency read getAltura write setAltura;
    property Largura      : Currency read getLargura write setLargura;
    property Profundidade : Currency read getProfundidade write setProfundidade;
    property Usado        : boolean  read getUsado write setUsado;
    property Marca        : TMarca read getMarca write setMarca;


    destructor Destroy; override;
  end;

implementation

{ TProduto }

destructor TProduto.Destroy;
begin
//  GetGrades.Free;
//  GetVariacoes.Free;
  inherited;
end;

function TProduto.getAltura: Currency;
begin
  result := self.FAltura;
end;

function TProduto.getApelido: String;
begin
  result := self.FApelido;
end;

function TProduto.getAtivo: Boolean;
begin
  result := self.FAtivo;
end;

function TProduto.getBloqueado: Boolean;
begin
  result := self.FBloqueado;
end;

function TProduto.getCategorias: TArray<string>;
begin
  result := self.FCategorias;
end;

function TProduto.getDescricao_Completa: String;
begin
  result := self.FDescricao_Completa;
end;

function TProduto.getDestaque: boolean;
begin
  result := self.Fdestaque;
end;

////function TProduto.GetGrades: TObjectList<TGrades>;
//begin
////  if not Assigned(FGrades) then
////  begin
////    FGrades := TObjectList<TGradesDTO>.Create;
////    FGrades.AddRange(FGradesArray);
////  end;
////  Result := FGrades;
//end;
//
////function TProduto.GetVariacoes: TObjectList<TVariacoes>;
//begin
////  if not Assigned(FVariacoes) then
////  begin
////    FVariacoes := TObjectList<TVariacoesDTO>.Create;
////    FVariacoes.AddRange(FVariacoesArray);
////  end;
////  Result := FVariacoes;
//end;

function TProduto.getGtin: String;
begin
  result := self.FGtin;
end;

function TProduto.getId: Integer;
begin
  result := self.Fid;
end;

function TProduto.getId_Externo: Integer;
begin
  result := self.FId_Externo;
end;

function TProduto.getLargura: Currency;
begin
  result := self.FLargura;
end;

function TProduto.getMarca: TMarca;
begin
  result := self.FMarca;
end;

function TProduto.getMpn: String;
begin
  result := self.Fmpn;
end;

function TProduto.getNcm: String;
begin
  result := self.Fncm;
end;

function TProduto.getNome: String;
begin
  result := self.Fnome;
end;

function TProduto.getPeso: Currency;
begin
  result := self.peso;
end;

function TProduto.getProfundidade: Currency;
begin
  result := self.FProfundidade;
end;

function TProduto.getRemovido: Boolean;
begin
  result := self.Fremovido;
end;

function TProduto.getResource_Uri: String;
begin
  result := self.FResource_Uri;
end;

function TProduto.getSeo: String;
begin
  result := self.FSeo;
end;

function TProduto.getSku: String;
begin
  result := self.Fsku;
end;

function TProduto.getTipo: String;
begin
  result := self.FTipo;
end;

function TProduto.getUrl: String;
begin
  result := self.FUrl;
end;

function TProduto.getUrl_Video_Youtube: String;
begin
  result := self.FUrl_Video_Youtube;
end;

function TProduto.getUsado: boolean;
begin
  result := self.Fusado;
end;

procedure TProduto.setaltura(avalue: Currency);
begin
  self.FAltura := Avalue;
end;

procedure TProduto.setApelido(aValue: String);
begin
  self.FApelido := aValue;
end;

procedure TProduto.setAtivo(aValue: Boolean);
begin
  self.FAtivo := aValue;
end;

procedure TProduto.setBloqueado(aValue: Boolean);
begin
  self.FBloqueado := aValue;
end;

procedure TProduto.setCategorias(aValue: TArray<string>);
begin
  self.FCategorias := aValue;
end;

procedure TProduto.setDescricao_Completa(aValue: String);
begin
  self.FDescricao_Completa := aValue;
end;

procedure TProduto.setdestaque(avalue: boolean);
begin
   self.FDestaque := Avalue;
end;

procedure TProduto.setGtin(aValue: String);
begin
  self.FGtin := aValue;
end;

procedure TProduto.setId(aValue: Integer);
begin
  self.FId := aValue;
end;

procedure TProduto.setId_Externo(aValue: integer);
begin
  self.FId_Externo := aValue;
end;

procedure TProduto.setlargura(avalue: Currency);
begin
  self.Flargura := Avalue;
end;

procedure TProduto.setMarca(aValue: TMarca);
begin
  self.FMarca := avalue;
end;

procedure TProduto.setMpn(aValue: String);
begin
  self.FMpn := aValue;
end;

procedure TProduto.setNcm(aValue: String);
begin
  self.FNcm := aValue;
end;

procedure TProduto.setNome(aValue: String);
begin
  self.FNome := aValue;
end;

procedure TProduto.setpeso(avalue: Currency);
begin
  self.Fpeso := Avalue;
end;

procedure TProduto.setprofundidade(avalue: Currency);
begin
  self.Fprofundidade := Avalue;
end;

procedure TProduto.setRemovido(aValue: Boolean);
begin
  self.FRemovido := aValue;
end;

procedure TProduto.setResource_Uri(aValue: String);
begin
  self.FResource_Uri := aValue;
end;

procedure TProduto.setSeo(aValue: String);
begin
  self.FSeo := aValue;
end;

procedure TProduto.setSku(aValue: String);
begin
  self.FSku := aValue;
end;

procedure TProduto.setTipo(aValue: String);
begin
  self.FTipo := aValue;
end;

procedure TProduto.setUrl(aValue: String);
begin
  self.FUrl := aValue;
end;

procedure TProduto.setUrl_Video_Youtube(aValue: String);
begin
  self.FUrl_Video_Youtube := aValue;
end;

procedure TProduto.setusado(aValue: Boolean);
begin
  self.Fusado := aValue;
end;



end.
