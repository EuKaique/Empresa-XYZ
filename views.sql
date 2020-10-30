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

