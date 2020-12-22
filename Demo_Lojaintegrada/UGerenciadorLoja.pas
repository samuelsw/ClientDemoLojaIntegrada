unit UGerenciadorLoja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,ULojaIntegrada, Data.DB,Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Datasnap.DBClient, REST.Types, System.JSON, Datasnap.Provider, System.Generics.Collections,TSituacaoPedidos,TPreco, TEstoqueItem, TPedidos,
  TCategorias,TMarcas,TProdutos, TClientes;


type
  TFrmGerenciadorLoja = class(TForm)
    PageControlHome: TPageControl;
    TabCategorias: TTabSheet;
    btnSincronizaCategorias: TBitBtn;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    TabMarcas: TTabSheet;
    Produtos: TTabSheet;
    btnSincronizaMarcas: TBitBtn;
    btnSincronizaProdutos: TBitBtn;
    CheckBox1: TCheckBox;
    dsCategorias: TDataSource;
    edtNomeCategoria: TEdit;
    BitBtn4: TBitBtn;
    edtDescricaoCatg: TEdit;
    lblcategori: TLabel;
    edtdesccategoria: TLabel;
    Panel1: TPanel;
    MemoResp: TMemo;
    Label1: TLabel;
    gbMarcas: TGroupBox;
    lblMarca: TLabel;
    lblDescMarca: TLabel;
    edtMarca: TEdit;
    btnGravaMarca: TBitBtn;
    edtDescMarca: TEdit;
    DBGrid2: TDBGrid;
    gbProdutos: TGroupBox;
    lbldescricao: TLabel;
    lblcodbarras: TLabel;
    edtProd: TEdit;
    BitBtn5: TBitBtn;
    edtCodBarras: TEdit;
    gridProdutos: TDBGrid;
    dsMarcas: TDataSource;
    dsProdutos: TDataSource;
    Label3: TLabel;
    lbllmarca: TLabel;
    cbCategorias: TComboBox;
    comboMarca: TComboBox;
    BitBtn6: TBitBtn;
    edtsku: TEdit;
    Label2: TLabel;
    edtCodPro: TEdit;
    lblCodPro: TLabel;
    TabSheet1: TTabSheet;
    Pedidos: TTabSheet;
    BitBtn7: TBitBtn;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    lblRotareadonly: TLabel;
    DBGrid4: TDBGrid;
    datasetPagamentos: TClientDataSet;
    dsFormasPagamento: TDataSource;
    datasetPagamentoscodigo: TStringField;
    datasetPagamentosativo: TBooleanField;
    datasetPagamentosdisponivel: TBooleanField;
    datasetPagamentosid: TIntegerField;
    datasetPagamentosimagem: TStringField;
    datasetPagamentosnome: TStringField;
    datasetPagamentosresource_uri: TStringField;
    pageenvio: TTabSheet;
    DBGrid5: TDBGrid;
    Label5: TLabel;
    datasetEnvios: TClientDataSet;
    dsFormasEnvio: TDataSource;
    datasetEnvioscodigo: TStringField;
    datasetEnviosid: TIntegerField;
    datasetEnviosimagem: TStringField;
    datasetEnviosnome: TStringField;
    datasetEnviosresource_uri: TStringField;
    datasetEnviostipo: TStringField;
    datasetSituacao: TClientDataSet;
    TabSheet3: TTabSheet;
    DBGrid6: TDBGrid;
    dsSituacao: TDataSource;
    datasetSituacaoaprovado: TBooleanField;
    datasetSituacaocancelado: TBooleanField;
    datasetSituacaocodigo: TStringField;
    datasetSituacaofinal: TBooleanField;
    datasetSituacaoid: TIntegerField;
    datasetSituacaonome: TStringField;
    datasetSituacaonotificar_comprador: TBooleanField;
    datasetSituacaopadrao: TBooleanField;
    datasetSituacaoresource_uri: TStringField;
    dsPedidos: TDataSource;
    datasetPedidos: TClientDataSet;
    datasetPedidoscliente: TStringField;
    datasetPedidosdata_criacao: TDateTimeField;
    datasetPedidosdata_expiracao: TDateTimeField;
    datasetPedidosdata_modificacao: TDateTimeField;
    datasetPedidosid_anymarket: TStringField;
    datasetPedidosid_externo: TStringField;
    datasetPedidosnumero: TIntegerField;
    datasetPedidospeso_real: TStringField;
    datasetPedidosresource_uri: TStringField;
    datasetPedidossituacao: TStringField;
    datasetPedidosutm_campaign: TStringField;
    datasetPedidosvalor_desconto: TStringField;
    datasetPedidosvalor_envio: TStringField;
    datasetPedidosvalor_subtotal: TStringField;
    datasetPedidosvalor_total: TStringField;
    datasetProdutos: TClientDataSet;
    datasetProdutosSKU: TStringField;
    datasetProdutosMPN: TStringField;
    datasetProdutosNCM: TStringField;
    datasetProdutosNOME: TStringField;
    datasetProdutosDESCRICAO_COMPLETA: TStringField;
    datasetProdutosATIVO: TBooleanField;
    datasetProdutosDESTAQUE: TBooleanField;
    datasetProdutosPESO: TCurrencyField;
    datasetProdutosALTURA: TCurrencyField;
    datasetProdutosLARGURA: TCurrencyField;
    datasetProdutosPROFUNDIDADE: TCurrencyField;
    datasetProdutosTIPO: TStringField;
    datasetProdutosUSADO: TBooleanField;
    datasetProdutosCATEGORIA: TIntegerField;
    datasetProdutosMARCA: TIntegerField;
    datasetProdutosREMOVIDO: TBooleanField;
    datasetProdutosID_EXTERNO: TStringField;
    datasetProdutosPRECO_CHEIO: TCurrencyField;
    datasetProdutosPRECO_CUSTO: TCurrencyField;
    datasetProdutosPRECO_PROMOCIONAL: TCurrencyField;
    datasetProdutosid: TIntegerField;
    Label6: TLabel;
    edtCodCategoria: TEdit;
    lblCodMarca: TLabel;
    edtCodMarca: TEdit;
    TabSheet4: TTabSheet;
    DBGrid7: TDBGrid;
    lblGrupoCliente: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    comboSituacoesPedido: TComboBox;
    Button1: TButton;
    datasetMarcas: TClientDataSet;
    datasetMarcasNOME: TStringField;
    datasetMarcasID_EXTERNO: TIntegerField;
    datasetMarcasDESCRICAO: TStringField;
    datasetMarcasID: TIntegerField;
    datasetCategorias: TClientDataSet;
    datasetCategoriasID_EXTERNO: TIntegerField;
    datasetCategoriasID: TIntegerField;
    datasetCategoriasNOME: TStringField;
    datasetCategoriasDESCRICAO: TStringField;
    DBGrid8: TDBGrid;
    Label9: TLabel;
    datasetClientes: TClientDataSet;
    DsClientes: TDataSource;
    datasetClientesid: TIntegerField;
    datasetClientesemail: TStringField;
    datasetClientesnome: TStringField;
    datasetClientestipo: TStringField;
    datasetClientesresource_uri: TStringField;
    datasetGrupoCliente: TClientDataSet;
    dsGrupoCliente: TDataSource;
    GroupBox3: TGroupBox;
    edtCodProdPrecoEstoque: TEdit;
    edtProdPrecoEstoque: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    cbgerenciado: TComboBox;
    edtsituacao_em_estoque: TEdit;
    Label4: TLabel;
    edtSituacao_sem_estoque: TEdit;
    lblsemestoque: TLabel;
    edtQuant: TEdit;
    qtdEstoque: TLabel;
    btnAlteraEstoque: TBitBtn;
    GroupBox5: TGroupBox;
    btnalteraPreco: TBitBtn;
    edtPrecoPromo: TEdit;
    edtPrecoCusto: TEdit;
    edtPrecoCheio: TEdit;
    lblPromo: TLabel;
    lblcusto: TLabel;
    lblPrecoCheio: TLabel;
    datasetGrupoClienteid: TIntegerField;
    datasetGrupoClientenome: TStringField;
    datasetGrupoClientepadrao: TBooleanField;
    datasetGrupoClienteresource_uri: TStringField;
    gbCodigoRast: TGroupBox;
    edtCodRastreio: TEdit;
    Button2: TButton;
    datasetPedidosid: TIntegerField;  procedure btnSincronizaCategoriasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSincronizaMarcasClick(Sender: TObject);
    procedure btnSincronizaProdutosClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LimpaEdits();
    procedure CheckBox1Click(Sender: TObject);
    procedure btnGravaMarcaClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    function SomenteNumero(AValue: string):string;
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnalteraPrecoClick(Sender: TObject);
    procedure btnAlteraEstoqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);




  private
    { Private declarations }

    procedure imprime(_listaSituacoesPedido : TList<iSituacaoPedido>) overload;
    procedure imprime(_listaPedidos : TList<iPedido>) overload;
    procedure imprime(_listaCategorias: TList<iCategoria>)overload;
    procedure imprime(_listaProdutos : TList<iProduto>) overload;
    procedure imprime(_listaMarcas   : TList<iMarca>) overload;
    procedure imprime(_listaClientes   : TList<iCliente>) overload;

  var i : integer;

  public
    { Public declarations }
  end;

var
  FrmGerenciadorLoja: TFrmGerenciadorLoja;

  {Controle central da integração}
  LojaVirtual       : TLojaVirtual;

implementation

{$R *.dfm}

function TFrmGerenciadorLoja.SomenteNumero(AValue: string):string;
Var
  I : Integer ;
  LenValue : Integer;
begin
  Result   := '' ;
  LenValue := Length( AValue ) ;
  For I := 1 to LenValue  do
  begin
     if CharInSet( AValue[I], ['0'..'9'] ) then
       Result := Result + AValue[I];
  end;
end;

procedure TFrmGerenciadorLoja.btnSincronizaCategoriasClick(Sender: TObject);

  var
  _listaCategorias : TList<TCategoria>;
  _Categoria       : TCategoria;

begin
  try
    try

      if datasetcategorias.isempty then exit;
      _listaCategorias := TList<TCategoria>.create;

      datasetcategorias.first;
      while not datasetcategorias.eof do
      begin
        _Categoria := TCategoria.create();
        _Categoria.setDescricao(datasetcategorias.fieldbyname('descricao').asString);
        _Categoria.setNome(datasetcategorias.fieldbyname('nome').asString);
        _Categoria.setId_Externo(datasetcategorias.fieldbyname('Id_Externo').asinteger);

        _listaCategorias.add(_Categoria);

        datasetcategorias.next;
      end;

      {Realiza upload das categorias informadas
      *Json de reposta da requisição no retorno da função}
      MemoResp.lines.add(
        LojaVirtual.UploadCategorias(_listaCategorias)
      );

    except
      showmessage('Erro ao sincronizar categorias');
    end;
  finally
    _listaCategorias.free;
  end;
end;

procedure TFrmGerenciadorLoja.btnSincronizaMarcasClick(Sender: TObject);

  var
  _listaMarcas  : TList<TMarca>;
  _Marca        : TMarca;

begin
  try
     if datasetMarcas.isempty then exit;
      _listaMarcas := TList<TMarca>.create;

      datasetMarcas.first;
      while not datasetMarcas.eof do
      begin
        _Marca := TMarca.create();
        _Marca.setDescricao(datasetMarcas.fieldbyname('descricao').asString);
        _Marca.setNome(datasetMarcas.fieldbyname('nome').asString);
        _Marca.setId_Externo(datasetMarcas.fieldbyname('Id_Externo').asinteger);

        _listaMarcas.add(_Marca);

        datasetMarcas.next;
      end;

    {Realiza upload das marcas informadas
      *Json de reposta da requisição no retorno da função}
    MemoResp.lines.add(
      LojaVirtual.UploadMarcas(_listaMarcas)
    );
  except
    showmessage('Erro ao sincronizar Marcas');
  end;
end;

procedure TFrmGerenciadorLoja.btnSincronizaProdutosClick(Sender: TObject);

    var
    _listaProdutosUpload          : TList<TProduto>;
    _listaProdutosJaSincronizados : TList<iProduto>;
    _Produto                      : TProduto;
    _MarcaProduto                 : TMarca;

    { Procura na lista de produtos ja sincronizados um id x
       auxilia a sincronizar somente os novos cadastros}
    function ProdutoJaSincronizado(_id : integer):boolean;
    var i : integer;
    begin
      result := false;
      for i := 0 to _listaProdutosJaSincronizados.count -1 do
      begin
          if _id = _listaProdutosJaSincronizados[i].getId_Externo then
          begin
            result := true;
            break;
          end;
      end;

    end;

    procedure preencheMarca();
    begin
      _MarcaProduto := TMarca.create;

      _MarcaProduto.setAtivo(true);
      _MarcaProduto.setNome(datasetProdutos.fieldbyname('marca').asstring);
      _MarcaProduto.setid_externo(datasetProdutos.fieldbyname('id_externo').asinteger);

      datasetMarcas.first;
      while not datasetMarcas.eof do
      begin
        if (datasetMarcas.fieldbyname('id_externo').asinteger = datasetProdutos.fieldbyname('marca').asinteger) then
        begin
          _MarcaProduto.setId(datasetMarcas.fieldbyname('id').ASinteger);
          break;
        end;

        datasetMarcas.next;
      end;

    end;

begin
  try

    _listaProdutosJaSincronizados := LojaVirtual.DownloadProdutos();


    if datasetProdutos.isempty then exit;
      _listaProdutosUpload := TList<TProduto>.create;

      datasetProdutos.first;
      while not datasetProdutos.eof do
      begin

        if not  ProdutoJaSincronizado(datasetProdutos.fieldbyname('id_Externo').asinteger) then
        begin
          _Produto := TProduto.create();

          preencheMarca();


          _Produto.setId_Externo(datasetProdutos.fieldbyname('id_Externo').asinteger);
          _Produto.setSku(datasetProdutos.fieldbyname('sku').asString);
          _Produto.setmpn('20098000');
          _Produto.setNcm('20098000');
          _Produto.setNome(datasetProdutos.fieldbyname('nome').asString);
          _Produto.setDescricao_Completa(datasetProdutos.fieldbyname('descricao_completa').asString);
          _Produto.setAtivo(true);
          _Produto.setdestaque(false);
          _Produto.setpeso(datasetProdutos.fieldbyname('peso').ascurrency);
          _Produto.setaltura(datasetProdutos.fieldbyname('altura').ascurrency);
          _Produto.setlargura(datasetProdutos.fieldbyname('largura').ascurrency);
          _Produto.setprofundidade(datasetProdutos.fieldbyname('profundidade').ascurrency);
          _Produto.settipo(datasetProdutos.fieldbyname('tipo').Asstring);
          _Produto.setusado(datasetProdutos.fieldbyname('usado').Asstring = '-1');
          _Produto.setcategorias(Tarray<string>.create('/api/v1/categoria/'+datasetProdutos.fieldbyname('id').Asstring));
          _Produto.setmarca(_MarcaProduto);
          _Produto.setremovido(datasetProdutos.fieldbyname('removido').Asstring = '-1');


          _listaProdutosUpload.add(_Produto);
        end;


        datasetProdutos.next;
      end;

    {Realiza upload dos produtos informadas
    *Json de reposta da requisição no retorno da função}
    MemoResp.lines.add(
      LojaVirtual.UploadProdutos(_listaProdutosUpload)
    );

    freeandnil(_listaProdutosUpload);
    freeandnil(_listaProdutosJaSincronizados);
  except
    showmessage('Erro ao sincronizar Produtos');
  end;
end;

// Obs : o codigo do status deve ser enviado em letras minúsculas
//  contudo ja esta tratado internamente no objeto TLojaVirtual
procedure TFrmGerenciadorLoja.Button1Click(Sender: TObject);
var RequisicaoOK : Boolean;
begin
  RequisicaoOK := LojaVirtual.AtualizaStatusPedido( datasetPedidos.FieldByName('numero').asinteger,
                                                    comboSituacoesPedido.text);

  // somente para fins visuais
  if RequisicaoOK then
  begin
    MemoResp.Lines.add('*** Pedido atualizado ***');

    datasetPedidos.edit;
    datasetPedidos.fieldbyname('situacao').asString := comboSituacoesPedido.text;
    datasetPedidos.post;
  end;

end;

procedure TFrmGerenciadorLoja.Button2Click(Sender: TObject);
var resp : string;
begin
  resp := '';
  resp := LojaVirtual.AtualizaCodigodeRastreio(
                       datasetpedidos.fieldbyname('id').asInteger,
                       Trim(edtCodRastreio.text) );

  MemoResp.lines.add('*** Alteração do Código de Rastreio ***');
  MemoResp.lines.add(resp);
end;

procedure TFrmGerenciadorLoja.BitBtn4Click(Sender: TObject);
begin
  datasetCategorias.Open;
  datasetCategorias.Append;
  datasetCategorias.Fieldbyname('NOME').AsString      := edtNomeCategoria.text;
  datasetCategorias.Fieldbyname('DESCRICAO').AsString := edtDescricaoCatg.text;
  datasetCategorias.Fieldbyname('id_externo').AsString := edtCodCategoria.text;
  datasetCategorias.post;
  LimpaEdits;
end;

procedure TFrmGerenciadorLoja.BitBtn5Click(Sender: TObject);
begin
  {Informações de valor e estoque são enviadas posteriormente}

  if (cbCategorias.itemindex < 0) then exit;

  if (comboMarca.itemindex < 0) then exit;

  datasetProdutos.Open;
  datasetProdutos.append;
  datasetProdutos.Fieldbyname('id_externo').AsString         := edtCodPro.text;
  datasetProdutos.Fieldbyname('sku').AsString                := edtsku.text;
  datasetProdutos.Fieldbyname('mpn').AsString                := '';
  datasetProdutos.Fieldbyname('ncm').AsString                := '20098000'; // ficticio
  datasetProdutos.Fieldbyname('nome').AsString               := edtProd.Text;
  datasetProdutos.Fieldbyname('descricao_completa').AsString := edtProd.Text;
  datasetProdutos.Fieldbyname('ativo').asBoolean             := true;
  datasetProdutos.Fieldbyname('destaque').asBoolean          := false;
  datasetProdutos.Fieldbyname('peso').asCurrency             := 0;
  datasetProdutos.Fieldbyname('altura').asCurrency           := 0;
  datasetProdutos.Fieldbyname('largura').asCurrency          := 0;
  datasetProdutos.Fieldbyname('profundidade').asCurrency     := 0;
  datasetProdutos.Fieldbyname('tipo').AsString               := 'normal';
  datasetProdutos.Fieldbyname('usado').asBoolean             := false;
  datasetProdutos.Fieldbyname('categoria').AsString          := somentenumero(cbCategorias.text);
  datasetProdutos.Fieldbyname('marca').AsString              := somentenumero(comboMarca.text);
  datasetProdutos.Fieldbyname('removido').asBoolean          := false;
  datasetProdutos.post;
  LimpaEdits;

end;

procedure TFrmGerenciadorLoja.BitBtn6Click(Sender: TObject);
begin


  if not datasetCategorias.isempty then
  begin
    cbCategorias.items.clear;
    datasetCategorias.first;
    while not datasetCategorias.eof do
    begin
      cbCategorias.items.add(inttostr(datasetCategorias.recno)+' '
                            +datasetCategorias.fieldbyname('NOME').AsString);
      datasetCategorias.next;
    end;
  end;

  if not datasetMarcas.isempty then
  begin
    comboMarca.items.clear;
    datasetMarcas.first;
    while not datasetMarcas.eof do
    begin
      comboMarca.items.add(inttostr(datasetMarcas.recno)+' '
                            +datasetMarcas.fieldbyname('NOME').AsString);
      datasetMarcas.next;
    end;
  end;


end;

procedure TFrmGerenciadorLoja.BitBtn7Click(Sender: TObject);
begin
  {As alterações de preço e estoque precisam ocoreer sobre um item ja existente}

  if datasetProdutos.isempty then exit;

  edtProdPrecoEstoque.Text        := datasetProdutos.FieldByName('NOME').AsString;
  edtCodProdPrecoEstoque.Text     := datasetProdutos.FieldByName('id').AsString;
  PageControlHome.activepageindex := 4;
end;

procedure TFrmGerenciadorLoja.btnalteraPrecoClick(Sender: TObject);
var precoItem : TPrecos;
    _Retornows : String;
begin

  try
    precoItem := TPrecos.create;
    precoItem.setPrecoCheio(strtocurr(somentenumero(edtPrecoCheio.text)));
    precoItem.setPrecoCusto(strtocurr(somentenumero(edtPrecoCusto.text)));
    precoItem.setPrecoPromocional(strtocurr(somentenumero(edtPrecoPromo.text)));
    _Retornows := '';

    LojaVirtual.UploadPreco(datasetProdutos.FieldByName('id').AsString,precoItem,_Retornows);
    MemoResp.lines.add(_Retornows);


  finally
    precoItem.free;
  end;
end;

procedure TFrmGerenciadorLoja.btnAlteraEstoqueClick(Sender: TObject);
var estoque : TEstoqueItens;
    _Retornows : String;
begin
  try
    estoque := TEstoqueItens.create();
    estoque.setGerenciado(StrToBoolDef(cbgerenciado.text,false));
    estoque.setsituacao_em_estoque(strtointdef(edtsituacao_em_estoque.text,1));
    estoque.setsituacao_sem_estoque(strtointdef(edtSituacao_sem_estoque.text,1));
    estoque.setquantidade(strtocurrdef(edtQuant.text,0));
    _Retornows := '';

    LojaVirtual.UploadEstoque(datasetProdutos.FieldByName('id').AsString,estoque,_Retornows);
    MemoResp.lines.add(_Retornows);
  finally
    estoque.free;
  end;
end;

procedure TFrmGerenciadorLoja.btnGravaMarcaClick(Sender: TObject);
begin
  datasetMarcas.Open;
  datasetMarcas.Append;
  datasetMarcas.Fieldbyname('id_externo').asinteger := strtointdef(edtCodMarca.text,1);
  datasetMarcas.Fieldbyname('NOME').AsString        := edtMarca.text;
  datasetMarcas.Fieldbyname('DESCRICAO').AsString   := edtDescMarca.text;
  datasetMarcas.post;
  LimpaEdits;
end;

procedure TFrmGerenciadorLoja.CheckBox1Click(Sender: TObject);
begin
  Panel1.Visible   := CheckBox1.Checked;
  MemoResp.Visible := CheckBox1.Checked;
  MemoResp.lines.Clear;
end;

procedure TFrmGerenciadorLoja.DBGrid3CellClick(Column: TColumn);
var i : integer;
begin
  if datasetPedidos.isempty then exit;

  // localiza a situação do pedido no combo abaixo - somente para fins visuais
  try
    for i:=0 to comboSituacoesPedido.items.count do
    begin
      comboSituacoesPedido.itemindex := i;
      if (lowercase(comboSituacoesPedido.text) = lowercase(datasetPedidos.fieldbyname('situacao').asstring)) then
      break
    end;
  except
  end;
end;

procedure TFrmGerenciadorLoja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    LojaVirtual.free;
  except

  end;
end;

procedure TFrmGerenciadorLoja.FormCreate(Sender: TObject);
var resp : String;
    _listaSituacoesPedido : TList<iSituacaoPedido>;
    _listaPedidos         : TList<iPedido>;
    _listaProdutos        : TList<iProduto>;
    _listaMarcas          : TList<iMarca>;
    _listaCategorias      : TList<iCategoria>;
    _listaClientes        : TList<iCliente>;
begin
  LojaVirtual :=  TLojaVirtual.new();
  CheckBox1Click(CheckBox1);

  {Carrega dados que ja estão na API}
  If Application.MessageBox('Carregar dados ja sincronizados?','Atenção',52) = 6 then
  try

    {Categorias}
    _listaCategorias := LojaVirtual.DownloadCategorias();
    imprime(_listaCategorias);

    {Marcas}
    _listaMarcas := LojaVirtual.DownloadMarcas();
    imprime(_listaMarcas);

    {Produtos}
    _listaProdutos := LojaVirtual.DownloadProdutos();
    imprime(_listaProdutos);

    {Situações do pedido}
    _listaSituacoesPedido := LojaVirtual.DownloadSituacoesdoPedido();
    imprime(_listaSituacoesPedido);

    {Pedidos}
    _listaPedidos := LojaVirtual.DownloadPedidos();
    imprime(_listaPedidos);

    {Clientes}
    _listaClientes := LojaVirtual.DownloadClientes();
    imprime(_listaClientes);




    {* No caso destas rotas não retornam objeto pois a rota na api é readonly,
      visto que não vai haver interação os dados são montados direto no dataset

      Obs. O ajuste de insert nos datasets pode ser realizado em ULojaIntegrada.Data
      sem incorrer na logica dos requests }

    resp := '';
    resp := LojaVirtual.DownloadFormasPagamento(datasetPagamentos);

    resp := '';
    resp := LojaVirtual.DownloadFormasEnvio(datasetEnvios);

    resp := '';
    resp := LojaVirtual.downloadGrupoClientes(datasetGrupoCliente);

  finally
  end;

end;

procedure TFrmGerenciadorLoja.FormShow(Sender: TObject);
begin
  PageControlHome.activepageindex := 0;
  BitBtn6.click;
end;

procedure TFrmGerenciadorLoja.imprime(_listaMarcas: TList<iMarca>);
var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Categorias ***');
    for i := 0 to _listaMarcas.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(_listaMarcas.items[i].nome+ ' ' + inttostr(_listaMarcas.items[i].id_externo) );


      {insere na grid}
      datasetMarcas.insert;
      datasetMarcas.FieldByName('nome').asString        := _listaMarcas.items[i].nome;
      datasetMarcas.FieldByName('descricao').asString   := _listaMarcas.items[i].descricao;
      datasetMarcas.FieldByName('id_externo').asinteger := _listaMarcas.items[i].id_externo;
      datasetMarcas.FieldByName('id').asinteger         := _listaMarcas.items[i].id;
      datasetMarcas.post;
    end;

  finally
    _listaMarcas.free;
  end;
end;

procedure TFrmGerenciadorLoja.imprime(_listaProdutos: TList<iProduto>);
var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Produtos ***');
    for i := 0 to _listaProdutos.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(_listaProdutos.items[i].nome + ' - ' + inttostr(_listaProdutos.items[i].Id_Externo) );


      {insere na grid}
      datasetProdutos.insert;
      datasetProdutos.FieldByName('SKU').AsString                := _listaProdutos.items[i].Sku;
      datasetProdutos.FieldByName('ID').ASiNTEGER                := _listaProdutos.items[i].Id;
      datasetProdutos.FieldByName('MPN').AsString                := _listaProdutos.items[i].Mpn;
      datasetProdutos.FieldByName('NCM').AsString                := _listaProdutos.items[i].Ncm;
      datasetProdutos.FieldByName('NOME').AsString               := _listaProdutos.items[i].Nome;
      if _listaProdutos.items[i].Descricao_Completa <> '' then
      datasetProdutos.FieldByName('DESCRICAO_COMPLETA').AsString := _listaProdutos.items[i].Descricao_Completa
      else
      datasetProdutos.FieldByName('DESCRICAO_COMPLETA').AsString := _listaProdutos.items[i].Nome;
      datasetProdutos.FieldByName('ATIVO').AsBoolean             := _listaProdutos.items[i].Ativo;
      datasetProdutos.FieldByName('DESTAQUE').AsBoolean          := false;
      datasetProdutos.FieldByName('PESO').AsCurrency             := 0;
      datasetProdutos.FieldByName('ALTURA').AsCurrency           := 0;
      datasetProdutos.FieldByName('LARGURA').AsCurrency          := 0;
      datasetProdutos.FieldByName('PROFUNDIDADE').AsCurrency     := 0;
      datasetProdutos.FieldByName('TIPO').AsString               := 'normal';
      datasetProdutos.FieldByName('USADO').AsBoolean             := false;
      datasetProdutos.FieldByName('CATEGORIA').asString          := '1';//somentenumero(_listaProdutos.items[i].Categorias[0]);
      datasetProdutos.FieldByName('MARCA').clear;
      datasetProdutos.FieldByName('REMOVIDO').AsBoolean          := _listaProdutos.items[i].Removido;
      datasetProdutos.FieldByName('ID_EXTERNO').asInteger        := _listaProdutos.items[i].Id_Externo;


      datasetProdutos.post;

    end;


  finally
    _listaProdutos.free;
  end;
end;

procedure TFrmGerenciadorLoja.imprime(
  _listaSituacoesPedido: TList<iSituacaoPedido>);
  var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Situações do Pedido ***');
    comboSituacoesPedido.items.clear;
    for i := 0 to _listaSituacoesPedido.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(_listaSituacoesPedido.items[i].Codigo+ ' ' + _listaSituacoesPedido.items[i].Nome );


      {insere na grid}
      datasetSituacao.insert;
      datasetSituacao.FieldByName('aprovado').asboolean            := _listaSituacoesPedido.items[i].Aprovado;
      datasetSituacao.FieldByName('cancelado').asboolean           := _listaSituacoesPedido.items[i].Cancelado;
      datasetSituacao.FieldByName('codigo').AsString               := _listaSituacoesPedido.items[i].Codigo;
      datasetSituacao.FieldByName('final').asboolean               := _listaSituacoesPedido.items[i].Final;
      datasetSituacao.FieldByName('id').asinteger                  := _listaSituacoesPedido.items[i].Id;
      datasetSituacao.FieldByName('nome').AsString                 := _listaSituacoesPedido.items[i].Nome;
      datasetSituacao.FieldByName('notificar_comprador').asboolean := _listaSituacoesPedido.items[i].Notificar_Comprador;
      datasetSituacao.FieldByName('padrao').asboolean              := _listaSituacoesPedido.items[i].Padrao;
      datasetSituacao.FieldByName('resource_uri').AsString         := _listaSituacoesPedido.items[i].Resource_Uri;
      datasetSituacao.post;


      {Alimenta também um combo - este controle é usado depois para alterar o status do pedido}
      comboSituacoesPedido.items.add(_listaSituacoesPedido.items[i].Codigo);
    end;

  finally
    _listaSituacoesPedido.free;
  end;

end;

procedure TFrmGerenciadorLoja.imprime(
  _listaPedidos: TList<iPedido>);
  var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Pedidos ***');
    for i := 0 to _listaPedidos.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(inttostr(_listaPedidos.items[i].Numero)+ ' - ' + datetostr(_listaPedidos.items[i].Data_Criacao) );


      {insere na grid}
      datasetPedidos.insert;
      datasetPedidos.FieldByName('cliente').asString            := _listaPedidos.items[i].cliente;
      datasetPedidos.FieldByName('data_criacao').asdatetime     := _listaPedidos.items[i].data_criacao;
      datasetPedidos.FieldByName('data_expiracao').asdatetime   := _listaPedidos.items[i].data_expiracao;
      datasetPedidos.FieldByName('data_modificacao').asdatetime := _listaPedidos.items[i].data_modificacao;
      datasetPedidos.FieldByName('id_anymarket').asString       := _listaPedidos.items[i].id_anymarket;
      datasetPedidos.FieldByName('id_externo').asString         := _listaPedidos.items[i].id_externo;
      datasetPedidos.FieldByName('numero').asinteger            := _listaPedidos.items[i].numero;
      datasetPedidos.FieldByName('peso_real').asString          := _listaPedidos.items[i].peso_real;
      datasetPedidos.FieldByName('resource_uri').asString       := _listaPedidos.items[i].resource_uri;
      datasetPedidos.FieldByName('situacao').asString           := _listaPedidos.items[i].situacao.getCodigo();
      datasetPedidos.FieldByName('utm_campaign').asString       := _listaPedidos.items[i].utm_campaign;
      datasetPedidos.FieldByName('valor_desconto').asString     := _listaPedidos.items[i].valor_desconto;
      datasetPedidos.FieldByName('valor_envio').asString        := _listaPedidos.items[i].valor_envio;
      datasetPedidos.FieldByName('valor_subtotal').asString     := _listaPedidos.items[i].valor_subtotal;
      datasetPedidos.FieldByName('valor_total').asString        := _listaPedidos.items[i].valor_total;
      datasetPedidos.FieldByName('ID').asInteger                := _listaPedidos.items[i].Id;
      datasetPedidos.post;
    end;

  finally
    _listaPedidos.free;
  end;
end;

procedure TFrmGerenciadorLoja.LimpaEdits();
var i : Integer;
begin
  try
    For i:=0 to componentcount -1 do
    begin
      if (Components[i] is TEdit) then
      (Components[i] as TEdit).text := '';
    end;
  except

  end;
end;


procedure TFrmGerenciadorLoja.imprime(_listaCategorias: TList<iCategoria>);
var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Categorias ***');
    for i := 0 to _listaCategorias.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(_listaCategorias.items[i].nome+ ' ' + inttostr(_listaCategorias.items[i].id_externo) );


      {insere na grid}
      datasetCategorias.insert;
      datasetCategorias.FieldByName('nome').asString       := _listaCategorias.items[i].nome;
      datasetCategorias.FieldByName('descricao').asString  := _listaCategorias.items[i].descricao;
      datasetCategorias.Fieldbyname('id_externo').AsInteger:= _listaCategorias.items[i].Id_Externo;
      datasetCategorias.fieldbyname('id').asinteger        := _listaCategorias.items[i].Id;

      datasetCategorias.post;
    end;

  finally
    _listaCategorias.free;
  end;
end;

procedure TFrmGerenciadorLoja.imprime(_listaClientes: TList<iCliente>);
var i : integer;
begin
  try
    MemoResp.lines.add('*** Listando Categorias ***');
    for i := 0 to _listaClientes.Count -1 do
    begin
      {Imprime no memo}
      MemoResp.lines.add(_listaClientes.items[i].nome+ ' ' + inttostr(_listaClientes.items[i].id) );


      {insere na grid}
      datasetClientes.insert;
      datasetClientes.fieldbyname('id').asinteger          := _listaClientes.items[i].id;
      datasetClientes.fieldbyname('nome').asstring         := _listaClientes.items[i].nome;
      datasetClientes.fieldbyname('email').asstring        := _listaClientes.items[i].email;
      datasetClientes.fieldbyname('tipo').asstring         := _listaClientes.items[i].tipo;
      datasetClientes.fieldbyname('resource_uri').asstring := _listaClientes.items[i].resource_uri;

      datasetClientes.post;
    end;

  finally
    _listaClientes.free;
  end;
end;

end.
