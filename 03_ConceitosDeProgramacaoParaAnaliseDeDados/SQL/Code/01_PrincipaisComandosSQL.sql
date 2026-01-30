-- 1. Criação de tabela
CREATE TABLE cliente (
  id INT PRIMARY KEY
 , nome VARCHAR(50)
);

-- 2. Inserção de dados
INSERT INTO cliente (id, nome) VALUES (1, 'João Silva');
INSERT INTO cliente (id, nome) VALUES (2, 'Maria Oliveira');

-- 3. Consulta de dados
SELECT
  id
 , nome
FROM
  cliente;

-- 4. Atualização de dados
UPDATE cliente
SET nome = 'João Souza'
WHERE id = 1;

-- 5. Alteração de tabela
ALTER TABLE cliente
ADD genero CHAR(1);

-- 6. Exclusão de dados
DELETE FROM cliente
WHERE id = 1;

-- 7. Exclusão de tabela
DROP TABLE cliente;

-- 8. Utilizando Where
SELECT
  id
 , nome
FROM
  cliente
WHERE
  genero = 'M';

-- 9. Utilizando AND
SELECT
  id
 , nome
FROM
  cliente
WHERE
  genero = 'F' AND id > 5;

-- 10. Funções de agregação
SELECT
  COUNT(id) AS total_clientes
FROM
  cliente;

SELECT
  SUM(id) AS soma_ids
FROM
  cliente;

SELECT
  COUNT(DISTINCT genero) AS total_generos
 , AVG(id) AS media_ids
FROM
  cliente;

-- 11. Group By
SELECT
  genero
 , COUNT(id) AS total_clientes
FROM
  cliente
GROUP BY
  genero;

-- 12. Having
SELECT
  genero
 , COUNT(id) AS total_clientes
FROM
  cliente
GROUP BY
  genero
HAVING
  total_clientes < 4;

-- 13. Order By
SELECT
  *
FROM
  cliente
ORDER BY
  id DESC;