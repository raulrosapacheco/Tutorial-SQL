-- INNER JOIN - Nome e salário dos funcionários alocados em projetos
SELECT e.nome, e.salario, p.nome_projeto
FROM db.funcionarios e
INNER JOIN db.projetos p ON e.id_funcionario = p.func_id;

-- LEFT JOIN - Nome e salário de todos os funcionários independente de estarem alocados em projetos
SELECT e.nome, e.salario, p.nome_projeto
FROM db.funcionarios e
LEFT JOIN db.projetos p ON e.id_funcionario = p.func_id;

-- Alternativa mais elegante para o resultado anterior
-- COALESCE: PARA NÃO RETORNAR NULO EM CASO 
SELECT e.nome, e.salario, COALESCE(p.nome_projeto, 'Não Alocado em Projeto')
FROM db.funcionarios e
LEFT JOIN db.projetos p ON e.id_funcionario = p.func_id;

-- RIGHT JOIN - Nome de todos os funcionários alocados em projetos e os projetos sem funcionários alocados
SELECT COALESCE(e.nome, 'Sem Funcionário Alocado') AS nome_funcionario, p.nome_projeto
FROM db.funcionarios e
RIGHT JOIN db.projetos p ON e.id_funcionario = p.func_id;

-- FULL JOIN - Nome de todos os funcionários alocados ou não em projetos e todos os projetos sem funcionários alocados
SELECT COALESCE(e.nome, 'Sem Funcionário Alocado') AS nome_funcionario, COALESCE(p.nome_projeto, 'Não Alocado em Projeto')
FROM db.funcionarios e
FULL JOIN db.projetos p ON e.id_funcionario = p.func_id;

-- INNER JOIN - Média de salário dos departamentos com funcionários alocados em projetos
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios e
INNER JOIN db.projetos p ON e.id_funcionario = p.func_id
GROUP BY departamento;

-- INNER JOIN - Média de salário dos departamentos com funcionários alocados em projetos, cuja data de contratação do funcionário tenha sido no dia 10 de qualquer mês ou ano
SELECT departamento, ROUND(AVG(salario), 2) AS media_salario
FROM db.funcionarios e
INNER JOIN db.projetos p ON e.id_funcionario = p.func_id
WHERE EXTRACT(DAY FROM data_contratacao) = 10
GROUP BY departamento;