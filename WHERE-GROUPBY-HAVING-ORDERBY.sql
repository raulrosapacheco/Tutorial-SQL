-- Funções de Agregação e Agrupamento

-- Mínimo, Máximo, Média, Soma e Contagem
SELECT MIN(salario), MAX(salario), AVG(salario), SUM(salario), COUNT(salario)
FROM db.funcionarios;

-- Mínimo, Máximo, Média, Soma e Contagem com função ROUND()
SELECT MIN(salario), MAX(salario), ROUND(AVG(salario), 2), SUM(salario), COUNT(salario)
FROM db.funcionarios;

-- Média salarial geral
SELECT ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios;

-- Média salarial por departamento
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios
GROUP BY departamento;

-- Média salarial por departamento ordenado por departamento
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios
GROUP BY departamento
ORDER BY departamento;

-- Média salarial por departamento somente se a média for maior do que 20000, ordenado por departamento
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios
GROUP BY departamento
HAVING ROUND(AVG(salario), 2) > 20000
ORDER BY departamento;

-- Média salarial por departamento somente se a média for maior do que 20000 e somente se o nome do departamento tiver a palavra 'Engenharia'
-- Ordenado por departamento
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios
WHERE departamento LIKE '%Engenharia%'
GROUP BY departamento
HAVING ROUND(AVG(salario), 2) > 20000
ORDER BY departamento;