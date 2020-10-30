-- ESSA VIEW RETORNA TODOS OS FUNCIONÁRIOS E SEUS DEPARTAMENTOS
CREATE VIEW deptoFunc AS
SELECT d.id_depto AS Id_Departamento,
d.nome AS Departamento,
f.nome AS Funcionario
FROM departamentos d, funcionarios f
WHERE d.id_depto = f.id_depto;
