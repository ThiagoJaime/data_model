-- Criando o banco
CREATE DATABASE modelagem;

-- Utilizando o banco
USE modelagem;

-- criação da tabela empresa
CREATE TABLE Empresa (
    cnpj varchar(14) NOT NULL PRIMARY KEY,
    site varchar(50),
    nome varchar(30),
    contato varchar(12)
);

-- criação da tabela areas
CREATE TABLE Areas (
    id int NOT NULL PRIMARY KEY,
    webdev bit,
    dados bit,
    marketing bit
);

-- criação da tabela tecnologia
CREATE TABLE Tecnologia (
    id int NOT NULL PRIMARY KEY,
    nome varchar(30),
    fk_area int,
    FOREIGN KEY (fk_area) REFERENCES areas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- criação da tabela colaborador
CREATE TABLE Colaborador (
    id int NOT NULL PRIMARY KEY,
    cargo varchar(30),
    telefone varchar(30),
    cpf int UNIQUE,
    fk_empresa_cnpj varchar(14),
    FOREIGN KEY (fk_empresa_cnpj) REFERENCES empresa(cnpj) ON DELETE CASCADE ON UPDATE CASCADE
);

-- criação da tabela relatorio
CREATE TABLE Relatorio (
    Data date,
    fk_tecnologia int,
    fk_cnpj varchar(14),
    FOREIGN KEY (fk_cnpj) REFERENCES empresa(cnpj) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_tecnologia) REFERENCES tecnologia(id) ON DELETE CASCADE ON UPDATE CASCADE
);
