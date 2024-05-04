-- registros na tabela Empresa
INSERT INTO Empresa (cnpj, site, nome, contato) VALUES
('12345678901234', 'www.empresa1.com', 'Empresa 1', 'João'),
('98765432109876', 'www.empresa2.com', 'Empresa 2', 'Maria'),
('45678901234567', 'www.empresa3.com', 'Empresa 3', 'Pedro'),
('32109876543210', 'www.empresa4.com', 'Empresa 4', 'Ana');

-- registros na tabela Areas
INSERT INTO Areas (id, webdev, dados, marketing) VALUES
(1, 1, 0, 1),
(2, 0, 1, 1),
(3, 1, 1, 0),
(4, 0, 0, 1);

-- registros na tabela Tecnologia
INSERT INTO Tecnologia (id, nome, fk_area) VALUES
(1, 'Java', 1),
(2, 'Python', 2),
(3, 'SQL', 3),
(4, 'HTML/CSS', 4);

-- registros na tabela Colaborador
INSERT INTO Colaborador (id, cargo, telefone, cpf, fk_empresa_cnpj) VALUES
(1, 'Desenvolvedor', '123456789', '11111111111', '12345678901234'),
(2, 'Analista de Dados', '987654321', '22222222222', '98765432109876'),
(3, 'Web Designer', '456789012', '33333333333', '45678901234567'),
(4, 'Analista de Marketing', '321098765', '44444444444', '32109876543210');

-- registros na tabela Relatorio
INSERT INTO Relatorio (Datas, fk_tecnologia, fk_cnpj) VALUES
('2022-01-01', 1, '12345678901234'),
('2022-01-02', 2, '98765432109876'),
('2022-02-03', 3, '45678901234567'),
('2022-02-04', 4, '32109876543210');