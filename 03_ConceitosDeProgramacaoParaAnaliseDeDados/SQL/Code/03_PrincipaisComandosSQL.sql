-- Criando um banco de dados
CREATE DATABASE
    curso_business_analytics;


-- Criando uma tabela
CREATE TABLE clientes (
    id INT PRIMARY KEY
  , nome VARCHAR(100)
);


-- Inserindo dados na tabela
INSERT INTO clientes (id, nome) VALUES (1, 'Roberth');


INSERT INTO clientes
    (id, nome)
VALUES
    (2, 'Fabiel'),
    (3, 'Maria'),
    (4, 'Felipe'),
    (5, 'Mariana'),
    (6, 'Carlos'),
    (7, 'Camila'),
    (8, 'Filomena'),
    (9, 'Natalia'),
    (10, 'Tales');


-- Consultando dados
SELECT
    *
FROM
    clientes;


-- Atualizando dados
UPDATE
    clientes
SET
    nome = 'João'
WHERE
    id = 1;


-- Alterando a estrutura da tabela, incluindo uma nova coluna
ALTER TABLE
    clientes
ADD COLUMN
    genero CHAR(1);


-- Atualizando dados
UPDATE
    clientes
SET
    genero = 'M'
WHERE
    nome = 'João';


-- Outra forma de atualizar os dados da tabela clientes
UPDATE
    clientes
SET
    genero = 'F'
WHERE
    nome NOT IN ('Fabiel', 'Felipe', 'Carlos', 'Tales');


-- Deletando dados
DELETE FROM
    clientes
WHERE
    id = 1;


-- Deletando a tabela
DROP TABLE
    clientes;


-- Utilizando a clausula WHERE
SELECT
    *
FROM
    clientes
WHERE
    genero = 'F';


-- Utilizando a clausula WHERE e AND
SELECT
    *
FROM
    clientes
WHERE
    genero = 'F'
AND
    id > 5;


-- Contando a quantidade de registros
SELECT
    COUNT(clientes.id)
FROM
    clientes;


-- Somando a quantidade de ids
SELECT
    SUM(clientes.id) AS soma_id
FROM
    clientes;


-- Contando valores distintos
SELECT
    COUNT(DISTINCT clientes.genero) AS qtd_genero
FROM
    clientes;


-- Agrupando valores
SELECT
    genero
  , COUNT(id) AS qtd_id
FROM
    clientes
GROUP BY
    genero;


-- Contando e utilizando a clausula HAVING
SELECT
    clientes.genero
  , COUNT(id) AS qtd_id
FROM
    clientes
GROUP BY
    clientes.genero
HAVING
    COUNT(id) < 4;


-- Ordenando os resultados
SELECT
    *
FROM
    clientes
ORDER BY
    id DESC;