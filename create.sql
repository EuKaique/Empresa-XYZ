CREATE DATABASE XYZ;

CREATE TABLE Departamentos(
id_depto INT PRIMARY KEY NOT NULL,
id_func INT NOT NULL,
nome VARCHAR(30),
lider VARCHAR(30),
FOREIGN KEY(id_func) REFERENCES Funcionarios(id_func)  
);

CREATE TABLE Funcionarios(
id_func INT PRIMARY KEY NOT NULL,
id_depto INT NOT NULL,
id_cargo INT NOT NULL, 
nome VARCHAR(30) NOT NULL,
cargo VARCHAR(30) NOT NULL,
salario DOUBLE NOT NULL,
dt_admissao DATE NOT NULL,
FOREIGN KEY(id_depto) REFERENCES Departamentos(id_depto),
FOREIGN KEY(id_cargo) REFERENCES Cargo(id_cargo)   
);

CREATE TABLE Cargo(
id_cargo INT PRIMARY KEY NOT NULL,
id_func INT NOT NULL,
nome VARCHAR(30) NOT NULL,
FOREIGN KEY(id_func) REFERENCES Funcionarios(id_func)
);

