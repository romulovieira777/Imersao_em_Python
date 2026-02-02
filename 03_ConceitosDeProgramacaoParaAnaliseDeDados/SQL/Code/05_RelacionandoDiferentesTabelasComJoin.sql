SELECT
    colab.funcional
  , cargo.nome
FROM
    colaborador AS colab
INNER JOIN
    cargo
ON
    colab.id_cargo = cargo.id_cargo;


SELECT
    colab.funcional
  , cargo.nome
FROM
    cargo
LEFT JOIN
    colaborador AS colab
ON
    colab.id_cargo = cargo.id_cargo;


SELECT
    colab.funcional
  , cargo.nome
FROM
    cargo
RIGHT JOIN
    colaborador AS colab
ON
    colab.id_cargo = cargo.id_cargo;


SELECT
    colab.funcional
  , cargo.nome
FROM
    cargo
FULL JOIN
    colaborador AS colab
ON
    colab.id_cargo = cargo.id_cargo;