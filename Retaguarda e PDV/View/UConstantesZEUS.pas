unit UConstantesZEUS;

interface

uses

SysUtils, Classes, ExtCtrls;

  Type
    TArrayInteger      = Array of Integer;
    TTipoTabelaIBPT    = (tIbptGeral, tIbptProdutos, tIbptServicos);

const

  MODELO_NFE  = 55; // NF-e  (Nota Fiscal Eletrônica de Venda)
  MODELO_NFCE = 65; // NFC-e (Nota Fiscal Eletrônica de Venda ao Consumidor Final)

  DOWNLOAD_URL_GOOGLE_DRIVE = 'https://drive.google.com/uc?export=download&id=%s';
  DOWNLOAD_IDFILE_TABELA_IBPT = '1kN7QCWNSVPYgxLofN1iVn0vYKRY_tAco';

  DOWNLOAD_URL_SERVE_VPS = 'http://62.72.9.191:8080/install/';
  DOWNLOAD_IDFILE_SERVE_VPS = 'util/IBPT/';
  DOWNLOAD_NMFILE_TABELA_IBPT = '%s%s%s';

  IMG_LOGO_SISTEMA = 'https://zeuspro.com.br/img/logoZeus.png';
  ICO_ICONE_JANELA = 'https://zeuspro.com.br/img/icon_sys.png';

  PASTA_IMAGENS = 'img\';



 // DOWNLOAD_URL_GOOGLE_DRIVE   = 'https://drive.google.com/uc?export=download&id=%s';
  DOWNLOAD_URL_REMOTE_ACCESS  = 'https://get.teamviewer.com/n9zva8a';
 // DOWNLOAD_IDFILE_TABELA_IBPT = '10iSd60RxNH-60M3_OucjxNxjF_nsvR8p';


  CLIENTE_BLOQUEADO_PORDEBITO = 'Cliente bloqueado automaticamente pelo sistema por se encontrar com títulos vencidos. Favor buscar mais informações junto ao FINANCEIRO.';
implementation

end.
