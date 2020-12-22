unit ULojaIntegrada;

interface

  uses
  RestConsumeAPI, REST.Types, System.SysUtils, Vcl.Forms, Data.DB,
  Datasnap.DBClient,TPreco, REST.Json,TEstoqueItem, System.Generics.Collections,TSituacaoPedidos, System.JSON,TPedidos,
   TCategorias,TMarcas,TProdutos,TClientes,TGrupos;

  type
  iLojaVirtual = interface
    ['{02E47E7C-409F-4B7E-B99D-7C31F570570E}']

      {Categorias}
      function UploadCategorias(_listaCategorias : TList<TCategoria>): String;
      function DownloadCategorias():TList<iCategoria>;

      {Marcas}
      function UploadMarcas(_listaMarcas : Tlist<TMarca>): String;
      function DownloadMarcas():TList<iMarca>;

      {Produtos}
      function UploadProdutos(_listaProdutos : TList<Tproduto>): String;
      function DownloadProdutos():TList<iProduto>;

      {Preços}
      function UploadPreco(id : String;objPreco : TPrecos; out jsonReturn: String): boolean;

      {Estoque}
      function UploadEstoque(id : String; objEstoque : TEstoqueItens; out jsonReturn : String):boolean;

      {Formas de Pagamento}
      function DownloadFormasPagamento(_dataset : TDataSet = nil):string;

      {Formas de envio}
      function DownloadFormasEnvio(_dataset : TDataSet = nil):string;

      {Situações do pedido}
      function DownloadSituacoesdoPedido(): TList<iSituacaoPedido>;

      {Pedido}
      function DownloadPedidos():TList<iPedido>;
      function AtualizaStatusPedido(idPedido : Integer ; sCodigoNovoStatus : String):boolean;
      function AtualizaCodigodeRastreio(pedido_id: integer;
                                        sNovoCodigodeRastreio: String): string;
      {Clientes}
      function downloadCLientes():TList<ICliente>;

  end;


  { *** Controlador do consumo a API Loja integrada *** }
  type
    TLojaVirtual = class(TInterfacedObject,iLojaVirtual)

    {Objeto central para consumo REST}
    FConsumeAPI  : iRestConsumeAPI;

  public

  {Falta considerar paginação de objetos no retorno de cada rota }


  {* Rotas de Upload   - recebe uma lista de objetos a serem enviados para a API
                       - retorna uma string alimentada com o Json de retorno do webservice

   * Rotas de Download - rtorna uma lista de objetos particulares de cada rota  }


      {Categorias}
      function UploadCategorias(_listaCategorias : TList<TCategoria>): String;
      function DownloadCategorias():TList<iCategoria>;

      {Preços}
      function UploadPreco(id : String;objPreco : TPrecos; out jsonReturn: String): boolean;
      {Estoque}
      function UploadEstoque(id : String; objEstoque : TEstoqueItens; out jsonReturn : String):boolean;

      {Marcas}
      function UploadMarcas(_listaMarcas : Tlist<TMarca>): String;
      function DownloadMarcas():TList<iMarca>;

      {Produtos}
      function UploadProdutos(_listaProdutos : TList<Tproduto>): String;
      function DownloadProdutos():TList<iProduto>;

      {Formas de Pagamento}
      function DownloadFormasPagamento(_dataset : TDataSet = nil):string;

      {Formas de envio}
      function DownloadFormasEnvio(_dataset : TDataSet = nil):string;

      {Situações do pedido}
      function DownloadSituacoesdoPedido(): TList<iSituacaoPedido>;

      {Pedido}
      function DownloadPedidos():TList<iPedido>;
      function AtualizaStatusPedido(idPedido : Integer ; sCodigoNovoStatus : String):boolean;
      function AtualizaCodigodeRastreio(pedido_id: integer;
                                                    sNovoCodigodeRastreio: String): string;

      {Clientes}
      function downloadCLientes():TList<ICliente>;
      function downloadGrupoClientes(_dataset: TDataSet = nil ): String;


      class function new():TLojaVirtual;
      procedure freeall();

  private
    procedure ConfiguraRequisicao( sURL : String);

  const
    {Concedido no painel da loja}
    chave_api       : String = 'Sua chave aqui';

    {Concedido via suporte a software house}
    chave_aplicacao : String = 'Sua chave aqui';
    URL_base        : String = 'https://api.awsli.com.br/v1';

  end;

implementation

uses
  ULojaIntegrada.data;

function TLojaVirtual.AtualizaCodigodeRastreio(pedido_id: integer;
  sNovoCodigodeRastreio: String): string;

  var jNovoRastreio : TJsonObject;
      iEnvioID      : Integer; // <> diferente do id do pedido

      {Busca ID do rastreio com base no ID do pedido}
  function getEnvio_id():integer;
    var jPedido : TJsonObject;
        jEnvios : TJsonArray;
        jEnvio  : TJsonObject;
  begin
    try
      result := 0;
      ConfiguraRequisicao('https://api.awsli.com.br/v1/pedido/'+inttostr(pedido_id));
      jPedido := FConsumeAPI.ExecutaMetodo(tpGet).JSONValue as TJsonobject;
      jEnvios := jPedido.get('envios').jsonvalue as TJsonArray;
      jEnvio  := jEnvios.Items[0] as TJsonObject;
      result  := strtointdef(jEnvio.getValue('id').value,0);

    finally

    end;
  end;

begin
  try
    try
      result   := '';
      iEnvioID := 0;
      iEnvioID := getEnvio_id();

      if iEnvioID <= 0 then exit;

      ConfiguraRequisicao('/pedido_envio/'+inttostr(iEnvioID));
      FConsumeAPI.bodyclear();

      jNovoRastreio.AddPair(TJsonPair.create('objeto',
                            TJsonString.Create(sNovoCodigodeRastreio)));

      // Add Json Codigo de Rastreio
      FConsumeAPI.AddBodyJson(jNovoRastreio.ToJSON);

      result  := result + FConsumeAPI.
                          ExecutaMetodo(tpPut).
                          JSONText;


    except
    end;
  finally

  end;
end;

function TLojaVirtual.AtualizaStatusPedido(idPedido: Integer;
  sCodigoNovoStatus: String): boolean;
  var jsonNovoStatus : TJsonObject;
begin
  result := false;
  try
    try

      jsonNovoStatus := TJsonObject.create();
      jsonNovoStatus.addpair('codigo',TJsonString.create(sCodigoNovoStatus));
      ConfiguraRequisicao('/situacao/pedido/'+inttostr(idPedido));
      FConsumeAPI.AddBodyJson(lowercase(jsonNovoStatus.tojson));
      result := true;

    except
      result := false;
    end;
  finally
    jsonNovoStatus.free;
  end;
end;

procedure TLojaVirtual.ConfiguraRequisicao(sURL : String);
begin
  try
    FConsumeAPI := TRestConsumeAPI.new(URL_base+sURL);
    FConsumeAPI.bodyclear();
    FConsumeAPI.AddParameter('chave_api', chave_api, REST.Types.pkQUERY);
    FConsumeAPI.AddParameter('chave_aplicacao', chave_aplicacao, REST.Types.pkQUERY);
  except
  end;
end;

function TLojaVirtual.UploadCategorias(_listaCategorias : TList<TCategoria>):String;
var i : integer;

  var jsonCategoria : TJsonObject;

begin
  try
    try

      ConfiguraRequisicao('/categoria');
      result := '';

      for i:=0 to _listaCategorias.count - 1 do
      begin
        jsonCategoria  :=  TJSONObject.ParseJSONValue(
                                       TJson.ObjectToJsonString(_listaCategorias[i]))
                                       as TJSONObject;

        FConsumeAPI.bodyclear();

        // algumas propriedades desse objeto não podem constar na hora de cadastrar
        jsonCategoria.RemovePair('id');
        jsonCategoria.RemovePair('resource_Uri');
        jsonCategoria.RemovePair('seo');
        jsonCategoria.RemovePair('url');

        result  := jsonCategoria.tojson;
        FConsumeAPI.AddBodyJson(jsonCategoria.tojson);

        result  := result + FConsumeAPI.
                            ExecutaMetodo(tpPost).
                            JSONText;

      end;


    except
    end;
  finally

  end;
end;

function TLojaVirtual.UploadEstoque(id: String; objEstoque: TEstoqueItens;
  out jsonReturn: String): boolean;
begin
  try
    try
      result := false;
      ConfiguraRequisicao('/produto_estoque/'+id);
      FConsumeAPI.bodyclear();

      // Add Json Categoria
      FConsumeAPI.AddBodyJson(TJson.Objecttojsonstring(objEstoque));

      jsonReturn  := jsonReturn + FConsumeAPI.
                                  ExecutaMetodo(tpPut).
                                  JSONText;


      result := true;
    except
       on E:Exception do
       begin
         jsonReturn := jsonReturn + 'error '+E.message;
         result     := false;
       end;
    end;
  finally

  end;
end;

function TLojaVirtual.DownloadCategorias():TList<iCategoria>;
  var
    _respostaCategorias : TJsonobject;
    _listaCategorias    : Tjsonarray;
    _Categoria          : iCategoria;
    i                   : integer;
begin
  try
    try
      ConfiguraRequisicao('/categoria');

      _respostaCategorias := FConsumeAPI.
                          ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _listaCategorias   := _respostaCategorias.get('objects').jsonvalue as Tjsonarray;
      result             := TList<iCategoria>.create;

      for i:=0 to _listaCategorias.size - 1 do
      begin
        _Categoria :=  TJson.JsonToObject<TCategoria>(
                                    (_listaCategorias.items[i] as TJsonObject)
                                 .Tojson);

        result.add(_Categoria);

      end;

    except

    end;
  finally

  end;
end;

function TLojaVirtual.DownloadFormasEnvio(_dataset: TDataSet): string;
begin
  try
    try
      result := '';
      ConfiguraRequisicao('/envio');
      FConsumeAPI.bodyclear();

      result := '' + FConsumeAPI.
                     ExecutaMetodo(tpGet).
                     JSONText;

      // Se desejar a rotina fornece um dataset alimentado com os dados de retorno
      if (_dataset <> nil) then
      begin
         ConstroiDatasetEnvios(_dataset,result);
      end;

    except
       on E:Exception do
       begin
         result := result + 'error '+E.message;
       end;
    end;
  finally

  end;
end;

function TLojaVirtual.DownloadFormasPagamento(_dataset: TDataSet): string;
begin
  try
    try
      result := '';
      ConfiguraRequisicao('/pagamento');
      FConsumeAPI.bodyclear();

      result := '' + FConsumeAPI.
                     ExecutaMetodo(tpGet).
                     JSONText;

      // Se desejar a rotina fornece um dataset alimentado com os dados de retorno
      if (_dataset <> nil) then
      begin
         ConstroiDatasetPagamentos(_dataset,result);
      end;

    except
       on E:Exception do
       begin
         result := result + 'error '+E.message;
       end;
    end;
  finally

  end;
end;

function TLojaVirtual.downloadGrupoClientes(_dataset: TDataSet = nil ): String;
begin
 //
  try
    try
      result := '';
      ConfiguraRequisicao('/grupo');
      FConsumeAPI.bodyclear();

      result := '' + FConsumeAPI.
                     ExecutaMetodo(tpGet).
                     JSONText;

      // Se desejar a rotina fornece um dataset alimentado com os dados de retorno
      if (_dataset <> nil) then
      begin
         ConstroiDatasetGrupoClientes(_dataset,result);
      end;

    except
       on E:Exception do
       begin
         result := result + 'error '+E.message;
       end;
    end;
  finally

  end;
end;

function TLojaVirtual.DownloadMarcas():TList<iMarca>;
  var _listaMarcas    : TJsonArray;
      _respostaMarcas : TJsonObject;
      i               : integer;
      _Marca          : iMarca;
begin
  try
    try
      ConfiguraRequisicao('/marca');
      _respostaMarcas := FConsumeAPI.
                          ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _listaMarcas      := _respostaMarcas.get('objects').jsonvalue as Tjsonarray;
      result            := TList<iMarca>.create;

      for i:=0 to _listaMarcas.size - 1 do
      begin
        _Marca :=  TJson.JsonToObject<TMarca>(
                            (_listaMarcas.items[i] as TJsonObject)
                        .Tojson);

        result.add(_Marca);

      end;

    except

    end;
  finally

  end;
end;

function TLojaVirtual.DownloadPedidos: TList<iPedido>;
  var _listaPedidos    : TJsonArray;
      _respostapedidos : TJsonObject;
      i                : integer;
      _Pedido          : iPedido;
begin
  try
    try

      ConfiguraRequisicao('/pedido/search/?since_numero=0');

      _respostapedidos := FConsumeAPI.
                          ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _listaPedidos      := _respostapedidos.get('objects').jsonvalue as Tjsonarray;
      result             := TList<iPedido>.create;

      for i:=0 to _listaPedidos.size - 1 do
      begin
        _Pedido :=  TJson.JsonToObject<TPedido>(
                            (_listaPedidos.items[i] as TJsonObject)
                         .Tojson);

        result.add(_Pedido);

      end;

    except

    end;
  finally
  end;
end;

function TLojaVirtual.DownloadProdutos(): TList<iProduto>;
  var _listaProdutos    : TJsonArray;
      _respostaProdutos : TJsonObject;
      i                 : integer;
      _Produto          : iProduto;
begin
  try
    try
      ConfiguraRequisicao('/produto');
      _respostaProdutos := FConsumeAPI.
                         ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _listaProdutos    := _respostaProdutos.get('objects').jsonvalue as Tjsonarray;
      result            := TList<iProduto>.create;

      for i:=0 to _listaProdutos.size - 1 do
      begin
        _Produto :=  TJson.JsonToObject<TProduto>(
                            (_listaProdutos.items[i] as TJsonObject)
                          .Tojson);

        result.add(_Produto);

      end;

    except
    end;
  finally

  end;
end;

function TLojaVirtual.DownloadSituacoesdoPedido(): TList<iSituacaoPedido>;

  var _listaSituacoes    : TJsonArray;
      _respostaSituacoes : TJsonObject;
      i                  : integer;
      _situacaoPedido    : iSituacaoPedido;
begin
  try
    try

      ConfiguraRequisicao('/situacao');
      FConsumeAPI.bodyclear();

      _respostaSituacoes := FConsumeAPI.
                            ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _listaSituacoes    := _respostaSituacoes.get('objects').jsonvalue as Tjsonarray;
      result             := TList<iSituacaoPedido>.create;

      for i:=0 to _listaSituacoes.size - 1 do
      begin
        _situacaoPedido :=  TJson.JsonToObject<TSituacaoPedido>(
                                    (_listaSituacoes.items[i] as TJsonObject)
                                 .Tojson);

        result.add(_situacaoPedido);

      end;

    except
      
    end;
  finally

  end;
end;

procedure TLojaVirtual.freeall;
begin
  try
   
  finally
    self.free;
  end;
end;

function TLojaVirtual.downloadCLientes: TList<ICliente>;

  var _respostaClientes : TJsonObject;
      _lisstaClientes   : TJsonArray;
      i                 : integer;
      _Cliente          : ICliente;

begin
  try
    try
       ConfiguraRequisicao('/cliente');
       FConsumeAPI.bodyclear();

      _respostaClientes := FConsumeAPI.
                            ExecutaMetodo(tpGet).JSONValue as TJsonobject;

      _lisstaClientes    := _respostaClientes.get('objects').jsonvalue as Tjsonarray;
      result               := TList<ICliente>.create;

      for i:=0 to _lisstaClientes.size - 1 do
      begin
        _Cliente :=  TJson.JsonToObject<TCliente>(
                                    (_lisstaClientes.items[i] as TJsonObject)
                                 .Tojson);

        result.add(_Cliente);
      end;

    finally

    end;
  finally

  end;
end;

function TLojaVirtual.UploadMarcas(_listaMarcas : Tlist<TMarca>):String;
var i : integer;
    jsonMarca : TJsonObject;
begin
  try
    try
      ConfiguraRequisicao('/marca');
      result := '';

      for i:=0 to _listaMarcas.count - 1 do
      begin

        FConsumeAPI.bodyclear();
        jsonMarca  :=  TJSONObject.ParseJSONValue(
                                     TJson.ObjectToJsonString(_listaMarcas[i]))
                                     as TJSONObject;

        // algumas propriedades desse objeto não podem constar na hora de cadastrar
        jsonMarca.RemovePair('apelido');
        jsonMarca.RemovePair('ativo');
        jsonMarca.RemovePair('id');
        jsonMarca.RemovePair('resource_Uri');

        FConsumeAPI.AddBodyJson(jsonMarca.tojson);

        result  := result + FConsumeAPI.
                            ExecutaMetodo(tpPost).
                            JSONText;

      end;


    except

    end;
  finally
  end;
end;

function TLojaVirtual.UploadPreco(id : String;objPreco : TPrecos; out jsonReturn: String): boolean;
var jsnEnvio : String;
begin
  try
    try
      result := false;

      ConfiguraRequisicao('/produto_preco/'+id);
      FConsumeAPI.bodyclear();
      jsnEnvio := TJson.Objecttojsonstring(objPreco);

      FConsumeAPI.AddBodyJson(jsnEnvio);
      jsonReturn  := jsonReturn + jsnEnvio;
      jsonReturn  := jsonReturn + FConsumeAPI.
                                  ExecutaMetodo(tpPut).
                                  JSONText;

      Application.ProcessMessages;

      result := true;
    except
       on E:Exception do
       begin
         jsonReturn := jsonReturn + 'error '+E.message;
         result     := false;
       end;
    end;
  finally
  end;
end;

function TLojaVirtual.UploadProdutos(_listaProdutos : TList<Tproduto>):String;
var i : integer;
    jsnEnvio : String;
    JsonProduto : TJsonObject;
begin
  try
    try

      ConfiguraRequisicao('/produto');
      result := '';

      for i:=0 to _listaProdutos.count - 1 do
      begin

        JsonProduto :=  TJSONObject.ParseJSONValue(
                                   TJson.ObjectToJsonString(_listaProdutos[i]))
                                   as TJSONObject;

        {Executa uma breve operação - removendo o obejto completo da marca.
          No caso do cadastro do item deve ser informado somente o link da
          marca ex : "marca": "/api/v1/marca/872588/" }

        JsonProduto.RemovePair('marca');

        {Nesse momento faz }
        JsonProduto.addpair('marca',TJsonString.create('/api/v1/marca/'+inttostr(
                                                       _listaProdutos[i].Marca.getId())));

        {remove algumas propriedades o caso do novo cadastro}
        JsonProduto.RemovePair('apelido');
        JsonProduto.RemovePair('bloqueado');
        JsonProduto.RemovePair('gtin');
        jsonProduto.RemovePair('id');
        jsonProduto.RemovePair('resource_Uri');
        jsonProduto.RemovePair('seo');
        jsonProduto.RemovePair('url');
        jsonProduto.RemovePair('url_Video_Youtube');

        result  := result + '**';
        result  := result + JsonProduto.tojson;
        result  := result + '**';

        FConsumeAPI.bodyclear();
        FConsumeAPI.AddBodyJson(
                      StringReplace(
                        JsonProduto.tojson,'\','',[rfReplaceAll]));

        result  := result + FConsumeAPI.
                            ExecutaMetodo(tpPost).
                            JSONText;

      end;


    except
    end;
  finally
  end;
end;

class function TLojaVirtual.new():TLojaVirtual;
begin
  result := TLojaVirtual.create;
end;

end.
