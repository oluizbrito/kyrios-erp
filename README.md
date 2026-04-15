# Kyrios ERP (Open Source)

ERP completo com modulos de retaguarda, PDV e rotinas fiscais, disponibilizado para estudo, uso e comercializacao.

Licenca: MIT (uso comercial permitido).

## Estrutura principal
- `Retaguarda e PDV/Projeto/Retaguarda.dproj`: aplicacao de retaguarda.
- `Retaguarda e PDV/Projeto/PDV.dproj`: frente de caixa (PDV).
- `Retaguarda e PDV/Pre-Venda/PreVenda.dproj`: modulo de pre-venda.
- `Retaguarda e PDV/WhatsAppServer/WhatsAppServer.dproj`: servico auxiliar.
- `ControleWeb Licencas/ControleWeb.dproj`: modulo web/licencas.

## Como clonar
```bash
git clone https://github.com/oluizbrito/kyrios-erp.git
cd kyrios-erp
```

## Requisitos para rodar localmente
1. Windows 10/11.
2. Delphi (versao usada no projeto).
3. Firebird instalado localmente.
4. Dependencias de componentes Delphi usadas no projeto (se houver na sua IDE).

## Como rodar localmente (passo a passo)
1. Abra o Delphi.
2. Abra um dos arquivos `.dproj` listados acima (comece por `Retaguarda.dproj`).
3. Revise as units de conexao com banco (normalmente em `UnitDM`/`uDados`) e ajuste:
   - servidor/porta do Firebird;
   - caminho do banco `.FDB`;
   - usuario e senha.
4. Confirme que as bibliotecas externas usadas pelo projeto estao instaladas na IDE.
5. Compile em `Win32` ou `Win64`.
6. Execute pela IDE.

## Banco de dados
- O projeto usa Firebird.
- Se necessario, restaure/crie o banco localmente e atualize os parametros de conexao antes da compilacao.

## Observacoes
- Este repositorio foi aberto para a comunidade.
- Voce pode estudar, modificar, redistribuir e comercializar sob os termos da licenca MIT.
