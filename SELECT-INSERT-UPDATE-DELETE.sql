-- Criação da tabela funcionarios
CREATE TABLE db.funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(50),
    departamento VARCHAR(50),
    data_contratacao DATE,
    salario DECIMAL(10, 2)
);

-- Instruções DML (Data Manipulation Language) são comandos SQL usados para 
-- inserir, atualizar, excluir e consultar dados em tabelas de um banco de dados.

-- SELECT, INSERT, UPDATE, DELETE

-- Inserção de dados
INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (100, 'José de Alencar', 'Engenharia de Dados', '2024-01-10', 25000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (101, 'Machado de Assis', 'Data Science', '2024-02-10', 19000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (102, 'Cecília Meireles', 'Engenharia de Dados', '2024-02-11', 22000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (103, 'Carlos Drummond de Andrade', 'DataOps', '2024-02-12', 23400.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (104, 'Clarice Lispector', 'DataOps', '2024-02-13', 21800.00);

-- Seleção de dados
SELECT *
FROM db.funcionarios;

-- Atualização de dados
UPDATE db.funcionarios 
SET salario = 26000.00 
WHERE nome = 'Machado de Assis';

-- Exclusão de dados
DELETE FROM db.funcionarios 
WHERE nome = 'Machado de Assis';

-- Exclusão da tabela
DROP TABLE db.funcionarios;