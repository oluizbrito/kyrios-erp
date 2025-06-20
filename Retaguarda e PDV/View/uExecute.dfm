object frmExecute: TfrmExecute
  Left = 0
  Top = 0
  Caption = 'frmExecute'
  ClientHeight = 774
  ClientWidth = 1330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1330
    Height = 774
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    object TabSheet4: TTabSheet
      Caption = 'Novos Campos'
      ImageIndex = 3
      object MemoNovo: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        CharCase = ecUpperCase
        Lines.Strings = (
          'ALTER TABLE EMPRESA'
          'ADD PEDIR_COLE_ETIQUETA CHAR(1);'
          ''
          'ALTER TABLE EMPRESA'
          'ADD USA_WHATS CHAR(1);'
          ''
          'ALTER TABLE VENDAS_TERMINAIS'
          'ADD LER_PESO CHAR(1);'
          ''
          'ALTER TABLE XML_DETAIL ADD QUANT_E_TMP NUMERIC(15,2);'
          ''
          'ALTER TABLE XML_DETAIL ADD QUANT_S_TMP NUMERIC(15,2);'
          ''
          'ALTER TABLE XML_DETAIL ADD EMBALAGEM_TMP NUMERIC(15,2);'
          ''
          'ALTER TABLE XML_DETAIL ADD QTD_TOTAL_TMP NUMERIC(15,2);'
          ''
          'UPDATE XML_DETAIL '
          'SET QUANT_E_TMP = QUANT_E, '
          '    QUANT_S_TMP = QUANT_S, '
          '    EMBALAGEM_TMP = EMBALAGEM, '
          '    QTD_TOTAL_TMP = QTD_TOTAL;'
          ''
          'ALTER TABLE XML_DETAIL DROP QUANT_E;'
          'ALTER TABLE XML_DETAIL DROP QUANT_S;'
          'ALTER TABLE XML_DETAIL DROP EMBALAGEM;'
          'ALTER TABLE XML_DETAIL DROP QTD_TOTAL;'
          'ALTER TABLE XML_DETAIL ALTER QUANT_E_TMP TO QUANT_E;'
          'ALTER TABLE XML_DETAIL ALTER QUANT_S_TMP TO QUANT_S;'
          'ALTER TABLE XML_DETAIL ALTER EMBALAGEM_TMP TO EMBALAGEM;'
          'ALTER TABLE XML_DETAIL ALTER QTD_TOTAL_TMP TO QTD_TOTAL;'
          ''
          'ALTER TABLE SPED_H010 ADD CST_ICMS VARCHAR(3);'
          'ALTER TABLE SPED_H010 ADD BC_ICMS NUMERIC(15,2);'
          'ALTER TABLE SPED_H010 ADD VL_ICMS NUMERIC(15,2);'
          ''
          'ALTER TABLE SPED_H010 ALTER FK_UNIDADE TYPE VARCHAR(11);'
          ''
          'ALTER TABLE SPED_CONFIG ADD CONFIG_1601 VARCHAR(1);'
          'ALTER TABLE SPED_CONFIG ADD ADM_PADRAO_CARTAO_DEB INTEGER;'
          'ALTER TABLE SPED_CONFIG ADD ADM_PADRAO_CARTAO_CRE INTEGER;'
          'ALTER TABLE SPED_CONFIG ADD ADM_PADRAO_PIX INTEGER;'
          'ALTER TABLE SPED_CONFIG ADD ADM_PADRAO_VALE_ALI INTEGER;'
          ''
          'CREATE TABLE SPED_1601 ('
          '    CODIGO       INTEGER NOT NULL,'
          '    COD_PART_IP  VARCHAR(20),'
          '    COD_PART_IT  VARCHAR(20),'
          '    TOT_VS       NUMERIC(15,2),'
          '    TOT_ISS      NUMERIC(15,2),'
          '    TOT_OUTROS   NUMERIC(15,2),'
          '    FK_SPED      INTEGER'
          ');'
          ''
          
            'ALTER TABLE SPED_1601 ADD CONSTRAINT PK_SPED_1601 PRIMARY KEY (C' +
            'ODIGO);'
          ''
          'ALTER TABLE VENDAS_PARAMETROS ADD PATHXMLENTRADA VARCHAR(100);'
          ''
          'ALTER TABLE NFCE_DETALHE ADD REDUCAO_BASE DECIMAL(15,2);'
          ''
          'ALTER TABLE VENDAS_TERMINAIS ADD IMPRIME_PREVIEW VARCHAR(1);'
          ''
          'ALTER TABLE VENDAS_TERMINAIS ADD TIPOFECHAMENTO VARCHAR(30);'
          ''
          'ALTER TABLE VENDAS_TERMINAIS ADD MEIAFOLHA VARCHAR(1);'
          ''
          'ALTER DOMAIN RDB$367309 TYPE VARCHAR(150) CHARACTER SET NONE;'
          ''
          'ALTER TABLE EMPRESA ADD CHAVE_PIX VARCHAR(150);'
          ''
          'ALTER DOMAIN RDB$5316 TYPE NUMERIC(15,2);'
          ''
          'ALTER DOMAIN RDB$5317 TYPE NUMERIC(15,2);')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Update Dados'
      ImageIndex = 12
      object MemoUpdate: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          'SET TERM #;'
          ''
          'EXECUTE BLOCK '
          'AS '
          'DECLARE seq_exists INTEGER;'
          'BEGIN'
          '  SELECT COUNT(*) '
          '  FROM RDB$GENERATORS '
          '  WHERE RDB$GENERATOR_NAME = '#39'GEN_VENDAS_DETALHE_ID'#39
          '  INTO seq_exists;'
          '  '
          '  IF (seq_exists = 0) THEN'
          '    EXECUTE STATEMENT '#39'CREATE SEQUENCE GEN_VENDAS_DETALHE_ID'#39';'
          'END#'
          ''
          'SET TERM ;#'
          ''
          'SET TERM #;'
          ''
          'EXECUTE BLOCK    '
          'AS  '
          'DECLARE i INT = 0;    '
          'DECLARE temp INT = 0;'
          'BEGIN  '
          '  i = (SELECT COALESCE(MAX(CODIGO), 0) FROM VENDAS_DETALHE);'
          '  '
          
            '  temp = GEN_ID(GEN_VENDAS_DETALHE_ID, -(GEN_ID(GEN_VENDAS_DETAL' +
            'HE_ID, 0))); '
          '  '
          '  temp = GEN_ID(GEN_VENDAS_DETALHE_ID, :i);'
          'END#'
          ''
          'SET TERM ;#'
          ''
          'SET TERM ^ ;'
          ''
          'CREATE OR ALTER TRIGGER VENDAS_DETALHE_BI FOR VENDAS_DETALHE'
          'ACTIVE BEFORE INSERT POSITION 0'
          'AS'
          'BEGIN'
          '  IF (NEW.CODIGO IS NULL OR NEW.CODIGO = 0) THEN'
          '    NEW.CODIGO = GEN_ID(GEN_VENDAS_DETALHE_ID, 1);'
          'END^'
          ''
          'SET TERM ;^'
          ''
          'SET TERM #;'
          ''
          'EXECUTE BLOCK'
          'AS'
          'DECLARE seq_exists INTEGER;'
          'BEGIN'
          '  SELECT COUNT(*)'
          '  FROM RDB$GENERATORS'
          '  WHERE RDB$GENERATOR_NAME = '#39'GEN_PRE_VENDA_DETALHE_ID'#39
          '  INTO seq_exists;'
          ''
          '  IF (seq_exists = 0) THEN'
          
            '    EXECUTE STATEMENT '#39'CREATE SEQUENCE GEN_PRE_VENDA_DETALHE_ID'#39 +
            ';'
          'END#'
          ''
          'SET TERM ;#'
          ''
          'SET TERM #;'
          ''
          'EXECUTE BLOCK'
          'AS'
          'DECLARE i INT = 0;'
          'DECLARE temp INT = 0;'
          'BEGIN'
          '  i = (SELECT COALESCE(MAX(CODIGO), 0) FROM PRE_VENDA_DETALHE);'
          ''
          
            '  temp = GEN_ID(GEN_PRE_VENDA_DETALHE_ID, -(GEN_ID(GEN_PRE_VENDA' +
            '_DETALHE_ID, 0)));'
          ''
          '  temp = GEN_ID(GEN_PRE_VENDA_DETALHE_ID, :i);'
          'END#'
          ''
          'SET TERM ;#'
          ''
          'SET TERM ^ ;'
          ''
          
            'CREATE OR ALTER TRIGGER PRE_VENDA_DETALHE_BI FOR PRE_VENDA_DETAL' +
            'HE'
          'ACTIVE BEFORE INSERT POSITION 0'
          'AS'
          'BEGIN'
          '  IF (NEW.CODIGO IS NULL OR NEW.CODIGO = 0) THEN'
          '    NEW.CODIGO = GEN_ID(GEN_PRE_VENDA_DETALHE_ID, 1);'
          'END^'
          ''
          'SET TERM ;^')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tabela IPI'
      ImageIndex = 3
      object MemoIPI: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Tabela CSOSN'
      ImageIndex = 4
      object MemoCSOSN: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Tabela PIS Cofins'
      ImageIndex = 5
      object MemoPIS: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Tabela ICMS'
      ImageIndex = 7
      object MemoICMS: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Tabela CST ICMS'
      ImageIndex = 12
      object MemoCstICMS: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabFPG: TTabSheet
      Caption = 'TabFPG'
      ImageIndex = 14
      object MemoFPG: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (7, '#39'NOTA'#39', '#39'N'#39', '#39'N'#39', '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'S'#39', 4, 30, 0, 0, '#39'N' +
            #39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (4, '#39'DEPOSITO'#39', '#39'X'#39', '#39'N'#39', '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'S'#39', 4, 30, 0, 0' +
            ', '#39'X'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL,NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (5, '#39'CART'#195'O DE CR'#201'DITO'#39', '#39'X'#39', '#39'N'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', 4,' +
            ' 30, 3, 0, '#39'C'#39', 1, NULL, NULL, NULL, NULL, NULL,NULL, NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (6, '#39'CART'#195'O DE D'#201'BITO'#39', '#39'X'#39', '#39'N'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', 4, ' +
            '30, 0, 0, '#39'E'#39', 1, NULL, NULL, NULL, NULL, NULL, NULL,NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (8, '#39'TROCA'#39', '#39'N'#39', '#39'N'#39', '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'S'#39', 0, 30, 0, 0, '#39 +
            'T'#39', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (1, '#39'DINHEIRO'#39', '#39'X'#39', '#39'N'#39', '#39'N'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', 0, 0, 0, 0,' +
            ' '#39'D'#39', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (2, '#39'CHEQUE'#39', '#39'R'#39', '#39'S'#39', '#39'N'#39', '#39'S'#39', '#39'S'#39', '#39'S'#39', 8, 30, 0, 0, ' +
            #39'Q'#39', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);'
          ''
          
            'INSERT INTO FORMA_PAGAMENTO (CODIGO, DESCRICAO, GERACR, GERACH, ' +
            'ECARTAO, USAVD, USACR, ATIVO,'
          
            'PARCELAS, INTERVALO, TAXA, ENTRADA, TIPO, DIAS, FKCONTADESTINO, ' +
            'COD_BEMA, COD_DARU, COD_ELGI, COD_EPSO,'
          'GERACC, GERACX)'
          
            'VALUES (3, '#39'FATURADO'#39', '#39'R'#39', '#39'N'#39', '#39'N'#39', '#39'S'#39', '#39'N'#39', '#39'S'#39', 4, 30, 0, 3' +
            '0, '#39'F'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL,NULL);')
        TabOrder = 0
      end
    end
    object TabDesoneracao: TTabSheet
      Caption = 'TabDesoneracao'
      ImageIndex = 15
      object MemoDesoneracao: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          'INSERT INTO MOTIVO_DESONERACAO (CODIGO, DESCRICAO)'
          
            '                                  VALUES (2, '#39'USUO NA AGROPECUAR' +
            'IA'#39');'
          'INSERT INTO MOTIVO_DESONERACAO (CODIGO, DESCRICAO)'
          '                                  VALUES (8, '#39'OUTROS'#39');'
          'INSERT INTO MOTIVO_DESONERACAO (CODIGO, DESCRICAO)'
          
            '                                  VALUES (11, '#39'ORG'#195'O DE FOMENTO ' +
            'E DESENVOLVIMENTO AGRO'#39');')
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 11
      object MemoConsulta: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object memo: TTabSheet
      Caption = 'Atualiza'
      ImageIndex = 9
      object MemoSql: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Telas'
      ImageIndex = 18
      object MemoTela: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'NFe Adicionais'
      ImageIndex = 19
      object MemoNFe: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          'alter table NFE_DETALHE add DESCRICAO_COMPLEMENTAR varchar(300);'
          'update NFE_DETALHE set DESCRICAO_COMPLEMENTAR =INFO_ADICIONAIS;'
          'ALTER TABLE NFE_DETALHE DROP INFO_ADICIONAIS;')
        TabOrder = 0
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Gatilhos'
      ImageIndex = 20
      object MemoGatilho: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Descricao'
      ImageIndex = 22
      object MemoDescricaoPlano: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          'alter table plano add flag varchar(1);'
          'alter table plano add descricao2 varchar(100);'
          'update plano set descricao2=descricao;'
          'ALTER TABLE plano DROP descricao;'
          'alter table plano add descricao varchar(100);'
          'update plano set descricao= descricao2;'
          'ALTER TABLE plano DROP descricao2;')
        TabOrder = 0
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'XML Detail'
      ImageIndex = 21
      object MemoDetail: TMemo
        Left = 0
        Top = 0
        Width = 1322
        Height = 746
        Align = alClient
        Lines.Strings = (
          'alter table xml_detail add flag varchar(1);'
          'ALTER TABLE xml_detail DROP PRECO_E;'
          'ALTER TABLE xml_detail DROP PRECO_S;'
          'alter table xml_detail add PRECO_E DECIMAL (15,4);'
          'alter table xml_detail add PRECO_S DECIMAL (15,4);')
        TabOrder = 0
      end
    end
  end
  object qryParametro: TFDQuery
    Connection = Dados.Conexao
    SQL.Strings = (
      'select * from CONFIG')
    Left = 462
    Top = 200
    object qryParametroVERSAO: TIntegerField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryParametroDATA_SCRIPT: TDateField
      FieldName = 'DATA_SCRIPT'
      Origin = 'DATA_SCRIPT'
    end
    object qryParametroESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Size = 30
    end
    object qryParametroLINK_TREINAMENTO: TStringField
      FieldName = 'LINK_TREINAMENTO'
      Origin = 'LINK_TREINAMENTO'
      Size = 200
    end
    object qryParametroTITULO_SISTEMA: TStringField
      FieldName = 'TITULO_SISTEMA'
      Origin = 'TITULO_SISTEMA'
      Size = 50
    end
    object qryParametroSUB_TITULO_SISTEMA: TStringField
      FieldName = 'SUB_TITULO_SISTEMA'
      Origin = 'SUB_TITULO_SISTEMA'
      Size = 100
    end
    object qryParametroEMAIL_SUPORTE: TStringField
      FieldName = 'EMAIL_SUPORTE'
      Origin = 'EMAIL_SUPORTE'
      Size = 100
    end
    object qryParametroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 100
    end
    object qryParametroFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryParametroFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryParametroCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 14
    end
  end
  object qryConsulta: TFDQuery
    Connection = Dados.Conexao
    Left = 470
    Top = 287
  end
  object IBScript: TFDScript
    SQLScripts = <>
    Connection = Dados.Conexao
    ScriptOptions.IgnoreError = True
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 470
    Top = 119
  end
end
