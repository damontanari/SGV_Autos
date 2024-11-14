-- Inserindo Filiais
INSERT INTO filiais (nome, cidade, estado, codigo_filial) VALUES
('Matriz', 'São Paulo', 'SP', '01'),
('Filial São Paulo', 'São Paulo', 'SP', '02'),
('Filial Rio de Janeiro', 'Rio de Janeiro', 'RJ', '03'),
('Filial Paraná', 'Curitiba', 'PR', '04'),
('Filial Minas Gerais', 'Belo Horizonte', 'MG', '05');

-- Vendedores para a Matriz (Filial 1)
INSERT INTO vendedores (nome, filial_id, email, telefone) VALUES
('João Silva', 1, 'joao@matriz.com', '11-9999-9999'),
('Paulo Santos', 1, 'paulo@matriz.com', '11-9888-7777'),
('Luciana Almeida', 1, 'luciana@matriz.com', '11-9777-6666'),
('Ricardo Costa', 1, 'ricardo@matriz.com', '11-9666-5555'),
('Maria Oliveira', 2, 'maria@sp.com', '11-9888-8888'),
('Carlos Henrique', 2, 'carlos@sp.com', '11-9777-4444'),
('Fernanda Souza', 2, 'fernanda@sp.com', '11-9666-3333'),
('Eduardo Pereira', 2, 'eduardo@sp.com', '11-9555-2222'),
('Carlos Souza', 3, 'carlos@rj.com', '21-9777-7777'),
('Renata Santos', 3, 'renata@rj.com', '21-9666-6666'),
('Felipe Martins', 3, 'felipe@rj.com', '21-9555-5555'),
('Juliana Costa', 3, 'juliana@rj.com', '21-9444-4444'),
('Fernanda Lima', 4, 'fernanda@pr.com', '41-9666-6666'),
('Carlos Eduardo', 4, 'carloseduardo@pr.com', '41-9555-7777'),
('Isabela Torres', 4, 'isabela@pr.com', '41-9444-8888'),
('Marco Antônio', 4, 'marco@pr.com', '41-9333-9999'),
('Antonio Carlos', 5, 'antonio@mg.com', '31-9555-5555'),
('Mariana Almeida', 5, 'mariana@mg.com', '31-9444-4444'),
('Eduardo Lima', 5, 'eduardo@mg.com', '31-9333-3333'),
('Aline Oliveira', 5, 'aline@mg.com', '31-9222-2222');



/* ESTOQUE ↓ */
-- Inserindo Carros no Estoque (Para cada filial)
-- Matriz (Filial 1)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Fusca', 'Volkswagen', 2020, 'Azul', 35000.00, 1, 'EST001'),
('Gol', 'Volkswagen', 2021, 'Preto', 45000.00, 1, 'EST002'),
('Civic', 'Honda', 2022, 'Branco', 120000.00, 1, 'EST003'),
('Fiorino', 'Fiat', 2021, 'Vermelho', 75000.00, 1, 'EST004'),
('Tucson', 'Hyundai', 2023, 'Cinza', 150000.00, 1, 'EST005');

-- Filial São Paulo (Filial 2)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Onix', 'Chevrolet', 2021, 'Prata', 55000.00, 2, 'EST006'),
('Corolla', 'Toyota', 2022, 'Branco', 115000.00, 2, 'EST007'),
('HB20', 'Hyundai', 2021, 'Preto', 48000.00, 2, 'EST008'),
('Kwid', 'Renault', 2023, 'Amarelo', 45000.00, 2, 'EST009'),
('EcoSport', 'Ford', 2022, 'Azul', 78000.00, 2, 'EST010');

-- Filial Rio de Janeiro (Filial 3)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Civic', 'Honda', 2023, 'Vermelho', 120000.00, 3, 'EST011'),
('Gol', 'Volkswagen', 2022, 'Branco', 55000.00, 3, 'EST012'),
('Astra', 'Chevrolet', 2021, 'Cinza', 49000.00, 3, 'EST013'),
('Fiesta', 'Ford', 2022, 'Preto', 60000.00, 3, 'EST014'),
('Compass', 'Jeep', 2023, 'Prata', 135000.00, 3, 'EST015');

-- Filial Paraná (Filial 4)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Argo', 'Fiat', 2021, 'Verde', 50000.00, 4, 'EST016'),
('Toro', 'Fiat', 2022, 'Azul', 120000.00, 4, 'EST017'),
('S10', 'Chevrolet', 2023, 'Preto', 130000.00, 4, 'EST018'),
('Palio', 'Fiat', 2020, 'Branco', 40000.00, 4, 'EST019'),
('Tracker', 'Chevrolet', 2022, 'Cinza', 85000.00, 4, 'EST020');

-- Filial Minas Gerais (Filial 5)
INSERT INTO estoque (modelo, marca, ano, cor, preco, filial_id, codigo_estoque) VALUES
('Jetta', 'Volkswagen', 2023, 'Prata', 115000.00, 5, 'EST021'),
('Tucson', 'Hyundai', 2023, 'Branco', 140000.00, 5, 'EST022'),
('Fit', 'Honda', 2022, 'Azul', 70000.00, 5, 'EST023'),
('HR-V', 'Honda', 2021, 'Preto', 85000.00, 5, 'EST024'),
('Rav4', 'Toyota', 2023, 'Verde', 150000.00, 5, 'EST025');



/* VENDAS ↓ */
