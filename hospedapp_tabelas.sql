/*
UNIVERSIDADE CRUZEIRO DO SUL
CURSO DE TECNOLOGIA EM ANÁLISE E 
DESENVOLVIMENTO DE SISTEMAS

TRABALHO IV
DISCIPLINA: MODELAGEM DE BANCO DE DADOS
BANCO DE DADOS PARA POUSADAS

PROFESSORES:
DOUGLAS ALMENDRO
BAGNER DA SILVA

TUTORES:
MARCONE MARINHO
FABIANA SABAI RODRIGUES
THIAGO SAULO VIEIRA THIAGO

ALUNO: LUIZ FERNANDO QUARESMA CAMPOS

TECNOLOGIA: BANCO DE DADOS MYSQL
*/

--
-- Banco de dados: `hospedapp`
-- 


-- Cria as tabelas

CREATE TABLE `hospedagem` (
  `HOSP_CD_ID` int(20) NOT NULL,
  `HOSP_CD_UNIDADE` int(9) NOT NULL,
  `HOSP_CD_PESSOA_FISICA` varchar(20) NOT NULL,
  `HOSP_CD_PESSOA_JURIDICA` varchar(9) NOT NULL,
  `HOSP_CD_TIPO` varchar(18) NOT NULL,
  `HOSP_DT_INICIO_RESERVA_DATA` datetime NOT NULL,
  `HOSP_DT_FIM_RESERVA_DATA` datetime NOT NULL,
  `HOSP_DT_CHECKIN_DATA` datetime NOT NULL,
  `HOSP_DT_PREVIA_CHECKOUT_DATA` date NOT NULL,
  `HOSP_DT_CHECKOUT_DATA` datetime NOT NULL,
  `HOSP_QT_DIAS_HOSPEDADO` varchar(4) NOT NULL,
  `HOSP_NU_ACOMPANHANTES` int(3) NOT NULL,
  `HOSP_CD_QUARTO` varchar(22) NOT NULL,
  `HOSP_VL_DIARIA_QUARTO` varchar(9) NOT NULL,
  `HOSP_CD_PROMOCAO` varchar(22) NOT NULL,
  `HOSP_CD_TIPO_PROMOCAO` varchar(2) NOT NULL,
  `HOSP_CD_TIPO_CONTAGEM_DIARIAS` varchar(1) NOT NULL,
  `HOSP_QT_PERCENTUAL_DESCONTO` int(3) NOT NULL,
  `HOSP_VL_DEBITO_HOSPEDAGEM` varchar(22) NOT NULL,
  `HOSP_VL_DEBITO_PEDIDOS` varchar(22) NOT NULL,
  `HOSP_VL_DEBITO_TOTAL` varchar(22) NOT NULL,
  `HOSP_QT_PERCENTUAL_SINAL` varchar(3) NOT NULL,
  `HOSP_VL_SINAL_PAGO` varchar(22) NOT NULL,
  `HOSP_DT_PAGAMENTO_SINAL_DATA` datetime NOT NULL,
  `HOSP_VL_TOTAL_PAGO` varchar(22) NOT NULL,
  `HOSP_CD_FORMA_PAGAMENTO` varchar(9) NOT NULL,
  `HOSP_TX_DESCRICAO_PAGAMENTO` varchar(256) NOT NULL,
  `HOSP_NU_NOTA_FISCAL` varchar(80) NOT NULL,
  `HOSP_DT_VENCIMENTO` varchar(40) NOT NULL,
  `HOSP_CD_QUITADO` varchar(1) NOT NULL,
  `HOSP_DT_PAGAMENTO_DATA` datetime NOT NULL,
  `HOSP_CD_STATUS` varchar(2) NOT NULL,
  `HOSP_DT_MES` varchar(2) NOT NULL,
  `HOSP_DT_ANO` varchar(4) NOT NULL,
  `HOSP_TX_REGISTRO_RETIFICACOES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `pagamento` (
  `PAGM_CD_ID` int(22) NOT NULL,
  `PAGM_CD_UNIDADE` int(9) NOT NULL,
  `PAGM_TX_DESCRICAO` varchar(80) NOT NULL,
  `PAGM_CD_TIPO` varchar(9) NOT NULL,
  `PAGM_CD_HOSPEDAGEM` varcV    HGHUBHhar(9) NOT NULL,
  `PAGM_CD_PESSOA_FISICA` varchar(9) NOT NULL,
  `PAGM_CD_PESSOA_JURIDICA` varchar(9) NOT NULL,
  `PAGM_VL_VALOR_PAGO` varchar(12) NOT NULL,
  `PAGM_DT_PAGAMENTO` datetime NOT NULL,
  `PAGM_CD_STATUS` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `pedido` (
  `PEDI_CD_ID` int(50) NOT NULL,
  `PEDI_CD_UNIDADE` int(9) NOT NULL,
  `PEDI_CD_ID_HOSPEDAGEM` varchar(50) NOT NULL,
  `PEDI_CD_PESSOA_FISICA` varchar(12) NOT NULL,
  `PEDI_CD_PESSOA_JURIDICA` varchar(12) NOT NULL,
  `PEDI_TX_DESCRICAO` varchar(256) NOT NULL,
  `PEDI_CD_TIPO` varchar(40) NOT NULL,
  `PEDI_DATA_HORA` datetime NOT NULL,
  `PEDI_VL_VALOR` varchar(25) NOT NULL,
  `PEDI_NU_QUANTIDADE` varchar(12) NOT NULL,
  `PEDI_CD_TIPO_FREQUENCIA` varchar(12) NOT NULL,
  `PEDI_NU_DIAS` varchar(4) NOT NULL,
  `PEDI_VL_VALOR_DEBITO_TOTAL` varchar(22) NOT NULL,
  `PEDI_VL_VALOR_PAGAMENTO` varchar(22) NOT NULL,
  `PEDI_DT_PAGAMENTO_DATA` datetime NOT NULL,
  `PEDI_CD_QUITADO` varchar(1) NOT NULL,
  `PEDI_CD_STATUS` varchar(1) NOT NULL,
  `PEDI_TX_REGISTRO_RETIFICACOES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `pessoa_fisica` (
  `PESF_CD_ID` int(22) NOT NULL,
  `PESF_CD_UNIDADE` int(9) NOT NULL,
  `PESF_NM_NOME` varchar(160) NOT NULL,
  `PESF_CD_SEXO` varchar(1) NOT NULL,
  `PESF_CD_CPF` varchar(20) NOT NULL,
  `PESF_CD_RG` varchar(20) NOT NULL,
  `PESF_CD_ORGAO_EXPEDIDOR_RG` varchar(12) NOT NULL,
  `PESF_DT_DATA_NASCIMENTO` date NOT NULL,
  `PESF_CD_EMPRESA` varchar(22) NOT NULL,
  `PESF_TX_PROFISSAO` varchar(160) NOT NULL,
  `PESF_ED_RUA` varchar(220) NOT NULL,
  `PESF_ED_NUMERO` varchar(9) NOT NULL,
  `PESF_ED_COMPLEMENTO` varchar(160) NOT NULL,
  `PESF_ED_BAIRRO` varchar(160) NOT NULL,
  `PESF_ED_CEP` varchar(20) NOT NULL,
  `PESF_ED_CIDADE` varchar(160) NOT NULL,
  `PESF_ED_ESTADO` varchar(2) NOT NULL,
  `PESF_ED_EMAIL` varchar(160) NOT NULL,
  `PESF_ED_TELEFONE_FIXO` varchar(60) NOT NULL,
  `PESF_ED_TELEFONE_CELULAR` varchar(60) NOT NULL,
  `PESF_CD_DATA_INCLUSAO` date NOT NULL,
  `PES_CD_STATUS` varchar(1) NOT NULL,
  `PESS_QT_CREDITO` varchar(22) NOT NULL,
  `PESF_CD_TIPO_PESSOA` varchar(1) NOT NULL,
  `PESF_CD_SENHA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `pessoa_juridica` (
  `PEJU_CD_ID` int(20) NOT NULL,
  `PEJU_CD_UNIDADE` int(9) NOT NULL,
  `PEJU_NM_RAZAO_SOCIAL` varchar(220) NOT NULL,
  `PEJU_NM_NOME` varchar(220) NOT NULL,
  `PEJU_CD_CNPJ` varchar(22) NOT NULL,
  `PEJU_ED_RUA` varchar(200) NOT NULL,
  `PEJU_ED_NUMERO_ENDERECO` varchar(9) NOT NULL,
  `PEJU_ED_COMPLEMENTO` varchar(80) NOT NULL,
  `PEJU_ED_BAIRRO` varchar(60) NOT NULL,
  `PEJU_ED_CIDADE` varchar(60) NOT NULL,
  `PEJU_ED_CEP` varchar(20) NOT NULL,
  `PEJU_ED_ESTADO` varchar(2) NOT NULL,
  `PEJU_ED_EMAIL` varchar(160) NOT NULL,
  `PEJU_ED_TELEFONE` varchar(40) NOT NULL,
  `PEJU_ED_CELULAR` varchar(40) NOT NULL,
  `PEJU_DT_DATA_INCLUSAO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `promocao` (
  `PROM_CD_ID` int(22) NOT NULL,
  `PROM_CD_UNIDADE` int(9) NOT NULL,
  `PROM_CD_EMPRESA` varchar(22) NOT NULL,
  `PROM_NM_NOME` varchar(160) NOT NULL,
  `PROM_VL_PERCENTUAL_DESCONTO` varchar(3) NOT NULL,
  `PROM_CD_TIPO` varchar(1) NOT NULL,
  `PROM_CD_CONTABILIZACAO_NUMERO_DIARIAS` varchar(1) NOT NULL,
  `PROM_CD_STATUS` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `quarto` (
  `QURT_CD_ID` int(9) NOT NULL,
  `QURT_CD_UNIDADE` int(9) NOT NULL,
  `QURT_NM_NOME` varchar(160) NOT NULL,
  `QURT_TX_PROPRIEDADES` varchar(260) NOT NULL,
  `QURT_CD_TIPO` varchar(9) NOT NULL,
  `QURT_QT_MAXIMO_OCUPANTES` int(3) NOT NULL,
  `QUET_VL_VALOR_DIARIA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `tipo_hospedagem` (
  `TIPH_CD_ID` int(9) NOT NULL,
  `TIPH_CD_ID_TEXTO` varchar(22) NOT NULL,
  `TIPH_NM_TIPO_HOSPEDAGEM` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



CREATE TABLE `tipo_pagamento` (
  `TPAG_CD_ID` int(9) NOT NULL,
  `TPAG_TX_DESCRICAO` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `tipo_pedido` (
  `TPED_CD_ID` int(25) NOT NULL,
  `TPED_CD_UNIDADE` int(9) NOT NULL,
  `TPED_TX_DESCRICAO` varchar(256) NOT NULL,
  `TPED_CD_CATEGORIA` varchar(80) NOT NULL,
  `TPED_CD_QUANTIDADE_FREQUENCIA` varchar(9) NOT NULL,
  `TPED_VL_VALOR` varchar(25) NOT NULL,
  `TPED_CD_BAIXA_ESTOQUE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `unidade` (
  `UNID_CD_ID` int(9) NOT NULL,
  `UNID_NM_NOME` varchar(180) NOT NULL,
  `UNID_NM_TITULO` varchar(180) NOT NULL,
  `UNID_ED_PASTA` varchar(40) NOT NULL,
  `UNID_CD_CNPJ` varchar(22) NOT NULL,
  `UNID_ED_RUA` varchar(180) NOT NULL,
  `UNID_ED_NUMERO` varchar(18) NOT NULL,
  `UNID_ED_COMPLEMENTOS` varchar(180) NOT NULL,
  `UNID_ED_BAIRRO` varchar(180) NOT NULL,
  `UNID_ED_CIDADE` varchar(180) NOT NULL,
  `UNID_ED_UF` varchar(11) NOT NULL,
  `UNID_ED_EMAIL` varchar(80) NOT NULL,
  `UNID_ED_SITE` varchar(180) NOT NULL,
  `UNID_ED_TELEFONE` varchar(80) NOT NULL,
  `UNID_ED_CELULAR` varchar(80) NOT NULL,
  `UNID_ED_LOGOTIPO` varchar(180) NOT NULL,
  `UNID_PREVALECER_DADOS_SISTEMA` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `estoque` (
  `ESTQ_CD_ID` int(22) NOT NULL,
  `ESTQ_CD_UNIDADE` int(9) NOT NULL,
  `ESTQ_NM_NOME` varchar(240) NOT NULL,
  `ESTQ_CD_UNIDADE_MEDIDA` varchar(9) NOT NULL,
  `ESTQ_QT_QUANTIDADE` int(40) NOT NULL,
  `ESTQ_CD_CATEGORIA` varchar(22) NOT NULL,
  `ESTQ_DT_DATA_HORA_INCLUSAO` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `estoque_categoria` (
  `ESCA_CD_ID` int(9) NOT NULL,
  `ESCA_NM_CATEGORIA` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `estoque_controle` (
  `CEST_CD_ID` int(50) NOT NULL,
  `CEST_CD_UNIDADE` int(9) NOT NULL,
  `CEST_CD_TIPO_MOVIMENTO` varchar(25) NOT NULL,
  `CEST_ID_PRODUTO` varchar(25) NOT NULL,
  `CEST_NM_PRODUTO` varchar(250) NOT NULL,
  `CEST_QT_QUANTIDADE` int(12) NOT NULL,
  `CEST_TX_UNIDADE_MEDIDA` varchar(12) NOT NULL,
  `CEST_VL_VALOR_INVESTIDO` varchar(22) NOT NULL,
  `CEST_TX_OBSERVACAO` text NOT NULL,
  `CEST_DT_ENTRADA` datetime NOT NULL,
  `CEST_DT_MES` varchar(2) NOT NULL,
  `CEST_DT_ANO` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `estoque_unidade_medica` (
  `UNME_CD_ID` int(9) NOT NULL,
  `UNME_NM_NOME` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `forma_pagamento` (
  `FPAG_CD_ID` int(9) NOT NULL,
  `FPAG_NM_NOME` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



-- Índices nas tabelas

ALTER TABLE `estoque`
  ADD PRIMARY KEY (`ESTQ_CD_ID`);

ALTER TABLE `estoque_categoria`
  ADD PRIMARY KEY (`ESCA_CD_ID`);

ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`FPAG_CD_ID`);

ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`HOSP_CD_ID`);

ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`PAGM_CD_ID`);

ALTER TABLE `pedido`
  ADD PRIMARY KEY (`PEDI_CD_ID`);
COMMIT;



INSERT INTO `unidade` (`UNID_CD_ID`, `UNID_NM_NOME`, `UNID_NM_TITULO`, `UNID_ED_PASTA`, `UNID_CD_CNPJ`, `UNID_ED_RUA`, `UNID_ED_NUMERO`, `UNID_ED_COMPLEMENTOS`, `UNID_ED_BAIRRO`, `UNID_ED_CIDADE`, `UNID_ED_UF`, `UNID_ED_EMAIL`, `UNID_ED_SITE`, `UNID_ED_TELEFONE`, `UNID_ED_CELULAR`, `UNID_ED_LOGOTIPO`, `UNID_PREVALECER_DADOS_SISTEMA`)
VALUES (1, 'Pousada Recanto da Lagoa', 'Pousada Recanto da Lagoa', 'pousadarecantodalagoa', '11.205.019/0001-24', 'Rua Dr. Alberto Lamego', '789', 'Parto do Banco Itaú', 'Julião Nogueira', 'Rio de Janeiro', 'RJ', 'contato@recantodalagoa.com.br', 'www.recantodalagoa.com.br', '(22) 27582208', '(22) 998254123', 'logo_recandodalagoa.png', '1');


INSERT INTO `pessoa_juridica` (`PEJU_CD_ID`, `PEJU_CD_UNIDADE`, `PEJU_NM_RAZAO_SOCIAL`, `PEJU_NM_NOME`, `PEJU_CD_CNPJ`, `PEJU_ED_RUA`, `PEJU_ED_NUMERO_ENDERECO`, `PEJU_ED_COMPLEMENTO`, `PEJU_ED_BAIRRO`, `PEJU_ED_CIDADE`, `PEJU_ED_CEP`, `PEJU_ED_ESTADO`, `PEJU_ED_EMAIL`, `PEJU_ED_TELEFONE`, `PEJU_ED_CELULAR`, `PEJU_DT_DATA_INCLUSAO`) 
VALUES
(1,  1, 'RACKT EQUIPAMENTOS LTDA', 'RACKT EQUIPAMENTOS', '12.024.181/0001-07', 'AVENIDA BENEDITO NEVES', '1543', 'CENTRO EMPRESARIAL MARCIA DAVILA MALAN', 'CAMINHO DAS ÁGUIAS', 'SALVADOR', '41820-021', 'BA', 'contrato@marciadavila.com.br', '(71)98860820', '', '2025-11-30'),
(2,  1, 'SANRAY SERVICO DE APOIO A NAVEGACAO E ENGENHARIA LTDA', 'SANRAY - HIDROGRAFIA E ENGENHARIA', '03.393.548/0001-92', 'Rua Henriques Bolonhas', '99', 'Sala 510', 'Centro', 'Vitoria', '29.012-470', 'ES', 'contato@sanray.com.br', '(27) 9821-1510', '', '2025-11-30'),
(3,  1, 'Sheikay Chip Reparos Navais Ltda', 'Sheikay Chip Reparos Navais Ltda', '12.407.018/0001-23', 'Rua Ricardo Caramelo', '459', '', 'Caranguejo', 'São Fidélis', '25.910-000', 'RJ', '', '21 27195587', '21 990387203', '2025-11-30'),
(4,  1, 'J.N.Z. Jacanrambi Naval e Industrial Ltda -ME', 'J.N.Z. Jacanrambi Naval e Industrial Ltda -ME', '22.895.523/001-98', 'Avenida dos Canhões', '399', 'Bloco 071', 'Jockey Club', 'Cambuci', '24543-120', 'RJ', '', '2122635782', '', '2025-11-30');

INSERT INTO `pessoa_fisica` (`PESF_CD_ID`, `PESF_CD_UNIDADE`, `PESF_NM_NOME`, `PESF_CD_SEXO`, `PESF_CD_CPF`, `PESF_CD_RG`, `PESF_CD_ORGAO_EXPEDIDOR_RG`, `PESF_DT_DATA_NASCIMENTO`, `PESF_CD_EMPRESA`, `PESF_CD_PROFISSAO`, `PESF_TX_PROFISSAO`, `PESF_ED_RUA`, `PESF_ED_NUMERO`, `PESF_ED_COMPLEMENTO`, `PESF_ED_BAIRRO`, `PESF_ED_CEP`, `PESF_ED_CIDADE`, `PESF_ED_ESTADO`, `PESF_ED_EMAIL`, `PESF_ED_TELEFONE_FIXO`, `PESF_ED_TELEFONE_CELULAR`, `PESF_CD_DATA_INCLUSAO`, `PES_CD_STATUS`, `PESS_QT_CREDITO`, `PESF_CD_TIPO_PESSOA`, `PESF_CD_SENHA`)
VALUES
(1, 1, 'Walace Luiz de Oliveira Camargo', 'M', '090.125.487-78', '11.184.562-7', 'IFP', '1980-02-02', '75', '', 'Motorista', 'Av W 1', '84', '', 'Lagomar', '27970-060', 'Macae', 'RJ', 'walacecamargo@yahoo.com.br', '', '(22)997026630', '2025-11-30', '0', '', '1', ''),
(2, 1, 'Nelson Campos do Brama', 'M', '093.185.228-25', '02.042.881-2', '', '1968-01-01', '12', '', 'Montador de estrutura', 'Rua Felismino de Oiveira', '159', '', 'Carlota', '28300-000', 'Itaperuna', 'RJ', '', '', '(22)999377858', '2025-11-30', '0', '', '1', ''),
(3, 1, 'Walace Lima Jacildo', 'M', '065.981.028-73', '22.580.384-2', '', '1994-04-25', '12', '', 'Pintor de estruturas', 'Rua Oswaldo Cruz', '290', '', 'Niteroi', '28300-000', 'Campos dos Goytacazes', 'RJ', '', '', '(22)985580253', '2025-11-30', '0', '', '1', ''),
(4, 1, 'Venilton Amaral Alves Couto ', 'M', '090.871.497-42', '11.610.402-7', 'ifp', '1978-02-04', '5', '', 'Tecnico Eletronica', 'Av Nova York', '127', 'ap 605', 'Campo Grande', '22.040-041', 'Cambuci', 'RJ', 'falacomigo@mercurio.com', '', '(22)980502333', '2025-11-30', '0', '', '1', ''),
(5, 1, 'Carlos da Silva Venâncio', 'M', '115.814.657-62', '00.002.426-9', 'mtr', '1986-10-10', '5', '', 'Operador', 'Rua Travessa dos Cocos', '361', '', 'Vale da Prata', '29000-000', 'São Gonçalo', 'RJ', 'josimarsilvarefra@gmail.com', '', '(27) 897417896', '2025-11-30', '0', '', '1', '');

INSERT INTO `hospedagem` (`HOSP_CD_ID`, `HOSP_CD_UNIDADE`, `HOSP_CD_PESSOA_FISICA`, `HOSP_CD_PESSOA_JURIDICA`, `HOSP_CD_TIPO`, `HOSP_DT_INICIO_RESERVA_DATA`, `HOSP_DT_FIM_RESERVA_DATA`, `HOSP_DT_CHECKIN_DATA`, `HOSP_DT_PREVIA_CHECKOUT_DATA`, `HOSP_DT_CHECKOUT_DATA`, `HOSP_QT_DIAS_HOSPEDADO`, `HOSP_NU_ACOMPANHANTES`, `HOSP_CD_QUARTO`, `HOSP_VL_DIARIA_QUARTO`, `HOSP_CD_PROMOCAO`, `HOSP_NM_PROMOCAO`, `HOSP_CD_TIPO_PROMOCAO`, `HOSP_CD_TIPO_CONTAGEM_DIARIAS`, `HOSP_QT_PERCENTUAL_DESCONTO`, `HOSP_VL_DEBITO_HOSPEDAGEM`, `HOSP_VL_DEBITO_PEDIDOS`, `HOSP_VL_DEBITO_TOTAL`, `HOSP_QT_PERCENTUAL_SINAL`, `HOSP_VL_SINAL_PAGO`, `HOSP_DT_PAGAMENTO_SINAL_DATA`, `HOSP_VL_TOTAL_PAGO`, `HOSP_CD_FORMA_PAGAMENTO`, `HOSP_TX_DESCRICAO_PAGAMENTO`, `HOSP_NU_NOTA_FISCAL`, `HOSP_DT_VENCIMENTO`, `HOSP_CD_QUITADO`, `HOSP_DT_PAGAMENTO_DATA`, `HOSP_CD_STATUS`, `HOSP_DT_MES`, `HOSP_DT_ANO`, `HOSP_TX_REGISTRO_RETIFICACOES`) 
VALUES
(1, 1, '9838', '1', 'grupoempresa', '2025-11-30 23:42:48', '2025-12-12 00:00:00', '2025-12-01 19:26:23', '2025-12-12', '2025-12-12 09:09:03', '12', 1, '1', '130.00', '', '', '', '', 0, '130.00', '0', '130.00', '', '', '0000-00-00 00:00:00', '0.00', '', '', '', '', '', '0000-00-00 00:00:00', 'F', '01', '2025', 'Hospedagem Criada por Luia Fernando Quaresma Campos em 30/11/2025 10:42:10H'),
(2, 1, '9839', '2', 'grupoempresa', '2025-11-30 23:43:57', '2025-12-12 00:00:00', '2025-12-01 19:26:51', '2025-12-12', '2025-12-12 09:06:54', '12', 1, '2', '130.00', '', '', '', '', 0, '130.00', '0', '130.00', '', '', '0000-00-00 00:00:00', '0.00', '', '', '', '', '', '0000-00-00 00:00:00', 'F', '01', '2025', 'Hospedagem Criada por Luia Fernando Quaresma Campos em 30/11/2025 10:50:12H'),
(3, 1, '8541', '3', 'grupoempresa', '2025-11-30 23:47:17', '2025-12-12 00:00:00', '2025-12-01 10:31:17', '2025-12-12', '2025-12-12 18:45:39', '12', 1, '2', '130.00', '', '', '', '', 0, '130.00', '0', '130.00', '', '', '0000-00-00 00:00:00', '0.00', '', '', '', '', '', '0000-00-00 00:00:00', 'F', '01', '2025', 'Hospedagem Criada por Luia Fernando Quaresma Campos em 30/11/2025 10:54:25H'),
(4, 1, '8770', '4', 'grupoempresa', '2025-11-30 23:48:27', '2025-12-12 00:00:00', '2025-12-01 10:31:59', '2025-12-12', '2025-12-12 18:27:00', '12', 1, '3', '130.00', '', '', '', '', 0, '130.00', '0', '130.00', '', '', '0000-00-00 00:00:00', '0.00', '', '', '', '', '', '0000-00-00 00:00:00', 'F', '01', '2025', 'Hospedagem Criada por Luia Fernando Quaresma Campos em 30/11/2025 11:00:09H'),
(5, 1, '9628', '5', 'grupoempresa', '2025-11-30 23:50:12', '2025-12-12 00:00:00', '2025-12-01 00:00:00', '2025-12-12', '2025-12-12 00:00:00', '12', 1, '3', '130.00', '', '', '', '', 0, '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '0000-00-00 00:00:00', 'C', '01', '2025', 'Hospedagem Criada por Luiz Fernando Quaresma Campos em 30/11/2025 11:05:32H');

INSERT INTO `quarto` (`QURT_CD_ID`, `QURT_CD_UNIDADE`, `QURT_NM_NOME`, `QURT_TX_PROPRIEDADES`, `QURT_CD_TIPO`, `QURT_QT_MAXIMO_OCUPANTES`, `QUET_VL_VALOR_DIARIA`) 
VALUES
(1, 1, '101', '', '', 10, '130.00'),
(2, 1, '102', '', '', 10, '130.00'),
(3, 1, '103', '', '', 10, '130.00'),
(4, 1, '104', '', '', 10, '130.00'),
(5, 1, '105', '', '', 10, '130.00');

INSERT INTO `tipo_hospedagem` (`TIPH_CD_ID`, `TIPH_CD_ID_TEXTO`, `TIPH_NM_TIPO_HOSPEDAGEM`) 
VALUES
(1, 'individual', 'Individual'),
(2, 'familia', 'Família ou amigos'),
(5, 'grupoempresa', 'Funcionário / Empresa');

INSERT INTO `tipo_pagamento` (`TPAG_CD_ID`, `TPAG_TX_DESCRICAO`) 
VALUES
(1, 'Hospedagem'),
(2, 'Pedido');

INSERT INTO `tipo_pedido` (`TPED_CD_ID`, `TPED_CD_UNIDADE`, `TPED_TX_DESCRICAO`, `TPED_CD_CATEGORIA`, `TPED_CD_QUANTIDADE_FREQUENCIA`, `TPED_VL_VALOR`, `TPED_CD_BAIXA_ESTOQUE`) 
VALUES
(1, 1, 'CAFE DA MANHA', '1', '', '12.00', ''),
(2, 1, 'JARRA DE SUCO GRANDE', '1', '', '30.00', ''),
(3, 1, 'REFEICAO COM  REFRIGERANTE', '1', '', '36.00', ''),
(4, 1, 'REFEICAO COMPLETA', '1', '', '65.00', ''),
(5, 1, 'MACARRAO A BOLONHESA', '1', '', '60.00', ''),
(6, 1, 'BATATA A MODA CAPITANIA (QUEIJO, BACON,CHEDDAR E CALABRESA)', '1', '', '60.00', ''),
(7, 1, 'picanha suina com batata sout', '1', '', '60.00', ''),
(8, 1, 'REFEICAO COMPLETA COM FRITAS', '1', '', '45.00', '');

INSERT INTO `estoque` (`ESTQ_CD_ID`, `ESTQ_CD_UNIDADE`, `ESTQ_NM_NOME`, `ESTQ_CD_UNIDADE_MEDIDA`, `ESTQ_QT_QUANTIDADE`, `ESTQ_CD_CATEGORIA`, `ESTQ_TX_CATEGORIA`, `ESTQ_DT_DATA_HORA_INCLUSAO`) 
VALUES
(17, 1, 'Suco Constance', '3', 473, '4', '', '2025-11-30 14:57:56'),
(18, 1, 'Cerveja Antarctica Latão', '3', 473, '4', '', '2025-11-30 14:58:59'),
(14, 1, 'AGUA ', '3', 550, '4', '', '2025-11-30 10:03:33'),
(15, 1, 'Coca Lata ', '3', 330, '4', '', '2025-11-30 10:05:15'),
(16, 1, 'Guarana Lata ', '3', 365, '4', '', '2025-11-30 10:05:47');

INSERT INTO `estoque_categoria` (`ESCA_CD_ID`, `ESCA_NM_CATEGORIA`) 
VALUES
(1, 'Alimentício'),
(2, 'Higiene Pessoal'),
(3, 'Produtos de Limpeza'),
(4, 'Alimentício Bebida');


--SELECT

-- Lista todos os quartos de uma unidade
SELECT * FROM quarto 
WHERE QURT_CD_UNIDADE='1' ORDER BY QURT_CD_TIPO, QURT_NM_NOME

-- Lista todas as pessoas de uma unidade
SELECT * FROM pessoa_fisica 
WHERE PESF_CD_TIPO_PESSOA='1' AND PESF_CD_UNIDADE='$cd_unidade' ORDER BY PESF_CD_EMPRESA, PESF_NM_NOME

-- Lista os produtos do estoque
SELECT * FROM estoque
LEFT JOIN estoque_unidade_medica um 
       ON um.UNME_CD_ID = estoque.ESTQ_CD_UNIDADE_MEDIDA
LEFT JOIN estoque_categoria c 
       ON c.ESCA_CD_ID = estoque.ESTQ_CD_CATEGORIA
WHERE estoque.ESTQ_CD_UNIDADE = '1'
ORDER BY estoque.ESTQ_NM_NOME;


-- UPDATE

UPDATE pessoa_fisica SET PESF_ED_EMAIL='walaceiima123@gmail.com', PESF_ED_TELEFONE_CELULAR='(22) 998524123' WHERE PESF_CD_ID='1'

UPDATE tipo_pedido SET TPED_VL_VALOR='37.00' WHERE TPED_CD_ID='3'

UPDATE quarto SET QURT_QT_MAXIMO_OCUPANTES='12' WHERE QURT_CD_ID='2'

-- DELETE

DELETE FROM estoque WHERE ESTQ_CD_ID ='5'

DELETE FROM tipo_pedido WHERE TPED_CD_ID='13'

DELETE FROM promocao WHERE PROM_CD_ID='3'


