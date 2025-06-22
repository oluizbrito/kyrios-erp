object Dados: TDados
  OnCreate = DataModuleCreate
  Height = 850
  Width = 1106
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evMode, evAutoClose]
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    Transaction = Transacao
    UpdateTransaction = Transacao
    AfterConnect = ConexaoAfterConnect
    Left = 24
    Top = 8
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 24
    Top = 136
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 24
    Top = 192
  end
  object qryPessoas: TFDQuery
    BeforePost = qryPessoasBeforePost
    AfterPost = qryPessoasAfterPost
    OnNewRecord = qryPessoasNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from PESSOA'
      'where '
      'empresa=:id'
      '/*where*/')
    Left = 160
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryPessoasEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryPessoasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryPessoasIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryPessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryPessoasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryPessoasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryPessoasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryPessoasCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Origin = 'CODMUN'
      Required = True
    end
    object qryPessoasMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryPessoasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryPessoasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryPessoasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryPessoasFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryPessoasFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 14
    end
    object qryPessoasCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
    object qryPessoasCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Origin = 'CELULAR2'
      Size = 14
    end
    object qryPessoasEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 60
    end
    object qryPessoasEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 60
    end
    object qryPessoasFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPessoasSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 10
    end
    object qryPessoasDT_NASC: TDateField
      FieldName = 'DT_NASC'
      Origin = 'DT_NASC'
    end
    object qryPessoasECIVIL: TStringField
      FieldName = 'ECIVIL'
      Origin = 'ECIVIL'
      Size = 10
    end
    object qryPessoasLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object qryPessoasDIA_PGTO: TSmallintField
      FieldName = 'DIA_PGTO'
      Origin = 'DIA_PGTO'
    end
    object qryPessoasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryPessoasNUM_USU: TSmallintField
      FieldName = 'NUM_USU'
      Origin = 'NUM_USU'
    end
    object qryPessoasFATURA: TStringField
      FieldName = 'FATURA'
      Origin = 'FATURA'
      Size = 1
    end
    object qryPessoasCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
      Size = 1
    end
    object qryPessoasCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 1
    end
    object qryPessoasSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object qryPessoasISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 1
    end
    object qryPessoasFORN: TStringField
      FieldName = 'FORN'
      Origin = 'FORN'
      Required = True
      Size = 1
    end
    object qryPessoasFUN: TStringField
      FieldName = 'FUN'
      Origin = 'FUN'
      Required = True
      Size = 1
    end
    object qryPessoasCLI: TStringField
      FieldName = 'CLI'
      Origin = 'CLI'
      Required = True
      Size = 1
    end
    object qryPessoasFAB: TStringField
      FieldName = 'FAB'
      Origin = 'FAB'
      Required = True
      Size = 1
    end
    object qryPessoasTRAN: TStringField
      FieldName = 'TRAN'
      Origin = 'TRAN'
      Required = True
      Size = 1
    end
    object qryPessoasADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      Required = True
      Size = 1
    end
    object qryPessoasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryPessoasDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Origin = 'DT_ADMISSAO'
    end
    object qryPessoasDT_DEMISSAO: TDateField
      FieldName = 'DT_DEMISSAO'
      Origin = 'DT_DEMISSAO'
    end
    object qryPessoasSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object qryPessoasPAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 50
    end
    object qryPessoasMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 50
    end
    object qryPessoasBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryPessoasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryPessoasGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 30
    end
    object qryPessoasFONE_GERENTE: TStringField
      FieldName = 'FONE_GERENTE'
      Origin = 'FONE_GERENTE'
      Size = 15
    end
    object qryPessoasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 50
    end
    object qryPessoasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryPessoasTECNICO: TStringField
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 1
    end
    object qryPessoasATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 1
    end
    object qryPessoasCODIGO_WEB: TIntegerField
      FieldName = 'CODIGO_WEB'
      Origin = 'CODIGO_WEB'
    end
    object qryPessoasREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPessoasFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryPessoasTIPO_RECEBIMENTO: TStringField
      FieldName = 'TIPO_RECEBIMENTO'
      Origin = 'TIPO_RECEBIMENTO'
    end
    object qryPessoasPARC: TStringField
      FieldName = 'PARC'
      Origin = 'PARC'
      Size = 1
    end
    object qryPessoasREGIME_TRIBUTARIO: TStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = 'REGIME_TRIBUTARIO'
      Size = 10
    end
    object qryPessoasWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
      Size = 14
    end
    object qryPessoasRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
  end
  object qryGrupo: TFDQuery
    BeforePost = qryGrupoBeforePost
    AfterPost = qryGrupoAfterPost
    Connection = Conexao
    SQL.Strings = (
      'select * from grupo '
      '/*where*/')
    Left = 240
    Top = 72
    object qryGrupoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object qryGrupoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
  end
  object qryUnidade: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from unidade /*where*/')
    Left = 320
    Top = 72
    object qryUnidadeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qryUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object qryUnidadeFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qryNumerador: TFDQuery
    Connection = Conexao
    Left = 160
    Top = 136
  end
  object qryExecute: TFDQuery
    Connection = Conexao
    Left = 240
    Top = 136
  end
  object qryFornecedor: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, razao, uf, cnpj from PESSOA'
      'where'
      'forn='#39'S'#39
      'order by razao')
    Left = 240
    Top = 16
    object qryFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFornecedorRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryFornecedorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
  end
  object qryContas: TFDQuery
    OnCalcFields = qryContasCalcFields
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT * FROM CONTAS'
      'where'
      'DESCRICAO LIKE :DESCRI')
    Left = 856
    Top = 684
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
    object qryContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryContasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryContasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryContasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryContasDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qryContasLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryContasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryContasVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 10
      Calculated = True
    end
    object qryContasVIRTUAl_USUARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAl_USUARIO'
      LookupDataSet = qryPesqUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'LOGIN'
      KeyFields = 'ID_USUARIO'
      Size = 10
      Lookup = True
    end
    object qryContasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryPlano: TFDQuery
    AfterPost = qryPlanoAfterPost
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT * FROM PLANO'
      'where'
      'DESCRICAO LIKE :DESCRI and'
      'fkempresa=:id')
    Left = 704
    Top = 136
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryPlanoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPlanoDC: TStringField
      FieldName = 'DC'
      Origin = 'DC'
      Required = True
      Size = 1
    end
    object qryPlanoCONTA_COMPLETA: TStringField
      FieldName = 'CONTA_COMPLETA'
      Origin = 'CONTA_COMPLETA'
      EditMask = '#.##.##.##.##.####-#;1;_'
      Size = 30
    end
    object qryPlanoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object qryCaixa: TFDQuery
    BeforePost = qryCaixaBeforePost
    AfterPost = qryCaixaAfterPost
    OnNewRecord = qryCaixaNewRecord
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      
        'SELECT LC.*, TP.DESCRICAO VIRTUAL_PLANO, CT.DESCRICAO VIRTUAL_CO' +
        'NTA, CT1.DESCRICAO VIRTUAL_CONTA2  FROM CAIXA LC'
      'LEFT JOIN plano TP on tp.codigo=lc.fkplano'
      'LEFT JOIN contas ct on ct.codigo=lc.fkconta'
      'LEFT JOIN contas ct1 on ct1.codigo=lc.fk_conta1'
      'WHERE'
      'lc.empresa=:id and'
      'lc.emissao between :data1 and :data2'
      '/*where*/')
    Left = 464
    Top = 138
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qryCaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCaixaDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object qryCaixaFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCaixaFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCaixaFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryCaixaFKCOMPRA: TIntegerField
      FieldName = 'FKCOMPRA'
      Origin = 'FKCOMPRA'
    end
    object qryCaixaFKPAGAR: TIntegerField
      FieldName = 'FKPAGAR'
      Origin = 'FKPAGAR'
    end
    object qryCaixaFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryCaixaTRANSFERENCIA: TIntegerField
      FieldName = 'TRANSFERENCIA'
      Origin = 'TRANSFERENCIA'
    end
    object qryCaixaTSALDO: TExtendedField
      FieldKind = fkCalculated
      FieldName = 'TSALDO'
      DisplayFormat = ',0.00'
      Precision = 19
      Calculated = True
    end
    object qryCaixaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCaixaFK_CONTA1: TIntegerField
      FieldName = 'FK_CONTA1'
      Origin = 'FK_CONTA1'
    end
    object qryCaixaFK_PAI: TIntegerField
      FieldName = 'FK_PAI'
      Origin = 'FK_PAI'
    end
    object qryCaixaECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryCaixaHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryCaixaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCaixaVIRTUAL_PLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_PLANO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryCaixaVIRTUAL_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_CONTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryCaixaVIRTUAL_CONTA2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_CONTA2'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryCaixaFK_FICHA_CLI: TIntegerField
      FieldName = 'FK_FICHA_CLI'
      Origin = 'FK_FICHA_CLI'
    end
    object qryCaixaVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryCaixaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object qryCaixaFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
      Origin = 'FK_DEVOLUCAO'
    end
    object qryCaixaFK_CARTAO: TIntegerField
      FieldName = 'FK_CARTAO'
      Origin = 'FK_CARTAO'
    end
    object qryCaixaVIRTUAL_EMPRESA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_EMPRESA'
      LookupDataSet = qryEmpresa
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'EMPRESA'
      Size = 50
      Lookup = True
    end
    object qryCaixaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCaixaTIPO_MOVIMENTO: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Size = 2
    end
    object qryCaixaID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
      DisplayFormat = ',0.00'
    end
    object qryCaixaFPG: TIntegerField
      FieldName = 'FPG'
      Origin = 'FPG'
      DisplayFormat = ',0.00'
    end
    object qryCaixaFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryCaixaRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      Origin = 'RESUMO_CAIXA'
      Size = 1
    end
    object qryCaixaFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
    object qryCaixaTENTRADA: TAggregateField
      DefaultExpression = '0'
      FieldName = 'TENTRADA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(ENTRADA)'
    end
    object qryCaixaTSAIDA: TAggregateField
      DefaultExpression = '0'
      FieldName = 'TSAIDA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(SAIDA)'
    end
  end
  object qryCR: TFDQuery
    AfterOpen = qryCRAfterOpen
    AfterPost = qryCRAfterPost
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select CR.*, pessoa.razao, ved.nome as vendedor from creceber CR'
      'left join pessoa on pessoa.codigo=cr.fkcliente'
      'left join vendedores ved on ved.codigo=cr.id_vendedor'
      'where'
      'cr.fkempresa=:id'
      '/*where*/'
      '/*ordem*/')
    Left = 920
    Top = 620
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryCRCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCRDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryCRDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryCRDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCRDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = 'DATA_RECEBIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryCRRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryCRFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCRFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCRFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qryCRNBOLETO: TIntegerField
      FieldName = 'NBOLETO'
      Origin = 'NBOLETO'
    end
    object qryCRID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryCRVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryCRVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCRDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCRJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRVRECEBIDO: TCurrencyField
      FieldName = 'VRECEBIDO'
      Origin = 'VRECEBIDO'
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCRVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
      DisplayFormat = ',0.00'
    end
    object qryCRBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCRFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryCRID_CBR_REMESSA_UUID: TStringField
      FieldName = 'ID_CBR_REMESSA_UUID'
      Origin = 'ID_CBR_REMESSA_UUID'
      Size = 44
    end
    object qryCRREMESSA_ARQUIVO: TStringField
      FieldName = 'REMESSA_ARQUIVO'
      Origin = 'REMESSA_ARQUIVO'
      Size = 200
    end
    object qryCRFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
    object qryCRFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryCRTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR)'
    end
    object qryCRTJUROS: TAggregateField
      FieldName = 'TJUROS'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(JUROS)'
    end
    object qryCRTDESCONTO: TAggregateField
      FieldName = 'TDESCONTO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(DESCONTO)'
    end
    object qryCRTRECEBIDO: TAggregateField
      FieldName = 'TRECEBIDO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VRECEBIDO)'
    end
    object qryCRTSALDO: TAggregateField
      FieldName = 'TSALDO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VL_RESTANTE)'
    end
  end
  object qrySomaRec: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select sum(crr.juros) juros, sum(crr.desconto) desconto, sum(crr' +
        '.valor_parcela) valor , sum(crr.valor_recebido) recebido from cr' +
        'recebimento crr'
      'where'
      'crr.fkreceber=:id')
    Left = 848
    Top = 620
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySomaRecJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaRecDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaRecVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaRecRECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RECEBIDO'
      Origin = 'RECEBIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryCP: TFDQuery
    AfterOpen = qryCPAfterOpen
    AfterPost = qryCPAfterPost
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select Cp.*, pessoa.razao from cpagar CP'
      'left join pessoa on pessoa.codigo=cp.fkfornece'
      'where'
      'cp.doc like :doc and'
      'cp.data between :data1 and :data2 and'
      'cp.fkempresa=:id'
      '/*where*/'
      '/*ordem*/')
    Left = 784
    Top = 684
    ParamData = <
      item
        Name = 'DOC'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end
      item
        Name = 'DATA1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryCPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCPDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCPFKFORNECE: TIntegerField
      FieldName = 'FKFORNECE'
      Origin = 'FKFORNECE'
    end
    object qryCPDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 15
    end
    object qryCPDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCPHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCPDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCPSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qryCPFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCPRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryCPFK_COMPRA: TIntegerField
      FieldName = 'FK_COMPRA'
      Origin = 'FK_COMPRA'
    end
    object qryCPVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCPDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCPJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPVLPAGO: TCurrencyField
      FieldName = 'VLPAGO'
      Origin = 'VLPAGO'
      DisplayFormat = ',0.00'
      currency = False
    end
    object qryCPVL_RESTANTE: TFMTBCDField
      FieldName = 'VL_RESTANTE'
      Origin = 'VL_RESTANTE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qryCPFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object AggregateField1: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VALOR)'
    end
    object AggregateField2: TAggregateField
      FieldName = 'TJUROS'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(JUROS)'
    end
    object AggregateField3: TAggregateField
      FieldName = 'TDESCONTO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(DESCONTO)'
    end
    object AggregateField4: TAggregateField
      FieldName = 'TRECEBIDO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLPAGO)'
    end
    object AggregateField5: TAggregateField
      FieldName = 'TSALDO'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(VL_RESTANTE)'
    end
  end
  object qrySomaPaga: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select sum(cpp.juros) juros, sum(cpp.desconto) desconto, sum(cpp' +
        '.valor_parcela) valor , sum(cpp.valor_recebido) recebido from cp' +
        'pagamento cpp'
      'where'
      'cpp.fkpagar=:id')
    Left = 785
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySomaPagaJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaPagaDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaPagaVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrySomaPagaRECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RECEBIDO'
      Origin = 'RECEBIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryProd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select PRO.*, (PRO.QTD_ATUAL * PRO.PR_CUSTO) TOTAL_COMPRA, (PRO.' +
        'QTD_ATUAL * PRO.PR_VENDA) TOTAL_VENDA, gr.descricao grupo_sl, pe' +
        's.razao fornecedor_sl  from Produto PRO'
      '     left join grupo gr on gr.codigo=pro.grupo'
      '     left join pessoa pes on pes.codigo=pro.ultforn'
      'where'
      'pro.empresa=:id'
      'order by pro.descricao')
    Left = 392
    Top = 72
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryProdULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryProdALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryProdALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryProdALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryProdCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryProdCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryProdCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryProdCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryProdCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryProdATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryProdPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryProdULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryProdCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryProdALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryProdEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryProdCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryProdPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryProdPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryProdCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryProdESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryProdPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryProdAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryProdREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryProdMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryProdFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryProdDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryProdPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryProdRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryProdTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
    end
    object qryProdCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryProdFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
    end
    object qryProdPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryProdFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
    end
    object qryProdREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryProdTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryProdFK_TECIDO: TDateField
      FieldName = 'FK_TECIDO'
      Origin = 'FK_TECIDO'
    end
    object qryProdCFOP_EXTERNO: TIntegerField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
    end
    object qryProdETQ: TStringField
      FieldName = 'ETQ'
      Origin = 'ETQ'
      Size = 1
    end
    object qryProdCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryProdCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryProdALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryProdORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryProdGLP: TBCDField
      FieldName = 'GLP'
      Origin = 'GLP'
      Precision = 18
    end
    object qryProdGNN: TBCDField
      FieldName = 'GNN'
      Origin = 'GNN'
      Precision = 18
    end
    object qryProdGNI: TBCDField
      FieldName = 'GNI'
      Origin = 'GNI'
      Precision = 18
    end
    object qryProdPESO_LIQ: TBCDField
      FieldName = 'PESO_LIQ'
      Origin = 'PESO_LIQ'
      Precision = 18
    end
    object qryProdANP: TStringField
      FieldName = 'ANP'
      Origin = 'ANP'
    end
    object qryProdCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qryProdFK_LCP: TStringField
      FieldName = 'FK_LCP'
      Origin = 'FK_LCP'
      Size = 10
    end
    object qryProdISSQN: TBCDField
      FieldName = 'ISSQN'
      Origin = 'ISSQN'
      Precision = 18
    end
    object qryProdTIPO_TRIBUTACAO: TStringField
      FieldName = 'TIPO_TRIBUTACAO'
      Origin = 'TIPO_TRIBUTACAO'
      Size = 10
    end
    object qryProdID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryProdDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
    object qryProdTRIBUTACAO_MONOFASICA: TStringField
      FieldName = 'TRIBUTACAO_MONOFASICA'
      Origin = 'TRIBUTACAO_MONOFASICA'
      Size = 1
    end
    object qryProdID_MENU: TIntegerField
      FieldName = 'ID_MENU'
      Origin = 'ID_MENU'
    end
    object qryProdVALOR_PEQUENA: TBCDField
      FieldName = 'VALOR_PEQUENA'
      Origin = 'VALOR_PEQUENA'
      Precision = 18
    end
    object qryProdVALOR_MEDIA: TBCDField
      FieldName = 'VALOR_MEDIA'
      Origin = 'VALOR_MEDIA'
      Precision = 18
    end
    object qryProdVALOR_GRANDE: TBCDField
      FieldName = 'VALOR_GRANDE'
      Origin = 'VALOR_GRANDE'
      Precision = 18
    end
    object qryProdTIPO_ALIMENTO: TStringField
      FieldName = 'TIPO_ALIMENTO'
      Origin = 'TIPO_ALIMENTO'
      Size = 1
    end
    object qryProdSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 1
    end
    object qryProdMVA_NORMAL: TBCDField
      FieldName = 'MVA_NORMAL'
      Origin = 'MVA_NORMAL'
      Precision = 18
    end
    object qryProdIMPRIME_TICKET: TStringField
      FieldName = 'IMPRIME_TICKET'
      Origin = 'IMPRIME_TICKET'
      Size = 1
    end
    object qryProdICMS_DIFERIDO: TBCDField
      FieldName = 'ICMS_DIFERIDO'
      Origin = 'ICMS_DIFERIDO'
      Precision = 18
    end
    object qryProdQTD_SABORES: TIntegerField
      FieldName = 'QTD_SABORES'
      Origin = 'QTD_SABORES'
    end
    object qryProdCOD_ENQ_IPI: TStringField
      FieldName = 'COD_ENQ_IPI'
      Origin = 'COD_ENQ_IPI'
      Size = 10
    end
    object qryProdALIQ_DESON: TBCDField
      FieldName = 'ALIQ_DESON'
      Origin = 'ALIQ_DESON'
      Precision = 18
    end
    object qryProdMOTIVO_DESONERACAO: TIntegerField
      FieldName = 'MOTIVO_DESONERACAO'
      Origin = 'MOTIVO_DESONERACAO'
    end
    object qryProdCOD_BENEFICIO: TStringField
      FieldName = 'COD_BENEFICIO'
      Origin = 'COD_BENEFICIO'
    end
    object qryProdFABRICADO: TStringField
      FieldName = 'FABRICADO'
      Origin = 'FABRICADO'
      Size = 1
    end
    object qryProdPESO_L: TBCDField
      FieldName = 'PESO_L'
      Origin = 'PESO_L'
      Precision = 18
    end
    object qryProdPESO_B: TBCDField
      FieldName = 'PESO_B'
      Origin = 'PESO_B'
      Precision = 18
    end
    object qryProdCHATBOOT: TStringField
      FieldName = 'CHATBOOT'
      Origin = 'CHATBOOT'
      Size = 1
    end
    object qryProdSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qryProdTOTAL_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMPRA'
      Origin = 'TOTAL_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryProdTOTAL_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryProdGRUPO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdFORNECEDOR_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_SL'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryProdQTD_FISCAL: TBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
    end
  end
  object qryEmpresa: TFDQuery
    BeforePost = qryEmpresaBeforePost
    OnNewRecord = qryEmpresaNewRecord
    Connection = Conexao
    SQL.Strings = (
      
        'Select emp.*, cid.coduf VIRTUAL_ID_UF, cid.uf VIRTUAL_UF from em' +
        'presa emp'
      'left join cidade cid on cid.codigo=emp.id_cidade'
      '/*where*/'
      '/*ordem*/')
    Left = 456
    Top = 72
    object qryEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
    object qryEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
    object qryEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
    end
    object qryEmpresaIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object qryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object qryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 35
    end
    object qryEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryEmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Required = True
      Size = 30
    end
    object qryEmpresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 14
    end
    object qryEmpresaSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 60
    end
    object qryEmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
    end
    object qryEmpresaFUNDACAO: TDateField
      FieldName = 'FUNDACAO'
      Origin = 'FUNDACAO'
      Required = True
    end
    object qryEmpresaUSU_CAD: TSmallintField
      FieldName = 'USU_CAD'
      Origin = 'USU_CAD'
      Required = True
    end
    object qryEmpresaUSU_ATU: TSmallintField
      FieldName = 'USU_ATU'
      Origin = 'USU_ATU'
    end
    object qryEmpresaNSERIE: TStringField
      FieldName = 'NSERIE'
      Origin = 'NSERIE'
      Required = True
      Size = 30
    end
    object qryEmpresaCSENHA: TStringField
      FieldName = 'CSENHA'
      Origin = 'CSENHA'
      Required = True
      Size = 30
    end
    object qryEmpresaNTERM: TStringField
      FieldName = 'NTERM'
      Origin = 'NTERM'
      Size = 30
    end
    object qryEmpresaID_PLANO_TRANSFERENCIA_C: TIntegerField
      FieldName = 'ID_PLANO_TRANSFERENCIA_C'
      Origin = 'ID_PLANO_TRANSFERENCIA_C'
    end
    object qryEmpresaID_PLANO_TRANSFERENCIA_D: TIntegerField
      FieldName = 'ID_PLANO_TRANSFERENCIA_D'
      Origin = 'ID_PLANO_TRANSFERENCIA_D'
    end
    object qryEmpresaID_CAIXA_GERAL: TIntegerField
      FieldName = 'ID_CAIXA_GERAL'
      Origin = 'ID_CAIXA_GERAL'
    end
    object qryEmpresaBLOQUEAR_ESTOQUE_NEGATIVO: TStringField
      FieldName = 'BLOQUEAR_ESTOQUE_NEGATIVO'
      Origin = 'BLOQUEAR_ESTOQUE_NEGATIVO'
      Size = 1
    end
    object qryEmpresaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object qryEmpresaCRT: TSmallintField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object qryEmpresaID_UF: TSmallintField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
    end
    object qryEmpresaID_PLANO_VENDA: TIntegerField
      FieldName = 'ID_PLANO_VENDA'
      Origin = 'ID_PLANO_VENDA'
    end
    object qryEmpresaOBSFISCO: TMemoField
      FieldName = 'OBSFISCO'
      Origin = 'OBSFISCO'
      BlobType = ftMemo
    end
    object qryEmpresaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryEmpresaCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 3
    end
    object qryEmpresaCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qryEmpresaALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qryEmpresaCST_ENTRADA: TStringField
      FieldName = 'CST_ENTRADA'
      Origin = 'CST_ENTRADA'
      Size = 3
    end
    object qryEmpresaCST_SAIDA: TStringField
      FieldName = 'CST_SAIDA'
      Origin = 'CST_SAIDA'
      Size = 3
    end
    object qryEmpresaALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object qryEmpresaALIQ_COF: TFMTBCDField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Precision = 18
      Size = 2
    end
    object qryEmpresaCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qryEmpresaALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryEmpresaIMP_F5: TStringField
      FieldName = 'IMP_F5'
      Origin = 'IMP_F5'
      Size = 1
    end
    object qryEmpresaIMP_F6: TStringField
      FieldName = 'IMP_F6'
      Origin = 'IMP_F6'
      Size = 1
    end
    object qryEmpresaMOSTRA_RESUMO_CAIXA: TStringField
      FieldName = 'MOSTRA_RESUMO_CAIXA'
      Origin = 'MOSTRA_RESUMO_CAIXA'
      Size = 1
    end
    object qryEmpresaLIMITE_DIARIO: TFMTBCDField
      FieldName = 'LIMITE_DIARIO'
      Origin = 'LIMITE_DIARIO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaPRAZO_MAXIMO: TSmallintField
      FieldName = 'PRAZO_MAXIMO'
      Origin = 'PRAZO_MAXIMO'
    end
    object qryEmpresaID_PLA_CONTA_FICHA_CLI: TIntegerField
      FieldName = 'ID_PLA_CONTA_FICHA_CLI'
      Origin = 'ID_PLA_CONTA_FICHA_CLI'
    end
    object qryEmpresaID_PLANO_CONTA_RETIRADA: TIntegerField
      FieldName = 'ID_PLANO_CONTA_RETIRADA'
      Origin = 'ID_PLANO_CONTA_RETIRADA'
    end
    object qryEmpresaUSA_PDV: TStringField
      FieldName = 'USA_PDV'
      Origin = 'USA_PDV'
      Size = 1
    end
    object qryEmpresaRECIBO_VIAS: TStringField
      FieldName = 'RECIBO_VIAS'
      Origin = 'RECIBO_VIAS'
      Size = 1
    end
    object qryEmpresaID_PLANO_TAXA_CARTAO: TIntegerField
      FieldName = 'ID_PLANO_TAXA_CARTAO'
      Origin = 'ID_PLANO_TAXA_CARTAO'
    end
    object qryEmpresaOBS_CARNE: TMemoField
      FieldName = 'OBS_CARNE'
      Origin = 'OBS_CARNE'
      BlobType = ftMemo
    end
    object qryEmpresaCAIXA_UNICO: TStringField
      FieldName = 'CAIXA_UNICO'
      Origin = 'CAIXA_UNICO'
      Size = 1
    end
    object qryEmpresaCAIXA_RAPIDO: TStringField
      FieldName = 'CAIXA_RAPIDO'
      Origin = 'CAIXA_RAPIDO'
      Size = 1
    end
    object qryEmpresaEMPRESA_PADRAO: TSmallintField
      FieldName = 'EMPRESA_PADRAO'
      Origin = 'EMPRESA_PADRAO'
    end
    object qryEmpresaID_PLANO_CONTA_DEVOLUCAO: TIntegerField
      FieldName = 'ID_PLANO_CONTA_DEVOLUCAO'
      Origin = 'ID_PLANO_CONTA_DEVOLUCAO'
    end
    object qryEmpresaN_INICIAL_NFCE: TIntegerField
      FieldName = 'N_INICIAL_NFCE'
      Origin = 'N_INICIAL_NFCE'
    end
    object qryEmpresaN_INICIAL_NFE: TIntegerField
      FieldName = 'N_INICIAL_NFE'
      Origin = 'N_INICIAL_NFE'
    end
    object qryEmpresaCHECA_ESTOQUE_FISCAL: TStringField
      FieldName = 'CHECA_ESTOQUE_FISCAL'
      Origin = 'CHECA_ESTOQUE_FISCAL'
      Size = 1
    end
    object qryEmpresaDESCONTO_PROD_PROMO: TStringField
      FieldName = 'DESCONTO_PROD_PROMO'
      Origin = 'DESCONTO_PROD_PROMO'
      Size = 1
    end
    object qryEmpresaDATA_CADASTRO: TStringField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      Size = 100
    end
    object qryEmpresaDATA_VALIDADE: TStringField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
      Size = 100
    end
    object qryEmpresaFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 50
    end
    object qryEmpresaLANCAR_CARTAO_CREDITO: TStringField
      FieldName = 'LANCAR_CARTAO_CREDITO'
      Origin = 'LANCAR_CARTAO_CREDITO'
      Size = 1
    end
    object qryEmpresaFILTRAR_EMPRESA_LOGIN: TStringField
      FieldName = 'FILTRAR_EMPRESA_LOGIN'
      Origin = 'FILTRAR_EMPRESA_LOGIN'
      Size = 1
    end
    object qryEmpresaENVIAR_EMAIL_NFE: TStringField
      FieldName = 'ENVIAR_EMAIL_NFE'
      Origin = 'ENVIAR_EMAIL_NFE'
      Size = 1
    end
    object qryEmpresaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      Origin = 'TRANSPORTADORA'
      Size = 1
    end
    object qryEmpresaTABELA_PRECO: TStringField
      FieldName = 'TABELA_PRECO'
      Origin = 'TABELA_PRECO'
      Size = 1
    end
    object qryEmpresaTAXA_VENDA_PRAZO: TFMTBCDField
      FieldName = 'TAXA_VENDA_PRAZO'
      Origin = 'TAXA_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMAIL_CONTADOR'
      Size = 100
    end
    object qryEmpresaAUTOPECAS: TStringField
      FieldName = 'AUTOPECAS'
      Origin = 'AUTOPECAS'
      Size = 60
    end
    object qryEmpresaATUALIZA_PR_VENDA: TStringField
      FieldName = 'ATUALIZA_PR_VENDA'
      Origin = 'ATUALIZA_PR_VENDA'
      Size = 1
    end
    object qryEmpresaINFORMAR_GTIN: TStringField
      FieldName = 'INFORMAR_GTIN'
      Origin = 'INFORMAR_GTIN'
      Size = 1
    end
    object qryEmpresaRECOLHE_FCP: TStringField
      FieldName = 'RECOLHE_FCP'
      Origin = 'RECOLHE_FCP'
      Size = 1
    end
    object qryEmpresaDIFAL_ORIGEM: TFMTBCDField
      FieldName = 'DIFAL_ORIGEM'
      Origin = 'DIFAL_ORIGEM'
      Precision = 18
      Size = 2
    end
    object qryEmpresaDIFAL_DESTINO: TFMTBCDField
      FieldName = 'DIFAL_DESTINO'
      Origin = 'DIFAL_DESTINO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaEXCLUI_PDV: TStringField
      FieldName = 'EXCLUI_PDV'
      Origin = 'EXCLUI_PDV'
      Size = 1
    end
    object qryEmpresaVENDA_SEMENTE: TStringField
      FieldName = 'VENDA_SEMENTE'
      Origin = 'VENDA_SEMENTE'
      Size = 1
    end
    object qryEmpresaCHECA: TStringField
      FieldName = 'CHECA'
      Origin = 'CHECA'
      Size = 50
    end
    object qryEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryEmpresaULTIMONSU: TStringField
      FieldName = 'ULTIMONSU'
      Origin = 'ULTIMONSU'
      Size = 30
    end
    object qryEmpresaULTIMO_PEDIDO: TIntegerField
      FieldName = 'ULTIMO_PEDIDO'
      Origin = 'ULTIMO_PEDIDO'
    end
    object qryEmpresaTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = 'TIPO_CONTRATO'
    end
    object qryEmpresaTIPO_EMPRESA: TIntegerField
      FieldName = 'TIPO_EMPRESA'
      Origin = 'TIPO_EMPRESA'
    end
    object qryEmpresaQTD_MESAS: TSmallintField
      FieldName = 'QTD_MESAS'
      Origin = 'QTD_MESAS'
    end
    object qryEmpresaBLOQUEAR_PRECO: TStringField
      FieldName = 'BLOQUEAR_PRECO'
      Origin = 'BLOQUEAR_PRECO'
      Size = 1
    end
    object qryEmpresaEXIBE_RESUMO_CAIXA: TStringField
      FieldName = 'EXIBE_RESUMO_CAIXA'
      Origin = 'EXIBE_RESUMO_CAIXA'
      Size = 1
    end
    object qryEmpresaID_PLANO_COMPRA: TIntegerField
      FieldName = 'ID_PLANO_COMPRA'
      Origin = 'ID_PLANO_COMPRA'
    end
    object qryEmpresaRESPONSAVEL_TECNICO: TStringField
      FieldName = 'RESPONSAVEL_TECNICO'
      Origin = 'RESPONSAVEL_TECNICO'
      Size = 1
    end
    object qryEmpresaCARENCIA_JUROS: TIntegerField
      FieldName = 'CARENCIA_JUROS'
      Origin = 'CARENCIA_JUROS'
    end
    object qryEmpresaPESQUISA_REFERENCIA: TStringField
      FieldName = 'PESQUISA_REFERENCIA'
      Origin = 'PESQUISA_REFERENCIA'
      Size = 1
    end
    object qryEmpresaRESTAURANTE: TStringField
      FieldName = 'RESTAURANTE'
      Origin = 'RESTAURANTE'
      Size = 1
    end
    object qryEmpresaEXIBE_F3: TStringField
      FieldName = 'EXIBE_F3'
      Origin = 'EXIBE_F3'
      Size = 1
    end
    object qryEmpresaEXIBE_F4: TStringField
      FieldName = 'EXIBE_F4'
      Origin = 'EXIBE_F4'
      Size = 1
    end
    object qryEmpresaLER_PESO: TStringField
      FieldName = 'LER_PESO'
      Origin = 'LER_PESO'
      Size = 1
    end
    object qryEmpresaDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaCHECA_LIMITE: TStringField
      FieldName = 'CHECA_LIMITE'
      Origin = 'CHECA_LIMITE'
      Size = 1
    end
    object qryEmpresaEMITE_ECF: TStringField
      FieldName = 'EMITE_ECF'
      Origin = 'EMITE_ECF'
      Size = 1
    end
    object qryEmpresaLOJA_ROUPA: TStringField
      FieldName = 'LOJA_ROUPA'
      Origin = 'LOJA_ROUPA'
      Size = 1
    end
    object qryEmpresaTIPO_JUROS: TStringField
      FieldName = 'TIPO_JUROS'
      Origin = 'TIPO_JUROS'
      Size = 1
    end
    object qryEmpresaJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Origin = 'JUROS_DIA'
      Precision = 18
      Size = 2
    end
    object qryEmpresaJUROS_MES: TFMTBCDField
      FieldName = 'JUROS_MES'
      Origin = 'JUROS_MES'
      Precision = 18
      Size = 2
    end
    object qryEmpresaFARMACIA: TStringField
      FieldName = 'FARMACIA'
      Origin = 'FARMACIA'
      Size = 1
    end
    object qryEmpresaPAGAMENTO_DINHEIRO: TStringField
      FieldName = 'PAGAMENTO_DINHEIRO'
      Origin = 'PAGAMENTO_DINHEIRO'
      Size = 1
    end
    object qryEmpresaRESPONSAVEL_EMPRESA: TStringField
      FieldName = 'RESPONSAVEL_EMPRESA'
      Origin = 'RESPONSAVEL_EMPRESA'
      Size = 50
    end
    object qryEmpresaHABILITA_DESCONTO_PDV: TStringField
      FieldName = 'HABILITA_DESCONTO_PDV'
      Origin = 'HABILITA_DESCONTO_PDV'
      Size = 1
    end
    object qryEmpresaPUXA_CFOP_PRODUTO: TStringField
      FieldName = 'PUXA_CFOP_PRODUTO'
      Origin = 'PUXA_CFOP_PRODUTO'
      Size = 1
    end
    object qryEmpresaLANCAR_CARTAO_CR: TStringField
      FieldName = 'LANCAR_CARTAO_CR'
      Origin = 'LANCAR_CARTAO_CR'
      Size = 1
    end
    object qryEmpresaUSA_BLUETOOTH_RESTA: TStringField
      FieldName = 'USA_BLUETOOTH_RESTA'
      Origin = 'USA_BLUETOOTH_RESTA'
      Size = 1
    end
    object qryEmpresaCFOP_EXTERNO: TStringField
      FieldName = 'CFOP_EXTERNO'
      Origin = 'CFOP_EXTERNO'
      Size = 4
    end
    object qryEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
    end
    object qryEmpresaCODIGO_PAIS: TIntegerField
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object qryEmpresaOBSNFCE: TMemoField
      FieldName = 'OBSNFCE'
      Origin = 'OBSNFCE'
      BlobType = ftMemo
    end
    object qryEmpresaCSOSN_EXTERNO: TStringField
      FieldName = 'CSOSN_EXTERNO'
      Origin = 'CSOSN_EXTERNO'
      Size = 3
    end
    object qryEmpresaCST_EXTERNO: TStringField
      FieldName = 'CST_EXTERNO'
      Origin = 'CST_EXTERNO'
      Size = 3
    end
    object qryEmpresaALIQ_ICMS_EXTERNO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_EXTERNO'
      Origin = 'ALIQ_ICMS_EXTERNO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaCOD_FPG_DINHEIRO: TIntegerField
      FieldName = 'COD_FPG_DINHEIRO'
      Origin = 'COD_FPG_DINHEIRO'
    end
    object qryEmpresaHABILITA_ACRESCIMO: TStringField
      FieldName = 'HABILITA_ACRESCIMO'
      Origin = 'HABILITA_ACRESCIMO'
      Size = 1
    end
    object qryEmpresaMULTI_IDIOMA: TStringField
      FieldName = 'MULTI_IDIOMA'
      Origin = 'MULTI_IDIOMA'
      Size = 1
    end
    object qryEmpresaREPLICAR_DADOS: TStringField
      FieldName = 'REPLICAR_DADOS'
      Origin = 'REPLICAR_DADOS'
      Size = 1
    end
    object qryEmpresaID_PLANO_BOLETO: TIntegerField
      FieldName = 'ID_PLANO_BOLETO'
      Origin = 'ID_PLANO_BOLETO'
    end
    object qryEmpresaSEGUNDA_VIA_NFCE: TStringField
      FieldName = 'SEGUNDA_VIA_NFCE'
      Origin = 'SEGUNDA_VIA_NFCE'
      Size = 1
    end
    object qryEmpresaEXIBE_ESTOQUE_FISCAL: TStringField
      FieldName = 'EXIBE_ESTOQUE_FISCAL'
      Origin = 'EXIBE_ESTOQUE_FISCAL'
      Size = 1
    end
    object qryEmpresaNFCE_PRODUTO_SUBSTITUTO: TStringField
      FieldName = 'NFCE_PRODUTO_SUBSTITUTO'
      Origin = 'NFCE_PRODUTO_SUBSTITUTO'
      Size = 1
    end
    object qryEmpresaAUTO_CADASTRO_PRODUTO: TStringField
      FieldName = 'AUTO_CADASTRO_PRODUTO'
      Origin = 'AUTO_CADASTRO_PRODUTO'
      Size = 1
    end
    object qryEmpresaCFOP_ENTRADA_PADRAO: TStringField
      FieldName = 'CFOP_ENTRADA_PADRAO'
      Origin = 'CFOP_ENTRADA_PADRAO'
      Size = 4
    end
    object qryEmpresaCFOP_ENTRADA_PADRO_E: TStringField
      FieldName = 'CFOP_ENTRADA_PADRO_E'
      Origin = 'CFOP_ENTRADA_PADRO_E'
      Size = 4
    end
    object qryEmpresaPUXAR_CFOP_ENTRADA: TStringField
      FieldName = 'PUXAR_CFOP_ENTRADA'
      Origin = 'PUXAR_CFOP_ENTRADA'
      Size = 1
    end
    object qryEmpresaLUCRO_PADRAO: TBCDField
      FieldName = 'LUCRO_PADRAO'
      Origin = 'LUCRO_PADRAO'
      Precision = 18
    end
    object qryEmpresaNFE_SERIE: TIntegerField
      FieldName = 'NFE_SERIE'
      Origin = 'NFE_SERIE'
    end
    object qryEmpresaOCULTAR_SALDO_ANTERIOR: TStringField
      FieldName = 'OCULTAR_SALDO_ANTERIOR'
      Origin = 'OCULTAR_SALDO_ANTERIOR'
      Size = 1
    end
    object qryEmpresaBAIXAR_ESTOQUE_NFE: TStringField
      FieldName = 'BAIXAR_ESTOQUE_NFE'
      Origin = 'BAIXAR_ESTOQUE_NFE'
      Size = 1
    end
    object qryEmpresaTRANSMITIR_CARTAO_AUTO: TStringField
      FieldName = 'TRANSMITIR_CARTAO_AUTO'
      Origin = 'TRANSMITIR_CARTAO_AUTO'
      Size = 1
    end
    object qryEmpresaALIQUOTA_SIMPLES: TBCDField
      FieldName = 'ALIQUOTA_SIMPLES'
      Origin = 'ALIQUOTA_SIMPLES'
      Precision = 18
    end
    object qryEmpresaSERVIDOR_SMTP_PROPRIO: TStringField
      FieldName = 'SERVIDOR_SMTP_PROPRIO'
      Origin = 'SERVIDOR_SMTP_PROPRIO'
      Size = 1
    end
    object qryEmpresaMENSAGEM_COBRANCA: TMemoField
      FieldName = 'MENSAGEM_COBRANCA'
      Origin = 'MENSAGEM_COBRANCA'
      BlobType = ftMemo
    end
    object qryEmpresaPRE_VISUALIZAR_IMPRESSAO: TStringField
      FieldName = 'PRE_VISUALIZAR_IMPRESSAO'
      Origin = 'PRE_VISUALIZAR_IMPRESSAO'
      Size = 1
    end
    object qryEmpresaID_PLANO_ABERTURA: TIntegerField
      FieldName = 'ID_PLANO_ABERTURA'
      Origin = 'ID_PLANO_ABERTURA'
    end
    object qryEmpresaPESQUISA_POR_PARTE: TStringField
      FieldName = 'PESQUISA_POR_PARTE'
      Origin = 'PESQUISA_POR_PARTE'
      Size = 1
    end
    object qryEmpresaBAIXAR_ESTOQUE_COMPOSICAO: TStringField
      FieldName = 'BAIXAR_ESTOQUE_COMPOSICAO'
      Origin = 'BAIXAR_ESTOQUE_COMPOSICAO'
      Size = 1
    end
    object qryEmpresaAUTO_ATUALIZA: TStringField
      FieldName = 'AUTO_ATUALIZA'
      Origin = 'AUTO_ATUALIZA'
      Size = 1
    end
    object qryEmpresaUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Origin = 'USA_TEF'
      Size = 1
    end
    object qryEmpresaRATEAR_FRETE: TStringField
      FieldName = 'RATEAR_FRETE'
      Origin = 'RATEAR_FRETE'
      Size = 1
    end
    object qryEmpresaUSA_CREDITO_SIMPLES: TStringField
      FieldName = 'USA_CREDITO_SIMPLES'
      Origin = 'USA_CREDITO_SIMPLES'
      Size = 1
    end
    object qryEmpresaDESCONTO_ITEM_PDV: TStringField
      FieldName = 'DESCONTO_ITEM_PDV'
      Origin = 'DESCONTO_ITEM_PDV'
      Size = 1
    end
    object qryEmpresaBLOQUEAR_CPF: TStringField
      FieldName = 'BLOQUEAR_CPF'
      Origin = 'BLOQUEAR_CPF'
      Size = 1
    end
    object qryEmpresaBLOQUEAR_PERSONALIZACAO: TStringField
      FieldName = 'BLOQUEAR_PERSONALIZACAO'
      Origin = 'BLOQUEAR_PERSONALIZACAO'
      Size = 1
    end
    object qryEmpresaUSAR_NUMERO_INICIAL: TStringField
      FieldName = 'USAR_NUMERO_INICIAL'
      Origin = 'USAR_NUMERO_INICIAL'
      Size = 1
    end
    object qryEmpresaCNPJ_REPRESENTANTE: TStringField
      FieldName = 'CNPJ_REPRESENTANTE'
      Origin = 'CNPJ_REPRESENTANTE'
    end
    object qryEmpresaMOSTRA_RATEIO: TStringField
      FieldName = 'MOSTRA_RATEIO'
      Origin = 'MOSTRA_RATEIO'
      Size = 1
    end
    object qryEmpresaUSAR_TRIB_TODAS_EMP: TStringField
      FieldName = 'USAR_TRIB_TODAS_EMP'
      Origin = 'USAR_TRIB_TODAS_EMP'
      Size = 1
    end
    object qryEmpresaUSAR_TRIB_XML: TStringField
      FieldName = 'USAR_TRIB_XML'
      Origin = 'USAR_TRIB_XML'
      Size = 1
    end
    object qryEmpresaVIRTUAL_ID_UF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_ID_UF'
      Origin = 'CODUF'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEmpresaVIRTUAL_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryEmpresaID_CAD_CLI: TIntegerField
      FieldName = 'ID_CAD_CLI'
      Origin = 'ID_CAD_CLI'
    end
    object qryEmpresaDT_INST: TDateField
      FieldName = 'DT_INST'
      Origin = 'DT_INST'
    end
    object qryEmpresaDT_HJ: TDateField
      FieldName = 'DT_HJ'
      Origin = 'DT_HJ'
    end
    object qryEmpresaDT_PR: TDateField
      FieldName = 'DT_PR'
      Origin = 'DT_PR'
    end
    object qryEmpresaUSAR_TEF: TStringField
      FieldName = 'USAR_TEF'
      Origin = 'USAR_TEF'
      Size = 1
    end
    object qryEmpresaTEF_GERAR_NFCE_AUTO: TStringField
      FieldName = 'TEF_GERAR_NFCE_AUTO'
      Origin = 'TEF_GERAR_NFCE_AUTO'
      Size = 1
    end
    object qryEmpresaHABILITA_FUNC_SOFTHOUSE: TStringField
      FieldName = 'HABILITA_FUNC_SOFTHOUSE'
      Origin = 'HABILITA_FUNC_SOFTHOUSE'
      Size = 1
    end
    object qryEmpresaNT_COMPRA_IMP_CUSTO: TStringField
      FieldName = 'NT_COMPRA_IMP_CUSTO'
      Origin = 'NT_COMPRA_IMP_CUSTO'
      Size = 1
    end
    object qryEmpresaNAO_ATUALIZA_GRADE: TStringField
      FieldName = 'NAO_ATUALIZA_GRADE'
      Origin = 'NAO_ATUALIZA_GRADE'
      Size = 1
    end
    object qryEmpresaUSAAPIPIX_MERCADOPAGO: TStringField
      FieldName = 'USAAPIPIX_MERCADOPAGO'
      Origin = 'USAAPIPIX_MERCADOPAGO'
      Size = 1
    end
    object qryEmpresaACCESSTOKEN_MERCADOPAGO: TStringField
      FieldName = 'ACCESSTOKEN_MERCADOPAGO'
      Origin = 'ACCESSTOKEN_MERCADOPAGO'
      Size = 250
    end
    object qryEmpresaUSAR_VLR_FECHAMENTO_ABERTURA: TStringField
      FieldName = 'USAR_VLR_FECHAMENTO_ABERTURA'
      Origin = 'USAR_VLR_FECHAMENTO_ABERTURA'
      Size = 1
    end
    object qryEmpresaPERMITIR_BAIXA_ESTOQUE_F5: TStringField
      FieldName = 'PERMITIR_BAIXA_ESTOQUE_F5'
      Origin = 'PERMITIR_BAIXA_ESTOQUE_F5'
      Size = 1
    end
    object qryEmpresaACRESCIMO_MAXIMO: TFMTBCDField
      FieldName = 'ACRESCIMO_MAXIMO'
      Origin = 'ACRESCIMO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qryEmpresaUSAR_SISTEMA_WEB: TStringField
      FieldName = 'USAR_SISTEMA_WEB'
      Origin = 'USAR_SISTEMA_WEB'
      Size = 1
    end
    object qryEmpresaCADASTRO_WEB: TStringField
      FieldName = 'CADASTRO_WEB'
      Origin = 'CADASTRO_WEB'
      Size = 1
    end
    object qryEmpresaUSAAPIPIX_BB: TStringField
      FieldName = 'USAAPIPIX_BB'
      Origin = 'USAAPIPIX_BB'
      Size = 10
    end
    object qryEmpresaBASICTOKEN_BB: TMemoField
      FieldName = 'BASICTOKEN_BB'
      Origin = 'BASICTOKEN_BB'
      BlobType = ftMemo
    end
    object qryEmpresaAPPKEY_BB: TStringField
      FieldName = 'APPKEY_BB'
      Origin = 'APPKEY_BB'
      Size = 300
    end
    object qryEmpresaCLIENTID_BB: TStringField
      FieldName = 'CLIENTID_BB'
      Origin = 'CLIENTID_BB'
      Size = 500
    end
    object qryEmpresaCLIENTSECRET_BB: TStringField
      FieldName = 'CLIENTSECRET_BB'
      Origin = 'CLIENTSECRET_BB'
      Size = 500
    end
    object qryEmpresaAPI_PIX_BANCO: TIntegerField
      FieldName = 'API_PIX_BANCO'
      Origin = 'API_PIX_BANCO'
    end
    object qryEmpresaAPI_PIX_AMBIENTE: TIntegerField
      FieldName = 'API_PIX_AMBIENTE'
      Origin = 'API_PIX_AMBIENTE'
    end
    object qryEmpresaCHAVE_PIX_BB: TStringField
      FieldName = 'CHAVE_PIX_BB'
      Origin = 'CHAVE_PIX_BB'
      Size = 250
    end
    object qryEmpresaAPI_PIX_TIPO_CHAVE_PIX: TIntegerField
      FieldName = 'API_PIX_TIPO_CHAVE_PIX'
      Origin = 'API_PIX_TIPO_CHAVE_PIX'
    end
    object qryEmpresaUSA_WHATS: TStringField
      FieldName = 'USA_WHATS'
      Origin = 'USA_WHATS'
      Size = 1
    end
    object qryEmpresaPEDIR_COLE_ETIQUETA: TStringField
      FieldName = 'PEDIR_COLE_ETIQUETA'
      Origin = 'PEDIR_COLE_ETIQUETA'
      FixedChar = True
      Size = 1
    end
  end
  object qryConsulta: TFDQuery
    Connection = Conexao
    Left = 712
    Top = 684
  end
  object qryUsuarios: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from usuarios'
      'order by login')
    Left = 388
    Top = 15
    object qryUsuariosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object qryUsuariosHIERARQUIA: TSmallintField
      FieldName = 'HIERARQUIA'
      Origin = 'HIERARQUIA'
    end
    object qryUsuariosECAIXA: TStringField
      FieldName = 'ECAIXA'
      Origin = 'ECAIXA'
      Size = 1
    end
    object qryUsuariosSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 1
    end
    object qryUsuariosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryUsuariosULTIMO_PEDIDO: TIntegerField
      FieldName = 'ULTIMO_PEDIDO'
      Origin = 'ULTIMO_PEDIDO'
    end
    object qryUsuariosULTIMA_VENDA: TIntegerField
      FieldName = 'ULTIMA_VENDA'
      Origin = 'ULTIMA_VENDA'
    end
    object qryUsuariosSENHA_APP: TStringField
      FieldName = 'SENHA_APP'
      Origin = 'SENHA_APP'
      Size = 30
    end
    object qryUsuariosAPP_SENHA: TStringField
      FieldName = 'APP_SENHA'
      Origin = 'APP_SENHA'
      Size = 30
    end
    object qryUsuariosFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryUsuariosFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 50
    end
  end
  object qryVendedor: TFDQuery
    AfterPost = qryVendedorAfterPost
    Connection = Conexao
    SQL.Strings = (
      'select *   from vendedores'
      'where'
      'empresa=:id'
      '/*where*/')
    Left = 456
    Top = 15
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Value = '1'
      end>
    object qryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendedorCMA: TFMTBCDField
      FieldName = 'CMA'
      Origin = 'CMA'
      Precision = 18
      Size = 2
    end
    object qryVendedorCMP: TFMTBCDField
      FieldName = 'CMP'
      Origin = 'CMP'
      Precision = 18
      Size = 2
    end
    object qryVendedorATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryVendedorEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryVendedorFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryVendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
  end
  object qryItensO: TFDQuery
    BeforeOpen = qryItensOBeforeOpen
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evRecordCountMode, evAutoFetchAll]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = -1
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      
        'select oi.*, pro.descricao VIRTUAL_PRODUTO, pro.pr_venda VIRTUAL' +
        '_PRECO, pro.unidade VIRTUAL_UNIDADE, pro.LOCALIZACAO VIRTUAL_LOC' +
        'AL, pro.REFERENCIA VIRTUAL_REFERENCIA, gr.DESCRICAO as Grade fro' +
        'm orcamento_item oi '
      'left join produto pro on pro.codigo=oi.fk_produto'
      'left join PRODUTO_GRADE gr on gr.codigo=oi.fk_grade'
      'where'
      'oi.fk_orcamento=:CODIGO'
      'order by oi.item')
    Left = 536
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryItensOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensOFK_ORCAMENTO: TIntegerField
      FieldName = 'FK_ORCAMENTO'
      Origin = 'FK_ORCAMENTO'
      Required = True
    end
    object qryItensOFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qryItensOQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryItensOPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensOTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryItensOITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryItensOVIRTUAL_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryItensOVIRTUAL_PRECO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_PRECO'
      Origin = 'PR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryItensOVIRTUAL_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object qryItensOVIRTUAL_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_LOCAL'
      Origin = 'LOCALIZACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryItensOVIRTUAL_REFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIRTUAL_REFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryItensOFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
      DisplayFormat = ',0.00'
    end
    object qryItensOGRADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRADE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryFPG: TFDQuery
    BeforePost = qryFPGBeforePost
    AfterPost = qryFPGAfterPost
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT * FROM FORMA_PAGAMENTO'
      'where'
      'DESCRICAO LIKE :DESCRI')
    Left = 712
    Top = 620
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
    object qryFPGCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFPGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryFPGGERACR: TStringField
      FieldName = 'GERACR'
      Origin = 'GERACR'
      Size = 1
    end
    object qryFPGGERACH: TStringField
      FieldName = 'GERACH'
      Origin = 'GERACH'
      Size = 1
    end
    object qryFPGECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryFPGUSAVD: TStringField
      FieldName = 'USAVD'
      Origin = 'USAVD'
      Size = 1
    end
    object qryFPGUSACR: TStringField
      FieldName = 'USACR'
      Origin = 'USACR'
      Size = 1
    end
    object qryFPGATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryFPGTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryFPGFKCONTADESTINO: TIntegerField
      FieldName = 'FKCONTADESTINO'
      Origin = 'FKCONTADESTINO'
    end
    object qryFPGPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
    end
    object qryFPGINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
    end
    object qryFPGTAXA: TFMTBCDField
      FieldName = 'TAXA'
      Origin = 'TAXA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryFPGENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qryFPGDIAS: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object qryFPGFK_PESSOA: TIntegerField
      FieldName = 'FK_PESSOA'
      Origin = 'FK_PESSOA'
    end
    object qryFPGUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Origin = 'USA_TEF'
      Size = 1
    end
    object qryFPGFK_BANDEIRA: TIntegerField
      FieldName = 'FK_BANDEIRA'
      Origin = 'FK_BANDEIRA'
    end
    object qryFPGCOD_BEMA: TStringField
      FieldName = 'COD_BEMA'
      Origin = 'COD_BEMA'
      Size = 10
    end
    object qryFPGCOD_DARU: TStringField
      FieldName = 'COD_DARU'
      Origin = 'COD_DARU'
      Size = 10
    end
    object qryFPGCOD_ELGI: TStringField
      FieldName = 'COD_ELGI'
      Origin = 'COD_ELGI'
      Size = 10
    end
    object qryFPGCOD_EPSO: TStringField
      FieldName = 'COD_EPSO'
      Origin = 'COD_EPSO'
      Size = 10
    end
    object qryFPGGERACC: TStringField
      FieldName = 'GERACC'
      Origin = 'GERACC'
      Size = 1
    end
    object qryFPGGERACX: TStringField
      FieldName = 'GERACX'
      Origin = 'GERACX'
      Size = 1
    end
    object qryFPGATALHO: TStringField
      FieldName = 'ATALHO'
      Origin = 'ATALHO'
      Size = 1
    end
  end
  object qryTerminal: TFDQuery
    OnNewRecord = qryTerminalNewRecord
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from VENDAS_TERMINAIS'
      'where nome=:nome'
      'order by NOME')
    Left = 640
    Top = 684
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 35
        Value = Null
      end>
    object qryTerminalIP: TStringField
      FieldName = 'IP'
      Origin = 'IP'
      Required = True
    end
    object qryTerminalNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 35
    end
    object qryTerminalIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 1
    end
    object qryTerminalUSAGAVETA: TStringField
      FieldName = 'USAGAVETA'
      Origin = 'USAGAVETA'
      Size = 1
    end
    object qryTerminalFABIMPRESSORA: TStringField
      FieldName = 'FABIMPRESSORA'
      Origin = 'FABIMPRESSORA'
    end
    object qryTerminalMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryTerminalPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 50
    end
    object qryTerminalCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'CONTINGENCIA'
      Size = 1
    end
    object qryTerminalNVIAS: TSmallintField
      FieldName = 'NVIAS'
      Origin = 'NVIAS'
      DisplayFormat = '0'
    end
    object qryTerminalSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryTerminalNUMERACAO_INICIAL: TIntegerField
      FieldName = 'NUMERACAO_INICIAL'
      Origin = 'NUMERACAO_INICIAL'
      DisplayFormat = '0'
    end
    object qryTerminalEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryTerminalVELOCIDADE: TIntegerField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
      DisplayFormat = '0'
    end
    object qryTerminalIMPRIME_FECHAMENTO: TStringField
      FieldName = 'IMPRIME_FECHAMENTO'
      Origin = 'IMPRIME_FECHAMENTO'
      Size = 1
    end
    object qryTerminalLOGADO: TStringField
      FieldName = 'LOGADO'
      Origin = 'LOGADO'
      Size = 1
    end
    object qryTerminalEH_CAIXA: TStringField
      FieldName = 'EH_CAIXA'
      Origin = 'EH_CAIXA'
      Size = 1
    end
    object qryTerminalVERSAO: TSmallintField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      DisplayFormat = ',0.00'
    end
    object qryTerminalTIPO_BROWSER: TStringField
      FieldName = 'TIPO_BROWSER'
      Origin = 'TIPO_BROWSER'
      Size = 30
    end
    object qryTerminalBALANCA_PORTA: TStringField
      FieldName = 'BALANCA_PORTA'
      Origin = 'BALANCA_PORTA'
      Size = 10
    end
    object qryTerminalBALANCA_VELOCIDADE: TStringField
      FieldName = 'BALANCA_VELOCIDADE'
      Origin = 'BALANCA_VELOCIDADE'
      Size = 10
    end
    object qryTerminalBALANCA_MARCA: TStringField
      FieldName = 'BALANCA_MARCA'
      Origin = 'BALANCA_MARCA'
      Size = 10
    end
    object qryTerminalBALANCA_PARIDADE: TStringField
      FieldName = 'BALANCA_PARIDADE'
      Origin = 'BALANCA_PARIDADE'
    end
    object qryTerminalBALANCA_DATABITS: TStringField
      FieldName = 'BALANCA_DATABITS'
      Origin = 'BALANCA_DATABITS'
      Size = 10
    end
    object qryTerminalBALANCA_STOPBITS: TStringField
      FieldName = 'BALANCA_STOPBITS'
      Origin = 'BALANCA_STOPBITS'
      Size = 10
    end
    object qryTerminalBALANCA_HANDSHAKING: TStringField
      FieldName = 'BALANCA_HANDSHAKING'
      Origin = 'BALANCA_HANDSHAKING'
    end
    object qryTerminalDATA_VERSAO: TSQLTimeStampField
      FieldName = 'DATA_VERSAO'
      Origin = 'DATA_VERSAO'
    end
    object qryTerminalDESTINO_IMPRESSAO: TStringField
      FieldName = 'DESTINO_IMPRESSAO'
      Origin = 'DESTINO_IMPRESSAO'
      Size = 30
    end
    object qryTerminalDT_VERSAO: TStringField
      FieldName = 'DT_VERSAO'
      Origin = 'DT_VERSAO'
      Size = 50
    end
    object qryTerminalESC_POS_DIRETO: TStringField
      FieldName = 'ESC_POS_DIRETO'
      Origin = 'ESC_POS_DIRETO'
      Size = 1
    end
    object qryTerminalPAGINA_CODIGO: TStringField
      FieldName = 'PAGINA_CODIGO'
      Origin = 'PAGINA_CODIGO'
      Size = 30
    end
    object qryTerminalDATA_SISTEMA: TDateField
      FieldName = 'DATA_SISTEMA'
      Origin = 'DATA_SISTEMA'
    end
    object qryTerminalIMPRIME_DUAS_LINHAS: TStringField
      FieldName = 'IMPRIME_DUAS_LINHAS'
      Origin = 'IMPRIME_DUAS_LINHAS'
      Size = 1
    end
    object qryTerminalMARGEM_DIREITA: TFMTBCDField
      FieldName = 'MARGEM_DIREITA'
      Origin = 'MARGEM_DIREITA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_ESQUERDA: TFMTBCDField
      FieldName = 'MARGEM_ESQUERDA'
      Origin = 'MARGEM_ESQUERDA'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_INFERIOR: TFMTBCDField
      FieldName = 'MARGEM_INFERIOR'
      Origin = 'MARGEM_INFERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalMARGEM_SUPERIOR: TFMTBCDField
      FieldName = 'MARGEM_SUPERIOR'
      Origin = 'MARGEM_SUPERIOR'
      Precision = 18
      Size = 2
    end
    object qryTerminalLARGURA_BOBINA: TIntegerField
      FieldName = 'LARGURA_BOBINA'
      Origin = 'LARGURA_BOBINA'
    end
    object qryTerminalESPACO_ENTRE_LINHAS: TStringField
      FieldName = 'ESPACO_ENTRE_LINHAS'
      Origin = 'ESPACO_ENTRE_LINHAS'
      Size = 1
    end
    object qryTerminalLINHAS_ENTRE_CUPOM: TStringField
      FieldName = 'LINHAS_ENTRE_CUPOM'
      Origin = 'LINHAS_ENTRE_CUPOM'
      Size = 1
    end
    object qryTerminalDT_ULTIMA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DT_ULTIMA_ATUALIZACAO'
      Origin = 'DT_ULTIMA_ATUALIZACAO'
    end
    object qryTerminalTAMANHO_FONTE: TIntegerField
      FieldName = 'TAMANHO_FONTE'
      Origin = 'TAMANHO_FONTE'
    end
    object qryTerminalFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryTerminalEXIBE_F3: TStringField
      FieldName = 'EXIBE_F3'
      Origin = 'EXIBE_F3'
      Size = 1
    end
    object qryTerminalEXIBE_F4: TStringField
      FieldName = 'EXIBE_F4'
      Origin = 'EXIBE_F4'
      Size = 1
    end
    object qryTerminalEXIBE_F5: TStringField
      FieldName = 'EXIBE_F5'
      Origin = 'EXIBE_F5'
      Size = 1
    end
    object qryTerminalEXIBE_F6: TStringField
      FieldName = 'EXIBE_F6'
      Origin = 'EXIBE_F6'
      Size = 1
    end
    object qryTerminalFRENTE: TStringField
      FieldName = 'FRENTE'
      Origin = 'FRENTE'
      Size = 40
    end
    object qryTerminalRETAGUARDA: TStringField
      FieldName = 'RETAGUARDA'
      Origin = 'RETAGUARDA'
      Size = 40
    end
    object qryTerminalCAMINHO_SAT_DLL: TStringField
      FieldName = 'CAMINHO_SAT_DLL'
      Origin = 'CAMINHO_SAT_DLL'
      Size = 200
    end
    object qryTerminalMODELO_SAT_DLL: TStringField
      FieldName = 'MODELO_SAT_DLL'
      Origin = 'MODELO_SAT_DLL'
      Size = 30
    end
    object qryTerminalTIPO_SAT_DLL: TStringField
      FieldName = 'TIPO_SAT_DLL'
      Origin = 'TIPO_SAT_DLL'
      Size = 30
    end
    object qryTerminalPARAMETROS_ADICIONAIS: TStringField
      FieldName = 'PARAMETROS_ADICIONAIS'
      Origin = 'PARAMETROS_ADICIONAIS'
      Size = 200
    end
    object qryTerminalQRCODE_LATERAL: TStringField
      FieldName = 'QRCODE_LATERAL'
      Origin = 'QRCODE_LATERAL'
      Size = 1
    end
    object qryTerminalCOLUNAS: TIntegerField
      FieldName = 'COLUNAS'
      Origin = 'COLUNAS'
    end
    object qryTerminalL1: TIntegerField
      FieldName = 'L1'
      Origin = 'L1'
    end
    object qryTerminalL2: TIntegerField
      FieldName = 'L2'
      Origin = 'L2'
    end
    object qryTerminalL3: TIntegerField
      FieldName = 'L3'
      Origin = 'L3'
    end
    object qryTerminalL4: TIntegerField
      FieldName = 'L4'
      Origin = 'L4'
    end
    object qryTerminalTIPOIMPRESSORA: TStringField
      FieldName = 'TIPOIMPRESSORA'
      Origin = 'TIPOIMPRESSORA'
      Size = 1
    end
    object qryTerminalDATA_SCRIPT: TSQLTimeStampField
      FieldName = 'DATA_SCRIPT'
      Origin = 'DATA_SCRIPT'
    end
    object qryTerminalEMPRESA_ATIVA: TIntegerField
      FieldName = 'EMPRESA_ATIVA'
      Origin = 'EMPRESA_ATIVA'
    end
    object qryTerminalTEF_LOG: TStringField
      FieldName = 'TEF_LOG'
      Origin = 'TEF_LOG'
      Size = 200
    end
    object qryTerminalTEF_GERENCIADOR: TIntegerField
      FieldName = 'TEF_GERENCIADOR'
      Origin = 'TEF_GERENCIADOR'
    end
    object qryTerminalTEF_MAX_CARTOES: TIntegerField
      FieldName = 'TEF_MAX_CARTOES'
      Origin = 'TEF_MAX_CARTOES'
    end
    object qryTerminalTEF_TROCO_MAXIMO: TSingleField
      FieldName = 'TEF_TROCO_MAXIMO'
      Origin = 'TEF_TROCO_MAXIMO'
    end
    object qryTerminalTEF_SOFT_HOUSE: TStringField
      FieldName = 'TEF_SOFT_HOUSE'
      Origin = 'TEF_SOFT_HOUSE'
      Size = 100
    end
    object qryTerminalTEF_REGISTRO: TStringField
      FieldName = 'TEF_REGISTRO'
      Origin = 'TEF_REGISTRO'
      Size = 30
    end
    object qryTerminalTEF_APLICACAO: TStringField
      FieldName = 'TEF_APLICACAO'
      Origin = 'TEF_APLICACAO'
      Size = 50
    end
    object qryTerminalTEF_VERSAO: TStringField
      FieldName = 'TEF_VERSAO'
      Origin = 'TEF_VERSAO'
      Size = 10
    end
    object qryTerminalTEF_VIA_REDUZIDA: TStringField
      FieldName = 'TEF_VIA_REDUZIDA'
      Origin = 'TEF_VIA_REDUZIDA'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_DESCONTO: TStringField
      FieldName = 'TEF_SUPORTA_DESCONTO'
      Origin = 'TEF_SUPORTA_DESCONTO'
      Size = 1
    end
    object qryTerminalTEF_SUPORTA_SAQUE: TStringField
      FieldName = 'TEF_SUPORTA_SAQUE'
      Origin = 'TEF_SUPORTA_SAQUE'
      Size = 1
    end
    object qryTerminalTEF_REAJUSTA_VALOR: TStringField
      FieldName = 'TEF_REAJUSTA_VALOR'
      Origin = 'TEF_REAJUSTA_VALOR'
      Size = 1
    end
    object qryTerminalTEF_MULTIPLO_CARTOES: TStringField
      FieldName = 'TEF_MULTIPLO_CARTOES'
      Origin = 'TEF_MULTIPLO_CARTOES'
      Size = 1
    end
    object qryTerminalRESTAURANTE: TStringField
      FieldName = 'RESTAURANTE'
      Origin = 'RESTAURANTE'
      Size = 1
    end
    object qryTerminalDELIVERY: TStringField
      FieldName = 'DELIVERY'
      Origin = 'DELIVERY'
      Size = 1
    end
    object qryTerminalPDV: TStringField
      FieldName = 'PDV'
      Origin = 'PDV'
      Size = 1
    end
    object qryTerminalCAMINHO_BAR: TStringField
      FieldName = 'CAMINHO_BAR'
      Origin = 'CAMINHO_BAR'
      Size = 100
    end
    object qryTerminalCAMINHO_COZINHA: TStringField
      FieldName = 'CAMINHO_COZINHA'
      Origin = 'CAMINHO_COZINHA'
      Size = 100
    end
    object qryTerminalUSA_POS: TStringField
      FieldName = 'USA_POS'
      Origin = 'USA_POS'
      Size = 1
    end
    object qryTerminalUSA_TEF: TStringField
      FieldName = 'USA_TEF'
      Size = 1
    end
    object qryTerminalNUMERO_LOJA: TIntegerField
      FieldName = 'NUMERO_LOJA'
      Origin = 'NUMERO_LOJA'
    end
    object qryTerminalUSAR_NUMERO_INICIAL: TStringField
      FieldName = 'USAR_NUMERO_INICIAL'
      Origin = 'USAR_NUMERO_INICIAL'
      Size = 1
    end
    object qryTerminalMODELO_TEF: TIntegerField
      FieldName = 'MODELO_TEF'
      Origin = 'MODELO_TEF'
    end
    object qryTerminalIP_SERVIDOR_TEF: TStringField
      FieldName = 'IP_SERVIDOR_TEF'
      Origin = 'IP_SERVIDOR_TEF'
      Size = 30
    end
    object qryTerminalNUMERO_LOGICO_TERMINAL: TIntegerField
      FieldName = 'NUMERO_LOGICO_TERMINAL'
      Origin = 'NUMERO_LOGICO_TERMINAL'
    end
    object qryTerminalPORTA_PIN_PAD: TIntegerField
      FieldName = 'PORTA_PIN_PAD'
      Origin = 'PORTA_PIN_PAD'
    end
    object qryTerminalMENSAGEM_PIN_PAD: TStringField
      FieldName = 'MENSAGEM_PIN_PAD'
      Origin = 'MENSAGEM_PIN_PAD'
      Size = 200
    end
    object qryTerminalIMPRESSORA_FASTREPORT: TStringField
      FieldName = 'IMPRESSORA_FASTREPORT'
      Origin = 'IMPRESSORA_FASTREPORT'
      Size = 1
    end
    object qryTerminalMOSTRA_PREVIEW: TStringField
      FieldName = 'MOSTRA_PREVIEW'
      Origin = 'MOSTRA_PREVIEW'
      Size = 1
    end
    object qryTerminalMOSTRAR_TELA_CAIXA_LIVRE: TStringField
      FieldName = 'MOSTRAR_TELA_CAIXA_LIVRE'
      Origin = 'MOSTRAR_TELA_CAIXA_LIVRE'
      Size = 1
    end
    object qryTerminalTIME_TELA_CAIXA_LIVRE: TIntegerField
      FieldName = 'TIME_TELA_CAIXA_LIVRE'
      Origin = 'TIME_TELA_CAIXA_LIVRE'
    end
    object qryTerminalPESQUISA_RAPIDA: TStringField
      FieldName = 'PESQUISA_RAPIDA'
      Origin = 'PESQUISA_RAPIDA'
      Size = 1
    end
    object qryTerminalBUSCA_BALANCA_BARRAS: TStringField
      FieldName = 'BUSCA_BALANCA_BARRAS'
      Origin = 'BUSCA_BALANCA_BARRAS'
      Size = 1
    end
    object qryTerminalIMPRESSORA_FORTESREPORT: TStringField
      FieldName = 'IMPRESSORA_FORTESREPORT'
      Origin = 'IMPRESSORA_FORTESREPORT'
      Size = 1
    end
    object qryTerminalMENSAGEM_PDV: TStringField
      FieldName = 'MENSAGEM_PDV'
      Origin = 'MENSAGEM_PDV'
      Size = 300
    end
    object qryTerminalMOSTRAR_MENSAGEM_PDV: TStringField
      FieldName = 'MOSTRAR_MENSAGEM_PDV'
      Origin = 'MOSTRAR_MENSAGEM_PDV'
      Size = 1
    end
    object qryTerminalQTD_TENTATIVA_CONECT_BAL: TIntegerField
      FieldName = 'QTD_TENTATIVA_CONECT_BAL'
      Origin = 'QTD_TENTATIVA_CONECT_BAL'
    end
    object qryTerminalIMPRIMIR_TEF_ESCPOS: TStringField
      FieldName = 'IMPRIMIR_TEF_ESCPOS'
      Origin = 'IMPRIMIR_TEF_ESCPOS'
      Size = 1
    end
    object qryTerminalLER_PESO: TStringField
      FieldName = 'LER_PESO'
      Origin = 'LER_PESO'
      FixedChar = True
      Size = 1
    end
    object qryTerminalIMPRIME_PREVIEW: TStringField
      FieldName = 'IMPRIME_PREVIEW'
      Origin = 'IMPRIME_PREVIEW'
      Size = 1
    end
    object qryTerminalTIPOFECHAMENTO: TStringField
      FieldName = 'TIPOFECHAMENTO'
      Origin = 'TIPOFECHAMENTO'
      Size = 30
    end
    object qryTerminalMEIAFOLHA: TStringField
      FieldName = 'MEIAFOLHA'
      Origin = 'MEIAFOLHA'
      Size = 1
    end
  end
  object qryConfig: TFDQuery
    BeforePost = qryConfigBeforePost
    BeforeDelete = qryConfigBeforeDelete
    OnNewRecord = qryConfigNewRecord
    MasterFields = 'ID_EMITENTE'
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'SELECT * FROM VENDAS_PARAMETROS'
      'WHERE'
      'EMPRESA=:ID')
    Left = 640
    Top = 620
    ParamData = <
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 1
      end>
    object qryConfigEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConfigTIPO_EMISSAO: TSmallintField
      FieldName = 'TIPO_EMISSAO'
      Origin = 'TIPO_EMISSAO'
    end
    object qryConfigSENHACERTIFICADO: TStringField
      FieldName = 'SENHACERTIFICADO'
      Origin = 'SENHACERTIFICADO'
      Size = 35
    end
    object qryConfigATUALIZARXML: TStringField
      FieldName = 'ATUALIZARXML'
      Origin = 'ATUALIZARXML'
      Size = 1
    end
    object qryConfigVISUALIZAERROSCHEMA: TStringField
      FieldName = 'VISUALIZAERROSCHEMA'
      Origin = 'VISUALIZAERROSCHEMA'
      Size = 1
    end
    object qryConfigFORMATOALERTA: TStringField
      FieldName = 'FORMATOALERTA'
      Origin = 'FORMATOALERTA'
      Size = 100
    end
    object qryConfigFORMAEMISSAO: TSmallintField
      FieldName = 'FORMAEMISSAO'
      Origin = 'FORMAEMISSAO'
    end
    object qryConfigMODELODF: TSmallintField
      FieldName = 'MODELODF'
      Origin = 'MODELODF'
    end
    object qryConfigVERSAODF: TSmallintField
      FieldName = 'VERSAODF'
      Origin = 'VERSAODF'
    end
    object qryConfigIDTOKEN: TStringField
      DisplayWidth = 40
      FieldName = 'IDTOKEN'
      Origin = 'IDTOKEN'
      Size = 40
    end
    object qryConfigTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'TOKEN'
      Size = 40
    end
    object qryConfigRETIRARACENTOS: TStringField
      FieldName = 'RETIRARACENTOS'
      Origin = 'RETIRARACENTOS'
      Size = 1
    end
    object qryConfigSALVARGERAL: TStringField
      FieldName = 'SALVARGERAL'
      Origin = 'SALVARGERAL'
      Size = 1
    end
    object qryConfigPATHSALVAR: TStringField
      FieldName = 'PATHSALVAR'
      Origin = 'PATHSALVAR'
      Size = 100
    end
    object qryConfigPATHSCHEMAS: TStringField
      FieldName = 'PATHSCHEMAS'
      Origin = 'PATHSCHEMAS'
      Size = 100
    end
    object qryConfigUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryConfigAMBIENTE: TSmallintField
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
    end
    object qryConfigVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      Origin = 'VISUALIZAR'
      Size = 1
    end
    object qryConfigSALVARSOAP: TStringField
      FieldName = 'SALVARSOAP'
      Origin = 'SALVARSOAP'
      Size = 1
    end
    object qryConfigAJUSTARAUTO: TStringField
      FieldName = 'AJUSTARAUTO'
      Origin = 'AJUSTARAUTO'
      Size = 1
    end
    object qryConfigAGUARDAR: TSmallintField
      FieldName = 'AGUARDAR'
      Origin = 'AGUARDAR'
    end
    object qryConfigTENTATIVAS: TSmallintField
      FieldName = 'TENTATIVAS'
      Origin = 'TENTATIVAS'
    end
    object qryConfigINTERVALO: TSmallintField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
    end
    object qryConfigSALVARARQUIVO: TStringField
      FieldName = 'SALVARARQUIVO'
      Origin = 'SALVARARQUIVO'
      Size = 1
    end
    object qryConfigPASTAMENSAL: TStringField
      FieldName = 'PASTAMENSAL'
      Origin = 'PASTAMENSAL'
      Size = 1
    end
    object qryConfigLITERAL: TStringField
      FieldName = 'LITERAL'
      Origin = 'LITERAL'
      Size = 1
    end
    object qryConfigEMISSAOPATHNFE: TStringField
      FieldName = 'EMISSAOPATHNFE'
      Origin = 'EMISSAOPATHNFE'
      Size = 1
    end
    object qryConfigSALVARPATHEVENTO: TStringField
      FieldName = 'SALVARPATHEVENTO'
      Origin = 'SALVARPATHEVENTO'
      Size = 1
    end
    object qryConfigSEPARARPORCNPJ: TStringField
      FieldName = 'SEPARARPORCNPJ'
      Origin = 'SEPARARPORCNPJ'
      Size = 1
    end
    object qryConfigSEPARARPORMODELO: TStringField
      FieldName = 'SEPARARPORMODELO'
      Origin = 'SEPARARPORMODELO'
      Size = 1
    end
    object qryConfigPATHNFE: TStringField
      FieldName = 'PATHNFE'
      Origin = 'PATHNFE'
      Size = 100
    end
    object qryConfigPATHCAN: TStringField
      FieldName = 'PATHCAN'
      Origin = 'PATHCAN'
      Size = 100
    end
    object qryConfigPATHINUTI: TStringField
      FieldName = 'PATHINUTI'
      Origin = 'PATHINUTI'
      Size = 100
    end
    object qryConfigPATHDPEC: TStringField
      FieldName = 'PATHDPEC'
      Origin = 'PATHDPEC'
      Size = 100
    end
    object qryConfigPATHCCE: TStringField
      FieldName = 'PATHCCE'
      Origin = 'PATHCCE'
      Size = 100
    end
    object qryConfigPATHEVENTO: TStringField
      FieldName = 'PATHEVENTO'
      Origin = 'PATHEVENTO'
      Size = 100
    end
    object qryConfigPATHPDF: TStringField
      FieldName = 'PATHPDF'
      Origin = 'PATHPDF'
      Size = 100
    end
    object qryConfigEMAILHOST: TStringField
      FieldName = 'EMAILHOST'
      Origin = 'EMAILHOST'
      Size = 100
    end
    object qryConfigEMAILPORTA: TStringField
      FieldName = 'EMAILPORTA'
      Origin = 'EMAILPORTA'
      Size = 10
    end
    object qryConfigEMAILSENHA: TStringField
      FieldName = 'EMAILSENHA'
      Origin = 'EMAILSENHA'
      Size = 30
    end
    object qryConfigEMAILASSUNTO: TStringField
      FieldName = 'EMAILASSUNTO'
      Origin = 'EMAILASSUNTO'
      Size = 100
    end
    object qryConfigEMAILSSL: TStringField
      FieldName = 'EMAILSSL'
      Origin = 'EMAILSSL'
      Size = 1
    end
    object qryConfigEMAILMSG: TMemoField
      FieldName = 'EMAILMSG'
      Origin = 'EMAILMSG'
      BlobType = ftMemo
    end
    object qryConfigDANFETIPO: TSmallintField
      FieldName = 'DANFETIPO'
      Origin = 'DANFETIPO'
    end
    object qryConfigATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryConfigLOGOMARCA: TStringField
      FieldName = 'LOGOMARCA'
      Origin = 'LOGOMARCA'
      Size = 100
    end
    object qryConfigNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryConfigFAZENTREGA: TStringField
      FieldName = 'FAZENTREGA'
      Origin = 'FAZENTREGA'
      Size = 1
    end
    object qryConfigNCOPIAS: TSmallintField
      FieldName = 'NCOPIAS'
      Origin = 'NCOPIAS'
      DisplayFormat = '0'
    end
    object qryConfigGERA_FI_ES: TStringField
      FieldName = 'GERA_FI_ES'
      Origin = 'GERA_FI_ES'
      Size = 1
    end
    object qryConfigPESQUISA: TStringField
      FieldName = 'PESQUISA'
      Origin = 'PESQUISA'
      Size = 15
    end
    object qryConfigCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
      Origin = 'CLIENTE_PADRAO'
    end
    object qryConfigPRODUTO_LIBERADO: TIntegerField
      FieldName = 'PRODUTO_LIBERADO'
      Origin = 'PRODUTO_LIBERADO'
    end
    object qryConfigPRODUTO_LIBERADO2: TIntegerField
      FieldName = 'PRODUTO_LIBERADO2'
      Origin = 'PRODUTO_LIBERADO2'
    end
    object qryConfigSENHA_CONSULTA: TStringField
      FieldName = 'SENHA_CONSULTA'
      Origin = 'SENHA_CONSULTA'
      Size = 10
    end
    object qryConfigPRODUTO_SERVICO: TIntegerField
      FieldName = 'PRODUTO_SERVICO'
      Origin = 'PRODUTO_SERVICO'
    end
    object qryConfigCRYPTLIB: TStringField
      FieldName = 'CRYPTLIB'
      Origin = 'CRYPTLIB'
    end
    object qryConfigHTTPLIB: TStringField
      FieldName = 'HTTPLIB'
      Origin = 'HTTPLIB'
    end
    object qryConfigXMLSIGN: TStringField
      FieldName = 'XMLSIGN'
      Origin = 'XMLSIGN'
    end
    object qryConfigPATHINUTI_NFE: TStringField
      FieldName = 'PATHINUTI_NFE'
      Origin = 'PATHINUTI_NFE'
      Size = 100
    end
    object qryConfigPATHDPEC_NFE: TStringField
      FieldName = 'PATHDPEC_NFE'
      Origin = 'PATHDPEC_NFE'
      Size = 100
    end
    object qryConfigPATHCCE_NFE: TStringField
      FieldName = 'PATHCCE_NFE'
      Origin = 'PATHCCE_NFE'
      Size = 100
    end
    object qryConfigPATHEVENTO_NFE: TStringField
      FieldName = 'PATHEVENTO_NFE'
      Origin = 'PATHEVENTO_NFE'
      Size = 100
    end
    object qryConfigPATHPDF_NFE: TStringField
      FieldName = 'PATHPDF_NFE'
      Origin = 'PATHPDF_NFE'
      Size = 100
    end
    object qryConfigSERIE_NFE: TIntegerField
      FieldName = 'SERIE_NFE'
      Origin = 'SERIE_NFE'
    end
    object qryConfigPATHSALVARNFE: TStringField
      FieldName = 'PATHSALVARNFE'
      Origin = 'PATHSALVARNFE'
      Size = 100
    end
    object qryConfigSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryConfigPATHSCHEMAS_NFE: TStringField
      FieldName = 'PATHSCHEMAS_NFE'
      Origin = 'PATHSCHEMAS_NFE'
      Size = 100
    end
    object qryConfigPATHENVIADA_NFE: TStringField
      FieldName = 'PATHENVIADA_NFE'
      Origin = 'PATHENVIADA_NFE'
      Size = 100
    end
    object qryConfigPATHCAN_NFE: TStringField
      FieldName = 'PATHCAN_NFE'
      Origin = 'PATHCAN_NFE'
      Size = 100
    end
    object qryConfigVERSAONFE: TSmallintField
      FieldName = 'VERSAONFE'
      Origin = 'VERSAONFE'
    end
    object qryConfigVENDEDOR_PADRAO: TIntegerField
      FieldName = 'VENDEDOR_PADRAO'
      Origin = 'VENDEDOR_PADRAO'
    end
    object qryConfigTRANSPORTADOR_PADRAO: TIntegerField
      FieldName = 'TRANSPORTADOR_PADRAO'
      Origin = 'TRANSPORTADOR_PADRAO'
    end
    object qryConfigCTE_SERIE: TStringField
      FieldName = 'CTE_SERIE'
      Origin = 'CTE_SERIE'
      Size = 2
    end
    object qryConfigPATH_INU_CTE: TStringField
      FieldName = 'PATH_INU_CTE'
      Origin = 'PATH_INU_CTE'
      Size = 100
    end
    object qryConfigPATH_PDF_CTE: TStringField
      FieldName = 'PATH_PDF_CTE'
      Origin = 'PATH_PDF_CTE'
      Size = 100
    end
    object qryConfigPATH_EVENTO_CTE: TStringField
      FieldName = 'PATH_EVENTO_CTE'
      Origin = 'PATH_EVENTO_CTE'
      Size = 100
    end
    object qryConfigPATH_SCHEMA_CTE: TStringField
      FieldName = 'PATH_SCHEMA_CTE'
      Origin = 'PATH_SCHEMA_CTE'
      Size = 100
    end
    object qryConfigPATH_ENVIADAS_CTE: TStringField
      FieldName = 'PATH_ENVIADAS_CTE'
      Origin = 'PATH_ENVIADAS_CTE'
      Size = 100
    end
    object qryConfigVERSAO_CTE: TIntegerField
      FieldName = 'VERSAO_CTE'
      Origin = 'VERSAO_CTE'
    end
    object qryConfigMODELO_CTE: TStringField
      FieldName = 'MODELO_CTE'
      Origin = 'MODELO_CTE'
      Size = 10
    end
    object qryConfigPATH_CCE_CTE: TStringField
      FieldName = 'PATH_CCE_CTE'
      Origin = 'PATH_CCE_CTE'
      Size = 100
    end
    object qryConfigPROCESSO_EMISSAO_CTE: TIntegerField
      FieldName = 'PROCESSO_EMISSAO_CTE'
      Origin = 'PROCESSO_EMISSAO_CTE'
    end
    object qryConfigTIPO_CONTRIBUINTE_CTE: TIntegerField
      FieldName = 'TIPO_CONTRIBUINTE_CTE'
      Origin = 'TIPO_CONTRIBUINTE_CTE'
    end
    object qryConfigTIPO_DACTE: TStringField
      FieldName = 'TIPO_DACTE'
      Origin = 'TIPO_DACTE'
      Size = 10
    end
    object qryConfigVERSAOQRCODE: TSmallintField
      FieldName = 'VERSAOQRCODE'
      Origin = 'VERSAOQRCODE'
    end
    object qryConfigPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 1
    end
    object qryConfigTIPO_BALANCA: TSmallintField
      FieldName = 'TIPO_BALANCA'
      Origin = 'TIPO_BALANCA'
    end
    object qryConfigMODELO_BALANCA: TIntegerField
      FieldName = 'MODELO_BALANCA'
      Origin = 'MODELO_BALANCA'
    end
    object qryConfigPATH_SALVAR_CTE: TStringField
      FieldName = 'PATH_SALVAR_CTE'
      Origin = 'PATH_SALVAR_CTE'
      Size = 100
    end
    object qryConfigMDFE_PATH_SCHEMA: TStringField
      FieldName = 'MDFE_PATH_SCHEMA'
      Origin = 'MDFE_PATH_SCHEMA'
      Size = 100
    end
    object qryConfigMDFE_PATH_SALVAR: TStringField
      FieldName = 'MDFE_PATH_SALVAR'
      Origin = 'MDFE_PATH_SALVAR'
      Size = 100
    end
    object qryConfigMDFE_PATH_EVENTO: TStringField
      FieldName = 'MDFE_PATH_EVENTO'
      Origin = 'MDFE_PATH_EVENTO'
      Size = 100
    end
    object qryConfigMDFE_PATH_MDFE: TStringField
      FieldName = 'MDFE_PATH_MDFE'
      Origin = 'MDFE_PATH_MDFE'
      Size = 100
    end
    object qryConfigMDFE_VERSAO: TSmallintField
      FieldName = 'MDFE_VERSAO'
      Origin = 'MDFE_VERSAO'
    end
    object qryConfigMDFE_PATH_PDF: TStringField
      FieldName = 'MDFE_PATH_PDF'
      Origin = 'MDFE_PATH_PDF'
      Size = 100
    end
    object qryConfigMDFE_SERIE: TSmallintField
      FieldName = 'MDFE_SERIE'
      Origin = 'MDFE_SERIE'
    end
    object qryConfigCTE_PIS: TFMTBCDField
      FieldName = 'CTE_PIS'
      Origin = 'CTE_PIS'
      Precision = 18
      Size = 2
    end
    object qryConfigCTE_COFINS: TFMTBCDField
      FieldName = 'CTE_COFINS'
      Origin = 'CTE_COFINS'
      Precision = 18
      Size = 2
    end
    object qryConfigCTE_ALIQ_PIS: TFMTBCDField
      FieldName = 'CTE_ALIQ_PIS'
      Origin = 'CTE_ALIQ_PIS'
      Precision = 18
      Size = 2
    end
    object qryConfigCTE_ALIQ_COF: TFMTBCDField
      FieldName = 'CTE_ALIQ_COF'
      Origin = 'CTE_ALIQ_COF'
      Precision = 18
      Size = 2
    end
    object qryConfigEMAILUSER: TStringField
      FieldName = 'EMAILUSER'
      Origin = 'EMAILUSER'
      Size = 100
    end
    object qryConfigSSL_TIPO: TSmallintField
      FieldName = 'SSL_TIPO'
    end
    object qryConfigCAMINHO_CERTIFICADO: TStringField
      FieldName = 'CAMINHO_CERTIFICADO'
      Origin = 'CAMINHO_CERTIFICADO'
      Size = 200
    end
    object qryConfigNUMEROSERIECERTFICADO: TStringField
      FieldName = 'NUMEROSERIECERTFICADO'
      Origin = 'NUMEROSERIECERTFICADO'
      Size = 100
    end
    object qryConfigPASTA_CFE_CANCELAMENTO: TStringField
      FieldName = 'PASTA_CFE_CANCELAMENTO'
      Origin = 'PASTA_CFE_CANCELAMENTO'
      Size = 200
    end
    object qryConfigTIPO_APLICATIVO: TStringField
      FieldName = 'TIPO_APLICATIVO'
      Origin = 'TIPO_APLICATIVO'
      Size = 1
    end
    object qryConfigPROXY_HOST: TStringField
      FieldName = 'PROXY_HOST'
      Origin = 'PROXY_HOST'
      Size = 100
    end
    object qryConfigPROXY_PORTA: TStringField
      FieldName = 'PROXY_PORTA'
      Origin = 'PROXY_PORTA'
      Size = 50
    end
    object qryConfigPROXY_SENHA: TStringField
      FieldName = 'PROXY_SENHA'
      Origin = 'PROXY_SENHA'
      Size = 50
    end
    object qryConfigPROXY_USUARIO: TStringField
      FieldName = 'PROXY_USUARIO'
      Origin = 'PROXY_USUARIO'
      Size = 50
    end
    object qryConfigMODELO_DLL: TStringField
      FieldName = 'MODELO_DLL'
      Origin = 'MODELO_DLL'
      Size = 30
    end
    object qryConfigCODIGO_ATIVACAO: TStringField
      FieldName = 'CODIGO_ATIVACAO'
      Origin = 'CODIGO_ATIVACAO'
      OnValidate = qryConfigCODIGO_ATIVACAOValidate
    end
    object qryConfigCODIGO_VINCULACAO: TStringField
      FieldName = 'CODIGO_VINCULACAO'
      Origin = 'CODIGO_VINCULACAO'
      Size = 350
    end
    object qryConfigCHAVE_ACESSO_MFE: TStringField
      FieldName = 'CHAVE_ACESSO_MFE'
      Origin = 'CHAVE_ACESSO_MFE'
      Size = 100
    end
    object qryConfigPASTA_CFE_VENDA: TStringField
      FieldName = 'PASTA_CFE_VENDA'
      Origin = 'PASTA_CFE_VENDA'
      Size = 200
    end
    object qryConfigPASTA_CFE_ENVIO: TStringField
      FieldName = 'PASTA_CFE_ENVIO'
      Origin = 'PASTA_CFE_ENVIO'
      Size = 200
    end
    object qryConfigPASTA_CFE_PDF: TStringField
      FieldName = 'PASTA_CFE_PDF'
      Origin = 'PASTA_CFE_PDF'
      Size = 200
    end
    object qryConfigCFE_VERSAO: TStringField
      FieldName = 'CFE_VERSAO'
      Origin = 'CFE_VERSAO'
      Size = 10
    end
    object qryConfigCFE_IDENTAR: TStringField
      FieldName = 'CFE_IDENTAR'
      Origin = 'CFE_IDENTAR'
      Size = 1
    end
    object qryConfigCFE_TAMANHOIDENTACA: TIntegerField
      FieldName = 'CFE_TAMANHOIDENTACA'
      Origin = 'CFE_TAMANHOIDENTACA'
      DisplayFormat = ',0.00'
    end
    object qryConfigMFE_INPUT: TStringField
      FieldName = 'MFE_INPUT'
      Origin = 'MFE_INPUT'
      Size = 200
    end
    object qryConfigMFE_OUTPUT: TStringField
      FieldName = 'MFE_OUTPUT'
      Origin = 'MFE_OUTPUT'
      Size = 200
    end
    object qryConfigPASTA_CFE_SCHEMA: TStringField
      FieldName = 'PASTA_CFE_SCHEMA'
      Origin = 'PASTA_CFE_SCHEMA'
      Size = 200
    end
    object qryConfigSAT_CNPJ: TStringField
      FieldName = 'SAT_CNPJ'
      Origin = 'SAT_CNPJ'
    end
    object qryConfigSAFT_HASH: TStringField
      FieldName = 'SAFT_HASH'
      Origin = 'SAFT_HASH'
      Size = 200
    end
    object qryConfigSAFT_REGISTRO: TIntegerField
      FieldName = 'SAFT_REGISTRO'
      Origin = 'SAFT_REGISTRO'
      DisplayFormat = ',0.00'
    end
    object qryConfigCAMINHO_DLL_SAT: TStringField
      FieldName = 'CAMINHO_DLL_SAT'
      Origin = 'CAMINHO_DLL_SAT'
      Size = 200
    end
    object qryConfigSTRESH_IMG_MENU: TStringField
      FieldName = 'STRESH_IMG_MENU'
      Origin = 'STRESH_IMG_MENU'
      Size = 1
    end
    object qryConfigFK_IDIOMA: TIntegerField
      FieldName = 'FK_IDIOMA'
      Origin = 'FK_IDIOMA'
    end
    object qryConfigPATH_SCHEMA_NFSE: TStringField
      FieldName = 'PATH_SCHEMA_NFSE'
      Origin = 'PATH_SCHEMA_NFSE'
      Size = 200
    end
    object qryConfigVERSAO_BROWSER: TStringField
      FieldName = 'VERSAO_BROWSER'
      Origin = 'VERSAO_BROWSER'
      Size = 30
    end
    object qryConfigEMAILTLS: TStringField
      FieldName = 'EMAILTLS'
      Origin = 'EMAILTLS'
      Size = 1
    end
    object qryConfigZERO_BALANCA: TStringField
      FieldName = 'ZERO_BALANCA'
      Origin = 'ZERO_BALANCA'
      Size = 6
    end
    object qryConfigCTE_NUMERO: TIntegerField
      FieldName = 'CTE_NUMERO'
      Origin = 'CTE_NUMERO'
    end
    object qryConfigMDFE_NUMERO: TIntegerField
      FieldName = 'MDFE_NUMERO'
      Origin = 'MDFE_NUMERO'
    end
    object qryConfigCAMINHO_CARDAPIO: TStringField
      FieldName = 'CAMINHO_CARDAPIO'
      Origin = 'CAMINHO_CARDAPIO'
      Size = 200
    end
    object qryConfigCAMINHO_ENDERECO: TStringField
      FieldName = 'CAMINHO_ENDERECO'
      Origin = 'CAMINHO_ENDERECO'
      Size = 200
    end
    object qryConfigAUTORIZAR_ZAP: TStringField
      FieldName = 'AUTORIZAR_ZAP'
      Origin = 'AUTORIZAR_ZAP'
      Size = 1
    end
    object qryConfigTIPO_CHATBOOT: TStringField
      FieldName = 'TIPO_CHATBOOT'
      Origin = 'TIPO_CHATBOOT'
    end
    object qryConfigMFE_CHAVE_ACESSO: TMemoField
      FieldName = 'MFE_CHAVE_ACESSO'
      Origin = 'MFE_CHAVE_ACESSO'
      BlobType = ftMemo
    end
    object qryConfigMFE_CHAVE_REQUISICAO: TMemoField
      FieldName = 'MFE_CHAVE_REQUISICAO'
      Origin = 'MFE_CHAVE_REQUISICAO'
      BlobType = ftMemo
    end
    object qryConfigPATHXMLENTRADA: TStringField
      FieldName = 'PATHXMLENTRADA'
      Origin = 'PATHXMLENTRADA'
      Size = 100
    end
    object qryConfigTEF_GP: TIntegerField
      FieldName = 'TEF_GP'
      Origin = 'TEF_GP'
    end
    object qryConfigTEF_AUTO_ATIVAR_GP: TStringField
      FieldName = 'TEF_AUTO_ATIVAR_GP'
      Origin = 'TEF_AUTO_ATIVAR_GP'
      Size = 1
    end
    object qryConfigTEF_MULT_CARTOES: TStringField
      FieldName = 'TEF_MULT_CARTOES'
      Origin = 'TEF_MULT_CARTOES'
      Size = 1
    end
    object qryConfigTEF_AUTO_PAGAMENTO: TStringField
      FieldName = 'TEF_AUTO_PAGAMENTO'
      Origin = 'TEF_AUTO_PAGAMENTO'
      Size = 1
    end
    object qryConfigTEF_AUTO_FINALIZA: TStringField
      FieldName = 'TEF_AUTO_FINALIZA'
      Origin = 'TEF_AUTO_FINALIZA'
      Size = 1
    end
    object qryConfigTEF_EXIBIR_MSG_AUTETI: TStringField
      FieldName = 'TEF_EXIBIR_MSG_AUTETI'
      Origin = 'TEF_EXIBIR_MSG_AUTETI'
      Size = 1
    end
    object qryConfigTEF_SLEEP: TIntegerField
      FieldName = 'TEF_SLEEP'
      Origin = 'TEF_SLEEP'
    end
    object qryConfigTEF_STS: TIntegerField
      FieldName = 'TEF_STS'
      Origin = 'TEF_STS'
    end
    object qryConfigTEF_NUM_VIAS: TIntegerField
      FieldName = 'TEF_NUM_VIAS'
      Origin = 'TEF_NUM_VIAS'
    end
    object qryConfigTEF_APLICACAO: TStringField
      FieldName = 'TEF_APLICACAO'
      Origin = 'TEF_APLICACAO'
      Size = 100
    end
    object qryConfigTEF_RAZAO: TStringField
      FieldName = 'TEF_RAZAO'
      Origin = 'TEF_RAZAO'
      Size = 150
    end
    object qryConfigTEF_REGISTRO_CERT: TStringField
      FieldName = 'TEF_REGISTRO_CERT'
      Origin = 'TEF_REGISTRO_CERT'
      Size = 200
    end
    object qryConfigTEF_SOFT_HOUSE: TStringField
      FieldName = 'TEF_SOFT_HOUSE'
      Origin = 'TEF_SOFT_HOUSE'
      Size = 100
    end
    object qryConfigTEF_VERS_APLICACAO: TStringField
      FieldName = 'TEF_VERS_APLICACAO'
      Origin = 'TEF_VERS_APLICACAO'
      Size = 15
    end
    object qryConfigTIPO_IMP_ETQ: TStringField
      FieldName = 'TIPO_IMP_ETQ'
      Origin = 'TIPO_IMP_ETQ'
      Size = 1
    end
    object qryConfigMODELO_ETQ_FAST: TStringField
      FieldName = 'MODELO_ETQ_FAST'
      Origin = 'MODELO_ETQ_FAST'
      Size = 1
    end
    object qryConfigIMPRESSORA_FAST_ETQ: TStringField
      FieldName = 'IMPRESSORA_FAST_ETQ'
      Origin = 'IMPRESSORA_FAST_ETQ'
      Size = 100
    end
    object qryConfigVENDAS_SIMPLES_NAO_MOV_CAIXA: TStringField
      FieldName = 'VENDAS_SIMPLES_NAO_MOV_CAIXA'
      Origin = 'VENDAS_SIMPLES_NAO_MOV_CAIXA'
      Size = 1
    end
    object qryConfigSH_CON_LOGIN: TStringField
      FieldName = 'SH_CON_LOGIN'
      Origin = 'SH_CON_LOGIN'
      Size = 200
    end
    object qryConfigSH_CON_PASS: TStringField
      FieldName = 'SH_CON_PASS'
      Origin = 'SH_CON_PASS'
    end
    object qryConfigSH_CON_SERVER: TStringField
      FieldName = 'SH_CON_SERVER'
      Origin = 'SH_CON_SERVER'
      Size = 200
    end
    object qryConfigSH_CON_DATABASE: TStringField
      FieldName = 'SH_CON_DATABASE'
      Origin = 'SH_CON_DATABASE'
      Size = 200
    end
    object qryConfigDASH_CON_LOGIN: TStringField
      FieldName = 'DASH_CON_LOGIN'
      Origin = 'DASH_CON_LOGIN'
      Size = 200
    end
    object qryConfigDASH_CON_PASS: TStringField
      FieldName = 'DASH_CON_PASS'
      Origin = 'DASH_CON_PASS'
    end
    object qryConfigDASH_CON_SERVER: TStringField
      FieldName = 'DASH_CON_SERVER'
      Origin = 'DASH_CON_SERVER'
      Size = 200
    end
    object qryConfigDASH_CON_DATABASE: TStringField
      FieldName = 'DASH_CON_DATABASE'
      Origin = 'DASH_CON_DATABASE'
      Size = 200
    end
  end
  object qryTransf: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from caixa'
      'where'
      'codigo<-1')
    Left = 776
    Top = 16
    object qryTransfCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTransfEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object qryTransfDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object qryTransfFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryTransfFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryTransfHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryTransfENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qryTransfSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object qryTransfSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
    object qryTransfFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryTransfFKCOMPRA: TIntegerField
      FieldName = 'FKCOMPRA'
      Origin = 'FKCOMPRA'
    end
    object qryTransfFKPAGAR: TIntegerField
      FieldName = 'FKPAGAR'
      Origin = 'FKPAGAR'
    end
    object qryTransfFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryTransfTRANSFERENCIA: TIntegerField
      FieldName = 'TRANSFERENCIA'
      Origin = 'TRANSFERENCIA'
    end
    object qryTransfBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryTransfFK_CONTA1: TIntegerField
      FieldName = 'FK_CONTA1'
      Origin = 'FK_CONTA1'
    end
    object qryTransfFK_PAI: TIntegerField
      FieldName = 'FK_PAI'
      Origin = 'FK_PAI'
    end
    object qryTransfHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryTransfECARTAO: TStringField
      FieldName = 'ECARTAO'
      Origin = 'ECARTAO'
      Size = 1
    end
    object qryTransfID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object qryTransfEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryTransfFK_FICHA_CLI: TIntegerField
      FieldName = 'FK_FICHA_CLI'
      Origin = 'FK_FICHA_CLI'
    end
    object qryTransfVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryTransfDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object qryTransfFK_DEVOLUCAO: TIntegerField
      FieldName = 'FK_DEVOLUCAO'
      Origin = 'FK_DEVOLUCAO'
    end
    object qryTransfFK_CARTAO: TIntegerField
      FieldName = 'FK_CARTAO'
      Origin = 'FK_CARTAO'
    end
    object qryTransfTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      Size = 2
    end
    object qryTransfID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
    end
    object qryTransfFK_OS: TIntegerField
      FieldName = 'FK_OS'
      Origin = 'FK_OS'
    end
    object qryTransfFPG: TIntegerField
      FieldName = 'FPG'
      Origin = 'FPG'
    end
    object qryTransfRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      Origin = 'RESUMO_CAIXA'
      Size = 1
    end
    object qryTransfFK_NFE: TIntegerField
      FieldName = 'FK_NFE'
      Origin = 'FK_NFE'
    end
  end
  object qryCidade: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Cidade'
      'order by descricao')
    Left = 616
    Top = 72
    object qryCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryCidadeCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'CODUF'
    end
    object qryCidadeUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object qryCFOP: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CFOP'
      '/*where*/'
      'order by descricao')
    Left = 568
    Top = 684
    object qryCFOPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCFOPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryCFOPTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCFOPMOV_ES: TStringField
      FieldName = 'MOV_ES'
      Origin = 'MOV_ES'
      Size = 1
    end
    object qryCFOPOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object qryCFOPATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryChave: TFDQuery
    AfterPost = qryChaveAfterPost
    Connection = Conexao
    Transaction = Transacao
    SQL.Strings = (
      'select * from chave ch'
      'where'
      'ch.maquina=:maq')
    Left = 568
    Top = 620
    ParamData = <
      item
        Name = 'MAQ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object qryChaveMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Origin = 'MAQUINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qryChaveCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Origin = 'CHAVEACESSO'
      Required = True
      Size = 100
    end
  end
  object qryResumoCaixa: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select fpg.id_forma, fp.descricao, fp.tipo, sum(fpg.valor)total ' +
        'from vendas_fpg fpg'
      'left join vendas_master vm on fpg.vendas_master=vm.codigo'
      'left join forma_pagamento fp on fp.codigo=fpg.id_forma'
      'left join contas co on co.codigo=vm.fk_caixa'
      'where'
      'vm.fk_caixa=:caixa and'
      'vm.fk_usuario=:usuario and'
      'vm.data_emissao=current_date and'
      'vm.empresa=:id'
      'group by 1,2,3')
    Left = 856
    Top = 136
    ParamData = <
      item
        Name = 'CAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryResumoCaixaID_FORMA: TIntegerField
      FieldName = 'ID_FORMA'
      Origin = 'ID_FORMA'
    end
    object qryResumoCaixaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryResumoCaixaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object qryResumoCaixaTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qryTransp: TFDQuery
    BeforePost = qryTranspBeforePost
    AfterPost = qryTranspAfterPost
    Connection = Conexao
    SQL.Strings = (
      'select * from TRANSPORTADORA'
      'where'
      'empresa=:id'
      '/*where*/')
    Left = 496
    Top = 684
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      Size = 10
    end
    object qryTranspCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryTranspIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryTranspNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qryTranspAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 40
    end
    object qryTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryTranspNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryTranspCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qryTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 45
    end
    object qryTranspUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryTranspCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '##.###-###;0;'
      Size = 8
    end
    object qryTranspPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      EditMask = 'LLL-0000;0;'
      Size = 7
    end
    object qryTranspUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Origin = 'UFPLACA'
      Size = 2
    end
    object qryTranspRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 10
    end
    object qryTranspATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTranspEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryTranspRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
    object qryTranspMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Origin = 'MOTORISTA'
      Size = 50
    end
    object qryTranspCPF_MOTORISTA: TStringField
      FieldName = 'CPF_MOTORISTA'
      Origin = 'CPF_MOTORISTA'
      EditMask = '###.###.###-##;0;'
    end
  end
  object qryVdd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select *   from vendedores'
      'order by nome')
    Left = 496
    Top = 620
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object StringField2: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryVddCMA: TFMTBCDField
      FieldName = 'CMA'
      Origin = 'CMA'
      Precision = 18
      Size = 2
    end
    object qryVddCMP: TFMTBCDField
      FieldName = 'CMP'
      Origin = 'CMP'
      Precision = 18
      Size = 2
    end
  end
  object qryTelas: TFDQuery
    AfterPost = qryTelasAfterPost
    AfterDelete = qryTelasAfterDelete
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from telas'
      '/*where*/')
    Left = 424
    Top = 684
    object qryTelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTelasNIVEL: TSmallintField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
    end
    object qryTelasPAI: TSmallintField
      FieldName = 'PAI'
      Origin = 'PAI'
    end
    object qryTelasFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object qryTelasTELA: TStringField
      FieldName = 'TELA'
      Origin = 'TELA'
      Size = 100
    end
    object qryTelasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
  object qryPermissoes: TFDQuery
    AfterPost = qryPermissoesAfterPost
    AfterDelete = qryPermissoesAfterDelete
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select pe.*, te.nome, te.pai from pemissoes pe'
      'left join telas te on te.codigo=pe.fktela'
      'where'
      'pe.fkusuario=:fk'
      'order by te.nome')
    Left = 152
    Top = 688
    ParamData = <
      item
        Name = 'FK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPermissoesFKUSUARIO: TIntegerField
      FieldName = 'FKUSUARIO'
      Origin = 'FKUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPermissoesFKTELA: TIntegerField
      FieldName = 'FKTELA'
      Origin = 'FKTELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPermissoesVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      Origin = 'VISUALIZAR'
      Size = 1
    end
    object qryPermissoesEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
      Size = 1
    end
    object qryPermissoesEDITAR: TStringField
      FieldName = 'EDITAR'
      Origin = 'EDITAR'
      Size = 1
    end
    object qryPermissoesINCLUIR: TStringField
      FieldName = 'INCLUIR'
      Origin = 'INCLUIR'
      Size = 1
    end
    object qryPermissoesVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryPermissoesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPermissoesPAI: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'PAI'
      Origin = 'PAI'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryCartao: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'select * from Cartao'
      'where'
      'fk_venda=:id'
      '')
    Left = 424
    Top = 620
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCartaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qryCartaoDOC: TStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      Size = 10
    end
    object qryCartaoID_FPG: TIntegerField
      FieldName = 'ID_FPG'
      Origin = 'ID_FPG'
    end
    object qryCartaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryCartaoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryCartaoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryCartaoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = 'DATA_BAIXA'
    end
    object qryCartaoFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryCartaoFK_CONTASRECEBER: TIntegerField
      FieldName = 'FK_CONTASRECEBER'
      Origin = 'FK_CONTASRECEBER'
    end
    object qryCartaoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryCartaoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCartaoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 40
    end
    object qryCartaoTVALOR: TAggregateField
      FieldName = 'TVALOR'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
  end
  object qryNFCE_M: TFDQuery
    BeforePost = qryNFCE_MBeforePost
    AfterPost = qryNFCE_MAfterPost
    AfterDelete = qryNFCE_MAfterDelete
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM NFCE_MASTER'
      'WHERE'
      'FK_VENDA=:ID')
    Left = 336
    Top = 684
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryNFCE_MCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryNFCE_MNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryNFCE_MCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
    object qryNFCE_MMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object qryNFCE_MSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 10
    end
    object qryNFCE_MDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryNFCE_MDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
    end
    object qryNFCE_MHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object qryNFCE_MHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
    end
    object qryNFCE_MID_EMITENTE: TIntegerField
      FieldName = 'ID_EMITENTE'
      Origin = 'ID_EMITENTE'
    end
    object qryNFCE_MID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryNFCE_MFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryNFCE_MFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryNFCE_MFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryNFCE_MCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryNFCE_MTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryNFCE_MOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryNFCE_MSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryNFCE_MEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qryNFCE_MXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryNFCE_MPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
    end
    object qryNFCE_MMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Origin = 'MOTIVOCANCELAMENTO'
      Size = 200
    end
    object qryNFCE_MFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object qryNFCE_MABERTO: TStringField
      FieldName = 'ABERTO'
      Origin = 'ABERTO'
      Size = 1
    end
    object qryNFCE_MFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryNFCE_MFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryNFCE_MSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMS: TFMTBCDField
      FieldName = 'TOTALICMS'
      Origin = 'TOTALICMS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMSPIS: TFMTBCDField
      FieldName = 'BASEICMSPIS'
      Origin = 'BASEICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMSPIS: TFMTBCDField
      FieldName = 'TOTALICMSPIS'
      Origin = 'TOTALICMSPIS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEICMSCOF: TFMTBCDField
      FieldName = 'BASEICMSCOF'
      Origin = 'BASEICMSCOF'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALICMSCOFINS: TFMTBCDField
      FieldName = 'TOTALICMSCOFINS'
      Origin = 'TOTALICMSCOFINS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MBASEISS: TFMTBCDField
      FieldName = 'BASEISS'
      Origin = 'BASEISS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTOTALISS: TFMTBCDField
      FieldName = 'TOTALISS'
      Origin = 'TOTALISS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object qryNFCE_MSAT_NUMERO_CFE: TIntegerField
      FieldName = 'SAT_NUMERO_CFE'
      Origin = 'SAT_NUMERO_CFE'
      DisplayFormat = ',0.00'
    end
    object qryNFCE_MSAT_NUMERO_SERIE: TStringField
      FieldName = 'SAT_NUMERO_SERIE'
      Origin = 'SAT_NUMERO_SERIE'
      Size = 10
    end
    object qryNFCE_MCNF: TStringField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
  end
  object QRYNFCE_D: TFDQuery
    BeforePost = QRYNFCE_DBeforePost
    Connection = Conexao
    SQL.Strings = (
      'SELECT ND.*, PRO.DESCRICAO FROM NFCE_DETALHE ND'
      'LEFT JOIN PRODUTO PRO ON PRO.CODIGO=ND.ID_PRODUTO'
      'WHERE'
      'ND.FKVENDA=:NFE')
    Left = 248
    Top = 684
    ParamData = <
      item
        Name = 'NFE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYNFCE_DCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYNFCE_DFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object QRYNFCE_DID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QRYNFCE_DITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QRYNFCE_DCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object QRYNFCE_DNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object QRYNFCE_DCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QRYNFCE_DCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QRYNFCE_DCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 4
    end
    object QRYNFCE_DTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QRYNFCE_DCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 2
    end
    object QRYNFCE_DCMUNFG: TIntegerField
      FieldName = 'CMUNFG'
      Origin = 'CMUNFG'
    end
    object QRYNFCE_DCLISTASERV: TIntegerField
      FieldName = 'CLISTASERV'
      Origin = 'CLISTASERV'
    end
    object QRYNFCE_DSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object QRYNFCE_DFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object QRYNFCE_DUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object QRYNFCE_DDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QRYNFCE_DQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object QRYNFCE_DE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object QRYNFCE_DPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DP_REDUCAO_ICMS: TFMTBCDField
      FieldName = 'P_REDUCAO_ICMS'
      Origin = 'P_REDUCAO_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_COFINS_ICMS: TFMTBCDField
      FieldName = 'BASE_COFINS_ICMS'
      Origin = 'BASE_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_COFINS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ICMS'
      Origin = 'ALIQ_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_COFINS_ICMS: TFMTBCDField
      FieldName = 'VALOR_COFINS_ICMS'
      Origin = 'VALOR_COFINS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_PIS_ICMS: TFMTBCDField
      FieldName = 'BASE_PIS_ICMS'
      Origin = 'BASE_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_PIS_ICMS: TFMTBCDField
      FieldName = 'ALIQ_PIS_ICMS'
      Origin = 'ALIQ_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_PIS_ICMS: TFMTBCDField
      FieldName = 'VALOR_PIS_ICMS'
      Origin = 'VALOR_PIS_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Origin = 'ALIQ_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DVALOR_ISS: TFMTBCDField
      FieldName = 'VALOR_ISS'
      Origin = 'VALOR_ISS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_MUN: TFMTBCDField
      FieldName = 'TRIB_MUN'
      Origin = 'TRIB_MUN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_EST: TFMTBCDField
      FieldName = 'TRIB_EST'
      Origin = 'TRIB_EST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_FED: TFMTBCDField
      FieldName = 'TRIB_FED'
      Origin = 'TRIB_FED'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTRIB_IMP: TFMTBCDField
      FieldName = 'TRIB_IMP'
      Origin = 'TRIB_IMP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QRYNFCE_DCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 2
    end
    object QRYNFCE_DCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 8
    end
    object QRYNFCE_DBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object QRYNFCE_DVICMSDESON: TBCDField
      FieldName = 'VICMSDESON'
      Origin = 'VICMSDESON'
      Precision = 18
    end
    object QRYNFCE_DALIQICMSDESON: TBCDField
      FieldName = 'ALIQICMSDESON'
      Origin = 'ALIQICMSDESON'
      Precision = 18
    end
    object QRYNFCE_DFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object QRYNFCE_DREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
  end
  object qryCC: TFDQuery
    BeforePost = qryCCBeforePost
    Connection = Conexao
    SQL.Strings = (
      'select * from pessoa_conta'
      'where'
      'fkempresa=:empresa'
      '/*where*/')
    Left = 312
    Top = 140
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCCFKPESSOA: TIntegerField
      FieldName = 'FKPESSOA'
      Origin = 'FKPESSOA'
    end
    object qryCCDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryCCDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qryCCHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryCCFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryCCFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryCCDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 10
    end
    object qryCCFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCCBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryCCENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCCSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryCPPagamento: TFDQuery
    MasterSource = dsCP
    MasterFields = 'CODIGO'
    Connection = Conexao
    SQL.Strings = (
      'SELECT CP.* FROM CPPAGAMENTO CP'
      'WHERE'
      'cp.fkpagar=:CODIGO'
      'order by 1')
    Left = 928
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCPPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCPPagamentoFKPAGAR: TIntegerField
      FieldName = 'FKPAGAR'
      Origin = 'FKPAGAR'
    end
    object qryCPPagamentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryCPPagamentoFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCPPagamentoFKUSUARIO: TIntegerField
      FieldName = 'FKUSUARIO'
      Origin = 'FKUSUARIO'
    end
    object qryCPPagamentoFKKEMPRESA: TIntegerField
      FieldName = 'FKKEMPRESA'
      Origin = 'FKKEMPRESA'
    end
    object qryCPPagamentoFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCPPagamentoFK_FORMA_PGTO: TIntegerField
      FieldName = 'FK_FORMA_PGTO'
      Origin = 'FK_FORMA_PGTO'
    end
    object NUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
    end
    object qryCPPagamentoFKFORNECEDOR: TIntegerField
      FieldName = 'FKFORNECEDOR'
      Origin = 'FKFORNECEDOR'
    end
    object qryCPPagamentoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPPagamentoPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPPagamentoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPPagamentoPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPPagamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCPPagamentoVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsCP: TDataSource
    DataSet = qryCP
    Left = 24
    Top = 484
  end
  object qryCRRecebimento: TFDQuery
    MasterSource = dsCR
    MasterFields = 'CODIGO'
    Connection = Conexao
    SQL.Strings = (
      'SELECT CR.* FROM CRRECEBIMENTO CR'
      'WHERE'
      'cR.fkRECEBER=:CODIGO'
      'order by 1')
    Left = 336
    Top = 620
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCRRecebimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCRRecebimentoFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryCRRecebimentoFKRECEBER: TIntegerField
      FieldName = 'FKRECEBER'
      Origin = 'FKRECEBER'
    end
    object qryCRRecebimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object qryCRRecebimentoFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryCRRecebimentoFKUSUARIO: TIntegerField
      FieldName = 'FKUSUARIO'
      Origin = 'FKUSUARIO'
    end
    object qryCRRecebimentoFKKEMPRESA: TIntegerField
      FieldName = 'FKKEMPRESA'
      Origin = 'FKKEMPRESA'
    end
    object qryCRRecebimentoFKCONTA: TIntegerField
      FieldName = 'FKCONTA'
      Origin = 'FKCONTA'
    end
    object qryCRRecebimentoFK_FORMA_PGTO: TIntegerField
      FieldName = 'FK_FORMA_PGTO'
      Origin = 'FK_FORMA_PGTO'
    end
    object qryCRRecebimentoNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
    end
    object qryCRRecebimentoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoPERC_JUROS: TFMTBCDField
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Origin = 'VALOR_RECEBIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryCRRecebimentoID_SUBCAIXA: TIntegerField
      FieldName = 'ID_SUBCAIXA'
      Origin = 'ID_SUBCAIXA'
      DisplayFormat = ',0.00'
    end
  end
  object dsCR: TDataSource
    DataSet = qryCR
    Left = 24
    Top = 404
  end
  object qryFichaCliente: TFDQuery
    AfterPost = qryFichaClienteAfterPost
    AfterDelete = qryFichaClienteAfterDelete
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'select pc.*, pes.razao from PESSOA_CONTA pc'
      'left join pessoa pes on pes.codigo=pc.fkpessoa'
      '/*where*/')
    Left = 616
    Top = 16
    object qryFichaClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFichaClienteFKPESSOA: TIntegerField
      FieldName = 'FKPESSOA'
      Origin = 'FKPESSOA'
    end
    object qryFichaClienteDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryFichaClienteDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qryFichaClienteHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 50
    end
    object qryFichaClienteENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object qryFichaClienteSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object qryFichaClienteFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
    end
    object qryFichaClienteFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryFichaClienteDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 10
    end
    object qryFichaClienteFKPLANO: TIntegerField
      FieldName = 'FKPLANO'
      Origin = 'FKPLANO'
    end
    object qryFichaClienteBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 1
    end
    object qryFichaClienteFKPEDIDO: TIntegerField
      FieldName = 'FKPEDIDO'
      Origin = 'FKPEDIDO'
    end
    object qryFichaClienteFK_FPG: TIntegerField
      FieldName = 'FK_FPG'
      Origin = 'FK_FPG'
    end
    object qryFichaClienteFK_CONTA: TIntegerField
      FieldName = 'FK_CONTA'
      Origin = 'FK_CONTA'
    end
    object qryFichaClienteRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryFichaClienteTENTRADA: TAggregateField
      FieldName = 'TENTRADA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(ENTRADA)'
    end
    object qryFichaClienteTSAIDA: TAggregateField
      FieldName = 'TSAIDA'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(SAIDA)'
    end
  end
  object qryPV: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'select'
      'PV.*,'
      'PES.razao,'
      've.nome as vendedor,'
      'co.descricao as conta'
      ''
      'from VENDAS_MASTER PV'
      'LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente'
      'LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor'
      'LEFT JOIN contas co on co.codigo= PV.fk_caixa'
      '/*where*/')
    Left = 248
    Top = 620
    object qryPVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPVDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryPVDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryPVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object qryPVFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qryPVFK_CAIXA: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object qryPVFK_VENDEDOR: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object qryPVTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object qryPVTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPVNECF: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object qryPVFKORCAMENTO: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object qryPVFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object qryPVOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryPVCPF_NOTA: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object qryPVSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryPVRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryPVNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryPVVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object qryPVSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object qryPVGERA_FINANCEIRO: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object qryPVPERCENTUAL_ACRESCIMO: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPVFK_TABELA: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object qryPVPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object qryPVCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryPVFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object qryPVVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryPVTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'SUM(TOTAL)'
    end
  end
  object qryPV_Itens: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      
        'select pv.*, pro.descricao produto, pro.descricao as descricao_s' +
        'l, pro.unidade from VENDAS_DETALHE pv'
      'LEFT JOIN produto pro on pro.codigo=pv.id_produto'
      'WHERE'
      'FKVENDA=:CODIGO'
      'ORDER BY ITEM')
    Left = 952
    Top = 548
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPV_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPV_ItensFKVENDA: TIntegerField
      FieldName = 'FKVENDA'
      Origin = 'FKVENDA'
      Required = True
    end
    object qryPV_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryPV_ItensITEM: TSmallintField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object qryPV_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 14
    end
    object qryPV_ItensQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 3
    end
    object qryPV_ItensE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensVALOR_ITEM: TFMTBCDField
      FieldName = 'VALOR_ITEM'
      Origin = 'VALOR_ITEM'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensVDESCONTO: TFMTBCDField
      FieldName = 'VDESCONTO'
      Origin = 'VDESCONTO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryPV_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qryPV_ItensQTD_DEVOLVIDA: TFMTBCDField
      FieldName = 'QTD_DEVOLVIDA'
      Origin = 'QTD_DEVOLVIDA'
      Precision = 18
      Size = 3
    end
    object qryPV_ItensACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qryPV_ItensOS: TStringField
      FieldName = 'OS'
      Origin = 'OS'
      Size = 1
    end
    object qryPV_ItensFK_GRADE: TIntegerField
      FieldName = 'FK_GRADE'
      Origin = 'FK_GRADE'
    end
    object qryPV_ItensID_PRODUTO_SIMILAR: TIntegerField
      FieldName = 'ID_PRODUTO_SIMILAR'
      Origin = 'ID_PRODUTO_SIMILAR'
    end
    object qryPV_ItensID_SERIAL: TIntegerField
      FieldName = 'ID_SERIAL'
      Origin = 'ID_SERIAL'
    end
    object qryPV_ItensFK_MESA: TIntegerField
      FieldName = 'FK_MESA'
      Origin = 'FK_MESA'
    end
    object qryPV_ItensQTD_RESTANTE: TFMTBCDField
      FieldName = 'QTD_RESTANTE'
      Origin = 'QTD_RESTANTE'
      Precision = 18
      Size = 3
    end
    object qryPV_ItensOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 150
    end
    object qryPV_ItensPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPV_ItensDESCRICAO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPV_ItensUNIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_1'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object qryPesqEmp: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT CODIGO, FANTASIA FROM EMPRESA'
      'ORDER BY FANTASIA')
    Left = 880
    Top = 548
    object qryPesqEmpCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqEmpFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 50
    end
  end
  object qryCSOSN: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from csosn'
      'order by 1')
    Left = 808
    Top = 548
    object qryCSOSNCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object qryCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
  end
  object qryPesqProd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select PRO.*, (PRO.QTD_ATUAL * PRO.PR_CUSTO) TOTAL_COMPRA, (PRO.' +
        'QTD_ATUAL * PRO.PR_VENDA) TOTAL_VENDA, gr.descricao grupo_sl, pe' +
        's.razao fornecedor_sl  from Produto PRO'
      '     left join grupo gr on gr.codigo=pro.grupo'
      '     left join pessoa pes on pes.codigo=pro.ultforn'
      'order by pro.descricao')
    Left = 728
    Top = 548
    object qryPesqProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqProdTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryPesqProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesqProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryPesqProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryPesqProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryPesqProdULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryPesqProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryPesqProdALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryPesqProdALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryPesqProdALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryPesqProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqProdMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryPesqProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryPesqProdQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryPesqProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryPesqProdCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryPesqProdCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryPesqProdCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryPesqProdCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryPesqProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryPesqProdCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryPesqProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryPesqProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryPesqProdATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryPesqProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryPesqProdPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqProdPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqProdULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryPesqProdULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryPesqProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
    object qryPesqProdCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryPesqProdALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryPesqProdEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryPesqProdCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryPesqProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryPesqProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryPesqProdPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryPesqProdPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryPesqProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryPesqProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryPesqProdESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryPesqProdPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryPesqProdAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryPesqProdREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryPesqProdMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryPesqProdFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryPesqProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryPesqProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesqProdDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryPesqProdPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryPesqProdPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryPesqProdTOTAL_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMPRA'
      Origin = 'TOTAL_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryPesqProdTOTAL_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryPesqProdGRUPO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryPesqProdFORNECEDOR_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_SL'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object qryParametro: TFDQuery
    BeforeEdit = qryParametroBeforeEdit
    AfterPost = qryParametroAfterPost
    AfterDelete = qryParametroAfterDelete
    Connection = Conexao
    SQL.Strings = (
      'select * from config')
    Left = 944
    Top = 484
    object qryParametroVERSAO: TIntegerField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object qryParametroDATA_SCRIPT: TDateField
      FieldName = 'DATA_SCRIPT'
      Origin = 'DATA_SCRIPT'
    end
    object qryParametroEMAIL_SUPORTE: TStringField
      FieldName = 'EMAIL_SUPORTE'
      Origin = 'EMAIL_SUPORTE'
      Size = 100
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
    object qryParametroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 100
    end
    object qryParametroFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      EditMask = '(##) # ####-####;0;'
      Size = 14
    end
    object qryParametroFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      EditMask = '(##) # ####-####;0;'
      Size = 14
    end
    object qryParametroCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 14
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
    object qryParametroICONE: TBlobField
      FieldName = 'ICONE'
      Origin = 'ICONE'
    end
    object qryParametroSPLASH: TBlobField
      FieldName = 'SPLASH'
      Origin = 'SPLASH'
    end
    object qryParametroSERVIDOR_APP: TStringField
      FieldName = 'SERVIDOR_APP'
      Origin = 'SERVIDOR_APP'
      Size = 100
    end
    object qryParametroUSUARIO_APP: TStringField
      FieldName = 'USUARIO_APP'
      Origin = 'USUARIO_APP'
      Size = 100
    end
    object qryParametroSENHA_APP: TStringField
      FieldName = 'SENHA_APP'
      Origin = 'SENHA_APP'
      Size = 100
    end
    object qryParametroDATABASE_APP: TStringField
      FieldName = 'DATABASE_APP'
      Origin = 'DATABASE_APP'
      Size = 100
    end
    object qryParametroDATABASE_LI: TStringField
      FieldName = 'DATABASE_LI'
      Origin = 'DATABASE_LI'
      Size = 100
    end
    object qryParametroTELA_FUNDO: TStringField
      FieldName = 'TELA_FUNDO'
      Origin = 'TELA_FUNDO'
      Size = 200
    end
    object qryParametroMENU_MAXIMIZADO: TStringField
      FieldName = 'MENU_MAXIMIZADO'
      Origin = 'MENU_MAXIMIZADO'
      Size = 1
    end
    object qryParametroSENHA_LI: TStringField
      FieldName = 'SENHA_LI'
      Origin = 'SENHA_LI'
      Size = 100
    end
    object qryParametroTELA_ABERTURA: TStringField
      FieldName = 'TELA_ABERTURA'
      Origin = 'TELA_ABERTURA'
      Size = 200
    end
    object qryParametroTELA_FUNDO_ECF: TStringField
      FieldName = 'TELA_FUNDO_ECF'
      Origin = 'TELA_FUNDO_ECF'
      Size = 200
    end
    object qryParametroUSUARIO_LI: TStringField
      FieldName = 'USUARIO_LI'
      Origin = 'USUARIO_LI'
      Size = 100
    end
    object qryParametroFTP_PASTA: TStringField
      FieldName = 'FTP_PASTA'
      Origin = 'FTP_PASTA'
      Size = 50
    end
    object qryParametroFTP_SERVIDOR: TStringField
      FieldName = 'FTP_SERVIDOR'
      Origin = 'FTP_SERVIDOR'
      Size = 200
    end
    object qryParametroFTP_USUARIO: TStringField
      FieldName = 'FTP_USUARIO'
      Origin = 'FTP_USUARIO'
      Size = 100
    end
    object qryParametroFTP_SENHA: TStringField
      FieldName = 'FTP_SENHA'
      Origin = 'FTP_SENHA'
      Size = 100
    end
    object qryParametroFTP_ARQUIVO: TStringField
      FieldName = 'FTP_ARQUIVO'
      Origin = 'FTP_ARQUIVO'
      Size = 50
    end
    object qryParametroEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 50
    end
    object qryParametroLINK_VENDA: TStringField
      FieldName = 'LINK_VENDA'
      Origin = 'LINK_VENDA'
      Size = 200
    end
    object qryParametroCAMINHO_LOGO_FPG: TStringField
      FieldName = 'CAMINHO_LOGO_FPG'
      Origin = 'CAMINHO_LOGO_FPG'
      Size = 200
    end
    object qryParametroTELA_FUNDO_LOGIN: TStringField
      FieldName = 'TELA_FUNDO_LOGIN'
      Origin = 'TELA_FUNDO_LOGIN'
      Size = 200
    end
    object qryParametroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '##.###.###/####-##;0;'
    end
    object qryParametroBLOQUEAR_PERSONALIZACAO: TStringField
      FieldName = 'BLOQUEAR_PERSONALIZACAO'
      Origin = 'BLOQUEAR_PERSONALIZACAO'
      Size = 1
    end
  end
  object qryPesqProduto: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, codbarra, descricao, pr_venda from produto'
      'order by descricao')
    Left = 776
    Top = 72
    object qryPesqProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqProdutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryPesqProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryPesqProdutoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryAcerta: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from acerta_estoque ae'
      'where'
      'codigo=-1;')
    Left = 880
    Top = 484
    object qryAcertaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAcertaFKPRODUTO: TIntegerField
      FieldName = 'FKPRODUTO'
      Origin = 'FKPRODUTO'
    end
    object qryAcertaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryAcertaE_S: TStringField
      FieldName = 'E_S'
      Origin = 'E_S'
      Size = 1
    end
    object qryAcertaQTD_F: TFMTBCDField
      FieldName = 'QTD_F'
      Origin = 'QTD_F'
      Precision = 18
      Size = 3
    end
    object qryAcertaQTD_A: TFMTBCDField
      FieldName = 'QTD_A'
      Origin = 'QTD_A'
      Precision = 18
      Size = 3
    end
  end
  object qryVersao: TFDQuery
    AfterPost = qryParametroAfterPost
    AfterDelete = qryParametroAfterDelete
    Connection = Conexao
    SQL.Strings = (
      'select * from vendas_terminais VT'
      'WHERE'
      'VT.nome=:VT')
    Left = 808
    Top = 484
    ParamData = <
      item
        Name = 'VT'
        DataType = ftString
        ParamType = ptInput
        Size = 35
        Value = Null
      end>
    object qryVersaoIP: TStringField
      FieldName = 'IP'
      Origin = 'IP'
      Required = True
    end
    object qryVersaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 35
    end
    object qryVersaoIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 1
    end
    object qryVersaoUSAGAVETA: TStringField
      FieldName = 'USAGAVETA'
      Origin = 'USAGAVETA'
      Size = 1
    end
    object qryVersaoFABIMPRESSORA: TStringField
      FieldName = 'FABIMPRESSORA'
      Origin = 'FABIMPRESSORA'
    end
    object qryVersaoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryVersaoPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 50
    end
    object qryVersaoCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Origin = 'CONTINGENCIA'
      Size = 1
    end
    object qryVersaoNVIAS: TSmallintField
      FieldName = 'NVIAS'
      Origin = 'NVIAS'
    end
    object qryVersaoTIPOIMPRESSORA: TStringField
      FieldName = 'TIPOIMPRESSORA'
      Origin = 'TIPOIMPRESSORA'
      Size = 1
    end
    object qryVersaoSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object qryVersaoNUMERACAO_INICIAL: TIntegerField
      FieldName = 'NUMERACAO_INICIAL'
      Origin = 'NUMERACAO_INICIAL'
    end
    object qryVersaoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryVersaoVELOCIDADE: TIntegerField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
    end
    object qryVersaoIMPRIME_FECHAMENTO: TStringField
      FieldName = 'IMPRIME_FECHAMENTO'
      Origin = 'IMPRIME_FECHAMENTO'
      Size = 1
    end
    object qryVersaoLOGADO: TStringField
      FieldName = 'LOGADO'
      Origin = 'LOGADO'
      Size = 1
    end
    object qryVersaoEH_CAIXA: TStringField
      FieldName = 'EH_CAIXA'
      Origin = 'EH_CAIXA'
      Size = 1
    end
    object qryVersaoVERSAO: TSmallintField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 24
    Top = 340
  end
  object qryTabPreco: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Tabela_preco'
      '/*where*/')
    Left = 728
    Top = 484
    object qryTabPrecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryTabPrecoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryTabPrecoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryTabPrecoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryPedidoM: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select pm.*  from pedido_master PM'
      'left join pessoa pe on pe.codigo=pm.fkcliente'
      'where pm.TIPO=:TP'
      '/*where*/')
    Left = 640
    Top = 548
    ParamData = <
      item
        Name = 'TP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qryPedidoMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoMFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryPedidoMFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
    end
    object qryPedidoMENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 50
    end
    object qryPedidoMCOMPLEMENTO_COBRANCA: TStringField
      FieldName = 'COMPLEMENTO_COBRANCA'
      Origin = 'COMPLEMENTO_COBRANCA'
      Size = 50
    end
    object qryPedidoMBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 35
    end
    object qryPedidoMCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 35
    end
    object qryPedidoMUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object qryPedidoMCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      Size = 8
    end
    object qryPedidoMFONE_COBRANCA: TStringField
      FieldName = 'FONE_COBRANCA'
      Origin = 'FONE_COBRANCA'
      Size = 12
    end
    object qryPedidoMENDERECO_ENTREGA: TStringField
      FieldName = 'ENDERECO_ENTREGA'
      Origin = 'ENDERECO_ENTREGA'
      Size = 50
    end
    object qryPedidoMCOMPLEMENTO_ENTREGA: TStringField
      FieldName = 'COMPLEMENTO_ENTREGA'
      Origin = 'COMPLEMENTO_ENTREGA'
      Size = 50
    end
    object qryPedidoMBAIRRO_ENTREGA: TStringField
      FieldName = 'BAIRRO_ENTREGA'
      Origin = 'BAIRRO_ENTREGA'
      Size = 35
    end
    object qryPedidoMCIDADE_ENTREGA: TStringField
      FieldName = 'CIDADE_ENTREGA'
      Origin = 'CIDADE_ENTREGA'
      Size = 35
    end
    object qryPedidoMUF_ENTREGA: TStringField
      FieldName = 'UF_ENTREGA'
      Origin = 'UF_ENTREGA'
      Size = 2
    end
    object qryPedidoMCEP_ENTREGA: TStringField
      FieldName = 'CEP_ENTREGA'
      Origin = 'CEP_ENTREGA'
      Size = 8
    end
    object qryPedidoMTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Origin = 'TIPO_FRETE'
      Size = 1
    end
    object qryPedidoMCONDICOES_PAGAMENTO: TMemoField
      FieldName = 'CONDICOES_PAGAMENTO'
      Origin = 'CONDICOES_PAGAMENTO'
      BlobType = ftMemo
    end
    object qryPedidoMOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryPedidoMPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 50
    end
    object qryPedidoMBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 30
    end
    object qryPedidoMAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object qryPedidoMGERENTE: TStringField
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 30
    end
    object qryPedidoMFONE_BANCO: TStringField
      FieldName = 'FONE_BANCO'
      Origin = 'FONE_BANCO'
      Size = 13
    end
    object qryPedidoMSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object qryPedidoMREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 50
    end
    object qryPedidoMDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryPedidoMTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 10
    end
    object qryPedidoMPRAZO_ENTREGA: TStringField
      FieldName = 'PRAZO_ENTREGA'
      Origin = 'PRAZO_ENTREGA'
      Size = 30
    end
    object qryPedidoMFORMA_ENTREGA: TStringField
      FieldName = 'FORMA_ENTREGA'
      Origin = 'FORMA_ENTREGA'
      Size = 5
    end
    object qryPedidoMNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryPedidoMCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Origin = 'CONDICAO_PAGAMENTO'
      Size = 1
    end
    object qryPedidoMFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 1
    end
    object qryPedidoMCLIENTE_CIDADE: TStringField
      FieldName = 'CLIENTE_CIDADE'
      Origin = 'CLIENTE_CIDADE'
      Size = 30
    end
    object qryPedidoMCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      Origin = 'CLIENTE_FONE'
      Size = 12
    end
    object qryPedidoMCLIENTE_UF: TStringField
      FieldName = 'CLIENTE_UF'
      Origin = 'CLIENTE_UF'
      Size = 2
    end
    object qryPedidoMCLIENTE_CNPJ: TStringField
      FieldName = 'CLIENTE_CNPJ'
      Origin = 'CLIENTE_CNPJ'
    end
    object qryPedidoMCLIENTE_IE: TStringField
      FieldName = 'CLIENTE_IE'
      Origin = 'CLIENTE_IE'
    end
    object qryPedidoMCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Origin = 'CLIENTE_NOME'
      Size = 60
    end
    object qryPedidoMTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoMTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(TOTAL)'
    end
  end
  object qryPedidoD: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select pd.* from pedido_detalhe pd'
      'left join produto pro on  pro.codigo=pd.fkproduto'
      'where'
      'fkpedido=:codigo'
      'order by 1')
    Left = 928
    Top = 142
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPedidoDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoDFKPEDIDO: TIntegerField
      FieldName = 'FKPEDIDO'
      Origin = 'FKPEDIDO'
    end
    object qryPedidoDFKPRODUTO: TIntegerField
      FieldName = 'FKPRODUTO'
      Origin = 'FKPRODUTO'
    end
    object qryPedidoDPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 60
    end
    object qryPedidoDPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoDTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoDVC: TFMTBCDField
      FieldName = 'VC'
      Origin = 'VC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoDPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
    object qryPedidoDFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoDQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qryPedidoDCAPACIDADE: TFMTBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Precision = 18
      Size = 3
    end
  end
  object qryCobranca: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from pessoa_cobranca'
      'where'
      'fkcliente=:cliente')
    Left = 632
    Top = 484
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryCobrancaFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCobrancaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryCobrancaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryCobrancaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryCobrancaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryCobrancaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryCobrancaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryCobrancaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 15
    end
  end
  object qryEntrega: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select * from pessoa_entrega'
      'where'
      'fkcliente=:cliente')
    Left = 617
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEntregaFKCLIENTE: TIntegerField
      FieldName = 'FKCLIENTE'
      Origin = 'FKCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEntregaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryEntregaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qryEntregaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryEntregaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryEntregaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryEntregaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryEntregaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 15
    end
  end
  object qryBuscaIcms: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from TABELA_ICMS'
      'where'
      'origem=:origem')
    Left = 560
    Top = 548
    ParamData = <
      item
        Name = 'ORIGEM'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object qryBuscaIcmsORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBuscaIcmsAC: TFMTBCDField
      FieldName = 'AC'
      Origin = 'AC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsAL: TFMTBCDField
      FieldName = 'AL'
      Origin = 'AL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsAM: TFMTBCDField
      FieldName = 'AM'
      Origin = 'AM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsAP: TFMTBCDField
      FieldName = 'AP'
      Origin = 'AP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsBA: TFMTBCDField
      FieldName = 'BA'
      Origin = 'BA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsCE: TFMTBCDField
      FieldName = 'CE'
      Origin = 'CE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsDF: TFMTBCDField
      FieldName = 'DF'
      Origin = 'DF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsES: TFMTBCDField
      FieldName = 'ES'
      Origin = 'ES'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsGO: TFMTBCDField
      FieldName = 'GO'
      Origin = 'GO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsMA: TFMTBCDField
      FieldName = 'MA'
      Origin = 'MA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsMG: TFMTBCDField
      FieldName = 'MG'
      Origin = 'MG'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsMS: TFMTBCDField
      FieldName = 'MS'
      Origin = 'MS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsMT: TFMTBCDField
      FieldName = 'MT'
      Origin = 'MT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsPA: TFMTBCDField
      FieldName = 'PA'
      Origin = 'PA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsPB: TFMTBCDField
      FieldName = 'PB'
      Origin = 'PB'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsPE: TFMTBCDField
      FieldName = 'PE'
      Origin = 'PE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsP_I: TFMTBCDField
      FieldName = 'P_I'
      Origin = 'P_I'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsPR: TFMTBCDField
      FieldName = 'PR'
      Origin = 'PR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsRJ: TFMTBCDField
      FieldName = 'RJ'
      Origin = 'RJ'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsRO: TFMTBCDField
      FieldName = 'RO'
      Origin = 'RO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsRN: TFMTBCDField
      FieldName = 'RN'
      Origin = 'RN'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsRR: TFMTBCDField
      FieldName = 'RR'
      Origin = 'RR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsRS: TFMTBCDField
      FieldName = 'RS'
      Origin = 'RS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsSC: TFMTBCDField
      FieldName = 'SC'
      Origin = 'SC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsSE: TFMTBCDField
      FieldName = 'SE'
      Origin = 'SE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsSP: TFMTBCDField
      FieldName = 'SP'
      Origin = 'SP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryBuscaIcmsT_O: TFMTBCDField
      FieldName = 'T_O'
      Origin = 'T_O'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object qryVeiculos_cavalo: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculos_cavalo'
      '/*where*/')
    Left = 544
    Top = 484
    object qryVeiculos_cavaloPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryVeiculos_cavaloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryVeiculos_cavaloMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryVeiculos_cavaloUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryVeiculos_cavaloRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
    end
    object qryVeiculos_cavaloRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 8
    end
    object qryVeiculos_cavaloTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryVeiculos_cavaloCARROCERIA: TIntegerField
      FieldName = 'CARROCERIA'
      Origin = 'CARROCERIA'
    end
    object qryVeiculos_cavaloATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qryVeiculos_cavaloVIRTUAL_CARROCERICA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CARROCERICA'
      LookupDataSet = qryVeiculo_Carroceria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARROCERIA'
      Size = 30
      Lookup = True
    end
    object qryVeiculos_cavaloVIRTUAL_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_TIPO'
      LookupDataSet = qryVeiculo_tipo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPO'
      Size = 30
      Lookup = True
    end
    object qryVeiculos_cavaloTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 3
    end
    object qryVeiculos_cavaloPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
  end
  object qryVeiculos_Reboque: TFDQuery
    OnNewRecord = qryVeiculos_ReboqueNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculos_reboque'
      'where'
      'placa_cavalo like :placa'
      '')
    Left = 456
    Top = 548
    ParamData = <
      item
        Name = 'PLACA'
        DataType = ftString
        ParamType = ptInput
        Size = 7
        Value = Null
      end>
    object qryVeiculos_ReboqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVeiculos_ReboquePLACA_CAVALO: TStringField
      FieldName = 'PLACA_CAVALO'
      Origin = 'PLACA_CAVALO'
      Required = True
      EditMask = 'LLL-####;0;'
      Size = 7
    end
    object qryVeiculos_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 7
    end
    object qryVeiculos_ReboqueMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 40
    end
    object qryVeiculos_ReboqueUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryVeiculos_ReboqueRNTC: TStringField
      FieldName = 'RNTC'
      Origin = 'RNTC'
      Size = 8
    end
    object qryVeiculos_ReboqueRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 10
    end
    object qryVeiculos_ReboqueTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryVeiculos_ReboqueCARROCERIA: TIntegerField
      FieldName = 'CARROCERIA'
      Origin = 'CARROCERIA'
    end
    object qryVeiculos_ReboqueVIRTUAL_CARROCERIA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CARROCERIA'
      LookupDataSet = qryVeiculo_Carroceria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARROCERIA'
      Size = 30
      Lookup = True
    end
    object qryVeiculos_ReboquePESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 3
    end
    object qryVeiculos_ReboqueTARA: TFMTBCDField
      FieldName = 'TARA'
      Origin = 'TARA'
      Precision = 18
      Size = 3
    end
  end
  object qryRegistro: TFDQuery
    Connection = Conexao
    Left = 456
    Top = 484
  end
  object qrySped: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped'
      'where'
      'fk_empresa=:id and'
      'data_ini =:dtini and'
      'data_fim=:dtfim')
    Left = 376
    Top = 484
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qrySpedCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySpedDATA_INI: TDateField
      FieldName = 'DATA_INI'
      Origin = 'DATA_INI'
    end
    object qrySpedDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object qrySpedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object qrySpedREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 1
    end
    object qrySpedSEMMOVIMENTO: TStringField
      FieldName = 'SEMMOVIMENTO'
      Origin = 'SEMMOVIMENTO'
      Size = 1
    end
    object qrySpedRECIBO: TStringField
      FieldName = 'RECIBO'
      Origin = 'RECIBO'
      Size = 41
    end
    object qrySpedFK_CONTADOR: TIntegerField
      FieldName = 'FK_CONTADOR'
      Origin = 'FK_CONTADOR'
    end
    object qrySpedFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySpedFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_Config: TFDQuery
    OnNewRecord = qrySped_ConfigNewRecord
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select  * from sped_config'
      'where '
      'fk_empresa=:id')
    Left = 344
    Top = 548
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ConfigFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_ConfigIND_PERFIL: TStringField
      FieldName = 'IND_PERFIL'
      Origin = 'IND_PERFIL'
      Size = 1
    end
    object qrySped_ConfigIND_ATIV: TStringField
      FieldName = 'IND_ATIV'
      Origin = 'IND_ATIV'
      Size = 1
    end
    object qrySped_ConfigIND_EXP: TStringField
      FieldName = 'IND_EXP'
      Origin = 'IND_EXP'
      Size = 1
    end
    object qrySped_ConfigIND_CCRF: TStringField
      FieldName = 'IND_CCRF'
      Origin = 'IND_CCRF'
      Size = 1
    end
    object qrySped_ConfigIND_COMB: TStringField
      FieldName = 'IND_COMB'
      Origin = 'IND_COMB'
      Size = 1
    end
    object qrySped_ConfigIND_USINA: TStringField
      FieldName = 'IND_USINA'
      Origin = 'IND_USINA'
      Size = 1
    end
    object qrySped_ConfigIND_VA: TStringField
      FieldName = 'IND_VA'
      Origin = 'IND_VA'
      Size = 1
    end
    object qrySped_ConfigIND_EE: TStringField
      FieldName = 'IND_EE'
      Origin = 'IND_EE'
      Size = 1
    end
    object qrySped_ConfigIND_CART: TStringField
      FieldName = 'IND_CART'
      Origin = 'IND_CART'
      Size = 1
    end
    object qrySped_ConfigIND_FORM: TStringField
      FieldName = 'IND_FORM'
      Origin = 'IND_FORM'
      Size = 1
    end
    object qrySped_ConfigIND_AER: TStringField
      FieldName = 'IND_AER'
      Origin = 'IND_AER'
      Size = 1
    end
    object qrySped_ConfigCOD_INC_TRIB: TStringField
      FieldName = 'COD_INC_TRIB'
      Origin = 'COD_INC_TRIB'
      Size = 1
    end
    object qrySped_ConfigIND_APRO_CRED: TStringField
      FieldName = 'IND_APRO_CRED'
      Origin = 'IND_APRO_CRED'
      Size = 1
    end
    object qrySped_ConfigCOD_TIPO_CONT: TStringField
      FieldName = 'COD_TIPO_CONT'
      Origin = 'COD_TIPO_CONT'
      Size = 1
    end
    object qrySped_ConfigIND_REG_CUM: TStringField
      FieldName = 'IND_REG_CUM'
      Origin = 'IND_REG_CUM'
      Size = 1
    end
    object qrySped_ConfigFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_ConfigCOD_REGIME_TRIBUTARIO: TStringField
      FieldName = 'COD_REGIME_TRIBUTARIO'
      Origin = 'COD_REGIME_TRIBUTARIO'
      Size = 1
    end
    object qrySped_ConfigREGIME_TRIBUTARIO: TStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = 'REGIME_TRIBUTARIO'
      Size = 1
    end
    object qrySped_ConfigCONFIG_1601: TStringField
      FieldName = 'CONFIG_1601'
      Origin = 'CONFIG_1601'
      Size = 1
    end
    object qrySped_ConfigADM_PADRAO_CARTAO_DEB: TIntegerField
      FieldName = 'ADM_PADRAO_CARTAO_DEB'
      Origin = 'ADM_PADRAO_CARTAO_DEB'
    end
    object qrySped_ConfigADM_PADRAO_CARTAO_CRE: TIntegerField
      FieldName = 'ADM_PADRAO_CARTAO_CRE'
      Origin = 'ADM_PADRAO_CARTAO_CRE'
    end
    object qrySped_ConfigADM_PADRAO_PIX: TIntegerField
      FieldName = 'ADM_PADRAO_PIX'
      Origin = 'ADM_PADRAO_PIX'
    end
    object qrySped_ConfigADM_PADRAO_VALE_ALI: TIntegerField
      FieldName = 'ADM_PADRAO_VALE_ALI'
      Origin = 'ADM_PADRAO_VALE_ALI'
    end
  end
  object qrySped_contador: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from contador'
      '/*where*/')
    Left = 248
    Top = 548
    object qrySped_contadorCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_contadorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qrySped_contadorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 15
    end
    object qrySped_contadorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object qrySped_contadorCRC: TStringField
      FieldName = 'CRC'
      Origin = 'CRC'
      Size = 10
    end
    object qrySped_contadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qrySped_contadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qrySped_contadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object qrySped_contadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '##.###-###;0;'
      Size = 8
    end
    object qrySped_contadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qrySped_contadorCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
    end
    object qrySped_contadorFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 12
    end
    object qrySped_contadorFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 12
    end
    object qrySped_contadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 70
    end
    object qrySped_contadorUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrySped_contadorFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_contadorFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
  end
  object qrySped_Produto: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_produtos'
      'WHERE'
      'FK_SPED=:D'
      ''
      'order by fk_produto;')
    Left = 936
    Top = 420
    ParamData = <
      item
        Name = 'D'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_ProdutoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      Required = True
    end
    object qrySped_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qrySped_ProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
    end
    object qrySped_ProdutoTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
    end
    object qrySped_ProdutoCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 10
    end
    object qrySped_ProdutoALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_ProdutoFK_UNIDADE: TSmallintField
      FieldName = 'FK_UNIDADE'
      Origin = 'FK_UNIDADE'
    end
    object qrySped_ProdutoFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_ProdutoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_ProdutoFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_Participante: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_participantes'
      'where'
      'fk_sped=:sped')
    Left = 832
    Top = 420
    ParamData = <
      item
        Name = 'SPED'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_ParticipanteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_ParticipanteCOD_PART: TIntegerField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
    end
    object qrySped_ParticipanteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qrySped_ParticipanteCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
      Size = 6
    end
    object qrySped_ParticipanteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 15
    end
    object qrySped_ParticipanteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object qrySped_ParticipanteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrySped_ParticipanteCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
    end
    object qrySped_ParticipanteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qrySped_ParticipanteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qrySped_ParticipanteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object qrySped_ParticipanteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qrySped_ParticipanteFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_ParticipanteFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_ParticipanteFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_Unidade: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_unidade'
      'where'
      'FK_SPED=:ID'
      'order by unidade')
    Left = 720
    Top = 420
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_UnidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_UnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qrySped_UnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qrySped_UnidadeFK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_UnidadeFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_UnidadeFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
  end
  object qrySped_H005: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_h005')
    Left = 624
    Top = 420
    object qrySped_H005CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_H005DT_INV: TFMTBCDField
      FieldName = 'DT_INV'
      Origin = 'DT_INV'
      Precision = 18
      Size = 2
    end
    object qrySped_H005FK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
    end
    object qrySped_H005FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_H005FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_H005VL_INV: TFMTBCDField
      FieldName = 'VL_INV'
      Origin = 'VL_INV'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_H005DT_INVE: TDateField
      FieldName = 'DT_INVE'
      Origin = 'DT_INVE'
    end
  end
  object qrySped_H010: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_h010'
      'where'
      'fk_h005=:id'
      'order  by codigo')
    Left = 536
    Top = 420
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_H010CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySped_H010QTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object qrySped_H010VL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Origin = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qrySped_H010VL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
      Size = 2
    end
    object qrySped_H010IND_PROP: TStringField
      FieldName = 'IND_PROP'
      Origin = 'IND_PROP'
      Size = 1
    end
    object qrySped_H010COD_PART: TIntegerField
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
    end
    object qrySped_H010TXT_COMPL: TStringField
      FieldName = 'TXT_COMPL'
      Origin = 'TXT_COMPL'
      Size = 100
    end
    object qrySped_H010COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
      Size = 10
    end
    object qrySped_H010FK_H005: TIntegerField
      FieldName = 'FK_H005'
      Origin = 'FK_H005'
    end
    object qrySped_H010FK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qrySped_H010FK_UNIDADE: TStringField
      FieldName = 'FK_UNIDADE'
      Origin = 'FK_UNIDADE'
      Size = 11
    end
    object qrySped_H010FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qrySped_H010FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object qrySped_H010CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrySped_H010BC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Origin = 'BC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_H010VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
  end
  object qrySped_C100: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c100'
      'WHERE'
      'FK_SPED=:ID'
      'order by ind_oper,num_doc')
    Left = 448
    Top = 420
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qrySped_C100CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrySped_C100IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Origin = 'IND_OPER'
      Size = 1
    end
    object qrySped_C100IND_EMIT: TStringField
      FieldName = 'IND_EMIT'
      Origin = 'IND_EMIT'
      Size = 1
    end
    object qrySped_C100COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'COD_MOD'
      Size = 2
    end
    object qrySped_C100COD_SIT: TStringField
      FieldName = 'COD_SIT'
      Origin = 'COD_SIT'
      Size = 2
    end
    object qrySped_C100SER: TStringField
      FieldName = 'SER'
      Origin = 'SER'
      Size = 2
    end
    object qrySped_C100NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = 'NUM_DOC'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100CHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Origin = 'CHV_NFE'
      Size = 50
    end
    object qrySped_C100DT_DOC: TDateField
      FieldName = 'DT_DOC'
      Origin = 'DT_DOC'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qrySped_C100DT_E_S: TDateField
      FieldName = 'DT_E_S'
      Origin = 'DT_E_S'
      DisplayFormat = '!99/99/0000;1;_'
    end
    object qrySped_C100VL_DOC: TFMTBCDField
      FieldName = 'VL_DOC'
      Origin = 'VL_DOC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100IND_PGTO: TStringField
      FieldName = 'IND_PGTO'
      Origin = 'IND_PGTO'
      Size = 1
    end
    object qrySped_C100VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ABAT_NT: TFMTBCDField
      FieldName = 'VL_ABAT_NT'
      Origin = 'VL_ABAT_NT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_MERC: TFMTBCDField
      FieldName = 'VL_MERC'
      Origin = 'VL_MERC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100IND_FRT: TFMTBCDField
      FieldName = 'IND_FRT'
      Origin = 'IND_FRT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Origin = 'VL_SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_OUT_DA: TFMTBCDField
      FieldName = 'VL_OUT_DA'
      Origin = 'VL_OUT_DA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_PIS_ST: TFMTBCDField
      FieldName = 'VL_PIS_ST'
      Origin = 'VL_PIS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_COFINS_ST: TFMTBCDField
      FieldName = 'VL_COFINS_ST'
      Origin = 'VL_COFINS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100VL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Origin = 'VL_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C100FK_PARTICIPANTES: TIntegerField
      FieldName = 'FK_PARTICIPANTES'
      Origin = 'FK_PARTICIPANTES'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_SPED: TIntegerField
      FieldName = 'FK_SPED'
      Origin = 'FK_SPED'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qrySped_C100TABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      Size = 10
    end
    object qrySped_C100TABELA_CODIGO: TIntegerField
      FieldName = 'TABELA_CODIGO'
      Origin = 'TABELA_CODIGO'
      DisplayFormat = ',0.00'
    end
  end
  object qrySped_C170: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c170'
      'where'
      'fk_c100=:id'
      'order by fk_produto;')
    Left = 360
    Top = 420
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_C170CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrySped_C170DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qrySped_C170FK_C100: TIntegerField
      FieldName = 'FK_C100'
      Origin = 'FK_C100'
      DisplayFormat = ',0.00'
    end
    object qrySped_C170FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qrySped_C170FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
    object qrySped_C170QTD: TBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
    end
    object qrySped_C170VL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qrySped_C170IND_MOV: TStringField
      FieldName = 'IND_MOV'
      Origin = 'IND_MOV'
      Size = 1
    end
    object qrySped_C170CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qrySped_C170CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrySped_C170COD_NAT: TStringField
      FieldName = 'COD_NAT'
      Origin = 'COD_NAT'
      Size = 10
    end
    object qrySped_C170VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrySped_C170IND_APUR: TStringField
      FieldName = 'IND_APUR'
      Origin = 'IND_APUR'
      Size = 1
    end
    object qrySped_C170CST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qrySped_C170COD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      Origin = 'COD_ENQ'
      Size = 10
    end
    object qrySped_C170VL_BC_IPI: TFMTBCDField
      FieldName = 'VL_BC_IPI'
      Origin = 'VL_BC_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qrySped_C170CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qrySped_C170VL_BC_PIS: TFMTBCDField
      FieldName = 'VL_BC_PIS'
      Origin = 'VL_BC_PIS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_PIS_PERC: TBCDField
      FieldName = 'ALIQ_PIS_PERC'
      Origin = 'ALIQ_PIS_PERC'
      Precision = 18
    end
    object qrySped_C170QUANT_BC_PIS: TBCDField
      FieldName = 'QUANT_BC_PIS'
      Origin = 'QUANT_BC_PIS'
      Precision = 18
    end
    object qrySped_C170ALIQ_PIS_R: TFMTBCDField
      FieldName = 'ALIQ_PIS_R'
      Origin = 'ALIQ_PIS_R'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qrySped_C170VL_BC_COFINS: TFMTBCDField
      FieldName = 'VL_BC_COFINS'
      Origin = 'VL_BC_COFINS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170ALIQ_COFINS_PERC: TBCDField
      FieldName = 'ALIQ_COFINS_PERC'
      Origin = 'ALIQ_COFINS_PERC'
      Precision = 18
    end
    object qrySped_C170QUANT_BC_COFINS: TBCDField
      FieldName = 'QUANT_BC_COFINS'
      Origin = 'QUANT_BC_COFINS'
      Precision = 18
    end
    object qrySped_C170ALIQ_COFINS_R: TFMTBCDField
      FieldName = 'ALIQ_COFINS_R'
      Origin = 'ALIQ_COFINS_R'
      Precision = 18
      Size = 2
    end
    object qrySped_C170VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qrySped_C170COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'COD_CTA'
      Size = 10
    end
    object qrySped_C170VL_OPR: TFMTBCDField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      Precision = 18
      Size = 2
    end
    object qrySped_C170FK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object qrySped_C170FK_UNIDADE: TIntegerField
      FieldName = 'FK_UNIDADE'
      Origin = 'FK_UNIDADE'
    end
  end
  object qrySped_C190: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from sped_c190'
      'where'
      'fk_c100=:reg'
      'order by cst_icms,cfop,aliq_icms')
    Left = 928
    Top = 348
    ParamData = <
      item
        Name = 'REG'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrySped_C190CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrySped_C190CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrySped_C190ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_OPR: TFMTBCDField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_BC_ICMS: TFMTBCDField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_BC_ICMS_ST: TFMTBCDField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_RED_BC: TFMTBCDField
      FieldName = 'VL_RED_BC'
      Origin = 'VL_RED_BC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrySped_C190COD_OBS: TStringField
      FieldName = 'COD_OBS'
      Origin = 'COD_OBS'
      Size = 100
    end
    object qrySped_C190CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qrySped_C190FK_C100: TIntegerField
      FieldName = 'FK_C100'
      Origin = 'FK_C100'
      DisplayFormat = ',0.00'
    end
    object qrySped_C190FK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qrySped_C190FK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
  end
  object qryVeiculo_tipo: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculo_tipo')
    Left = 848
    Top = 348
    object qryVeiculo_tipoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVeiculo_tipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object qryVeiculo_Carroceria: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from veiculo_carroceria'
      'order by 2')
    Left = 280
    Top = 484
    object qryVeiculo_CarroceriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVeiculo_CarroceriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object qryNFCe_OFF: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select NUMERO from nfce_master where'
      'situacao='#39'O'#39' and data_emissao<current_date')
    Left = 760
    Top = 348
  end
  object qryAjustaPreco: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      'codigo=:cod')
    Left = 680
    Top = 348
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryAjustaPrecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryAjustaPrecoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryAjustaPrecoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryAjustaPrecoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryAjustaPrecoULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryAjustaPrecoALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryAjustaPrecoQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryAjustaPrecoE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryAjustaPrecoCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryAjustaPrecoCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryAjustaPrecoCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryAjustaPrecoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryAjustaPrecoCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryAjustaPrecoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryAjustaPrecoCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryAjustaPrecoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryAjustaPrecoCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryAjustaPrecoPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryAjustaPrecoCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryAjustaPrecoALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryAjustaPrecoGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryAjustaPrecoEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryAjustaPrecoPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryAjustaPrecoPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryAjustaPrecoPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryAjustaPrecoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryAjustaPrecoESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryAjustaPrecoPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryAjustaPrecoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryAjustaPrecoREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryAjustaPrecoSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryAjustaPrecoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryAjustaPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryAjustaPrecoPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryAjustaPrecoTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
      Origin = 'TEMPO_ESPERA'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryAjustaPrecoRESTAUTANTE: TStringField
      FieldName = 'RESTAUTANTE'
      Origin = 'RESTAUTANTE'
      Size = 1
    end
    object qryAjustaPrecoTIPO_RESTAURANTE: TStringField
      FieldName = 'TIPO_RESTAURANTE'
      Origin = 'TIPO_RESTAURANTE'
      Size = 1
    end
    object qryAjustaPrecoFK_MARCA: TIntegerField
      FieldName = 'FK_MARCA'
      Origin = 'FK_MARCA'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoPREFIXO_BALANCA: TStringField
      FieldName = 'PREFIXO_BALANCA'
      Origin = 'PREFIXO_BALANCA'
      Size = 8
    end
    object qryAjustaPrecoFK_PRINCIPIO_ATIVO: TIntegerField
      FieldName = 'FK_PRINCIPIO_ATIVO'
      Origin = 'FK_PRINCIPIO_ATIVO'
      DisplayFormat = ',0.00'
    end
    object qryAjustaPrecoREMEDIO: TStringField
      FieldName = 'REMEDIO'
      Origin = 'REMEDIO'
      Size = 1
    end
    object qryAjustaPrecoDATA_PRECO: TDateField
      FieldName = 'DATA_PRECO'
      Origin = 'DATA_PRECO'
    end
  end
  object FBDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll'
    Left = 24
    Top = 72
  end
  object qryClientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT codigo, razao, cnpj, endereco, numero, bairro, municipio,' +
        ' uf, cep, fone1, celular1  FROM pessoa'
      'where'
      'razao like :razao and'
      'cli='#39'S'#39' '
      'order by razao')
    Left = 320
    Top = 14
    ParamData = <
      item
        Name = 'RAZAO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end>
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object qryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qryClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qryClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object qryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 35
    end
    object qryClientesMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Required = True
      Size = 35
    end
    object qryClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
    object qryClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object qryClientesFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 14
    end
    object qryClientesCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Origin = 'CELULAR1'
      Size = 14
    end
  end
  object qryPesqUsuario: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select codigo, login from usuarios'
      'order by codigo')
    Left = 592
    Top = 348
    object qryPesqUsuarioCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryPesqUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 10
    end
  end
  object qryPrincipio: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from principio_ativo'
      '/*where*/')
    Left = 856
    Top = 72
    object qryPrincipioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPrincipioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object qryMarca: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Marca'
      '/*where*/'
      '')
    Left = 534
    Top = 71
    object qryMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object qryMarcaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 10
    end
  end
  object qryRespTecnico: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from responsavel_tecnico')
    Left = 504
    Top = 348
    object qryRespTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryRespTecnicoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryRespTecnicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryRespTecnicoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryRespTecnicoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 14
    end
    object qryRespTecnicoIDCSRT: TStringField
      FieldName = 'IDCSRT'
      Origin = 'IDCSRT'
    end
    object qryRespTecnicoCSRT: TStringField
      FieldName = 'CSRT'
      Origin = 'CSRT'
      Size = 50
    end
  end
  object qryTipoTecido: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Tipo_Tecido'
      '/*where*/'
      '')
    Left = 416
    Top = 348
    object qryTipoTecidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryTipoTecidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
  end
  object qryEtiqueta: TFDQuery
    AfterPost = qryEtiquetaAfterPost
    OnNewRecord = qryEtiquetaNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from etiquetas')
    Left = 336
    Top = 348
    object qryEtiquetaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryEtiquetaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryEtiquetaLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaALTURA: TFMTBCDField
      FieldName = 'ALTURA'
      Origin = 'ALTURA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaESQUERDA: TFMTBCDField
      FieldName = 'ESQUERDA'
      Origin = 'ESQUERDA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaTOPO: TFMTBCDField
      FieldName = 'TOPO'
      Origin = 'TOPO'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaCOLUNAS: TIntegerField
      FieldName = 'COLUNAS'
      Origin = 'COLUNAS'
      DisplayFormat = '0'
    end
    object qryEtiquetaESPACAMENTO: TFMTBCDField
      FieldName = 'ESPACAMENTO'
      Origin = 'ESPACAMENTO'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaBARRA_ALTURA: TFMTBCDField
      FieldName = 'BARRA_ALTURA'
      Origin = 'BARRA_ALTURA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaBARRA_LARGURA: TFMTBCDField
      FieldName = 'BARRA_LARGURA'
      Origin = 'BARRA_LARGURA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaBARRA_FINA: TFMTBCDField
      FieldName = 'BARRA_FINA'
      Origin = 'BARRA_FINA'
      DisplayFormat = '0'
      Precision = 18
      Size = 2
    end
    object qryEtiquetaPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 100
    end
    object qryEtiquetaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object qryEtiquetaDPI: TStringField
      FieldName = 'DPI'
      Origin = 'DPI'
    end
    object qryEtiquetaBACKFEED: TStringField
      FieldName = 'BACKFEED'
      Origin = 'BACKFEED'
    end
  end
  object qryEtq_Campos: TFDQuery
    BeforeInsert = qryEtq_CamposBeforeInsert
    BeforePost = qryEtq_CamposBeforePost
    AfterPost = qryEtq_CamposAfterPost
    OnNewRecord = qryEtq_CamposNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from etiqueta_campos'
      'where'
      'fk_etiquetas=:id')
    Left = 912
    Top = 284
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEtq_CamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryEtq_CamposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qryEtq_CamposCAMPO: TStringField
      FieldName = 'CAMPO'
      Origin = 'CAMPO'
      Size = 50
    end
    object qryEtq_CamposCOLUNA: TIntegerField
      FieldName = 'COLUNA'
      Origin = 'COLUNA'
    end
    object qryEtq_CamposLINHA: TIntegerField
      FieldName = 'LINHA'
      Origin = 'LINHA'
    end
    object qryEtq_CamposFONTES: TIntegerField
      FieldName = 'FONTES'
      Origin = 'FONTES'
      DisplayFormat = '0'
    end
    object qryEtq_CamposVISIVEL: TStringField
      FieldName = 'VISIVEL'
      Origin = 'VISIVEL'
      Size = 1
    end
    object qryEtq_CamposFK_ETIQUETAS: TIntegerField
      FieldName = 'FK_ETIQUETAS'
      Origin = 'FK_ETIQUETAS'
      DisplayFormat = ',0.00'
    end
    object qryEtq_CamposCARACTERES: TIntegerField
      FieldName = 'CARACTERES'
    end
  end
  object qryDesoneracao: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from motivo_desoneracao'
      'order by 1')
    Left = 824
    Top = 284
    object qryDesoneracaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryDesoneracaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
  end
  object qryEtq_impressao: TFDQuery
    BeforeInsert = qryEtq_CamposBeforeInsert
    AfterPost = qryEtq_CamposAfterPost
    OnNewRecord = qryEtq_CamposNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from etiqueta_impressao')
    Left = 896
    Top = 212
    object qryEtq_impressaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryEtq_impressaoFK_PRODUTO: TIntegerField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
      DisplayFormat = ',0.00'
    end
    object qryEtq_impressaoFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
    object qryEtq_impressaoQTD: TIntegerField
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = ',0.00'
    end
  end
  object qryEntregador: TFDQuery
    AfterPost = qryGrupoAfterPost
    Connection = Conexao
    SQL.Strings = (
      'select * from ENTREGADOR'
      '/*where*/')
    Left = 536
    Top = 15
    object qryEntregadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEntregadorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object qryUpdate: TFDQuery
    Connection = Conexao
    Left = 744
    Top = 284
  end
  object qryPaises: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from paises'
      'order by nome')
    Left = 672
    Top = 284
    object qryPaisesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0'
    end
    object qryPaisesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryPaisesFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
      DisplayFormat = ',0.00'
    end
  end
  object qryTradutor: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from tradutor'
      'where'
      'tela=:tela and codigo_idioma=:codigo')
    Left = 592
    Top = 284
    ParamData = <
      item
        Name = 'TELA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryTradutorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryTradutorCODIGO_IDIOMA: TIntegerField
      FieldName = 'CODIGO_IDIOMA'
      Origin = 'CODIGO_IDIOMA'
      DisplayFormat = ',0.00'
    end
    object qryTradutorTELA: TStringField
      FieldName = 'TELA'
      Origin = 'TELA'
      Size = 50
    end
    object qryTradutorOBJETO: TStringField
      FieldName = 'OBJETO'
      Origin = 'OBJETO'
      Size = 50
    end
    object qryTradutorTEXTO_PT_BR: TStringField
      FieldName = 'TEXTO_PT_BR'
      Origin = 'TEXTO_PT_BR'
      Size = 50
    end
    object qryTradutorTEXTO_TRADUZIDO: TStringField
      FieldName = 'TEXTO_TRADUZIDO'
      Origin = 'TEXTO_TRADUZIDO'
      Size = 50
    end
  end
  object qryLCP: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from nfse_lcp'
      'order by descricao')
    Left = 512
    Top = 284
    object qryLCPCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object qryLCPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryLCPATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryIdiomas: TFDQuery
    AfterPost = qryIdiomasAfterPost
    OnNewRecord = qryIdiomasNewRecord
    Connection = Conexao
    SQL.Strings = (
      'select * from Idiomas'
      'order by Descricao')
    Left = 424
    Top = 284
    object qryIdiomasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryIdiomasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object qryNumeroBoleto: TFDQuery
    Connection = Conexao
    Left = 928
    Top = 80
  end
  object qryMotorista: TFDQuery
    BeforeInsert = qryMotoristaBeforeInsert
    BeforePost = qryMotoristaBeforePost
    AfterPost = qryMotoristaAfterPost
    AfterDelete = qryMotoristaAfterDelete
    OnNewRecord = qryMotoristaNewRecord
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from transportadora_motorista'
      'where '
      'fk_transportadora=:codigo'
      'order by nome')
    Left = 336
    Top = 284
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMotoristaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMotoristaFK_TRANSPORTADORA: TIntegerField
      FieldName = 'FK_TRANSPORTADORA'
      Origin = 'FK_TRANSPORTADORA'
    end
    object qryMotoristaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryMotoristaCNH: TStringField
      FieldName = 'CNH'
      Origin = 'CNH'
    end
    object qryMotoristaVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qryMotoristaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '###.###.###-##;0;'
      Size = 11
    end
  end
  object qryAtualiza: TFDQuery
    Connection = Conexao
    Left = 808
    Top = 212
  end
  object qryMensagemZap: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from mensagem_zap'
      'where'
      'codigo=-1')
    Left = 720
    Top = 212
    object qryMensagemZapCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMensagemZapDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryMensagemZapORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
    end
    object qryMensagemZapMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGEM'
      Size = 300
    end
    object qryMensagemZapANEXO: TStringField
      FieldName = 'ANEXO'
      Origin = 'ANEXO'
      Size = 300
    end
    object qryMensagemZapFONE: TStringField
      DisplayWidth = 20
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object qryMensagemZapSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qryMensagemZapHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qryMensagemZapNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryMensagemZapEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 50
    end
    object qryMensagemZapMENSAGEM_PADRAO: TMemoField
      FieldName = 'MENSAGEM_PADRAO'
      Origin = 'MENSAGEM_PADRAO'
      BlobType = ftMemo
    end
    object qryMensagemZapCAMINHO_ANEXO: TStringField
      FieldName = 'CAMINHO_ANEXO'
      Origin = 'CAMINHO_ANEXO'
      Size = 200
    end
  end
  object qrySabores: TFDQuery
    BeforePost = qryGrupoBeforePost
    AfterPost = qryGrupoAfterPost
    Connection = Conexao
    SQL.Strings = (
      'select * from sabores'
      '/*where*/')
    Left = 704
    Top = 72
    object qrySaboresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySaboresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qrySaboresATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object qryPermissoesBotao: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select pe.visualizar, pe.editar, pe.incluir, pe.excluir from pem' +
        'issoes pe'
      'left join telas te on te.codigo=pe.fktela'
      'where'
      'te.grupo=:grupo and'
      'pe.fkusuario=:usuario')
    Left = 616
    Top = 212
    ParamData = <
      item
        Name = 'GRUPO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryPermissoesBotaoVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      Origin = 'VISUALIZAR'
      Size = 1
    end
    object qryPermissoesBotaoEDITAR: TStringField
      FieldName = 'EDITAR'
      Origin = 'EDITAR'
      Size = 1
    end
    object qryPermissoesBotaoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      Origin = 'INCLUIR'
      Size = 1
    end
    object qryPermissoesBotaoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Origin = 'EXCLUIR'
      Size = 1
    end
  end
  object qryProdImpPadrao: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM PRODUTO_IMPOSTOS_PADRAO'
      'WHERE EMPRESA=:EMPRESA'
      'ORDER BY CODIGO')
    Left = 512
    Top = 212
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryProdImpPadraoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdImpPadraoSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 1
    end
    object qryProdImpPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object qryProdImpPadraoCFOP_DENTRO: TStringField
      FieldName = 'CFOP_DENTRO'
      Origin = 'CFOP_DENTRO'
      Size = 4
    end
    object qryProdImpPadraoCFOP_FORA: TStringField
      FieldName = 'CFOP_FORA'
      Origin = 'CFOP_FORA'
      Size = 4
    end
    object qryProdImpPadraoCST_DENTRO: TStringField
      FieldName = 'CST_DENTRO'
      Origin = 'CST_DENTRO'
      Size = 3
    end
    object qryProdImpPadraoCST_FORA: TStringField
      FieldName = 'CST_FORA'
      Origin = 'CST_FORA'
      Size = 3
    end
    object qryProdImpPadraoCSOSN_DENTRO: TStringField
      FieldName = 'CSOSN_DENTRO'
      Origin = 'CSOSN_DENTRO'
      Size = 3
    end
    object qryProdImpPadraoCSOSN_FORA: TStringField
      FieldName = 'CSOSN_FORA'
      Origin = 'CSOSN_FORA'
      Size = 3
    end
    object qryProdImpPadraoALIQ_ICMS_P_DENTRO: TFMTBCDField
      FieldName = 'ALIQ_ICMS_P_DENTRO'
      Origin = 'ALIQ_ICMS_P_DENTRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdImpPadraoALIQ_ICMS_P_FORA: TFMTBCDField
      FieldName = 'ALIQ_ICMS_P_FORA'
      Origin = 'ALIQ_ICMS_P_FORA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryProdImpPadraoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryProdImpPadraoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
  end
  object qryContar: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select count(*) as contar from tb_estado')
    Left = 424
    Top = 212
    object qryContarCONTAR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTAR'
      Origin = 'CONTAR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryClientesDash: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT First 5 codigo, razao  FROM pessoa'
      'where'
      'razao like :razao and'
      'cli='#39'S'#39
      'order by codigo desc')
    Left = 264
    Top = 420
    ParamData = <
      item
        Name = 'RAZAO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end>
    object qryClientesDashCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesDashRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
  end
  object qryCompraDash: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'select co.*, pes.razao from compra co'
      'left join pessoa pes on pes.codigo=co.fornecedor'
      'where'
      'co.empresa=:id'
      '')
    Left = 392
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryCompraDashTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraDashRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object AggregateField6: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object qryCompraDash2: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'select co.*, pes.razao from compra co'
      'left join pessoa pes on pes.codigo=co.fornecedor'
      'where'
      'co.empresa=:id'
      '')
    Left = 336
    Top = 212
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FMTBCDField1: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object AggregateField7: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object qryVendaDash: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'select'
      'PV.*,'
      'PES.razao,'
      've.nome as vendedor,'
      'co.descricao as conta'
      ''
      'from VENDAS_MASTER PV'
      'LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente'
      'LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor'
      'LEFT JOIN contas co on co.codigo= PV.fk_caixa'
      '/*where*/')
    Left = 248
    Top = 348
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object DateField2: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object IntegerField6: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object StringField4: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object IntegerField8: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object IntegerField9: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object IntegerField10: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object MemoField1: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object StringField6: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object StringField7: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object StringField8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StringField9: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object StringField10: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IntegerField11: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object StringField11: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IntegerField12: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object StringField12: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object StringField13: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object StringField14: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object StringField15: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object AggregateField8: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object qryVendaDash2: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'select'
      'PV.*,'
      'PES.razao,'
      've.nome as vendedor,'
      'co.descricao as conta'
      ''
      'from VENDAS_MASTER PV'
      'LEFT JOIN pessoa PES on PES.codigo= PV.id_cliente'
      'LEFT JOIN vendedores ve on ve.codigo= PV.fk_vendedor'
      'LEFT JOIN contas co on co.codigo= PV.fk_caixa'
      '/*where*/')
    Left = 248
    Top = 284
    object IntegerField13: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object DateField4: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object IntegerField15: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
    end
    object IntegerField16: TIntegerField
      FieldName = 'FK_CAIXA'
      Origin = 'FK_CAIXA'
    end
    object IntegerField17: TIntegerField
      FieldName = 'FK_VENDEDOR'
      Origin = 'FK_VENDEDOR'
    end
    object StringField16: TStringField
      FieldName = 'TIPO_DESCONTO'
      Origin = 'TIPO_DESCONTO'
      Size = 15
    end
    object StringField17: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object IntegerField18: TIntegerField
      FieldName = 'NECF'
      Origin = 'NECF'
    end
    object IntegerField19: TIntegerField
      FieldName = 'FKORCAMENTO'
      Origin = 'FKORCAMENTO'
    end
    object IntegerField20: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
    end
    object MemoField2: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object StringField18: TStringField
      FieldName = 'CPF_NOTA'
      Origin = 'CPF_NOTA'
    end
    object StringField19: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 1
    end
    object StringField20: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StringField21: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object StringField22: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IntegerField21: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object StringField23: TStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'PERCENTUAL_ACRESCIMO'
      Origin = 'PERCENTUAL_ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IntegerField22: TIntegerField
      FieldName = 'FK_TABELA'
      Origin = 'FK_TABELA'
    end
    object StringField24: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 30
    end
    object StringField25: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object StringField26: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 250
    end
    object StringField27: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object AggregateField9: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object qryItensCad: TFDQuery
    BeforeOpen = qryProdutosBeforeOpen
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select count(descricao) from Produto'
      'where'
      'empresa=:id and'
      'ativo = '#39'S'#39
      '/*where*/')
    Left = 248
    Top = 212
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryItensCadCOUNT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryItensNegativo: TFDQuery
    BeforeOpen = qryProdutosBeforeOpen
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select count(descricao) from Produto'
      'where'
      'empresa=:id and'
      'qtd_atual <0'
      '/*where*/')
    Left = 144
    Top = 548
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryItensNegativoCOUNT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryVendaDashLineAtual: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      
        'select sum (total) as Valor, EXTRACT(day FROM data_emissao) as d' +
        'ata'
      'from VENDAS_MASTER'
      '/*where*/'
      'group by data_emissao'
      ''
      '')
    Left = 152
    Top = 620
    object qryVendaDashLineAtualVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryVendaDashLineAtualDATA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryVendaDashLineAnterior: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      
        'select sum (total) as Valor2, EXTRACT(day FROM data_emissao) as ' +
        'data2'
      'from VENDAS_MASTER'
      '/*where*/'
      'group by data_emissao'
      ''
      '')
    Left = 152
    Top = 484
    object qryVendaDashLineAnteriorVALOR2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR2'
      Origin = 'VALOR2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryVendaDashLineAnteriorDATA2: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DATA2'
      Origin = 'DATA2'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryContasReceberDash: TFDQuery
    AfterOpen = qryCRAfterOpen
    AfterPost = qryCRAfterPost
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select sum (VL_RESTANTE) as VALOR,'
      ''
      ' CASE (situacao)'
      '         WHEN '#39'A'#39' then '#39'Aberto'#39
      '         end'
      'from creceber'
      'where'
      'fkempresa=:id and situacao <> '#39'T'#39
      'group by SITUACAO')
    Left = 152
    Top = 412
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryContasReceberDashVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryContasReceberDashCASE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CASE'
      Origin = '"CASE"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
  end
  object qryContasPagarDash: TFDQuery
    AfterOpen = qryCPAfterOpen
    AfterPost = qryCPAfterPost
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      'select sum (VL_RESTANTE) as VALOR2,'
      ''
      ' CASE (situacao)'
      '         WHEN '#39'A'#39' then '#39'Pendente'#39
      '         end'
      'as status'
      'from cpagar'
      'where'
      'fkempresa=:id and situacao <> '#39'T'#39
      'group by SITUACAO')
    Left = 152
    Top = 348
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryContasPagarDashVALOR2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR2'
      Origin = 'VALOR2'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryContasPagarDashSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
  end
  object qrySaldoCaixaDash: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT fpg.tipo as Movimento, sum(CX.entrada) AS ENTRADA'
      ''
      'FROM caixa cx'
      ''
      'left join forma_pagamento fpg on fpg.codigo=cx.fpg'
      'where'
      'cx.emissao = current_date'
      'group by 1'
      'order by 1')
    Left = 152
    Top = 284
    object qrySaldoCaixaDashMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
      Size = 1
    end
    object qrySaldoCaixaDashENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Precision = 18
      Size = 2
    end
  end
  object qrySaldoCaixaDash2: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT fpg.tipo as Movimento, SUM(cx.saida) AS SAIDA '
      ''
      'FROM caixa cx'
      ''
      'left join forma_pagamento fpg on fpg.codigo=cx.fpg'
      'where'
      'cx.emissao = current_date'
      'group by 1'
      'order by 1')
    Left = 152
    Top = 212
    object qrySaldoCaixaDash2MOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
      Size = 1
    end
    object qrySaldoCaixaDash2SAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      Precision = 18
      Size = 2
    end
  end
  object qryMesas: TFDQuery
    OnCalcFields = qryMesasCalcFields
    Connection = Conexao
    SQL.Strings = (
      'select * from mesas'
      'order by 1')
    Left = 856
    Top = 16
    object qryMesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object qryMesasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryMesasTOTAL: TSingleField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object qryMesasFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryMesasVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Size = 30
      Calculated = True
    end
    object qryMesasVIRTUAL_MESA: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_MESA'
      Size = 30
      Calculated = True
    end
    object qryMesasFK_VENDA: TIntegerField
      FieldName = 'FK_VENDA'
      Origin = 'FK_VENDA'
    end
    object qryMesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object qryOrcamento: TFDQuery
    OnCalcFields = qryOrcamentoCalcFields
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    SQL.Strings = (
      
        'select orc.*, ve.nome vendedor, tra.nome transportador  from orc' +
        'amento orc'
      'left join vendedores ve on ve.codigo=orc.fkvendedor'
      'left join transportadora tra on tra.codigo=orc.fk_transp'
      'where '
      'orc.fkempresa=:codigo'
      '/*where*/'
      '/*ordem*/')
    Left = 696
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrcamentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryOrcamentoFKVENDEDOR: TIntegerField
      FieldName = 'FKVENDEDOR'
      Origin = 'FKVENDEDOR'
    end
    object qryOrcamentoFK_CLIENTE: TIntegerField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
    end
    object qryOrcamentoCLIENTE: TStringField
      DisplayWidth = 100
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qryOrcamentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object qryOrcamentoCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 13
    end
    object qryOrcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qryOrcamentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryOrcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object qryOrcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object qryOrcamentoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryOrcamentoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryOrcamentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 60
    end
    object qryOrcamentoVALIDADE: TSmallintField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qryOrcamentoOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryOrcamentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object qryOrcamentoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryOrcamentoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryOrcamentoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryOrcamentoVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryOrcamentoVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Calculated = True
    end
    object qryOrcamentoCODIGO_WEB: TIntegerField
      FieldName = 'CODIGO_WEB'
      Origin = 'CODIGO_WEB'
      DisplayFormat = ',0.00'
    end
    object qryOrcamentoNCONTROLE: TIntegerField
      FieldName = 'NCONTROLE'
      Origin = 'NCONTROLE'
      DisplayFormat = ',0.00'
    end
    object qryOrcamentoFK_TRANSP: TIntegerField
      FieldName = 'FK_TRANSP'
      Origin = 'FK_TRANSP'
      DisplayFormat = ',0.00'
    end
    object qryOrcamentoTRANSPORTADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSPORTADOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryOrcamentoTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(TOTAL)'
    end
  end
  object qryXmlMaster: TFDQuery
    AfterPost = qryXmlMasterAfterPost
    AfterDelete = qryXmlMasterAfterDelete
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT * FROM XML_MASTER'
      'where'
      'empresa=:id and'
      'fk_usuario=:usu'
      '')
    Left = 136
    Top = 768
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USU'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryXmlMasterCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryXmlMasterID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object qryXmlMasterDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryXmlMasterDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryXmlMasterDATA_EMISSAO_NF: TDateField
      FieldName = 'DATA_EMISSAO_NF'
      Origin = 'DATA_EMISSAO_NF'
      EditMask = '!99/99/0000;1;_'
    end
    object qryXmlMasterNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
    end
    object qryXmlMasterMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qryXmlMasterSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 2
    end
    object qryXmlMasterCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryXmlMasterCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryXmlMasterEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object qryXmlMasterVIRTUAL_CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CNPJ'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'ID_FORNECEDOR'
      Lookup = True
    end
    object qryXmlMasterVITUAL_UF: TStringField
      FieldKind = fkLookup
      FieldName = 'VITUAL_UF'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'ID_FORNECEDOR'
      Size = 2
      Lookup = True
    end
    object qryXmlMasterVIRTUAL_FORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORNECEDOR'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'ID_FORNECEDOR'
      Size = 50
      Lookup = True
    end
    object qryXmlMasterXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryXmlMasterSUB_TOTAL: TFMTBCDField
      FieldName = 'SUB_TOTAL'
      Origin = 'SUB_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'OUTRAS_DESPESAS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL_PIS: TFMTBCDField
      FieldName = 'TOTAL_PIS'
      Origin = 'TOTAL_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL_COFINS: TFMTBCDField
      FieldName = 'TOTAL_COFINS'
      Origin = 'TOTAL_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL_ICMS: TFMTBCDField
      FieldName = 'TOTAL_ICMS'
      Origin = 'TOTAL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterTOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryXmlMasterFK_USUARIO: TIntegerField
      FieldName = 'FK_USUARIO'
      Origin = 'FK_USUARIO'
      DisplayFormat = ',0.00'
    end
  end
  object qryXMLProduto: TFDQuery
    AfterPost = qryXMLProdutoAfterPost
    AfterDelete = qryXMLProdutoAfterDelete
    Connection = Conexao
    SQL.Strings = (
      'select * from XMLPRODUTO'
      'where'
      'ID_FORNECEDOR=:cod and'
      'ID_PRODUTO_FORN=:prod and'
      'fkempresa=:id')
    Left = 288
    Top = 768
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end
      item
        Name = 'PROD'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryXMLProdutoID_PRODUTO_LOCAL: TFloatField
      FieldName = 'ID_PRODUTO_LOCAL'
      Origin = 'ID_PRODUTO_LOCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryXMLProdutoID_FORNECEDOR: TFloatField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryXMLProdutoID_PRODUTO_FORN: TStringField
      FieldName = 'ID_PRODUTO_FORN'
      Origin = 'ID_PRODUTO_FORN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object qryXMLProdutoUN_E: TStringField
      FieldName = 'UN_E'
      Origin = 'UN_E'
      Size = 3
    end
    object qryXMLProdutoUN_S: TStringField
      FieldName = 'UN_S'
      Origin = 'UN_S'
      Size = 3
    end
    object qryXMLProdutoFK_GRUPO: TIntegerField
      FieldName = 'FK_GRUPO'
      Origin = 'FK_GRUPO'
    end
    object qryXMLProdutoFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
    end
    object qryXMLProdutoQTD_E: TFMTBCDField
      FieldName = 'QTD_E'
      Origin = 'QTD_E'
      Precision = 18
      Size = 2
    end
    object qryXMLProdutoQTD_S: TFMTBCDField
      FieldName = 'QTD_S'
      Origin = 'QTD_S'
      Precision = 18
      Size = 2
    end
  end
  object qryCompra: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'select co.*, pes.razao from compra co'
      'left join pessoa pes on pes.codigo=co.fornecedor'
      'where'
      'co.empresa=:id'
      '')
    Left = 376
    Top = 760
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompraEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryCompraDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object qryCompraDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
      Required = True
    end
    object qryCompraFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
    end
    object qryCompraNR_NOTA: TStringField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
      Required = True
      Size = 15
    end
    object qryCompraFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      Origin = 'TOTAL_IPI'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ICM: TFMTBCDField
      FieldName = 'BASE_ICM'
      Origin = 'BASE_ICM'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ICM: TFMTBCDField
      FieldName = 'TOTAL_ICM'
      Origin = 'TOTAL_ICM'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_ST: TFMTBCDField
      FieldName = 'TOTAL_ST'
      Origin = 'TOTAL_ST'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_PIS: TFMTBCDField
      FieldName = 'TOTAL_PIS'
      Origin = 'TOTAL_PIS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraBASE_COF: TFMTBCDField
      FieldName = 'BASE_COF'
      Origin = 'BASE_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL_COF: TFMTBCDField
      FieldName = 'TOTAL_COF'
      Origin = 'TOTAL_COF'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryCompraTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraGERA_CP: TStringField
      FieldName = 'GERA_CP'
      Origin = 'GERA_CP'
      Required = True
      Size = 1
    end
    object qryCompraGERA_ES: TStringField
      FieldName = 'GERA_ES'
      Origin = 'GERA_ES'
      Required = True
      Size = 1
    end
    object qryCompraAJUSTA_PC: TStringField
      FieldName = 'AJUSTA_PC'
      Origin = 'AJUSTA_PC'
      Required = True
      Size = 1
    end
    object qryCompraAJUSTA_PV: TStringField
      FieldName = 'AJUSTA_PV'
      Origin = 'AJUSTA_PV'
      Required = True
      Size = 1
    end
    object qryCompraEHFISCAL: TStringField
      FieldName = 'EHFISCAL'
      Origin = 'EHFISCAL'
      Required = True
      Size = 1
    end
    object qryCompraLEUXML: TStringField
      FieldName = 'LEUXML'
      Origin = 'LEUXML'
      Required = True
      Size = 1
    end
    object qryCompraSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      Size = 1
    end
    object qryCompraRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryCompraVIRTUAL_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VIRTUAL_SITUACAO'
      Calculated = True
    end
    object qryCompraVIRTUAL_FORNECE: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_FORNECE'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAO'
      KeyFields = 'FORNECEDOR'
      Size = 60
      Lookup = True
    end
    object qryCompraSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
    object qryCompraVIRTUAL_UF: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UF'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'FORNECEDOR'
      Size = 2
      Lookup = True
    end
    object qryCompraVIRTUAL_CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_CNPJ'
      LookupDataSet = qryFornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'FORNECEDOR'
      Lookup = True
    end
    object qryCompraMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 5
    end
    object qryCompraSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object qryCompraCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object qryCompraXML: TMemoField
      FieldName = 'XML'
      Origin = 'XML'
      BlobType = ftMemo
    end
    object qryCompraTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryCompraTTOTAL: TAggregateField
      FieldName = 'TTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL)'
    end
  end
  object QryXmlDetail: TFDQuery
    AfterOpen = QryXmlDetailAfterOpen
    AfterEdit = QryXmlDetailAfterEdit
    BeforePost = QryXmlDetailBeforePost
    AfterPost = QryXmlDetailAfterPost
    AfterDelete = QryXmlDetailAfterDelete
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT * FROM XML_DETAIL'
      'WHERE '
      'FK_XML_MASTER=:ID and'
      'fkempresa=:emp'
      ''
      'order by codigo')
    Left = 216
    Top = 768
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryXmlDetailCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryXmlDetailFK_XML_MASTER: TIntegerField
      FieldName = 'FK_XML_MASTER'
      Origin = 'FK_XML_MASTER'
      Required = True
    end
    object QryXmlDetailID_PRODUTO_LOC: TIntegerField
      FieldName = 'ID_PRODUTO_LOC'
      Origin = 'ID_PRODUTO_LOC'
    end
    object QryXmlDetailID_PRODUTO_FOR: TStringField
      FieldName = 'ID_PRODUTO_FOR'
      Origin = 'ID_PRODUTO_FOR'
    end
    object QryXmlDetailDESCRICAO_FORNECEDOR: TStringField
      FieldName = 'DESCRICAO_FORNECEDOR'
      Origin = 'DESCRICAO_FORNECEDOR'
      Size = 100
    end
    object QryXmlDetailDESCRICAO_LOCAL: TStringField
      FieldName = 'DESCRICAO_LOCAL'
      Origin = 'DESCRICAO_LOCAL'
      Size = 50
    end
    object QryXmlDetailUND_E: TStringField
      FieldName = 'UND_E'
      Origin = 'UND_E'
      Size = 3
    end
    object QryXmlDetailUND_S: TStringField
      FieldName = 'UND_S'
      Origin = 'UND_S'
      Size = 3
    end
    object QryXmlDetailNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object QryXmlDetailCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QryXmlDetailCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object QryXmlDetailCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object QryXmlDetailCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object QryXmlDetailCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object QryXmlDetailCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object QryXmlDetailFK_GRUPO: TIntegerField
      FieldName = 'FK_GRUPO'
      Origin = 'FK_GRUPO'
    end
    object QryXmlDetailVIRTUAL_GRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_GRUPO'
      LookupDataSet = qryGrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FK_GRUPO'
      Size = 30
      Lookup = True
    end
    object QryXmlDetailQUANT_E: TFMTBCDField
      FieldName = 'QUANT_E'
      Origin = 'QUANT_E'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object QryXmlDetailQUANT_S: TFMTBCDField
      FieldName = 'QUANT_S'
      Origin = 'QUANT_S'
      OnChange = QryXmlDetailQUANT_SChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object QryXmlDetailVL_ITEM: TFMTBCDField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailVL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Origin = 'BASE_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailALIQ_ST: TFMTBCDField
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailVL_ST: TFMTBCDField
      FieldName = 'VL_ST'
      Origin = 'VL_ST'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Origin = 'DESPESAS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailREDBC: TFMTBCDField
      FieldName = 'REDBC'
      Origin = 'REDBC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailFKEMPRESA: TIntegerField
      FieldName = 'FKEMPRESA'
      Origin = 'FKEMPRESA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object QryXmlDetailEMBALAGEM: TFMTBCDField
      FieldName = 'EMBALAGEM'
      Origin = 'EMBALAGEM'
      OnChange = QryXmlDetailQUANT_SChange
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 4
    end
    object QryXmlDetailVIRTUAL_UN: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_UN'
      LookupDataSet = qryUnidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UND_S'
      Size = 3
      Lookup = True
    end
    object QryXmlDetailCHECAR: TStringField
      FieldName = 'CHECAR'
      Origin = 'CHECAR'
      Size = 1
    end
    object QryXmlDetailVIRTUAL_DESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_DESCRICAO'
      LookupDataSet = qryPesqProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO_LOC'
      Size = 50
      Lookup = True
    end
    object QryXmlDetailVIRTUAL_BARRA: TStringField
      FieldKind = fkLookup
      FieldName = 'VIRTUAL_BARRA'
      LookupDataSet = qryPesqProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'ID_PRODUTO_LOC'
      Lookup = True
    end
    object QryXmlDetailREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object QryXmlDetailCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 8
    end
    object QryXmlDetailCFOP_E: TStringField
      FieldName = 'CFOP_E'
      Origin = 'CFOP_E'
      Size = 4
    end
    object QryXmlDetailCST_E: TStringField
      FieldName = 'CST_E'
      Origin = 'CST_E'
      Size = 4
    end
    object QryXmlDetailPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailFK_GRADE_PRODUTO: TIntegerField
      FieldName = 'FK_GRADE_PRODUTO'
      Origin = 'FK_GRADE_PRODUTO'
    end
    object QryXmlDetailQTD_TOTAL: TFMTBCDField
      FieldName = 'QTD_TOTAL'
      Origin = 'QTD_TOTAL'
      OnChange = QryXmlDetailQTD_TOTALChange
      Precision = 18
      Size = 2
    end
    object QryXmlDetailFLAG: TStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      Size = 1
    end
    object QryXmlDetailPRECO_E: TFMTBCDField
      FieldName = 'PRECO_E'
      Origin = 'PRECO_E'
      Precision = 18
      Size = 2
    end
    object QryXmlDetailPRECO_S: TFMTBCDField
      FieldName = 'PRECO_S'
      Origin = 'PRECO_S'
      Precision = 18
      Size = 2
    end
  end
  object qryBoletoGerenciador: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from boleto_gerenciador bg'
      'where codigo=:codigo')
    Left = 1018
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryBoletoGerenciadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBoletoGerenciadorVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qryBoletoGerenciadorDATA_DOCUMENTO: TDateField
      FieldName = 'DATA_DOCUMENTO'
      Origin = 'DATA_DOCUMENTO'
    end
    object qryBoletoGerenciadorNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
      Origin = 'NUMERO_DOCUMENTO'
      Size = 50
    end
    object qryBoletoGerenciadorDATA_PROCESSAMENTO: TDateField
      FieldName = 'DATA_PROCESSAMENTO'
      Origin = 'DATA_PROCESSAMENTO'
    end
    object qryBoletoGerenciadorVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Origin = 'VALOR_DOCUMENTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryBoletoGerenciadorSACADO_NOME_SACADO: TStringField
      FieldName = 'SACADO_NOME_SACADO'
      Origin = 'SACADO_NOME_SACADO'
      Size = 150
    end
    object qryBoletoGerenciadorSACADO_CNPJCPF: TStringField
      FieldName = 'SACADO_CNPJCPF'
      Origin = 'SACADO_CNPJCPF'
    end
    object qryBoletoGerenciadorSACADO_LOGRADOURO: TStringField
      FieldName = 'SACADO_LOGRADOURO'
      Origin = 'SACADO_LOGRADOURO'
      Size = 250
    end
    object qryBoletoGerenciadorSACADO_NUMERO: TStringField
      FieldName = 'SACADO_NUMERO'
      Origin = 'SACADO_NUMERO'
    end
    object qryBoletoGerenciadorSACADO_BAIRRO: TStringField
      FieldName = 'SACADO_BAIRRO'
      Origin = 'SACADO_BAIRRO'
      Size = 50
    end
    object qryBoletoGerenciadorSACADO_CIDADE: TStringField
      FieldName = 'SACADO_CIDADE'
      Origin = 'SACADO_CIDADE'
      Size = 100
    end
    object qryBoletoGerenciadorSACADO_UF: TStringField
      FieldName = 'SACADO_UF'
      Origin = 'SACADO_UF'
      Size = 2
    end
    object qryBoletoGerenciadorSACADO_CEP: TStringField
      FieldName = 'SACADO_CEP'
      Origin = 'SACADO_CEP'
    end
    object qryBoletoGerenciadorVALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'VALOR_ABATIMENTO'
      Origin = 'VALOR_ABATIMENTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryBoletoGerenciadorVALOR_MORA_JUROS: TFMTBCDField
      FieldName = 'VALOR_MORA_JUROS'
      Origin = 'VALOR_MORA_JUROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryBoletoGerenciadorVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryBoletoGerenciadorDATA_MORA_JUROS: TDateField
      FieldName = 'DATA_MORA_JUROS'
      Origin = 'DATA_MORA_JUROS'
    end
    object qryBoletoGerenciadorDATA_DESCONTO: TDateField
      FieldName = 'DATA_DESCONTO'
      Origin = 'DATA_DESCONTO'
    end
    object qryBoletoGerenciadorDATA_ABATIMENTO: TDateField
      FieldName = 'DATA_ABATIMENTO'
      Origin = 'DATA_ABATIMENTO'
    end
    object qryBoletoGerenciadorDATA_PROTESTO: TDateField
      FieldName = 'DATA_PROTESTO'
      Origin = 'DATA_PROTESTO'
    end
    object qryBoletoGerenciadorPERCENTUAL_MULTA: TFMTBCDField
      FieldName = 'PERCENTUAL_MULTA'
      Origin = 'PERCENTUAL_MULTA'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 3
    end
    object qryBoletoGerenciadorINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Origin = 'INSTRUCAO1'
      Size = 250
    end
    object qryBoletoGerenciadorINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Origin = 'INSTRUCAO2'
      Size = 250
    end
    object qryBoletoGerenciadorPATH_PDF_BOLETO: TStringField
      FieldName = 'PATH_PDF_BOLETO'
      Origin = 'PATH_PDF_BOLETO'
      Size = 500
    end
    object qryBoletoGerenciadorFK_CRECEBER: TIntegerField
      FieldName = 'FK_CRECEBER'
      Origin = 'FK_CRECEBER'
    end
    object qryBoletoGerenciadorFK_NFE_FATURA: TIntegerField
      FieldName = 'FK_NFE_FATURA'
      Origin = 'FK_NFE_FATURA'
    end
    object qryBoletoGerenciadorSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object qryBoletoGerenciadorRETORNO_WEB_SERVICE: TMemoField
      FieldName = 'RETORNO_WEB_SERVICE'
      Origin = 'RETORNO_WEB_SERVICE'
      BlobType = ftMemo
    end
    object qryBoletoGerenciadorNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = 'NOSSO_NUMERO'
      Size = 100
    end
    object qryBoletoGerenciadorLINHA_DIGITAVEL: TStringField
      FieldName = 'LINHA_DIGITAVEL'
      Origin = 'LINHA_DIGITAVEL'
      Size = 250
    end
  end
  object qryBoletoParam: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from boleto_parametros bp'
      'where (bp.fk_empresa=:emp)')
    Left = 1024
    Top = 88
    ParamData = <
      item
        Name = 'EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryBoletoParamCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBoletoParamMS_LOCAL_PAGAMENTO: TStringField
      FieldName = 'MS_LOCAL_PAGAMENTO'
      Origin = 'MS_LOCAL_PAGAMENTO'
      Size = 500
    end
    object qryBoletoParamESPECIE_DOCTO: TStringField
      FieldName = 'ESPECIE_DOCTO'
      Origin = 'ESPECIE_DOCTO'
      Size = 10
    end
    object qryBoletoParamESPECIE_MOEDA: TStringField
      FieldName = 'ESPECIE_MOEDA'
      Origin = 'ESPECIE_MOEDA'
      Size = 5
    end
    object qryBoletoParamACEITE: TStringField
      FieldName = 'ACEITE'
      Origin = 'ACEITE'
      Size = 3
    end
    object qryBoletoParamCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 10
    end
    object qryBoletoParamTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Origin = 'TIPO_DOCUMENTO'
      Size = 15
    end
    object qryBoletoParamBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object qryBoletoParamTIPO_DISTRIBUICAO: TStringField
      FieldName = 'TIPO_DISTRIBUICAO'
      Origin = 'TIPO_DISTRIBUICAO'
      Size = 30
    end
    object qryBoletoParamCARAC_TITULO: TStringField
      FieldName = 'CARAC_TITULO'
      Origin = 'CARAC_TITULO'
      Size = 25
    end
    object qryBoletoParamRESPONSAVEL_EMISSAO: TStringField
      FieldName = 'RESPONSAVEL_EMISSAO'
      Origin = 'RESPONSAVEL_EMISSAO'
    end
    object qryBoletoParamTIPO_CARTEIRA: TStringField
      FieldName = 'TIPO_CARTEIRA'
      Origin = 'TIPO_CARTEIRA'
    end
    object qryBoletoParamCNAB_VERSAO: TStringField
      FieldName = 'CNAB_VERSAO'
      Origin = 'CNAB_VERSAO'
      Size = 10
    end
    object qryBoletoParamCNAB_LV_LOTE: TIntegerField
      FieldName = 'CNAB_LV_LOTE'
      Origin = 'CNAB_LV_LOTE'
    end
    object qryBoletoParamCNAB_LV_ARQUIVO: TIntegerField
      FieldName = 'CNAB_LV_ARQUIVO'
      Origin = 'CNAB_LV_ARQUIVO'
    end
    object qryBoletoParamCNAB_CODIGO_TRANSMISSAO: TIntegerField
      FieldName = 'CNAB_CODIGO_TRANSMISSAO'
      Origin = 'CNAB_CODIGO_TRANSMISSAO'
    end
    object qryBoletoParamCNAB_DENSIDADE_GRAVACAO: TIntegerField
      FieldName = 'CNAB_DENSIDADE_GRAVACAO'
      Origin = 'CNAB_DENSIDADE_GRAVACAO'
    end
    object qryBoletoParamCNAB_PREFIXO_REMESSA: TIntegerField
      FieldName = 'CNAB_PREFIXO_REMESSA'
      Origin = 'CNAB_PREFIXO_REMESSA'
    end
    object qryBoletoParamCIP: TStringField
      FieldName = 'CIP'
      Origin = 'CIP'
    end
    object qryBoletoParamHOMOLOGACAO: TStringField
      FieldName = 'HOMOLOGACAO'
      Origin = 'HOMOLOGACAO'
      Size = 1
    end
    object qryBoletoParamIMP_MSG_PADRAO_COMP_BANCO: TStringField
      FieldName = 'IMP_MSG_PADRAO_COMP_BANCO'
      Origin = 'IMP_MSG_PADRAO_COMP_BANCO'
      Size = 1
    end
    object qryBoletoParamLER_CEDENTE_ARQ_RETORNO: TStringField
      FieldName = 'LER_CEDENTE_ARQ_RETORNO'
      Origin = 'LER_CEDENTE_ARQ_RETORNO'
      Size = 1
    end
    object qryBoletoParamLER_NOSSO_NUM_COMPLETO: TStringField
      FieldName = 'LER_NOSSO_NUM_COMPLETO'
      Origin = 'LER_NOSSO_NUM_COMPLETO'
      Size = 1
    end
    object qryBoletoParamREMOVER_ACENTUACAO_REMESSA: TStringField
      FieldName = 'REMOVER_ACENTUACAO_REMESSA'
      Origin = 'REMOVER_ACENTUACAO_REMESSA'
      Size = 1
    end
    object qryBoletoParamBEN_AGENCIA: TIntegerField
      FieldName = 'BEN_AGENCIA'
      Origin = 'BEN_AGENCIA'
    end
    object qryBoletoParamBEN_AGENCIA_DV: TIntegerField
      FieldName = 'BEN_AGENCIA_DV'
      Origin = 'BEN_AGENCIA_DV'
    end
    object qryBoletoParamBEN_CONTA: TIntegerField
      FieldName = 'BEN_CONTA'
      Origin = 'BEN_CONTA'
    end
    object qryBoletoParamBEN_CONTA_DV: TIntegerField
      FieldName = 'BEN_CONTA_DV'
      Origin = 'BEN_CONTA_DV'
    end
    object qryBoletoParamBEN_AGENCIA_CONTA_DV: TIntegerField
      FieldName = 'BEN_AGENCIA_CONTA_DV'
      Origin = 'BEN_AGENCIA_CONTA_DV'
    end
    object qryBoletoParamBEN_CONVENIO: TStringField
      FieldName = 'BEN_CONVENIO'
      Origin = 'BEN_CONVENIO'
      Size = 10
    end
    object qryBoletoParamBEN_MODALIDADE: TStringField
      FieldName = 'BEN_MODALIDADE'
      Origin = 'BEN_MODALIDADE'
      Size = 10
    end
    object qryBoletoParamBEN_OPERACAO: TStringField
      FieldName = 'BEN_OPERACAO'
      Origin = 'BEN_OPERACAO'
      Size = 10
    end
    object qryBoletoParamBEN_COD_CEDENTE: TIntegerField
      FieldName = 'BEN_COD_CEDENTE'
      Origin = 'BEN_COD_CEDENTE'
    end
    object qryBoletoParamWEBSERVICE_CLIENT_ID: TStringField
      FieldName = 'WEBSERVICE_CLIENT_ID'
      Origin = 'WEBSERVICE_CLIENT_ID'
      Size = 500
    end
    object qryBoletoParamWEBSERVICE_CLIENT_SECRET: TStringField
      FieldName = 'WEBSERVICE_CLIENT_SECRET'
      Origin = 'WEBSERVICE_CLIENT_SECRET'
      Size = 500
    end
    object qryBoletoParamWEBSERVICE_KEY_USER: TStringField
      FieldName = 'WEBSERVICE_KEY_USER'
      Origin = 'WEBSERVICE_KEY_USER'
      Size = 500
    end
    object qryBoletoParamWEBSERVICE_INDICADOR_PIX: TStringField
      FieldName = 'WEBSERVICE_INDICADOR_PIX'
      Origin = 'WEBSERVICE_INDICADOR_PIX'
      Size = 1
    end
    object qryBoletoParamWEBSERVICE_SSL_LIB: TStringField
      FieldName = 'WEBSERVICE_SSL_LIB'
      Origin = 'WEBSERVICE_SSL_LIB'
    end
    object qryBoletoParamPATH_REMESSA: TStringField
      FieldName = 'PATH_REMESSA'
      Origin = 'PATH_REMESSA'
      Size = 250
    end
    object qryBoletoParamPATH_RETORNO_ARQUIVO: TStringField
      FieldName = 'PATH_RETORNO_ARQUIVO'
      Origin = 'PATH_RETORNO_ARQUIVO'
      Size = 250
    end
    object qryBoletoParamFK_EMPRESA: TIntegerField
      FieldName = 'FK_EMPRESA'
      Origin = 'FK_EMPRESA'
    end
    object qryBoletoParamLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 35
    end
    object qryBoletoParamIMP_VERSO_FATURA: TStringField
      FieldName = 'IMP_VERSO_FATURA'
      Origin = 'IMP_VERSO_FATURA'
      Size = 1
    end
    object qryBoletoParamNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = 'NOSSO_NUMERO'
      Size = 50
    end
  end
  object qryProdutos: TFDQuery
    BeforeOpen = qryProdutosBeforeOpen
    Connection = Conexao
    SQL.Strings = (
      'select PRO.*, gr.descricao grupo_sl from Produto PRO'
      'left join grupo gr on gr.codigo=pro.grupo'
      'where'
      'pro.empresa=:id'
      '/*where*/')
    Left = 168
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qryProdutosGRUPO_SL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_SL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryProdutosPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryProdutosQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryProdutosQTD_FISCAL: TBCDField
      FieldName = 'QTD_FISCAL'
      Origin = 'QTD_FISCAL'
      Precision = 18
    end
    object qryProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryProdutosDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
  end
  object qryUpdateProd: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from produto'
      'where'
      'codigo=:id')
    Left = 942
    Top = 694
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryUpdateProdEMPRESA: TSmallintField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object qryUpdateProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUpdateProdTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryUpdateProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object qryUpdateProdCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
    end
    object qryUpdateProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
    end
    object qryUpdateProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
    end
    object qryUpdateProdUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 3
    end
    object qryUpdateProdULTFORN: TIntegerField
      FieldName = 'ULTFORN'
      Origin = 'ULTFORN'
    end
    object qryUpdateProdLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 40
    end
    object qryUpdateProdCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 5
    end
    object qryUpdateProdCSTE: TStringField
      FieldName = 'CSTE'
      Origin = 'CSTE'
      Size = 5
    end
    object qryUpdateProdCSTS: TStringField
      FieldName = 'CSTS'
      Origin = 'CSTS'
      Size = 5
    end
    object qryUpdateProdCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 5
    end
    object qryUpdateProdCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 5
    end
    object qryUpdateProdNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Required = True
      Size = 10
    end
    object qryUpdateProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qryUpdateProdATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Size = 1
    end
    object qryUpdateProdCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qryUpdateProdULT_COMPRA: TIntegerField
      FieldName = 'ULT_COMPRA'
      Origin = 'ULT_COMPRA'
      Required = True
    end
    object qryUpdateProdULT_COMPRA_ANTERIOR: TIntegerField
      FieldName = 'ULT_COMPRA_ANTERIOR'
      Origin = 'ULT_COMPRA_ANTERIOR'
      Required = True
    end
    object qryUpdateProdCOD_BARRA_ATACADO: TStringField
      FieldName = 'COD_BARRA_ATACADO'
      Origin = 'COD_BARRA_ATACADO'
    end
    object qryUpdateProdGRADE: TStringField
      FieldName = 'GRADE'
      Origin = 'GRADE'
      Size = 1
    end
    object qryUpdateProdCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object qryUpdateProdEFISCAL: TStringField
      FieldName = 'EFISCAL'
      Origin = 'EFISCAL'
      Size = 1
    end
    object qryUpdateProdPAGA_COMISSAO: TStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object qryUpdateProdCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Origin = 'COMPOSICAO'
      Size = 1
    end
    object qryUpdateProdPRECO_PROMO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_PROMO_ATACADO'
      Origin = 'PRECO_PROMO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdPRECO_PROMO_VAREJO: TFMTBCDField
      FieldName = 'PRECO_PROMO_VAREJO'
      Origin = 'PRECO_PROMO_VAREJO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdINICIO_PROMOCAO: TDateField
      FieldName = 'INICIO_PROMOCAO'
      Origin = 'INICIO_PROMOCAO'
    end
    object qryUpdateProdFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qryUpdateProdPR_VENDA_PRAZO: TFMTBCDField
      FieldName = 'PR_VENDA_PRAZO'
      Origin = 'PR_VENDA_PRAZO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdPRECO_VARIAVEL: TStringField
      FieldName = 'PRECO_VARIAVEL'
      Origin = 'PRECO_VARIAVEL'
      Size = 1
    end
    object qryUpdateProdAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 50
    end
    object qryUpdateProdREDUCAO_BASE: TFMTBCDField
      FieldName = 'REDUCAO_BASE'
      Origin = 'REDUCAO_BASE'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdMVA: TFMTBCDField
      FieldName = 'MVA'
      Origin = 'MVA'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdFCP: TFMTBCDField
      FieldName = 'FCP'
      Origin = 'FCP'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdPRODUTO_PESADO: TStringField
      FieldName = 'PRODUTO_PESADO'
      Origin = 'PRODUTO_PESADO'
      Size = 1
    end
    object qryUpdateProdSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
      Size = 1
    end
    object qryUpdateProdDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
      Required = True
    end
    object qryUpdateProdPR_CUSTO2: TFMTBCDField
      FieldName = 'PR_CUSTO2'
      Origin = 'PR_CUSTO2'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdPERC_CUSTO: TFMTBCDField
      FieldName = 'PERC_CUSTO'
      Origin = 'PERC_CUSTO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qryUpdateProdDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qryUpdateProdPR_CUSTO_ANTERIOR: TFMTBCDField
      FieldName = 'PR_CUSTO_ANTERIOR'
      Origin = 'PR_CUSTO_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryUpdateProdPR_VENDA_ANTERIOR: TFMTBCDField
      FieldName = 'PR_VENDA_ANTERIOR'
      Origin = 'PR_VENDA_ANTERIOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryUpdateProdALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdALIQ_PIS: TCurrencyField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Required = True
    end
    object qryUpdateProdALIQ_COF: TCurrencyField
      FieldName = 'ALIQ_COF'
      Origin = 'ALIQ_COF'
      Required = True
    end
    object qryUpdateProdPR_CUSTO: TFMTBCDField
      FieldName = 'PR_CUSTO'
      Origin = 'PR_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryUpdateProdMARGEM: TCurrencyField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
      Required = True
    end
    object qryUpdateProdPR_VENDA: TFMTBCDField
      FieldName = 'PR_VENDA'
      Origin = 'PR_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryUpdateProdQTD_ATUAL: TFMTBCDField
      FieldName = 'QTD_ATUAL'
      Origin = 'QTD_ATUAL'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryUpdateProdQTD_MIN: TFMTBCDField
      FieldName = 'QTD_MIN'
      Origin = 'QTD_MIN'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryUpdateProdE_MEDIO: TFMTBCDField
      FieldName = 'E_MEDIO'
      Origin = 'E_MEDIO'
      Precision = 18
      Size = 3
    end
    object qryUpdateProdESTOQUE_INICIAL: TFMTBCDField
      FieldName = 'ESTOQUE_INICIAL'
      Origin = 'ESTOQUE_INICIAL'
      Precision = 18
      Size = 3
    end
    object qryUpdateProdPESO: TFMTBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdALIQ_ICM: TCurrencyField
      FieldName = 'ALIQ_ICM'
      Origin = 'ALIQ_ICM'
      Required = True
    end
    object qryUpdateProdPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      Precision = 18
      Size = 2
    end
    object qryUpdateProdQTD_ATACADO: TFMTBCDField
      FieldName = 'QTD_ATACADO'
      Origin = 'QTD_ATACADO'
      Precision = 18
      Size = 3
    end
  end
  object qryManutencao: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'SELECT '
      '    m.*, '
      '    mts.NOME AS TIPO_SERVICO '
      'FROM veiculo_manutencao m'
      
        'LEFT JOIN VEICULO_MANUTENCAO_TIPO_SERVICO mts ON mts.CODIGO = m.' +
        'TIPO_SERVICO_CODIGO'
      'WHERE'
      'veiculo_placa LIKE :placa'
      '')
    Left = 464
    Top = 760
    ParamData = <
      item
        Name = 'PLACA'
        DataType = ftString
        ParamType = ptInput
        Size = 7
        Value = ''
      end>
    object qryManutencaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = ',0.00'
    end
    object qryManutencaoVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Origin = 'VEICULO_PLACA'
      Size = 7
    end
    object qryManutencaoMOTORISTA_CODIGO: TIntegerField
      FieldName = 'MOTORISTA_CODIGO'
      Origin = 'MOTORISTA_CODIGO'
      DisplayFormat = ',0.00'
    end
    object qryManutencaoFORNECEDOR_CODIGO: TIntegerField
      FieldName = 'FORNECEDOR_CODIGO'
      Origin = 'FORNECEDOR_CODIGO'
      DisplayFormat = ',0.00'
    end
    object qryManutencaoDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'DATA_ENTRADA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryManutencaoHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
      Origin = 'HORA_ENTRADA'
      EditMask = '!90:00;1;_'
    end
    object qryManutencaoDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryManutencaoHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
      EditMask = '!90:00;1;_'
    end
    object qryManutencaoKM_PROXIMA_REVISAO: TIntegerField
      FieldName = 'KM_PROXIMA_REVISAO'
      Origin = 'KM_PROXIMA_REVISAO'
      DisplayFormat = ',0.00'
    end
    object qryManutencaoOBSERVACOES: TMemoField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object qryManutencaoTIPO_SERVICO_CODIGO: TIntegerField
      FieldName = 'TIPO_SERVICO_CODIGO'
      Origin = 'TIPO_SERVICO_CODIGO'
      DisplayFormat = ',0.00'
    end
    object qryManutencaoTIPO_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_SERVICO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryManutencaoItem: TFDQuery
    Connection = Conexao
    Transaction = Transacao
    UpdateTransaction = Transacao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'select * from veiculo_manutencao_item'
      'where'
      'manutencao_codigo like :manutencao_codigo')
    Left = 576
    Top = 760
    ParamData = <
      item
        Name = 'MANUTENCAO_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object qryManutencaoItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = ',0.00'
    end
    object qryManutencaoItemMANUTENCAO_CODIGO: TIntegerField
      FieldName = 'MANUTENCAO_CODIGO'
      Origin = 'MANUTENCAO_CODIGO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object qryManutencaoItemTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qryManutencaoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryManutencaoItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryManutencaoItemVALOR_UNITARIO: TBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object qryManutencaoItemDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
    end
    object qryManutencaoItemVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 6
    end
  end
  object qryManutencaoTipo: TFDQuery
    AggregatesActive = True
    Connection = Conexao
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.FmtDisplayDate = '##/##/#####;1;'
    FormatOptions.FmtDisplayNumeric = ',0.00'
    SQL.Strings = (
      'select * from VEICULO_MANUTENCAO_TIPO_SERVICO')
    Left = 696
    Top = 760
    object qryManutencaoTipoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = ',0.00'
    end
    object qryManutencaoTipoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryManutencaoTipoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      BlobType = ftMemo
    end
  end
  object qryRota: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM VEICULOS_ROTA'
      '/*where*/')
    Left = 787
    Top = 759
    object qryRotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRotaVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Origin = 'VEICULO_PLACA'
      Required = True
      Size = 10
    end
    object qryRotaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 100
    end
    object qryRotaDESTINO_FINAL: TStringField
      FieldName = 'DESTINO_FINAL'
      Origin = 'DESTINO_FINAL'
      Size = 100
    end
    object qryRotaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'DATA_SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryRotaHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = 'HORA_SAIDA'
      EditMask = '!90:00;1;_'
    end
    object qryRotaDATA_CHEGADA: TDateField
      FieldName = 'DATA_CHEGADA'
      Origin = 'DATA_CHEGADA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryRotaHORA_CHEGADA: TTimeField
      FieldName = 'HORA_CHEGADA'
      Origin = 'HORA_CHEGADA'
      EditMask = '!90:00;1;_'
    end
    object qryRotaKM_INICIAL: TFMTBCDField
      FieldName = 'KM_INICIAL'
      Origin = 'KM_INICIAL'
      Precision = 18
      Size = 2
    end
    object qryRotaKM_FINAL: TFMTBCDField
      FieldName = 'KM_FINAL'
      Origin = 'KM_FINAL'
      Precision = 18
      Size = 2
    end
    object qryRotaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qryRotaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object qryRotaParadas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM VEICULOS_ROTA_PARADA'
      'WHERE'
      'ROTA_CODIGO = :ROTA_CODIGO')
    Left = 858
    Top = 759
    ParamData = <
      item
        Name = 'ROTA_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRotaParadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRotaParadasROTA_CODIGO: TIntegerField
      FieldName = 'ROTA_CODIGO'
      Origin = 'ROTA_CODIGO'
      Required = True
    end
    object qryRotaParadasORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Required = True
    end
    object qryRotaParadasCLIENTE_CODIGO: TIntegerField
      FieldName = 'CLIENTE_CODIGO'
      Origin = 'CLIENTE_CODIGO'
      Required = True
    end
    object qryRotaParadasENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Origin = 'ENDERECO_CLIENTE'
      Size = 255
    end
    object qryRotaParadasKM_DESTINO: TFMTBCDField
      FieldName = 'KM_DESTINO'
      Origin = 'KM_DESTINO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryRotaParadasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
  end
  object qryRotaDespesas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM VEICULO_ROTA_DESPESA'
      'WHERE'
      'ROTA_CODIGO = :ROTA_CODIGO')
    Left = 954
    Top = 759
    ParamData = <
      item
        Name = 'ROTA_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryRotaDespesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRotaDespesasROTA_CODIGO: TIntegerField
      FieldName = 'ROTA_CODIGO'
      Origin = 'ROTA_CODIGO'
      Required = True
    end
    object qryRotaDespesasTIPO_DESPESA_CODIGO: TIntegerField
      FieldName = 'TIPO_DESPESA_CODIGO'
      Origin = 'TIPO_DESPESA_CODIGO'
      Required = True
    end
    object qryRotaDespesasFORNECEDOR_CODIGO: TIntegerField
      FieldName = 'FORNECEDOR_CODIGO'
      Origin = 'FORNECEDOR_CODIGO'
    end
    object qryRotaDespesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object qryRotaDespesasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryRotaDespesasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object qryRotaDespesasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qryRotaDespesasCOMPROVANTE_DOC: TBlobField
      FieldName = 'COMPROVANTE_DOC'
      Origin = 'COMPROVANTE_DOC'
    end
    object qryRotaDespesasIMPORTADO_FIN: TStringField
      FieldName = 'IMPORTADO_FIN'
      Origin = 'IMPORTADO_FIN'
      FixedChar = True
      Size = 1
    end
  end
  object qryRotaTipoDespesa: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM VEICULO_ROTA_TIPO_DESPESA')
    Left = 1037
    Top = 727
    object qryRotaTipoDespesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRotaTipoDespesaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
end
