object frmImpressaoPreVenda: TfrmImpressaoPreVenda
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o Pr'#233' Venda'
  ClientHeight = 168
  ClientWidth = 246
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object pnImpressao: TPanel
    Left = 2
    Top = 2
    Width = 241
    Height = 161
    TabOrder = 0
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 239
      Height = 24
      Align = alTop
      Brush.Color = clSkyBlue
      Pen.Style = psClear
      Pen.Width = 0
      ExplicitWidth = 268
    end
    object Label4: TLabel
      Left = 32
      Top = 3
      Width = 177
      Height = 17
      Alignment = taCenter
      Caption = 'Escolha o tipo de impress'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 35
      Top = 41
      Width = 167
      Height = 32
      Caption = 'A4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 35
      Top = 79
      Width = 167
      Height = 33
      Caption = 'T'#201'RMICA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 35
      Top = 118
      Width = 167
      Height = 31
      Caption = 'SAIR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Memo1: TMemo
      Left = 8
      Top = -1000
      Width = 1000
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
      Visible = False
    end
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FANTASIA=FANTASIA'
      'RAZAO=RAZAO'
      'TIPO=TIPO'
      'CNPJ=CNPJ'
      'IE=IE'
      'IM=IM'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'FONE=FONE'
      'FAX=FAX'
      'SITE=SITE'
      'LOGOMARCA=LOGOMARCA'
      'FUNDACAO=FUNDACAO'
      'USU_CAD=USU_CAD'
      'USU_ATU=USU_ATU'
      'NSERIE=NSERIE'
      'CSENHA=CSENHA'
      'NTERM=NTERM'
      'ID_PLANO_TRANSFERENCIA_C=ID_PLANO_TRANSFERENCIA_C'
      'ID_PLANO_TRANSFERENCIA_D=ID_PLANO_TRANSFERENCIA_D'
      'ID_CAIXA_GERAL=ID_CAIXA_GERAL'
      'BLOQUEAR_ESTOQUE_NEGATIVO=BLOQUEAR_ESTOQUE_NEGATIVO'
      'ID_CIDADE=ID_CIDADE'
      'CRT=CRT'
      'ID_UF=ID_UF'
      'ID_PLANO_VENDA=ID_PLANO_VENDA'
      'OBSFISCO=OBSFISCO'
      'CFOP=CFOP'
      'CSOSN=CSOSN'
      'CST_ICMS=CST_ICMS'
      'ALIQ_ICMS=ALIQ_ICMS'
      'CST_ENTRADA=CST_ENTRADA'
      'CST_SAIDA=CST_SAIDA'
      'ALIQ_PIS=ALIQ_PIS'
      'ALIQ_COF=ALIQ_COF'
      'CST_IPI=CST_IPI'
      'ALIQ_IPI=ALIQ_IPI'
      'IMP_F5=IMP_F5'
      'IMP_F6=IMP_F6'
      'MOSTRA_RESUMO_CAIXA=MOSTRA_RESUMO_CAIXA'
      'LIMITE_DIARIO=LIMITE_DIARIO'
      'PRAZO_MAXIMO=PRAZO_MAXIMO'
      'ID_PLA_CONTA_FICHA_CLI=ID_PLA_CONTA_FICHA_CLI'
      'ID_PLANO_CONTA_RETIRADA=ID_PLANO_CONTA_RETIRADA'
      'USA_PDV=USA_PDV'
      'RECIBO_VIAS=RECIBO_VIAS'
      'ID_PLANO_TAXA_CARTAO=ID_PLANO_TAXA_CARTAO'
      'OBS_CARNE=OBS_CARNE'
      'CAIXA_UNICO=CAIXA_UNICO'
      'CAIXA_RAPIDO=CAIXA_RAPIDO'
      'EMPRESA_PADRAO=EMPRESA_PADRAO'
      'ID_PLANO_CONTA_DEVOLUCAO=ID_PLANO_CONTA_DEVOLUCAO'
      'N_INICIAL_NFCE=N_INICIAL_NFCE'
      'N_INICIAL_NFE=N_INICIAL_NFE'
      'CHECA_ESTOQUE_FISCAL=CHECA_ESTOQUE_FISCAL'
      'DESCONTO_PROD_PROMO=DESCONTO_PROD_PROMO'
      'LANCAR_CARTAO_CREDITO=LANCAR_CARTAO_CREDITO'
      'FILTRAR_EMPRESA_LOGIN=FILTRAR_EMPRESA_LOGIN'
      'ENVIAR_EMAIL_NFE=ENVIAR_EMAIL_NFE'
      'TRANSPORTADORA=TRANSPORTADORA'
      'TABELA_PRECO=TABELA_PRECO'
      'TAXA_VENDA_PRAZO=TAXA_VENDA_PRAZO'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'AUTOPECAS=AUTOPECAS'
      'ATUALIZA_PR_VENDA=ATUALIZA_PR_VENDA'
      'INFORMAR_GTIN=INFORMAR_GTIN'
      'RECOLHE_FCP=RECOLHE_FCP'
      'DIFAL_ORIGEM=DIFAL_ORIGEM'
      'DIFAL_DESTINO=DIFAL_DESTINO'
      'EXCLUI_PDV=EXCLUI_PDV'
      'VENDA_SEMENTE=VENDA_SEMENTE'
      'EMAIL=EMAIL'
      'ULTIMO_PEDIDO=ULTIMO_PEDIDO'
      'ULTIMONSU=ULTIMONSU'
      'TIPO_CONTRATO=TIPO_CONTRATO'
      'VIRTUAL_ID_UF=VIRTUAL_ID_UF'
      'VIRTUAL_UF=VIRTUAL_UF'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_VALIDADE=DATA_VALIDADE'
      'FLAG=FLAG'
      'CHECA=CHECA'
      'BLOQUEAR_PRECO=BLOQUEAR_PRECO'
      'EXIBE_RESUMO_CAIXA=EXIBE_RESUMO_CAIXA'
      'EXIBE_F3=EXIBE_F3'
      'EXIBE_F4=EXIBE_F4'
      'RESTAURANTE=RESTAURANTE'
      'PESQUISA_REFERENCIA=PESQUISA_REFERENCIA'
      'CARENCIA_JUROS=CARENCIA_JUROS'
      'RESPONSAVEL_TECNICO=RESPONSAVEL_TECNICO'
      'ID_PLANO_COMPRA=ID_PLANO_COMPRA'
      'LER_PESO=LER_PESO'
      'FARMACIA=FARMACIA'
      'TIPO_EMPRESA=TIPO_EMPRESA'
      'QTD_MESAS=QTD_MESAS'
      'TIPO_JUROS=TIPO_JUROS'
      'JUROS_DIA=JUROS_DIA'
      'JUROS_MES=JUROS_MES'
      'LOJA_ROUPA=LOJA_ROUPA'
      'EMITE_ECF=EMITE_ECF'
      'CHECA_LIMITE=CHECA_LIMITE'
      'DESCONTO_MAXIMO=DESCONTO_MAXIMO'
      'RESPONSAVEL_EMPRESA=RESPONSAVEL_EMPRESA'
      'PAGAMENTO_DINHEIRO=PAGAMENTO_DINHEIRO'
      'HABILITA_DESCONTO_PDV=HABILITA_DESCONTO_PDV'
      'PUXA_CFOP_PRODUTO=PUXA_CFOP_PRODUTO'
      'USA_BLUETOOTH_RESTA=USA_BLUETOOTH_RESTA'
      'LANCAR_CARTAO_CR=LANCAR_CARTAO_CR'
      'CFOP_EXTERNO=CFOP_EXTERNO'
      'USAR_TEF=USAR_TEF'
      'TEF_GERAR_NFCE_AUTO=TEF_GERAR_NFCE_AUTO'
      'CNAE=CNAE'
      'CSOSN_EXTERNO=CSOSN_EXTERNO'
      'CST_EXTERNO=CST_EXTERNO'
      'ALIQ_ICMS_EXTERNO=ALIQ_ICMS_EXTERNO'
      'COD_FPG_DINHEIRO=COD_FPG_DINHEIRO'
      'HABILITA_ACRESCIMO=HABILITA_ACRESCIMO'
      'MULTI_IDIOMA=MULTI_IDIOMA'
      'CODIGO_PAIS=CODIGO_PAIS'
      'OBSNFCE=OBSNFCE'
      'ID_CAD_CLI=ID_CAD_CLI'
      'DT_INST=DT_INST'
      'DT_HJ=DT_HJ'
      'DT_PR=DT_PR'
      'HABILITA_FUNC_SOFTHOUSE=HABILITA_FUNC_SOFTHOUSE'
      'NT_COMPRA_IMP_CUSTO=NT_COMPRA_IMP_CUSTO'
      'PETSHOP=PETSHOP'
      'NAO_ATUALIZA_GRADE=NAO_ATUALIZA_GRADE')
    DataSet = Dados.qryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 224
  end
  object qryPreM: TFDQuery
    Active = True
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT P.RAZAO, P.ENDERECO, P.NUMERO, P.BAIRRO,'
      
        'P.MUNICIPIO, P.UF, P.EMAIL1, P.FONE1, P.FONE2, P.CELULAR1, P.CEL' +
        'ULAR2, V.NOME VENDEDOR,'
      'PVM.*,'
      'CASE PVM.SITUACAO'
      '    WHEN '#39'X'#39' THEN '#39'ABERTA'#39
      '    WHEN '#39'F'#39' THEN '#39'FINALIZADA'#39
      '    WHEN '#39'C'#39' THEN '#39'CANCELADA'#39
      '    ELSE '#39'N'#195'O IDENTIFICADO'#39
      'END STATUS'
      'FROM PRE_VENDA_MASTER PVM'
      'LEFT JOIN PESSOA P ON PVM.ID_CLIENTE = P.CODIGO'
      'LEFT JOIN VENDEDORES V ON PVM.FK_VENDEDOR = V.CODIGO'
      'WHERE PVM.CODIGO = :CODIGO')
    Left = 424
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPreMRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 50
    end
    object qryPreMENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryPreMNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryPreMBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryPreMMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 35
    end
    object qryPreMUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryPreMEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryPreMFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryPreMVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 40
    end
    object qryPreMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryPreMDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryPreMID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      DisplayFormat = ',0.00'
    end
    object qryPreMFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryPreMFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
      DisplayFormat = ',0.00'
    end
    object qryPreMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qryPreMSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPreMFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryPreMPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreMSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qryPreMFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryPreMCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryPreMCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
  end
  object frxDBPreM: TfrxDBDataset
    UserName = 'frxDBPreM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RAZAO=RAZAO'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'MUNICIPIO=MUNICIPIO'
      'UF=UF'
      'EMAIL1=EMAIL1'
      'FONE1=FONE1'
      'VENDEDOR=VENDEDOR'
      'CODIGO=CODIGO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'ID_CLIENTE=ID_CLIENTE'
      'FK_USUARIO=FK_USUARIO'
      'FK_VENDEDOR=FK_VENDEDOR'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TOTAL=TOTAL'
      'OBSERVACOES=OBSERVACOES'
      'SITUACAO=SITUACAO'
      'FKEMPRESA=FKEMPRESA'
      'PERCENTUAL=PERCENTUAL'
      'STATUS=STATUS'
      'FONE2=FONE2'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2')
    DataSet = qryPreM
    BCDToCurrency = False
    DataSetOptions = []
    Left = 328
    Top = 72
  end
  object qryPreD: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'SELECT P.DESCRICAO PRODUTO, PVD.*'
      'FROM PRE_VENDA_DETALHE PVD'
      'LEFT JOIN PRODUTO P ON PVD.ID_PRODUTO = P.CODIGO'
      'WHERE FK_PREVENDA = :VENDA'
      'ORDER BY ITEM')
    Left = 429
    Top = 160
    ParamData = <
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPreDPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object qryPreDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryPreDFK_PREVENDA: TIntegerField
      FieldName = 'FK_PREVENDA'
      Origin = 'FK_PREVENDA'
      DisplayFormat = ',0.00'
    end
    object qryPreDID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryPreDITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      DisplayFormat = ',0.00'
    end
    object qryPreDQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryPreDPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDPVDESCONTO: TFMTBCDField
      FieldName = 'PVDESCONTO'
      Origin = 'PVDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPreDSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPreDUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryPreDSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object frxDBPreD: TfrxDBDataset
    UserName = 'frxDBPreD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRODUTO=PRODUTO'
      'CODIGO=CODIGO'
      'FK_PREVENDA=FK_PREVENDA'
      'ID_PRODUTO=ID_PRODUTO'
      'ITEM=ITEM'
      'QTD=QTD'
      'PRECO=PRECO'
      'VALOR_ITEM=VALOR_ITEM'
      'VDESCONTO=VDESCONTO'
      'PVDESCONTO=PVDESCONTO'
      'TOTAL=TOTAL'
      'SITUACAO=SITUACAO'
      'UNIDADE=UNIDADE'
      'SUBTOTAL=SUBTOTAL')
    DataSet = qryPreD
    BCDToCurrency = False
    DataSetOptions = []
    Left = 333
    Top = 144
  end
  object frxReport: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44501.751978888900000000
    ReportOptions.LastChange = 45471.476073657410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 296
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBPreD
        DataSetName = 'frxDBPreD'
      end
      item
        DataSet = frxDBPreM
        DataSetName = 'frxDBPreM'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 72.000000000000000000
      PaperHeight = 3276.000000000000000000
      PaperSize = 121
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Bin = 268
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 188.976500000000000000
        Width = 253.228510000000000000
        DataSet = frxDBPreM
        DataSetName = 'frxDBPreM'
        RowCount = 0
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PR'#201' VENDA:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 79.826840000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."CODIGO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118110236220500000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 41.913385830000000000
          Top = 15.118110240000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 30.236220470000000000
          Width = 264.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236220470000000000
          Width = 264.566929130000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354330710000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574803150000000000
          Top = 45.354330710000000000
          Width = 222.992125980000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."RAZAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472440940000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251968500000000000
          Top = 60.472440940000000000
          Width = 200.314960630000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."ENDERECO"], '
            'N'#186' [frxDBPreM."NUMERO"] - [frxDBPreM."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708661420000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Municipio:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251968500000000000
          Top = 90.708661420000000000
          Width = 200.314960630000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."MUNICIPIO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 105.826771650000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015748030000000000
          Top = 105.826771653543000000
          Width = 230.551181100000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."UF"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 120.944881890000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354330710000000000
          Top = 120.944881889764000000
          Width = 219.212598430000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."EMAIL1"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 136.062992125984000000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795275590000000000
          Top = 136.062992130000000000
          Width = 226.771653540000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."FONE1"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 151.181102362205000000
          Width = 264.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 366.614410000000000000
        Width = 253.228510000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 283.464579130000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DETALHES DA PR'#201' VENDA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118110236220500000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 64.251968500000000000
          Top = 15.118110240000000000
          Width = 219.212610630000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."VENDEDOR"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354330710000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795275590000000000
          Top = 45.354330710000000000
          Width = 226.771653540000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Top = 58.582677170000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 58.582677170000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 58.582677170000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 58.582677170000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'Desc.')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771653540000000000
          Top = 58.582677170000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 71.811023620000000000
          Width = 264.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236220470000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354330710000000000
          Top = 30.236220470000000000
          Width = 238.110248430000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreM."STATUS"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 461.102660000000000000
        Width = 253.228510000000000000
        DataSet = frxDBPreD
        DataSetName = 'frxDBPreD'
        Filter = '<frxDBPreD."FK_PREVENDA">=<frxDBPreM."CODIGO">'
        RowCount = 0
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795275590551200000
          Width = 226.771653543307000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."PRODUTO"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Top = 13.228346460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."QTD"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 13.228346460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."PRECO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 13.228346460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."VALOR_ITEM"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976377950000000000
          Top = 13.228346460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."VDESCONTO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771653543307000000
          Top = 13.228346460000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '(<Line#> mod 2) = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15395562
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPreD."TOTAL"]')
          ParentFont = False
        end
        object memBackItens: TfrxMemoView
          AllowVectorExport = True
          Width = 264.566929130000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692920710000000000
        Top = 510.236550000000000000
        Width = 253.228510000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 264.566929130000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sub Total:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897640240000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 105.165351890000000000
          Top = 3.000000000000000000
          Width = 158.740167240000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPreD."VALOR_ITEM">,DetailData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 102.724411890000000000
          Top = 18.897640240000000000
          Width = 154.960637240000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPreD."VDESCONTO">,DetailData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015750470000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 103.724411890000000000
          Top = 34.015750470000000000
          Width = 158.740167240000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPreD."TOTAL">,DetailData1)]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 3.779530000000000000
          Width = 264.566929130000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEmpresa."RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 19.015652830000000000
          Width = 264.566929130000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 34.133763070000000000
          Width = 264.566929130000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: [frxDBEmpresa."CNPJ"]'
            'I. E.: [frxDBEmpresa."IE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 64.369983540000000000
          Width = 264.566929130000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'End.: [frxDBEmpresa."ENDERECO"], '
            'N'#186' [frxDBEmpresa."NUMERO"] - [frxDBEmpresa."BAIRRO"], '
            '[frxDBEmpresa."CIDADE"] - [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 109.724314250000000000
          Width = 264.566929130000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Email: [frxDBEmpresa."EMAIL"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = -4.440940000000000000
          Top = 124.842424490000000000
          Width = 264.566929130000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [frxDBEmpresa."FONE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 448
    Top = 232
  end
end
