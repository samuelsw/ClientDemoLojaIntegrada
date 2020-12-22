unit TGrupos;

interface

uses
  System.Generics.Collections, REST.Json.Types;

{$M+}
  type iGrupo = interface
    ['{A08E32C6-1932-4112-92A3-3052B9209E84}']
    procedure setId(aValue : Integer);
    procedure setNome(aValue : String);
    procedure setPadrao(aValue : boolean);
    procedure setResource_URI(aValue : String);
    function getid():integer;
    function getNome():String;
    function getPadrao():boolean;
    function getResource_URI():string;

    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Padrao: Boolean read getPadrao write setPadrao;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
  end;


type
  TGrupo = class(TInterfacedobject,iGrupo)
  private
    FId: Integer;
    FNome: string;
    FPadrao: Boolean;
    FResource_Uri: string;
  published
    procedure setId(aValue : Integer);
    procedure setNome(aValue : String);
    procedure setPadrao(aValue : boolean);
    procedure setResource_URI(aValue : String);
    function getid():integer;
    function getNome():String;
    function getPadrao():boolean;
    function getResource_URI():string;

    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Padrao: Boolean read getPadrao write setPadrao;
    property Resource_Uri: string read getResource_Uri write setResource_Uri;
  end;

implementation

{ TGrupo }

function TGrupo.getid: integer;
begin
  result := Self.FId;
end;

function TGrupo.getNome: String;
begin
  result := Self.FNome;
end;

function TGrupo.getPadrao: boolean;
begin
  result := Self.FPadrao;
end;

function TGrupo.getResource_URI: string;
begin
  result := Self.FResource_Uri;
end;

procedure TGrupo.setId(aValue: Integer);
begin
  self.FId := avalue;
end;

procedure TGrupo.setNome(aValue: String);
begin
  self.FNome := avalue;
end;

procedure TGrupo.setPadrao(aValue: boolean);
begin
  self.FPadrao := avalue;
end;

procedure TGrupo.setResource_URI(aValue: String);
begin
  self.FResource_URI := avalue;
end;

end.
