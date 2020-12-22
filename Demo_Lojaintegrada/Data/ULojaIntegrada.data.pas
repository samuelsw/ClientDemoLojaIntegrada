unit ULojaIntegrada.data;

interface

uses
  System.JSON,  Data.DB, System.Classes, System.SysUtils, System.Variants, Vcl.Dialogs, Datasnap.DBClient,TPreco;


  procedure ConstroiDatasetEnvios(dataset: TDataset; sJsonEnvios: String);
  procedure ConstroiDatasetPagamentos(dataset: TDataset; sJsonPagamentos: String);
  procedure ConstroiDatasetGrupoClientes(dataset: TDataset; sJsonGrupos: String);


implementation

procedure ConstroiDatasetGrupoClientes(dataset: TDataset; sJsonGrupos: String);
var
  jRetorno        : TJsonObject;
  jGrupo          : TJsonObject;
  arraygrupos     : TJsonArray;
  i               : integer;
begin

  JRetorno := TJSONObject.ParseJSONValue(sJsonGrupos) as TjsonObject;
  arraygrupos := jRetorno.get('objects').jsonValue as TJsonArray;

  dataset.close;
  dataset.open;
  for i := 0 to arraygrupos.size-1 do
  begin
    jGrupo := arraygrupos.items[i] as TJsonObject;

    dataset.insert;
    dataset.FieldByName('id').AsString           := jGrupo.GetValue('id').value;
    dataset.FieldByName('nome').AsString         := jGrupo.GetValue('nome').value;
    dataset.FieldByName('padrao').asboolean      := jGrupo.GetValue('nome').value = 'true';
    dataset.FieldByName('resource_uri').AsString := jGrupo.GetValue('resource_uri').value;

    dataset.post;
  end;
end;

procedure ConstroiDatasetEnvios(dataset: TDataset;
  sJsonEnvios: String);
  var
  jRetorno        : TJsonObject;
  arrayenvios     : TJsonArray;
  jEnvio          : TJsonObject;
  i               : Integer;
begin

  JRetorno := TJSONObject.ParseJSONValue(sJsonEnvios) as TjsonObject;
  arrayenvios := jRetorno.get('objects').jsonValue as TJsonArray;

  dataset.close;
  dataset.open;
  for i := 0 to arrayenvios.size-1 do
  begin
    jEnvio := arrayenvios.items[i] as TJsonObject;

    dataset.insert;
    dataset.FieldByName('codigo').AsString       := jEnvio.GetValue('codigo').value;
    dataset.FieldByName('tipo').AsString         := jEnvio.GetValue('tipo').value;
    dataset.FieldByName('id').AsString           := jEnvio.GetValue('id').value;
    dataset.FieldByName('imagem').AsString       := jEnvio.GetValue('imagem').value;
    dataset.FieldByName('nome').AsString         := jEnvio.GetValue('nome').value;
    dataset.FieldByName('resource_uri').AsString := jEnvio.GetValue('resource_uri').value;

    dataset.post;
  end;
end;

procedure ConstroiDatasetPagamentos(dataset: TDataset;
  sJsonPagamentos: String);

  var
  jRetorno        : TJsonObject;
  arrayPagamentos : TJsonArray;
  jPagamento      : TJsonObject;
  jConfig         : TJsonObject;
  i               : Integer;
begin

  JRetorno := TJSONObject.ParseJSONValue(sJsonPagamentos) as TjsonObject;
  arrayPagamentos := jRetorno.get('objects').jsonValue as TJsonArray;

  dataset.close;
  dataset.open;
  for i := 0 to arrayPagamentos.size-1 do
  begin
    jPagamento := arrayPagamentos.items[i] as TJsonObject;
    jConfig    := jPagamento.get('configuracoes').jsonValue as TjsonObject;

    dataset.insert;
    dataset.FieldByName('codigo').AsString       := jPagamento.GetValue('codigo').value;
    dataset.FieldByName('ativo').asboolean       := jConfig.GetValue('ativo').value = 'true';
    dataset.FieldByName('disponivel').asboolean  := jConfig.GetValue('disponivel').value = 'true' ;
    dataset.FieldByName('id').AsString           := jPagamento.GetValue('id').value;
    dataset.FieldByName('imagem').AsString       := jPagamento.GetValue('imagem').value;
    dataset.FieldByName('nome').AsString         := jPagamento.GetValue('nome').value;
    dataset.FieldByName('resource_uri').AsString := jPagamento.GetValue('resource_uri').value;

    dataset.post;
  end;

end;

//function jsonFactoryProduto(dataSet: TDataSet): TJSONObject;
//var jCategorias : TJsonArray;
//begin
//  result      := TJSONObject.create;
//  jCategorias := TJSONArray.create();
//  jCategorias.addElement(TJsonString.Create(URL_CATEGORIA+dataset.fieldbyname('categoria').AsString+'?id_externo=1'));
//
//  result.addPair('id_externo',TJsonNumber.Create(dataset.fieldbyname('id_externo').AsString));
//  result.addPair('sku',TJsonString.Create(dataset.fieldbyname('sku').AsString));
//  result.addPair('mpn',TJsonString.Create(dataset.fieldbyname('mpn').AsString));
//  result.addPair('ncm',TJsonString.Create(dataset.fieldbyname('ncm').AsString));
//  result.addPair('nome',TJsonString.Create(dataset.fieldbyname('nome').AsString));
//  result.addPair('descricao_completa',TJsonString.Create(dataset.fieldbyname('descricao_completa').AsString));
//  result.addPair('ativo',TJSONBool.Create(dataset.fieldbyname('ativo').Asboolean));
//  result.addPair('destaque',TJSONBool.Create(false));
//  result.addPair('peso',TJsonNumber.Create(0));
//  result.addPair('altura',TJsonNumber.Create(0));
//  result.addPair('largura',TJsonNumber.Create(0));
//  result.addPair('profundidade',TJsonNumber.Create(0));
//  result.addPair('tipo',TJsonString.Create('normal'));
//  result.addPair('usado',TJSONBool.Create(false));
//  result.addPair('categorias',jCategorias);
//  result.addPair('marca',TJsonString.Create(URL_MARCA+dataset.fieldbyname('marca').AsString+'?id_externo=1'));
//  result.addPair('removido',TJSONBool.Create(false));
//
//end;



end.
