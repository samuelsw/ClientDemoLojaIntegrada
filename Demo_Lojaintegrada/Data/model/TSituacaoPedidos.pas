unit TSituacaoPedidos;

interface

uses
   System.Generics.Collections, REST.Json.Types;
 type
 iSituacaoPedido = interface
   ['{DC96ED4B-E163-4DD6-812F-71F315A36FC5}']
    function getAprovado():Boolean;
    function getCancelado():Boolean;
    function getCodigo():string;
    function getFinal():Boolean;
    function getId():Integer;
    function getNome():string;
    function getNotificar_Comprador():Boolean;
    function getPadrao():Boolean;
    function getResource_Uri():string;

    procedure setAprovado(aValue : boolean);
    procedure setCancelado(aValue : boolean);
    procedure setCodigo(aValue : string);
    procedure setFinal(aValue : boolean);
    procedure setId(aValue : Integer);
    procedure setNome(aValue : string);
    procedure setNotificar_Comprador(aValue : boolean);
    procedure setPadrao(aValue : boolean);
    procedure setResource_Uri(aValue : string);

    property Aprovado: Boolean read getAprovado write setAprovado;
    property Cancelado: Boolean read getCancelado write setCancelado;
    property Codigo: string read getCodigo write setCodigo;
    property Final: Boolean read getFinal write setFinal;
    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Notificar_Comprador: Boolean read getNotificar_Comprador write setNotificar_Comprador;
    property Padrao: Boolean read getPadrao write setPadrao;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
 end;

type
  TSituacaoPedido = class(TInterfacedObject,iSituacaoPedido)
  private
    FAprovado: Boolean;
    FCancelado: Boolean;
    FCodigo: string;
    FFinal: Boolean;
    FId: Integer;
    FNome: string;
    FNotificar_Comprador: Boolean;
    FPadrao: Boolean;
    FResource_Uri: string;
  published

    function getAprovado():Boolean;
    function getCancelado():Boolean;
    function getCodigo():string;
    function getFinal():Boolean;
    function getId():Integer;
    function getNome():string;
    function getNotificar_Comprador():Boolean;
    function getPadrao():Boolean;
    function getResource_Uri():string;

    procedure setAprovado(aValue : boolean);
    procedure setCancelado(aValue : boolean);
    procedure setCodigo(aValue : string);
    procedure setFinal(aValue : boolean);
    procedure setId(aValue : Integer);
    procedure setNome(aValue : string);
    procedure setNotificar_Comprador(aValue : boolean);
    procedure setPadrao(aValue : boolean);
    procedure setResource_Uri(aValue : string);

    property Aprovado: Boolean read getAprovado write setAprovado;
    property Cancelado: Boolean read getCancelado write setCancelado;
    property Codigo: string read getCodigo write setCodigo;
    property Final: Boolean read getFinal write setFinal;
    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Notificar_Comprador: Boolean read getNotificar_Comprador write setNotificar_Comprador;
    property Padrao: Boolean read getPadrao write setPadrao;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
  end;

implementation

{ TSituacaoPedido }

function TSituacaoPedido.getAprovado: Boolean;
begin
  result := self.FAprovado;
end;

function TSituacaoPedido.getCancelado: Boolean;
begin
  result := Self.FCancelado;
end;

function TSituacaoPedido.getCodigo: string;
begin
  result := self.Fcodigo;
end;

function TSituacaoPedido.getFinal: Boolean;
begin
   result := self.Ffinal;
end;

function TSituacaoPedido.getId: Integer;
begin
   result := self.Fid;
end;

function TSituacaoPedido.getNome: string;
begin
  result := self.Fnome;
end;

function TSituacaoPedido.getNotificar_Comprador: Boolean;
begin
  result := self.FNotificar_Comprador;
end;

function TSituacaoPedido.getPadrao: Boolean;
begin
  result := self.FPadrao;
end;

function TSituacaoPedido.getResource_Uri: string;
begin
   result := self.FResource_Uri;
end;


procedure TSituacaoPedido.setAprovado(aValue: boolean);
begin
  self.FAprovado := aValue;
end;

procedure TSituacaoPedido.setCancelado(aValue: boolean);
begin
  self.FCancelado := avalue;
end;

procedure TSituacaoPedido.setCodigo(aValue: string);
begin
  self.FCodigo := avalue;
end;

procedure TSituacaoPedido.setFinal(aValue: boolean);
begin
  self.FFinal := avalue;
end;

procedure TSituacaoPedido.setId(aValue: Integer);
begin
  self.FId := avalue;
end;

procedure TSituacaoPedido.setNome(aValue: string);
begin
  self.FNome := avalue;
end;

procedure TSituacaoPedido.setNotificar_Comprador(aValue: boolean);
begin
  self.FNotificar_Comprador := avalue;
end;

procedure TSituacaoPedido.setPadrao(aValue: boolean);
begin
  self.FPadrao := avalue;
end;

procedure TSituacaoPedido.setResource_Uri(aValue: string);
begin
  self.FResource_Uri := avalue;
end;

end.
