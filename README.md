# KyriosERP (Open Source)

ERP completo com modulos de retaguarda, PDV e fiscal (NFe, NFCe, CTe, MDF-e, SAT, SPED e boletos), disponibilizado para estudo, uso e comercializacao.

Licenca: MIT (uso comercial permitido).

## Versoes e stack (dados concretos do codigo)
- Linguagem: Object Pascal (Delphi).
- Banco principal: Firebird via FireDAC (`DriverID=FB`).
- Porta padrao do banco: `3050`.
- Biblioteca cliente Firebird: `fbclient.dll` (carregada ao lado do executavel).
- Versao de projeto dos modulos principais (`.dproj`): `20.2`.
- Plataformas dos modulos principais: `Win32=True`, `Win64=False`.
- Versoes de arquivo nos modulos principais:
  - Retaguarda: `6.2.0.17`.
  - PDV: `6.2.0.6`.
  - Pre-Venda: `6.0.2.0`.
- Dependencias funcionais identificadas no codigo:
  - ACBr (NFe/CTe/SAT/Boleto/PosPrinter/Integrador).
  - FireDAC (conexao e operacoes de banco).
  - Indy/OpenSSL (comunicacoes e SSL em servicos auxiliares).

## Projetos principais
- `Retaguarda e PDV/Projeto/Retaguarda.dproj`
- `Retaguarda e PDV/Projeto/PDV.dproj`
- `Retaguarda e PDV/Pre-Venda/PreVenda.dproj`
- `Retaguarda e PDV/WhatsAppServer/WhatsAppServer.dproj`
- `ControleWeb Licencas/ControleWeb.dproj`

## Como clonar
```bash
git clone https://github.com/oluizbrito/kyrios-erp.git
cd kyrios-erp
```

## Requisitos para rodar localmente
1. Windows 10/11.
2. Delphi compatível com os `.dproj` do repositório.
3. Firebird instalado e em execucao.
4. `fbclient.dll` acessivel para os executaveis.
5. Pacotes/componentes usados no projeto instalados na IDE (especialmente ACBr e componentes de relatorio/UI usados nos forms).

## Configuracao de banco (obrigatoria)
O sistema le os parametros do banco de um arquivo INI e usa:
- `USER` (padrao: `sysdba`)
- `PASS` (padrao: `masterkey`)
- `PORT` (padrao: `3050`)
- `IP`
- `Path` (caminho do `.FDB`)

## Como rodar localmente (passo a passo)
1. Abra o Delphi.
2. Abra primeiro `Retaguarda e PDV/Projeto/Retaguarda.dproj`.
3. Configure o INI de conexao com IP/porta/caminho do banco Firebird.
4. Garanta que `fbclient.dll` esteja no mesmo diretorio do `.exe` gerado.
5. Compile em `Win32` e execute pela IDE.
6. Para o PDV, repita o processo com `Retaguarda e PDV/Projeto/PDV.dproj`.
7. Para Pre-Venda, use `Retaguarda e PDV/Pre-Venda/PreVenda.dproj`.

## Observacoes
- Este repositório foi aberto para a comunidade.
- E permitido estudar, modificar, redistribuir e comercializar conforme a licenca MIT.

