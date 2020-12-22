object FrmGerenciadorLoja: TFrmGerenciadorLoja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador Loja'
  ClientHeight = 462
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlHome: TPageControl
    Left = 0
    Top = 0
    Width = 793
    Height = 462
    ActivePage = TabCategorias
    Align = alClient
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object Pedidos: TTabSheet
      Caption = 'Pedidos'
      ImageIndex = 4
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 785
        Height = 361
        Align = alTop
        DataSource = dsPedidos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cliente'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_modificacao'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_externo'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_desconto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_envio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_total'
            Width = 80
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 367
        Width = 361
        Height = 63
        Caption = 'Situa'#231#227'o Pedido '
        TabOrder = 1
        object comboSituacoesPedido: TComboBox
          Left = 11
          Top = 23
          Width = 226
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 246
          Top = 23
          Width = 102
          Height = 25
          Caption = 'Alterar Situa'#231#227'o'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object gbCodigoRast: TGroupBox
        Left = 368
        Top = 367
        Width = 353
        Height = 63
        Caption = 'Codigo de rastreio'
        TabOrder = 2
        object edtCodRastreio: TEdit
          Left = 24
          Top = 23
          Width = 235
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button2: TButton
          Left = 265
          Top = 23
          Width = 81
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object TabCategorias: TTabSheet
      Caption = 'Categorias'
      object btnSincronizaCategorias: TBitBtn
        Left = 632
        Top = 377
        Width = 153
        Height = 57
        Align = alRight
        Caption = 'Sincroniza categorias'
        TabOrder = 0
        OnClick = btnSincronizaCategoriasClick
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 63
        Width = 785
        Height = 314
        Align = alTop
        DataSource = dsCategorias
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_EXTERNO'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 160
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 63
        Align = alTop
        Caption = 'Categoria'
        TabOrder = 2
        object lblcategori: TLabel
          Left = 91
          Top = 16
          Width = 77
          Height = 13
          Caption = 'Nome Categoria'
        end
        object edtdesccategoria: TLabel
          Left = 263
          Top = 16
          Width = 94
          Height = 13
          Caption = 'Descri'#231#227'o categoria'
        end
        object Label6: TLabel
          Left = 11
          Top = 16
          Width = 31
          Height = 13
          Caption = 'codigo'
        end
        object edtNomeCategoria: TEdit
          Left = 91
          Top = 32
          Width = 166
          Height = 21
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 591
          Top = 32
          Width = 75
          Height = 21
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object edtDescricaoCatg: TEdit
          Left = 263
          Top = 32
          Width = 322
          Height = 21
          TabOrder = 2
        end
        object edtCodCategoria: TEdit
          Left = 11
          Top = 32
          Width = 74
          Height = 21
          TabOrder = 3
        end
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 379
        Width = 97
        Height = 17
        Caption = 'Ver Respostas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 3
        OnClick = CheckBox1Click
      end
    end
    object TabMarcas: TTabSheet
      Caption = 'Marcas'
      ImageIndex = 1
      object btnSincronizaMarcas: TBitBtn
        Left = 632
        Top = 377
        Width = 153
        Height = 57
        Align = alRight
        Caption = 'Sincroniza Marcas'
        TabOrder = 0
        OnClick = btnSincronizaMarcasClick
      end
      object gbMarcas: TGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 63
        Align = alTop
        Caption = 'Marcas'
        TabOrder = 1
        object lblMarca: TLabel
          Left = 105
          Top = 16
          Width = 59
          Height = 13
          Caption = 'Nome Marca'
        end
        object lblDescMarca: TLabel
          Left = 263
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Descri'#231#227'o Marca'
        end
        object lblCodMarca: TLabel
          Left = 14
          Top = 16
          Width = 55
          Height = 13
          Caption = 'Cod. Marca'
        end
        object edtMarca: TEdit
          Left = 105
          Top = 32
          Width = 153
          Height = 21
          TabOrder = 0
        end
        object btnGravaMarca: TBitBtn
          Left = 591
          Top = 32
          Width = 75
          Height = 21
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = btnGravaMarcaClick
        end
        object edtDescMarca: TEdit
          Left = 263
          Top = 32
          Width = 322
          Height = 21
          TabOrder = 2
        end
        object edtCodMarca: TEdit
          Left = 14
          Top = 32
          Width = 75
          Height = 21
          TabOrder = 3
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 63
        Width = 785
        Height = 314
        Align = alTop
        DataSource = dsMarcas
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_EXTERNO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Width = 120
            Visible = True
          end>
      end
    end
    object Produtos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object btnSincronizaProdutos: TBitBtn
        Left = 632
        Top = 361
        Width = 153
        Height = 73
        Align = alRight
        Caption = 'Sincroniza Produtos'
        TabOrder = 0
        OnClick = btnSincronizaProdutosClick
      end
      object gbProdutos: TGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 121
        Align = alTop
        Caption = 'Produto'
        TabOrder = 1
        object lbldescricao: TLabel
          Left = 70
          Top = 16
          Width = 87
          Height = 13
          Caption = 'Descri'#231#227'o produto'
        end
        object lblcodbarras: TLabel
          Left = 277
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Cod. Barras'
        end
        object Label3: TLabel
          Left = 16
          Top = 59
          Width = 47
          Height = 13
          Caption = 'Categoria'
        end
        object lbllmarca: TLabel
          Left = 133
          Top = 59
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object Label2: TLabel
          Left = 401
          Top = 16
          Width = 19
          Height = 13
          Caption = 'SKU'
        end
        object lblCodPro: TLabel
          Left = 16
          Top = 16
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object edtProd: TEdit
          Left = 70
          Top = 32
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object BitBtn5: TBitBtn
          Left = 593
          Top = 32
          Width = 68
          Height = 21
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = BitBtn5Click
        end
        object edtCodBarras: TEdit
          Left = 277
          Top = 32
          Width = 116
          Height = 21
          TabOrder = 2
        end
        object cbCategorias: TComboBox
          Left = 16
          Top = 74
          Width = 105
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 3
        end
        object comboMarca: TComboBox
          Left = 133
          Top = 74
          Width = 105
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 4
        end
        object BitBtn6: TBitBtn
          Left = 254
          Top = 72
          Width = 43
          Height = 25
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000070000000E00000013000000150000
            00130000000F0000000800000002000000000000000000000000000000000000
            000000000001000000040000000F35200E6C70431DC4915525EF9C5C28FF8E54
            24F06C401CC4321D0D6D00000011000000050000000100000000000000000000
            0001000000060E09042972461FBDAF723BFFC9965FFFD6A872FFDCAF78FFD5A7
            71FFC7945EFFA76B36FF683D1ABF0D07032C0000000600000001000000000000
            0004191008379F6530ECC69059FFD6A973FFCE975AFFC78848FFC48542FFC789
            48FFCF975AFFD5A771FFBE8955FF8F5526ED0E08042E00000004000000020201
            0110945F2ED7CE9B65FFD3A56FFFC48646FFD6B18DFFEDDED1FFFAF7F6FFEEDF
            D1FFD9B38EFFC58746FFD8A971FFC69360FF6B3F1BBD0000000F00000005442D
            176DC38A4FFFDCB37FFFB97C42FFDDC5B3FFC5BBB6FFECE5E2FFF3EDEBFFF2EC
            E8FFEDE5E0FFDFC8B6FFC48949FFDEB581FFB07641FF36200E6B000000088559
            2FBED6AA75FFCC9860FFCFA783FFD2C3BCFF5F4F46FFAEA19BFFE6DCD8FFEAE0
            DBFFE7DBD5FFE2D3CCFFCFA783FFD09C61FFCEA06CFF73451EC000000009AF76
            40EDE3C192FFC3894AFFD4BAA9FFDCCAC1FFC7B6AEFF65534CFFAB9C96FFD3C5
            BEFFD0C1B9FFCDBBB2FFD4BAA8FFC38849FFE0BC8BFF985C29EBBE7F44FFBA7B
            3EFFB67538FFB16F31FFAF6B2DFFAC672AFFC89F7EFFD1C6C0FF594B4FFF2C3B
            B0FF1A2DBEFF1120B6FFD2B9ABFFBF8242FFE8C89AFFA86930FBC4884EFFEDD1
            A7FFE6C08CFFE3B67EFFCE9558FFD4B08EFFF2EBE7FFF2EBE8FFE6DFDAFFF2EB
            E8FFECE3DEFFD0B7ABFFCBAC99FFC2874AFFE5C697FFA96C32F6C78C51FFF0D9
            B4FFE9C998FFE7C291FFC3884CFFE8D8CAFFF9F6F4FFF9F6F4FFF9F6F4FFF9F6
            F4FFF3ECE9FFCCB0A2FFC3956EFFD1A26CFFDAB482FFA56C33EBC98F54FFF3E0
            BDFFE2BF91FFEFD6AFFFE5C08FFFC58D56FFDFC9BAFFF8F5F3FFF8F5F3FFE8DC
            D6FFD1B8ACFFC6A188FFBD8347FFE9CFA2FFCE9E67FF68452297CA9157FFDFBA
            8CFFB5804DE6EAD0A8FFF1DDB6FFE8CA9EFFC48C53FFC19168FFC5A288FFC6A3
            8BFFC19269FFBD8045FFE2C293FFDFBE8DFFA9713BE700000006CD945AFF6449
            2C7F1D150C28BD8B58EBE7CAA3FFF4E6C4FFF2E0BBFFDAB686FFC7945DFFC189
            4FFFD1A570FFECD7ACFFE7CCA2FFC38A51FD22170C3500000001664B2E7E0000
            000000000001110C07198A643CB1D7AB78FFE3C59AFFECD6B1FFF5E8C7FFF5E7
            C6FFEFDCB8FFD9B181FFAF7945E61F150C2D0000000100000000000000000000
            00000000000000000000000000023C2B1A4E785634989F7144CBC48C53F9BF88
            50F4A57544D56346288300000003000000010000000000000000}
          TabOrder = 5
          OnClick = BitBtn6Click
        end
        object edtsku: TEdit
          Left = 397
          Top = 32
          Width = 146
          Height = 21
          TabOrder = 6
        end
        object edtCodPro: TEdit
          Left = 15
          Top = 32
          Width = 49
          Height = 21
          TabOrder = 7
        end
      end
      object gridProdutos: TDBGrid
        Left = 0
        Top = 121
        Width = 785
        Height = 240
        Align = alTop
        DataSource = dsProdutos
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO_COMPLETA'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SKU'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_EXTERNO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end>
      end
      object BitBtn7: TBitBtn
        Left = 3
        Top = 367
        Width = 154
        Height = 66
        Caption = 'Alterar Pre'#231'o / Estoque'
        TabOrder = 3
        OnClick = BitBtn7Click
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Pre'#231'o  / Estoque'
      ImageIndex = 3
      object GroupBox3: TGroupBox
        Left = 3
        Top = 3
        Width = 662
        Height = 46
        Caption = 'Produto'
        TabOrder = 0
        object edtCodProdPrecoEstoque: TEdit
          Left = 8
          Top = 16
          Width = 49
          Height = 21
          TabOrder = 0
        end
        object edtProdPrecoEstoque: TEdit
          Left = 59
          Top = 16
          Width = 574
          Height = 21
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 55
        Width = 662
        Height = 71
        Caption = 'GroupBox4'
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 18
          Width = 54
          Height = 13
          Caption = 'Gerenciado'
        end
        object Label4: TLabel
          Left = 131
          Top = 18
          Width = 100
          Height = 13
          Caption = 'Situa'#231#227'o em Estoque'
        end
        object lblsemestoque: TLabel
          Left = 258
          Top = 18
          Width = 105
          Height = 13
          Caption = 'Situa'#231#227'o sem Estoque'
        end
        object qtdEstoque: TLabel
          Left = 384
          Top = 18
          Width = 65
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbgerenciado: TComboBox
          Left = 8
          Top = 34
          Width = 121
          Height = 21
          ItemIndex = 0
          TabOrder = 0
          Text = 'True'
          Items.Strings = (
            'True'
            'False')
        end
        object edtsituacao_em_estoque: TEdit
          Left = 131
          Top = 34
          Width = 121
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 1
        end
        object edtSituacao_sem_estoque: TEdit
          Left = 258
          Top = 34
          Width = 121
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 2
        end
        object edtQuant: TEdit
          Left = 384
          Top = 34
          Width = 94
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 3
        end
        object btnAlteraEstoque: TBitBtn
          Left = 524
          Top = 18
          Width = 109
          Height = 37
          Caption = 'Alterar Estoque'
          TabOrder = 4
          OnClick = btnAlteraEstoqueClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 130
        Width = 662
        Height = 75
        Caption = 'Pre'#231'os'
        TabOrder = 2
        object lblPromo: TLabel
          Left = 264
          Top = 19
          Width = 87
          Height = 13
          Caption = 'Pre'#231'o Promocional'
        end
        object lblcusto: TLabel
          Left = 131
          Top = 19
          Width = 58
          Height = 13
          Caption = 'Pre'#231'o Custo'
        end
        object lblPrecoCheio: TLabel
          Left = 8
          Top = 19
          Width = 57
          Height = 13
          Caption = 'Pre'#231'o Cheio'
        end
        object btnalteraPreco: TBitBtn
          Left = 524
          Top = 22
          Width = 109
          Height = 37
          Caption = 'Alterar Pre'#231'o'
          TabOrder = 0
          OnClick = btnalteraPrecoClick
        end
        object edtPrecoPromo: TEdit
          Left = 258
          Top = 38
          Width = 121
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 1
        end
        object edtPrecoCusto: TEdit
          Left = 131
          Top = 36
          Width = 121
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 2
        end
        object edtPrecoCheio: TEdit
          Left = 8
          Top = 36
          Width = 121
          Height = 21
          BiDiMode = bdLeftToRight
          NumbersOnly = True
          OEMConvert = True
          ParentBiDiMode = False
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Formas de Pagamento'
      ImageIndex = 5
      object lblRotareadonly: TLabel
        Left = 11
        Top = 3
        Width = 97
        Height = 16
        Caption = '( Rota readonly )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid4: TDBGrid
        Left = 11
        Top = 25
        Width = 658
        Height = 368
        DataSource = dsFormasPagamento
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ativo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'disponivel'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imagem'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resource_uri'
            Width = 100
            Visible = True
          end>
      end
    end
    object pageenvio: TTabSheet
      Caption = 'Formas de Envio'
      ImageIndex = 6
      object Label5: TLabel
        Left = 16
        Top = 3
        Width = 97
        Height = 16
        Caption = '( Rota readonly )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 16
        Top = 24
        Width = 641
        Height = 385
        DataSource = dsFormasEnvio
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imagem'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resource_uri'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 140
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Situa'#231#245'es do Pedido'
      ImageIndex = 7
      object DBGrid6: TDBGrid
        Left = 7
        Top = 4
        Width = 654
        Height = 357
        DataSource = dsSituacao
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 8
      object lblGrupoCliente: TLabel
        Left = 16
        Top = 13
        Width = 101
        Height = 16
        Caption = 'Grupo de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 129
        Top = 15
        Width = 82
        Height = 13
        Caption = '( Rota readonly )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 165
        Width = 45
        Height = 16
        Caption = 'Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid7: TDBGrid
        Left = 16
        Top = 32
        Width = 737
        Height = 129
        DataSource = dsGrupoCliente
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'padrao'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resource_uri'
            Width = 200
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 16
        Top = 184
        Width = 737
        Height = 233
        DataSource = DsClientes
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resource_uri'
            Width = 250
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 793
    Top = 0
    Width = 239
    Height = 462
    Align = alRight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 227
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = 'Retornos Webservice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 116
    end
    object MemoResp: TMemo
      Left = 6
      Top = 38
      Width = 227
      Height = 418
      Align = alBottom
      TabOrder = 0
    end
  end
  object dsCategorias: TDataSource
    DataSet = datasetCategorias
    Left = 20
    Top = 416
  end
  object dsMarcas: TDataSource
    DataSet = datasetMarcas
    Left = 112
    Top = 416
  end
  object dsProdutos: TDataSource
    DataSet = datasetProdutos
    Left = 196
    Top = 416
  end
  object datasetPagamentos: TClientDataSet
    PersistDataPacket.Data = {
      B60000009619E0BD010000001800000007000000000003000000B60006636F64
      69676F010049000000010005574944544802000200500005617469766F020003
      00000000000A646973706F6E6976656C02000300000000000269640400010000
      00000006696D6167656D010049000000010005574944544802000200FA00046E
      6F6D65010049000000010005574944544802000200FA000C7265736F75726365
      5F75726901004900000001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 368
    object datasetPagamentoscodigo: TStringField
      FieldName = 'codigo'
      Size = 80
    end
    object datasetPagamentosativo: TBooleanField
      FieldName = 'ativo'
    end
    object datasetPagamentosdisponivel: TBooleanField
      FieldName = 'disponivel'
    end
    object datasetPagamentosid: TIntegerField
      FieldName = 'id'
    end
    object datasetPagamentosimagem: TStringField
      FieldName = 'imagem'
      Size = 250
    end
    object datasetPagamentosnome: TStringField
      FieldName = 'nome'
      Size = 250
    end
    object datasetPagamentosresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 80
    end
  end
  object dsFormasPagamento: TDataSource
    DataSet = datasetPagamentos
    Left = 296
    Top = 416
  end
  object datasetEnvios: TClientDataSet
    PersistDataPacket.Data = {
      AE0000009619E0BD010000001800000006000000000003000000AE0006636F64
      69676F0100490000000100055749445448020002005000026964040001000000
      000006696D6167656D0100490000000100055749445448020002005000046E6F
      6D6501004900000001000557494454480200020050000C7265736F757263655F
      7572690100490000000100055749445448020002005000047469706F01004900
      000001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 368
    object datasetEnvioscodigo: TStringField
      FieldName = 'codigo'
      Size = 80
    end
    object datasetEnviosid: TIntegerField
      FieldName = 'id'
    end
    object datasetEnviosimagem: TStringField
      FieldName = 'imagem'
      Size = 80
    end
    object datasetEnviosnome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object datasetEnviosresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 80
    end
    object datasetEnviostipo: TStringField
      FieldName = 'tipo'
      Size = 80
    end
  end
  object dsFormasEnvio: TDataSource
    DataSet = datasetEnvios
    Left = 392
    Top = 415
  end
  object datasetSituacao: TClientDataSet
    PersistDataPacket.Data = {
      D60000009619E0BD010000001800000009000000000003000000D60008617072
      6F7661646F02000300000000000963616E63656C61646F020003000000000006
      636F6469676F01004900000001000557494454480200020050000566696E616C
      02000300000000000269640400010000000000046E6F6D650100490000000100
      055749445448020002005000136E6F746966696361725F636F6D707261646F72
      02000300000000000670616472616F02000300000000000C7265736F75726365
      5F75726901004900000001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 368
    object datasetSituacaoaprovado: TBooleanField
      FieldName = 'aprovado'
    end
    object datasetSituacaocancelado: TBooleanField
      FieldName = 'cancelado'
    end
    object datasetSituacaocodigo: TStringField
      FieldName = 'codigo'
      Size = 80
    end
    object datasetSituacaofinal: TBooleanField
      FieldName = 'final'
    end
    object datasetSituacaoid: TIntegerField
      FieldName = 'id'
    end
    object datasetSituacaonome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object datasetSituacaonotificar_comprador: TBooleanField
      FieldName = 'notificar_comprador'
    end
    object datasetSituacaopadrao: TBooleanField
      FieldName = 'padrao'
    end
    object datasetSituacaoresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 80
    end
  end
  object dsSituacao: TDataSource
    DataSet = datasetSituacao
    Left = 472
    Top = 416
  end
  object dsPedidos: TDataSource
    DataSet = datasetPedidos
    Left = 560
    Top = 416
  end
  object datasetPedidos: TClientDataSet
    PersistDataPacket.Data = {
      CD0100009619E0BD01000000180000000F000000000003000000CD0107636C69
      656E746501004900000001000557494454480200020050000C646174615F6372
      696163616F08000800000000000E646174615F65787069726163616F08000800
      0000000010646174615F6D6F64696669636163616F08000800000000000C6964
      5F616E796D61726B657401004900000001000557494454480200020050000A69
      645F65787465726E6F0100490000000100055749445448020002005000066E75
      6D65726F0400010000000000097065736F5F7265616C01004900000001000557
      494454480200020050000C7265736F757263655F757269010049000000010005
      574944544802000200500008736974756163616F010049000000010005574944
      54480200020050000C75746D5F63616D706169676E0100490000000100055749
      4454480200020050000E76616C6F725F646573636F6E746F0100490000000100
      0557494454480200020050000B76616C6F725F656E76696F0100490000000100
      0557494454480200020050000E76616C6F725F737562746F74616C0100490000
      0001000557494454480200020050000B76616C6F725F746F74616C0100490000
      0001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 367
    object datasetPedidoscliente: TStringField
      FieldName = 'cliente'
      Size = 80
    end
    object datasetPedidosdata_criacao: TDateTimeField
      FieldName = 'data_criacao'
    end
    object datasetPedidosdata_expiracao: TDateTimeField
      FieldName = 'data_expiracao'
    end
    object datasetPedidosdata_modificacao: TDateTimeField
      FieldName = 'data_modificacao'
    end
    object datasetPedidosid_anymarket: TStringField
      FieldName = 'id_anymarket'
      Size = 80
    end
    object datasetPedidosid_externo: TStringField
      FieldName = 'id_externo'
      Size = 80
    end
    object datasetPedidosnumero: TIntegerField
      FieldName = 'numero'
    end
    object datasetPedidospeso_real: TStringField
      FieldName = 'peso_real'
      Size = 80
    end
    object datasetPedidosresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 80
    end
    object datasetPedidossituacao: TStringField
      FieldName = 'situacao'
      Size = 80
    end
    object datasetPedidosutm_campaign: TStringField
      FieldName = 'utm_campaign'
      Size = 80
    end
    object datasetPedidosvalor_desconto: TStringField
      FieldName = 'valor_desconto'
      Size = 80
    end
    object datasetPedidosvalor_envio: TStringField
      FieldName = 'valor_envio'
      Size = 80
    end
    object datasetPedidosvalor_subtotal: TStringField
      FieldName = 'valor_subtotal'
      Size = 80
    end
    object datasetPedidosvalor_total: TStringField
      FieldName = 'valor_total'
      Size = 80
    end
    object datasetPedidosid: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id'
      Calculated = True
    end
  end
  object datasetProdutos: TClientDataSet
    PersistDataPacket.Data = {
      470200009619E0BD010000001800000014000000000003000000470203534B55
      0100490000000100055749445448020002005000034D504E0100490000000100
      055749445448020002005000034E434D01004900000001000557494454480200
      02001E00044E4F4D45010049000000010005574944544802000200FA00124445
      5343524943414F5F434F4D504C45544101004900000001000557494454480200
      0200FA0005415449564F02000300000000000844455354415155450200030000
      000000045045534F080004000000010007535542545950450200490006004D6F
      6E65790006414C54555241080004000000010007535542545950450200490006
      004D6F6E657900074C4152475552410800040000000100075355425459504502
      00490006004D6F6E6579000C50524F46554E4449444144450800040000000100
      07535542545950450200490006004D6F6E657900045449504F01004900000001
      0005574944544802000200500005555341444F02000300000000000943415445
      474F5249410400010000000000054D4152434104000100000000000852454D4F
      5649444F02000300000000000A49445F45585445524E4F010049000000010005
      5749445448020002003C000B505245434F5F434845494F080004000000010007
      535542545950450200490006004D6F6E6579000B505245434F5F435553544F08
      0004000000010007535542545950450200490006004D6F6E6579001150524543
      4F5F50524F4D4F43494F4E414C08000400000001000753554254595045020049
      0006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 198
    Top = 369
    object datasetProdutosSKU: TStringField
      FieldName = 'SKU'
      Size = 80
    end
    object datasetProdutosMPN: TStringField
      FieldName = 'MPN'
      Size = 80
    end
    object datasetProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object datasetProdutosNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object datasetProdutosDESCRICAO_COMPLETA: TStringField
      FieldName = 'DESCRICAO_COMPLETA'
      Size = 250
    end
    object datasetProdutosATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object datasetProdutosDESTAQUE: TBooleanField
      FieldName = 'DESTAQUE'
    end
    object datasetProdutosPESO: TCurrencyField
      FieldName = 'PESO'
    end
    object datasetProdutosALTURA: TCurrencyField
      FieldName = 'ALTURA'
    end
    object datasetProdutosLARGURA: TCurrencyField
      FieldName = 'LARGURA'
    end
    object datasetProdutosPROFUNDIDADE: TCurrencyField
      FieldName = 'PROFUNDIDADE'
    end
    object datasetProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 80
    end
    object datasetProdutosUSADO: TBooleanField
      FieldName = 'USADO'
    end
    object datasetProdutosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object datasetProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object datasetProdutosREMOVIDO: TBooleanField
      FieldName = 'REMOVIDO'
    end
    object datasetProdutosID_EXTERNO: TStringField
      FieldName = 'ID_EXTERNO'
      Size = 60
    end
    object datasetProdutosPRECO_CHEIO: TCurrencyField
      FieldName = 'PRECO_CHEIO'
    end
    object datasetProdutosPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
    end
    object datasetProdutosPRECO_PROMOCIONAL: TCurrencyField
      FieldName = 'PRECO_PROMOCIONAL'
    end
    object datasetProdutosid: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'id'
    end
  end
  object datasetMarcas: TClientDataSet
    PersistDataPacket.Data = {
      6F0000009619E0BD0100000018000000040000000000030000006F00044E4F4D
      4501004900000001000557494454480200020050000A49445F45585445524E4F
      04000100000000000944455343524943414F0100490000000100055749445448
      02000200500002494404000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 116
    Top = 368
    object datasetMarcasNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object datasetMarcasID_EXTERNO: TIntegerField
      FieldName = 'ID_EXTERNO'
    end
    object datasetMarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object datasetMarcasID: TIntegerField
      FieldName = 'ID'
    end
  end
  object datasetCategorias: TClientDataSet
    PersistDataPacket.Data = {
      6F0000009619E0BD0100000018000000040000000000030000006F000A49445F
      45585445524E4F04000100000000000249440400010000000000044E4F4D4501
      004900000001000557494454480200020078000944455343524943414F010049
      00000001000557494454480200020078000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 367
    object datasetCategoriasID_EXTERNO: TIntegerField
      FieldName = 'ID_EXTERNO'
    end
    object datasetCategoriasID: TIntegerField
      FieldName = 'ID'
    end
    object datasetCategoriasNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object datasetCategoriasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object datasetClientes: TClientDataSet
    PersistDataPacket.Data = {
      920000009619E0BD010000001800000005000000000003000000920002696404
      0001000000000005656D61696C01004900000001000557494454480200020050
      00046E6F6D650100490000000100055749445448020002007800047469706F01
      004900000001000557494454480200020002000C7265736F757263655F757269
      0100490000000100055749445448020002003C000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 645
    Top = 367
    object datasetClientesid: TIntegerField
      FieldName = 'id'
    end
    object datasetClientesemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object datasetClientesnome: TStringField
      FieldName = 'nome'
      Size = 120
    end
    object datasetClientestipo: TStringField
      FieldName = 'tipo'
      Size = 2
    end
    object datasetClientesresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 60
    end
  end
  object DsClientes: TDataSource
    DataSet = datasetClientes
    Left = 644
    Top = 416
  end
  object datasetGrupoCliente: TClientDataSet
    PersistDataPacket.Data = {
      6E0000009619E0BD0100000018000000040000000000030000006E0002696404
      00010000000000046E6F6D650100490000000100055749445448020002007800
      0670616472616F02000300000000000C7265736F757263655F75726901004900
      000001000557494454480200020050000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 368
    object datasetGrupoClienteid: TIntegerField
      FieldName = 'id'
    end
    object datasetGrupoClientenome: TStringField
      FieldName = 'nome'
      Size = 120
    end
    object datasetGrupoClientepadrao: TBooleanField
      FieldName = 'padrao'
    end
    object datasetGrupoClienteresource_uri: TStringField
      FieldName = 'resource_uri'
      Size = 80
    end
  end
  object dsGrupoCliente: TDataSource
    DataSet = datasetGrupoCliente
    Left = 736
    Top = 416
  end
end
