SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero = 'F';


SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero != 'F';


SELECT
    id
  , nome
FROM
    clientes
WHERE
    id > 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    id < 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    id >= 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    id <= 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    nome IS NOT NULL;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    nome LIKE '%jo%';


SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero IN ('F', 'M');


SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero = 'F'
AND
    id > 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero = 'F'
OR
    id > 5;


SELECT
    id
  , nome
FROM
    clientes
WHERE
    genero NOT IN ('F', 'M');


SELECT
    id
  , nome
FROM
    clientes
WHERE
    id BETWEEN 4 AND 5;