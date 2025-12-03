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


-- Manipulação de dados

--SELECT

-- Lista todos os quartos de uma unidade
SELECT * FROM quarto 
WHERE QURT_CD_UNIDADE='1' ORDER BY QURT_CD_TIPO, QURT_NM_NOME

-- Lista todas as pessoas de uma unidade
SELECT * FROM pessoa_fisica 
WHERE PESF_CD_TIPO_PESSOA='1' AND PESF_CD_UNIDADE='$cd_unidade' ORDER BY PESF_CD_EMPRESA, PESF_NM_NOME

-- Lista os produtos do estoque de uma unidade selecionada pelo id
SELECT * FROM estoque
LEFT JOIN estoque_unidade_medica um 
       ON um.UNME_CD_ID = estoque.ESTQ_CD_UNIDADE_MEDIDA
LEFT JOIN estoque_categoria c 
       ON c.ESCA_CD_ID = estoque.ESTQ_CD_CATEGORIA
WHERE estoque.ESTQ_CD_UNIDADE = '1'
ORDER BY estoque.ESTQ_NM_NOME;


-- UPDATE

-- Altera email e celular de pessoa física a partir do id
UPDATE pessoa_fisica SET PESF_ED_EMAIL='walaceiima123@gmail.com', PESF_ED_TELEFONE_CELULAR='(22) 998524123' WHERE PESF_CD_ID='1'

-- Altera preço de um registro da tabela tipo_pedido a partir do id
UPDATE tipo_pedido SET TPED_VL_VALOR='37.00' WHERE TPED_CD_ID='3'

-- Altera a capacidade de ocupantes de um quarto por meio do id do quarto
UPDATE quarto SET QURT_QT_MAXIMO_OCUPANTES='12' WHERE QURT_CD_ID='2'


-- DELETE

-- Apaga um registro da tabela estoque pelo id
DELETE FROM estoque WHERE ESTQ_CD_ID ='5'

-- Deleta um registro da tabela tipo_pedido pelo id
DELETE FROM tipo_pedido WHERE TPED_CD_ID='13'

-- Apaga um registro de promoção por meio do id
DELETE FROM promocao WHERE PROM_CD_ID='3'


