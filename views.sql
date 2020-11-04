-- ESSA VIEW RETORNA TODOS OS FUNCIONÁRIOS E SEUS DEPARTAMENTOS
CREATE VIEW deptoFunc AS
SELECT d.id_depto AS Id_Departamento,
d.nome AS Departamento,
f.nome AS Funcionario
FROM departamentos d, funcionarios f
WHERE d.id_depto = f.id_depto;

-- ESSA VIEW RETORNA TODOS OS FUNCIONÁRIOS COM SEU ID E CARGO
CREATE VIEW cargoFunc AS
SELECT c.id_cargo AS Id_Cargo,
c.nome AS Cargo,
f.id_func AS Id_Funcionario,
f.nome AS Funcionario
FROM cargo c, funcionarios f
WHERE f.id_cargo = c.id_cargo;

-- ESSA VIEW RETORNA OS PRIMEIROS FUNCIONÁRIOS DA EMPRESA
CREATE VIEW primeirosFunc AS
SELECT id_func AS Id,
nome AS Funcionário,
salario AS Salario,
dt_admissao AS Admissão
FROM Funcionarios 
WHERE dt_admissao BETWEEN '2010-06-11' AND '2011-04-15'
ORDER BY dt_admissao;

-- ESSA VIEW RETORNA O ULTIMO FUNCIONÁRIO CONTRATADO
CREATE VIEW ultimoFunc AS
SELECT id_func AS Id,
nome AS Funcionário,
salario AS Salario,
dt_admissao AS Admissão
FROM Funcionarios 
WHERE dt_admissao = (SELECT MAX(dt_admissao)FROM Funcionarios);

-- ESSA VIEW RETORNA OS FUNCIONÁRIOS COM MENOR SALÁRIO
CREATE VIEW menorSalario AS
SELECT id_func AS Id,
nome AS Funcionário,
salario AS Salário
FROM Funcionarios
WHERE salario = (SELECT MIN(salario)FROM Funcionarios);

-- ESSA VIEW RETORNA O FUNCIONÁRIO COM MAIOR SALÁRIO 
CREATE VIEW maiorSalario AS
SELECT id_func AS Id,
nome AS Funcionário,
salario AS Salário
FROM Funcionarios
WHERE salario = (SELECT MAX(salario)FROM Funcionarios);

-- ESSA VIEW RETORNA OS FUNCIONÁRIOS QUE TRABALHAM NO DEPARTAMENTO DE RH
CREATE VIEW deptoRH AS
SELECT d.id_depto,
d.nome AS Departamento,
f.id_func,
f.nome AS Funcionário
FROM Departamentos d, Funcionarios f
WHERE d.id_depto = f.id_depto AND d.nome = 'RH';
