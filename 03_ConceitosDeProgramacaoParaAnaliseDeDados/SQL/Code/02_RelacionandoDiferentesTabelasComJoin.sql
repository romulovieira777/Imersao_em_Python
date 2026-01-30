-- 1. Inner Join
SELECT
  colab.funcional
 , cargo.nome
FROM
  cargo
INNER JOIN
  colaborador AS colab
ON
  cargo.id_cargo = colab.id_cargo;

-- 2. Left Join
SELECT
  colab.funcional
 , cargo.nome
FROM
  cargo
LEFT JOIN
  colaborador AS colab
ON
  cargo.id_cargo = colab.id_cargo;

-- 3. Right Join
SELECT
  colab.funcional
 , cargo.nome
FROM
  cargo
RIGHT JOIN
  colaborador AS colab
ON
  cargo.id_cargo = colab.id_cargo;

-- 4. Full Join
SELECT
  colab.funcional
 , cargo.nome
FROM
  cargo
FULL JOIN
  colaborador AS colab
ON
  cargo.id_cargo = colab.id_cargo;
