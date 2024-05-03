create database modelagem;

CREATE TABLE Empresa (
    cnpj int PRIMARY KEY,
    site varchar(50),
    nome varchar(30),
    contato varchar(12)
);

CREATE TABLE Tecnologia (
    id int PRIMARY KEY,
    nome varchar(30),
    fk_area_area_PK int
);

CREATE TABLE Colaborador (
    cargo varchar(30),
    telefone varchar(30),
    id int PRIMARY KEY,
    cpf int UNIQUE,
    fk_Empresa_cnpj int
);

CREATE TABLE Area (
    area_PK int NOT NULL PRIMARY KEY,
    webdev bit,
    dados bit,
    marketing bit
);

CREATE TABLE Relatorio (
    fk_Tecnologia_id int,
    fk_Empresa_cnpj int,
    Data date
);
 
ALTER TABLE Tecnologia ADD CONSTRAINT FK_Tecnologia_2
    FOREIGN KEY (fk_area_area_PK)
    REFERENCES Area (area_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Colaborador ADD CONSTRAINT FK_Colaborador_2
    FOREIGN KEY (fk_Empresa_cnpj)
    REFERENCES Empresa (cnpj)
    ON DELETE CASCADE;
 
ALTER TABLE Relatorio ADD CONSTRAINT FK_Relatorio_1
    FOREIGN KEY (fk_Tecnologia_id)
    REFERENCES Tecnologia (id)
    ON DELETE SET NULL;
 
ALTER TABLE Relatorio ADD CONSTRAINT FK_Relatorio_2
    FOREIGN KEY (fk_Empresa_cnpj)
    REFERENCES Empresa (cnpj)
    ON DELETE SET NULL;