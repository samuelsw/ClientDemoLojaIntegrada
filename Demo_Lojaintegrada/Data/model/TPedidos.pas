unit TPedidos;

interface

uses
   System.Generics.Collections, REST.Json.Types,TSituacaoPedidos;

   type iPedido = interface
     ['{B7EFFFCA-AC74-434A-8ADE-11281F9627A9}']

    function getCliente():string;
    function getData_Criacao():TDateTime;
    function getData_Expiracao():TDateTime;
    function getData_Modificacao():TDateTime;
    function getNumero():Integer;
    function getPeso_Real():string;
    function getResource_Uri():string;
    function getValor_Desconto():string;
    function getValor_Envio():string;
    function getValor_Subtotal():string;
    function getValor_Total():string;
    function getsituacao():TSituacaoPedido;
    function getid_anymarket():string;
    function getid_externo():string;
    function getutm_campaign():string;
    function getId():Integer;

    procedure setCliente(avalue:string);
    procedure setData_Criacao(avalue:TDateTime);
    procedure setData_Expiracao(avalue:TDateTime);
    procedure setData_Modificacao(avalue:TDateTime);
    procedure setNumero(avalue:Integer);
    procedure setPeso_Real(avalue:string);
    procedure setResource_Uri(avalue:string);
    procedure setValor_Desconto(avalue:string);
    procedure setValor_Envio(avalue:string);
    procedure setValor_Subtotal(avalue:string);
    procedure setValor_Total(avalue:string);
    procedure setsituacao(avalue:TSituacaoPedido);
    procedure setid_anymarket(avalue:string);
    procedure setid_externo(avalue:string);
    procedure setutm_campaign(avalue:string);
    procedure setid(aValue : integer);

    property Cliente          : string read getCliente write setCliente;
    property Data_Criacao     : TDateTime read getData_Criacao write setData_Criacao;
    property Data_Expiracao   : TDateTime read getData_Expiracao write setData_Expiracao;
    property Data_Modificacao : TDateTime read getData_Modificacao write setData_Modificacao;
    property Numero           : Integer read getNumero write setNumero;
    property Peso_Real        : string read getPeso_Real write setPeso_Real;
    property Resource_Uri     : string read getResource_Uri write setResource_Uri;
    property Valor_Desconto   : string read getValor_Desconto write setValor_Desconto;
    property Valor_Envio      : string read getValor_Envio write setValor_Envio;
    property Valor_Subtotal   : string read getValor_Subtotal write setValor_Subtotal;
    property Valor_Total      : string read getValor_Total write setValor_Total;
    property situacao         : TSituacaoPedido read getsituacao write setsituacao;
    property id_anymarket     : string read getid_anymarket write setid_anymarket;
    property id_externo       : string read getid_externo write setid_externo;
    property utm_campaign     : string read getutm_campaign write setutm_campaign;
    property id               : integer read getId write setId;
   end;


type
  TPedido = class(TInterfacedObject,iPedido)
  private
    FCliente          : string;
    FData_Criacao     : TDateTime;
    FData_Expiracao   : TDateTime;
    FData_Modificacao : TDateTime;
    FNumero           : Integer;
    FPeso_Real        : string;
    FResource_Uri     : string;
    FValor_Desconto   : string;
    FValor_Envio      : string;
    FValor_Subtotal   : string;
    FValor_Total      : string;
    FSituacao         : TSituacaoPedido;
    Fid_anymarket     : string;
    Fid_externo       : string;
    Futm_campaign     : string;
    FId               : integer;

  published
    function getCliente():string;
    function getData_Criacao():TDateTime;
    function getData_Expiracao():TDateTime;
    function getData_Modificacao():TDateTime;
    function getNumero():Integer;
    function getPeso_Real():string;
    function getResource_Uri():string;
    function getValor_Desconto():string;
    function getValor_Envio():string;
    function getValor_Subtotal():string;
    function getValor_Total():string;
    function getsituacao():TSituacaoPedido;
    function getid_anymarket():string;
    function getid_externo():string;
    function getutm_campaign():string;
    function getId():Integer;

    procedure setCliente(avalue:string);
    procedure setData_Criacao(avalue:TDateTime);
    procedure setData_Expiracao(avalue:TDateTime);
    procedure setData_Modificacao(avalue:TDateTime);
    procedure setNumero(avalue:Integer);
    procedure setPeso_Real(avalue:string);
    procedure setResource_Uri(avalue:string);
    procedure setValor_Desconto(avalue:string);
    procedure setValor_Envio(avalue:string);
    procedure setValor_Subtotal(avalue:string);
    procedure setValor_Total(avalue:string);
    procedure setsituacao(avalue:TSituacaoPedido);
    procedure setid_anymarket(avalue:string);
    procedure setid_externo(avalue:string);
    procedure setutm_campaign(avalue:string);
    procedure setid(aValue : integer);

    property Cliente          : string read getCliente write setCliente;
    property Data_Criacao     : TDateTime read getData_Criacao write setData_Criacao;
    property Data_Expiracao   : TDateTime read getData_Expiracao write setData_Expiracao;
    property Data_Modificacao : TDateTime read getData_Modificacao write setData_Modificacao;
    property Numero           : Integer read getNumero write setNumero;
    property Peso_Real        : string read getPeso_Real write setPeso_Real;
    property Resource_Uri     : string read getResource_Uri write setResource_Uri;
    property Valor_Desconto   : string read getValor_Desconto write setValor_Desconto;
    property Valor_Envio      : string read getValor_Envio write setValor_Envio;
    property Valor_Subtotal   : string read getValor_Subtotal write setValor_Subtotal;
    property Valor_Total      : string read getValor_Total write setValor_Total;
    property situacao         : TSituacaoPedido read getsituacao write setsituacao;
    property id_anymarket     : string read getid_anymarket write setid_anymarket;
    property id_externo       : string read getid_externo write setid_externo;
    property utm_campaign     : string read getutm_campaign write setutm_campaign;
    property id               : integer read getId write setId;
  end;

implementation


{ TPedido }

function TPedido.getCliente: string;
begin
  result := self.FCliente;
end;

function TPedido.getData_Criacao: TDateTime;
begin
  result := self.FData_Criacao;
end;

function TPedido.getData_Expiracao: TDateTime;
begin
  result := self.FData_Expiracao;
end;

function TPedido.getData_Modificacao: TDateTime;
begin
  result := self.FData_Modificacao;
end;

function TPedido.getId: Integer;
begin
  result := self.Fid;
end;

function TPedido.getid_anymarket: string;
begin
  result := self.Fid_anymarket;
end;

function TPedido.getid_externo: string;
begin
  result := self.Fid_externo;
end;

function TPedido.getNumero: Integer;
begin
  result := self.FNumero;
end;

function TPedido.getPeso_Real: string;
begin
  result := self.FPeso_Real;
end;

function TPedido.getResource_Uri: string;
begin
  result := self.FResource_Uri;
end;

function TPedido.getsituacao: TSituacaoPedido;
begin
  result := self.FSituacao;
end;

function TPedido.getutm_campaign: string;
begin
  result := self.Futm_campaign;
end;

function TPedido.getValor_Desconto: string;
begin
  result := self.FValor_Desconto;
end;

function TPedido.getValor_Envio: string;
begin
  result := self.FValor_Envio;
end;

function TPedido.getValor_Subtotal: string;
begin
  result := self.FValor_Subtotal;
end;

function TPedido.getValor_Total: string;
begin
  result := self.FValor_Total;
end;

procedure TPedido.setCliente(avalue: string);
begin
   self.FCliente := avalue;
end;

procedure TPedido.setData_Criacao(avalue: TDateTime);
begin
  self.FData_Criacao := avalue;
end;

procedure TPedido.setData_Expiracao(avalue: TDateTime);
begin
  self.FData_Expiracao := avalue;
end;

procedure TPedido.setData_Modificacao(avalue: TDateTime);
begin
  self.FData_Modificacao := avalue;
end;

procedure TPedido.setid(aValue: integer);
begin
  self.FId := avalue;
end;

procedure TPedido.setid_anymarket(avalue: string);
begin
  self.Fid_anymarket := avalue;
end;

procedure TPedido.setid_externo(avalue: string);
begin
  self.Fid_externo := avalue;
end;

procedure TPedido.setNumero(avalue: Integer);
begin
  self.FNumero := avalue;
end;

procedure TPedido.setPeso_Real(avalue: string);
begin
  self.FPeso_Real := avalue;
end;

procedure TPedido.setResource_Uri(avalue: string);
begin
  self.FResource_Uri := avalue;
end;

procedure TPedido.setsituacao(avalue: TSituacaoPedido);
begin
  self.FSituacao := avalue;
end;

procedure TPedido.setutm_campaign(avalue: string);
begin
  self.Futm_campaign := avalue;
end;

procedure TPedido.setValor_Desconto(avalue: string);
begin
  self.FValor_Desconto := avalue;
end;

procedure TPedido.setValor_Envio(avalue: string);
begin
  self.FValor_Envio := avalue;
end;

procedure TPedido.setValor_Subtotal(avalue: string);
begin
  self.FValor_Subtotal := avalue;
end;

procedure TPedido.setValor_Total(avalue: string);
begin
  self.FValor_Total := avalue;
end;

end.
