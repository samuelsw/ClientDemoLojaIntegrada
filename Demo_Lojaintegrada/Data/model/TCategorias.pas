unit TCategorias;

interface

uses
  System.Generics.Collections, REST.Json.Types;

  type
    iCategoria = interface
      ['{C1990E4B-13F8-44EB-ACBF-4AF51F8FA48D}']

    procedure setDescricao(aValue:String);
    procedure setId(aValue:Integer);
    procedure setId_Externo(aValue:Integer);
    procedure setNome(aValue:String);
    procedure setResource_Uri(aValue:String);
    procedure setSeo(aValue:String);
    procedure setUrl(aValue:String);

    function getDescricao():String;
    function getId():Integer;
    function getId_Externo():Integer;
    function getNome():String;
    function getResource_Uri():String;
    function getSeo():String;
    function getUrl():String;


    property Descricao    : string read getDescricao write setDescricao;
    property Id           : Integer read getId write setId;
    property Id_Externo   : Integer read getId_Externo write setId_Externo;
    property Nome         : string read getNome write setNome;
    property Resource_Uri : string read getResource_Uri write setResource_Uri;
    property Seo          : string read getSeo write setSeo;
    property Url          : string read getUrl write setUrl;
    end;

type
  TCategoria = class(TInterfacedObject,iCategoria)
  private
    FDescricao: string;
    FId: Integer;
    FId_Externo: Integer;
    FNome: string;
    FResource_Uri: string;
    FSeo: string;
    FUrl: string;
  published
    procedure setDescricao(aValue:String);
    procedure setId(aValue:Integer);
    procedure setId_Externo(aValue:Integer);
    procedure setNome(aValue:String);
    procedure setResource_Uri(aValue:String);
    procedure setSeo(aValue:String);
    procedure setUrl(aValue:String);

    function getDescricao():String;
    function getId():Integer;
    function getId_Externo():Integer;
    function getNome():String;
    function getResource_Uri():String;
    function getSeo():String;
    function getUrl():String;


    property Descricao    : string read getDescricao write setDescricao;
    property Id           : Integer read getId write setId;
    property Id_Externo   : Integer read getId_Externo write setId_Externo;
    property Nome         : string read getNome write setNome;
    property Resource_Uri : string read getResource_Uri write setResource_Uri;
    property Seo          : string read getSeo write setSeo;
    property Url          : string read getUrl write setUrl;
  end;
  
implementation

{ TCategoria }

function TCategoria.getDescricao: String;
begin
  result := self.FDescricao;
end;

function TCategoria.getId: Integer;
begin
  result := self.Fid;
end;

function TCategoria.getId_Externo: Integer;
begin
 result := self.FId_Externo;
end;

function TCategoria.getNome: String;
begin
  result := self.FNome;
end;

function TCategoria.getResource_Uri: String;
begin
  result := self.FResource_Uri;
end;

function TCategoria.getSeo: String;
begin
  result := self.FSeo;
end;

function TCategoria.getUrl: String;
begin
  result := self.FUrl;
end;

procedure TCategoria.setDescricao(aValue: String);
begin
  self.FDescricao := avalue;
end;

procedure TCategoria.setId(aValue: Integer);
begin
  self.FId := avalue;
end;

procedure TCategoria.setId_Externo(aValue: Integer);
begin
  self.FId_Externo := avalue;
end;

procedure TCategoria.setNome(aValue: String);
begin
  self.FNome := avalue;
end;

procedure TCategoria.setResource_Uri(aValue: String);
begin
  self.FResource_Uri := avalue;
end;

procedure TCategoria.setSeo(aValue: String);
begin
  self.FSeo := avalue;
end;

procedure TCategoria.setUrl(aValue: String);
begin
  self.FUrl := avalue;
end;

end.
